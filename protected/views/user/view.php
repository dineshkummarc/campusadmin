

<h1>View Admin  <?php //echo $model->user_id; ?></h1>

<?php $this->widget('zii.widgets.CDetailView', array(
	'data'=>$model,
	'attributes'=>array(
	//	'user_id',
		'user_organization_email_id',
	//	'user_password',
	//	'user_created_by',
		array( 'name' => 'user_created_by',
			'value' => User::model()->findbyPk($model->user_created_by)->user_organization_email_id,
		),
		//'user_creation_date',
		array(
                'name'=>'user_creation_date',
                'type'=>'raw',		
                'value'=>($model->user_creation_date == 0000-00-00) ? 'Not Set' : date_format(new DateTime($model->user_creation_date), 'd-m-Y'),
	        ),
	),
)); ?>
