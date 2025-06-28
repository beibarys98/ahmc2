<?php

/** @var yii\web\View $this */

use common\models\FileType;
use yii\grid\ActionColumn;
use yii\grid\GridView;
use yii\helpers\Html;
use yii\helpers\Url;

$this->title = Yii::$app->name;
?>
<div class="site-index">

    <h1>Файлдарды жүктеңіз</h1>

    <br>

    <?= GridView::widget([
        'dataProvider' => $dataProvider,
        'filterModel' => $searchModel,
        'summary' => false,
        'showHeader' => false,
        'columns' => [
            [
                'attribute' => 'id',
                'headerOptions' => ['width' => '5'],
            ],
            'file',
            'type',
            [
                'class' => ActionColumn::className(),
                'urlCreator' => function ($action, FileType $model, $key, $index, $column) {
                    return Url::toRoute([$action, 'id' => $model->id]);
                }
            ],
        ],
    ]); ?>

</div>


