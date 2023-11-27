<?php

use CodeIgniter\Router\RouteCollection;
use App\Controllers\Home;
use App\Controllers\Examples;
use App\Controllers\Pages; // Asegúrate de tener la ruta correcta a la clase Pages

/**
 * @var RouteCollection $routes
 */
$routes->get('/', 'Home::index');

$routes->get('/sedes_management', 'Examples::sedes_management');
$routes->add('/sedes_management/(:segment)(/(:segment))?', 'Examples::sedes_management/$1/$3');

$routes->get('/resultados_management', 'Examples::resultados_management');
$routes->add('/resultados_management/(:segment)(/(:segment))?', 'Examples::resultados_management/$1/$3');

$routes->get('/nacionalidades_management', 'Examples::nacionalidades_management');
$routes->add('/nacionalidades_management/(:segment)(/(:segment))?', 'Examples::nacionalidades_management/$1/$3');

$routes->get('/eventos_management', 'Examples::eventos_management');
$routes->add('/eventos_management/(:segment)(/(:segment))?', 'Examples::eventos_management/$1/$3');

$routes->get('/deportes_management', 'Examples::deportes_management');
$routes->add('/deportes_management/(:segment)(/(:segment))?', 'Examples::deportes_management/$1/$3');

$routes->get('/ciudades_management', 'Examples::ciudades_management');
$routes->add('/ciudades_management/(:segment)(/(:segment))?', 'Examples::ciudades_management/$1/$3');

$routes->get('/deportistas_management', 'Examples::deportistas_management');
$routes->add('/deportistas_management/(:segment)(/(:segment))?', 'Examples::deportistas_management/$1/$3');




$routes->get('pages', [Pages::class, 'index']);
$routes->get('(:segment)', [Pages::class, 'view']);