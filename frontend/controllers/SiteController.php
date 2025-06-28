<?php

namespace frontend\controllers;

use common\models\search\CycleSearch;
use common\models\search\FileTypeSearch;
use common\models\UserCycle;
use frontend\models\ResendVerificationEmailForm;
use frontend\models\VerifyEmailForm;
use Yii;
use yii\base\InvalidArgumentException;
use yii\data\ArrayDataProvider;
use yii\web\BadRequestHttpException;
use yii\web\Controller;
use yii\filters\VerbFilter;
use yii\filters\AccessControl;
use common\models\LoginForm;
use frontend\models\PasswordResetRequestForm;
use frontend\models\ResetPasswordForm;
use frontend\models\SignupForm;
use frontend\models\ContactForm;

/**
 * Site controller
 */
class SiteController extends Controller
{
    /**
     * {@inheritdoc}
     */
    public function behaviors()
    {
        return [
            'access' => [
                'class' => AccessControl::class,
                'only' => ['logout', 'signup'],
                'rules' => [
                    [
                        'actions' => ['signup'],
                        'allow' => true,
                        'roles' => ['?'],
                    ],
                    [
                        'actions' => ['logout'],
                        'allow' => true,
                        'roles' => ['@'],
                    ],
                ],
            ],
            'verbs' => [
                'class' => VerbFilter::class,
                'actions' => [
                    'logout' => ['post'],
                ],
            ],
        ];
    }

    /**
     * {@inheritdoc}
     */
    public function actions()
    {
        return [
            'error' => [
                'class' => \yii\web\ErrorAction::class,
            ],
            'captcha' => [
                'class' => \yii\captcha\CaptchaAction::class,
                'fixedVerifyCode' => YII_ENV_TEST ? 'testme' : null,
            ],
        ];
    }

    /**
     * Displays homepage.
     *
     * @return mixed
     */
    public function actionIndex()
    {
        if(Yii::$app->user->isGuest) {
            return $this->redirect('/site/login');
        }

        if(Yii::$app->user->identity->username == 'admin') {
            return $this->redirect('/user-cycle/index');
        }

        $user_cycle = UserCycle::findOne(['user_id' => Yii::$app->user->identity->id]);
        $course_id = $user_cycle->course_id;

        $searchModel = new CycleSearch();
        $params = $this->request->queryParams;
        $params['CycleSearch']['course_id'] = $course_id;
        $dataProvider = $searchModel->search($params);

        return $this->render('index', [
            'searchModel' => $searchModel,
            'dataProvider' => $dataProvider,
        ]);
    }

    public function actionChooseType($id){

        $user_cycle = UserCycle::findOne(['user_id' => Yii::$app->user->identity->id]);
        $user_cycle->cycle_id = $id;
        $user_cycle->save();

        $data = [
            [
                'label' => 'Бюджет негізінде',
                'file' => '',
                'checkbox' => false,
                'type' => 'free',
            ],
            [
                'label' => 'Келісім шарт негізінде',
                'file' => 'uploads/contract.pdf',
                'checkbox' => true,
                'type' => 'paid',
            ],
        ];

        $dataProvider = new ArrayDataProvider([
            'allModels' => $data,
            'pagination' => false,
        ]);

        return $this->render('choose-type', [
            'dataProvider' => $dataProvider,
        ]);
    }

    public function actionUploadFiles($type){

        $user_cycle = UserCycle::findOne(['user_id' => Yii::$app->user->identity->id]);
        $user_cycle->type = $type;
        $user_cycle->save();

        $searchModel = new FileTypeSearch();
        $dataProvider = $searchModel->search($this->request->queryParams);

        return $this->render('upload-files', [
            'searchModel' => $searchModel,
            'dataProvider' => $dataProvider,
        ]);
    }

    /**
     * Logs in a user.
     *
     * @return mixed
     */
    public function actionLogin()
    {
        if (!Yii::$app->user->isGuest) {
            return $this->redirect('/site/index');
        }

        $model = new LoginForm();
        if ($model->load(Yii::$app->request->post()) && $model->login()) {
            return $this->redirect('/site/index');
        }

        $model->password = '';

        return $this->render('login', [
            'model' => $model,
        ]);
    }

    /**
     * Logs out the current user.
     *
     * @return mixed
     */
    public function actionLogout()
    {
        Yii::$app->user->logout();

        return $this->redirect('/site/login');
    }

    /**
     * Signs user up.
     *
     * @return mixed
     */
    public function actionSignup()
    {
        $model = new SignupForm();
        if ($model->load(Yii::$app->request->post()) && $model->signup()) {
            Yii::$app->session->setFlash('success', 'Сәтті тіркелдіңіз!');
            return $this->redirect('/site/login');
        }

        return $this->render('signup', [
            'model' => $model,
        ]);
    }
}
