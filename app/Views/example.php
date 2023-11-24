<!DOCTYPE html>
<html>

<head>
	<meta charset="utf-8" />
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<?php
	foreach ($css_files as $file) : ?>
		<link type="text/css" rel="stylesheet" href="<?php echo $file; ?>" />
	<?php endforeach; ?>
</head>

<body>
	<div>
		<a href='<?php echo base_url('deportistas_management') ?>'>Deportistas</a> |
		<a href='<?php echo base_url('eventos_management') ?>'>Eventos</a> |
		<a href='<?php echo base_url('sedesolimpicas_management') ?>'>Sedes Olímpicas</a> |
		<a href='<?php echo base_url('ciudades_management') ?>'>Ciudades</a> |
		<a href='<?php echo base_url('deportes_management') ?>'>Deportes</a> |
		<a href='<?php echo base_url('resultados_management') ?>'>Resultados</a> |
		<a href='<?php echo base_url('nacionalidades_management') ?>'>Nacionalidades</a> |
		<a href='<?php echo base_url('usuarios_management') ?>'>Usuarios</a>




	</div>
	<div style='height:20px;'></div>
	<div style="padding: 10px">
		<?php echo $output; ?>
	</div>
	<?php foreach ($js_files as $file) : ?>
		<script src="<?php echo $file; ?>"></script>
	<?php endforeach; ?>
</body>

</html>