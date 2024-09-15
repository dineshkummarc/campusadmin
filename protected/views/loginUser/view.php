

<h1>View LoginUser #<?php echo $model->id; ?></h1>

<?php $this->widget('zii.widgets.CDetailView', array(
	'data'=>$model,
	'attributes'=>array(
		'id',
		'user_id',
		'status',
		'log_in_time',
		'log_out_time',
	),
)); ?>
