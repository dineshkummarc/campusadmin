
<h1>View LanguagesKnown #<?php echo $model->languages_known_id; ?></h1>

<?php $this->widget('zii.widgets.CDetailView', array(
	'data'=>$model,
	'attributes'=>array(
		'languages_known_id',
		'languages_known1',
		'languages_known2',
		'languages_known3',
		'languages_known4',
	),
)); ?>
