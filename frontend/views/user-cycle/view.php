<?php

use yii\helpers\Html;
use yii\widgets\DetailView;

/** @var yii\web\View $this */
/** @var common\models\UserCycle $model */

$this->title = $model->user->name;
$this->params['breadcrumbs'][] = ['label' => 'Қатысушылар', 'url' => ['index']];
$this->params['breadcrumbs'][] = $this->title;
\yii\web\YiiAsset::register($this);
?>
<div class="user-cycle-view">

    <h1><?= Html::encode($this->title) ?></h1>

    <p>
        <?= Html::a('Өзгерту', ['update', 'id' => $model->id], ['class' => 'btn btn-primary']) ?>
        <?= Html::a('Өшіру', ['delete', 'id' => $model->id], [
            'class' => 'btn btn-danger',
            'data' => [
                'confirm' => 'Are you sure you want to delete this item?',
                'method' => 'post',
            ],
        ]) ?>
    </p>

    <?= DetailView::widget([
        'model' => $model->user,
        'attributes' => [
            'id',
            'username',
            'name',
            'organization',
        ],
    ]) ?>

    <?= DetailView::widget([
        'model' => $model,
        'attributes' => [
            'id',
            'user_id',
            'course_id',
            'cycle_id',
            'type',
            'status',
        ],
    ]) ?>

</div>
