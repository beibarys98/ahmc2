<?php

use yii\helpers\Html;

/** @var yii\web\View $this */
/** @var common\models\UserCycle $model */

$this->title = 'Өзгерту: ' . $model->user->name;
$this->params['breadcrumbs'][] = ['label' => 'Қатысушылар', 'url' => ['index']];
$this->params['breadcrumbs'][] = ['label' => $model->id, 'url' => ['view', 'id' => $model->id]];
$this->params['breadcrumbs'][] = 'Өзгерту';
?>
<div class="user-cycle-update">

    <h1><?= Html::encode($this->title) ?></h1>

    <?= $this->render('_form', [
        'model' => $model,
    ]) ?>

</div>
