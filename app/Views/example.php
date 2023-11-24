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
		<a href='<?php echo base_url('customers_management') ?>'>Clientes</a> |
		<a href='<?php echo base_url('orders_management') ?>'>Órdenes</a> |
		<a href='<?php echo base_url('products_management') ?>'>Productos</a> |
		<a href='<?php echo base_url('offices_management') ?>'>Oficinas</a> |
		<a href='<?php echo base_url('employees_management') ?>'>Empleados</a> |
		<a href='<?php echo base_url('film_management') ?>'>Películas</a>  |
		<a href='<?php echo base_url('actors_management') ?>'>Actores</a>



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