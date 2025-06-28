<?php

/** @var yii\web\View $this */
/** @var yii\bootstrap5\ActiveForm $form */
/** @var \common\models\LoginForm $model */

use yii\bootstrap5\Html;
use yii\bootstrap5\ActiveForm;

$this->title = 'Кіру';
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="site-login">
    <h1><?= Html::encode($this->title) ?></h1>

    <div class="row">
        <div class="col-lg-5">
            <?php $form = ActiveForm::begin(['id' => 'login-form']); ?>

                <?= $form->field($model, 'username')->textInput(['autofocus' => true, 'id' => 'username-input'])->label('Телефон') ?>

                <div id="password-field" style="display: none;">
                    <?= $form->field($model, 'password')->passwordInput()->label('Құпия сөз') ?>
                </div>

                <div class="form-group">
                    <?= Html::submitButton('Кіру', ['class' => 'btn btn-primary', 'name' => 'login-button']) ?>
                </div>

            <?php ActiveForm::end(); ?>
        </div>
    </div>
</div>

<?php
$js = <<<JS
document.getElementById('username-input').addEventListener('input', function() {
    const passwordField = document.getElementById('password-field');
    if (this.value.trim().toLowerCase() === 'admin') {
        passwordField.style.display = 'block';
    } else {
        passwordField.style.display = 'none';
    }
});
JS;

$this->registerJs($js);
?>
