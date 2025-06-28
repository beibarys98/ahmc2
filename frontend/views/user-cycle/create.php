<?php

use yii\helpers\Html;

/** @var yii\web\View $this */
/** @var common\models\UserCycle $model */

$this->title = 'Create User Cycle';
$this->params['breadcrumbs'][] = ['label' => 'User Cycles', 'url' => ['index']];
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="user-cycle-create">

    <h1><?= Html::encode($this->title) ?></h1>

    <?= $this->render('_form', [
        'model' => $model,
    ]) ?>

</div>
