<?php

/** @var yii\web\View $this */
/** @var yii\bootstrap5\ActiveForm $form */
/** @var \frontend\models\SignupForm $model */

use common\models\Course;
use kartik\select2\Select2;
use yii\bootstrap5\Html;
use yii\bootstrap5\ActiveForm;
use yii\helpers\ArrayHelper;

$this->title = 'Тіркелу';
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="site-signup">
    <h1><?= Html::encode($this->title) ?></h1>

    <div class="row">
        <div class="col-lg-5">
            <?php $form = ActiveForm::begin(['id' => 'form-signup']); ?>

                <?= $form->field($model, 'username')->textInput(['autofocus' => true])->label('Телефон') ?>

                <?= $form->field($model, 'name')->label('Аты - жөні') ?>

                <?= $form->field($model, 'organization')->label('Мекеме') ?>

                <?= $form->field($model, 'course_id')->widget(Select2::class, [
                    'data' => ArrayHelper::map(Course::find()->all(), 'id', 'title_kz'),
                    'options' => ['placeholder' => ''],
                    'pluginOptions' => [
                        'allowClear' => true
                    ],
                ])->label('Мамандық') ?>

                <div class="form-group">
                    <?= Html::submitButton('Тіркелу', ['class' => 'btn btn-primary', 'name' => 'signup-button']) ?>
                </div>

            <?php ActiveForm::end(); ?>
        </div>
    </div>
</div>
