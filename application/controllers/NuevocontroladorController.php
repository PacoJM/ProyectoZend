<?php

class NuevocontroladorController extends Zend_Controller_Action
{

    public function init()
    {
        /* Initialize action controller here */
    }

    public function indexAction()
    {
        // action body
        $this->view->testing="Este mensaje es una prueba";
    }


}

