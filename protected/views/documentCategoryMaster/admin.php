
<h1>Manage Document Categories</h1>
<div class="portlet box blue">


 <div class="portlet-title"> Document Type
 </div>

<?php echo CHtml::link('Add New +', array('documentCategoryMaster/create'), array('class'=>'btn green'))?>

<?php
$dataProvider = $model->search();
if(Yii::app()->user->getState("pageSize",@$_GET["pageSize"]))
$pageSize = Yii::app()->user->getState("pageSize",@$_GET["pageSize"]);
else
$pageSize = Yii::app()->params['pageSize'];
$dataProvider->getPagination()->setPageSize($pageSize);
?>

<?php $this->widget('zii.widgets.grid.CGridView', array(
	'id'=>'document-category-master-grid',
	'dataProvider'=>$dataProvider,
	'filter'=>$model,
	'selectionChanged'=>"function(id){
		window.location='" . Yii::app()->urlManager->createUrl('documentCategoryMaster/view', array('id'=>'')) . "' + $.fn.yiiGridView.getSelection(id);
	}",
	'columns'=>array(
		//'doc_category_id',
		array(
		'header'=>'SI No',
		'class'=>'IndexColumn',
		),
		'doc_category_name',
		//'created_by',
		//'creation_date',
		//'docs_category_organization_id',

		
	),
	'pager'=>array(
		'class'=>'AjaxList',

//		'maxButtonCount'=>25,
		'maxButtonCount'=>$model->count(),
		'header'=>''
	    ),
)); ?>

</div>
