<?php

use common\models\UserCycle;
use yii\helpers\Html;
use yii\helpers\Url;
use yii\grid\ActionColumn;
use yii\grid\GridView;

/** @var yii\web\View $this */
/** @var common\models\search\UserCycleSearch $searchModel */
/** @var yii\data\ActiveDataProvider $dataProvider */

$this->title = 'Қатысушылар';
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="user-cycle-index">

    <h1><?= Html::encode($this->title) ?></h1>

    <p>
        <?= Html::a('Қосу', ['create'], ['class' => 'btn btn-success']) ?>
    </p>

    <?php // echo $this->render('_search', ['model' => $searchModel]); ?>

    <?= GridView::widget([
        'dataProvider' => $dataProvider,
        'filterModel' => $searchModel,
        'columns' => [
            [
                'attribute' => 'id',
                'headerOptions' => ['width' => '5'],
            ],
            [
                'attribute' => 'user_name',
                'value' => 'user.name',
            ],
            [
                'attribute' => 'organization',
                'value' => 'user.organization',
            ],
            [
                'attribute' => 'course_title',
                'value' => 'course.title_kz',
            ],
            'status',
            [
                'class' => ActionColumn::className(),
                'urlCreator' => function ($action, UserCycle $model, $key, $index, $column) {
                    return Url::toRoute([$action, 'id' => $model->id]);
                 }
            ],
        ],
    ]); ?>


</div>
