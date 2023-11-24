<?php

namespace App\Controllers;

use App\Libraries\GroceryCrud;

class Examples extends BaseController
{
    public function deportistas_management()
    {
        $crud = new GroceryCrud();

        $crud->setTable('tab_deportistas');
        $crud->setSubject('Deportista');

        // Define las columnas a mostrar
        $crud->columns(['IDDEPORTISTA', 'IDNACIONALIDAD', 'NOMBREDEPORTISTA', 'FECHANACIMIENTO', 'TELEFONO']);

        $output = $crud->render();

        return $this->_exampleOutput($output);
    }

    public function ciudades_management()
    {
        $crud = new GroceryCrud();

        $crud->setTable('tab_ciudades');
        $crud->setSubject('Ciudad');

        // Define las columnas a mostrar
        $crud->columns(['IDCIUDAD', 'NOMBRECIUDAD', 'PAIS']);

        $output = $crud->render();

        return $this->_exampleOutput($output);
    }

    public function deportes_management()
    {
        $crud = new GroceryCrud();

        $crud->setTable('tab_deportes');
        $crud->setSubject('Deporte');

        // Define las columnas a mostrar
        $crud->columns(['IDDEPORTE', 'NOMBREDEPORTE']);

        $output = $crud->render();

        return $this->_exampleOutput($output);
    }

    public function eventos_management()
{
    $crud = new GroceryCrud();

    $crud->setTable('tab_eventos');
    $crud->setSubject('Evento');

    // Define las columnas a mostrar
    $crud->columns(['IDEVENTO', 'IDDEPORTE', 'IDSEDE', 'NOMBREEVENTO', 'FECHAEVENTO']);

    // Configura la relación para mostrar el nombre del deporte en lugar del ID
    $crud->setRelation('IDDEPORTE', 'tab_deportes', 'NOMBREDEPORTE');

    $output = $crud->render();

    return $this->_exampleOutput($output);
}

    public function nacionalidades_management()
    {
        $crud = new GroceryCrud();

        $crud->setTable('tab_nacionalidades');
        $crud->setSubject('Nacionalidad');

        // Define las columnas a mostrar
        $crud->columns(['IDNACIONALIDAD', 'NOMBRENACIONALIDAD']);

        $output = $crud->render();

        return $this->_exampleOutput($output);
    }

    public function resultados_management()
    {
        $crud = new GroceryCrud();

        $crud->setTable('tab_resultados');
        $crud->setSubject('Resultado');

        // Define las columnas a mostrar
        $crud->columns(['IDRESULTADO', 'IDEVENTO', 'IDDEPORTISTA', 'POSICION', 'MARCATIEMPO', 'RONDA']);

        $output = $crud->render();

        return $this->_exampleOutput($output);
    }

    public function sedes_management()
    {
        $crud = new GroceryCrud();

        $crud->setTable('tab_sedesolimpicas');
        $crud->setSubject('Sede Olímpica');

        // Define las columnas a mostrar
        $crud->columns(['IDSEDE', 'IDCIUDAD', 'NOMBRESEDE', 'ANIOCELEBRACION']);

        $output = $crud->render();

        return $this->_exampleOutput($output);
    }



















    private function _exampleOutput($output = null)
    {
        return view('example', (array)$output);
    }
}
