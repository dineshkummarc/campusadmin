
<div class="portlet box blue">
<i class="icon-reorder"></i>
 <div class="portlet-title">View Lesson
 </div>
<?php $this->widget('zii.widgets.CDetailView', array(
	'data'=>$model,
	'attributes'=>array(
		//'unit_detail_id',
		//'unit_detail_unit_master_id',
		//'unit_detail_course_id',
		//'unit_detail_title',
		array(
		'name'=>'Title',
		'value'=>$model->unit_detail_title,
			),
		array(
		'name'=>'Description',
		'type'=>'raw',
		'value'=>$model->unit_detail_desc,
			),
		array(
		'name'=>'Lesson Date',
		'value'=>date('d-m-Y',strtotime($model->unit_lec_date)),
			),
		array('name'=>'unit_detail_created_by',
			'value'=>User::model()->findByPk($model->unit_detail_created_by)->user_organization_email_id,
		),

	),
	'htmlOptions'=> array('class'=>'custom-view'),
)); ?>
</div>
