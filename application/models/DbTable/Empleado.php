<?php

class Application_Model_DbTable_Empleado extends Zend_Db_Table_Abstract
{

    protected $_name = 'empleado';

    public function getAll(){
        return $this->fetchAll();
    }
    public function detele($id){
         $this->delete('id =' . (int) $id);
    }
    public function updateRow($emp_no, $apellido, $oficio, $dir, $fecha_alta, $salario, $comision, $dept){
         $data = array('emp_no' => $emp_no, 'apellido' => $apellido,
            'oficio' => $oficio, 'dir' => $dir,
            'fecha_alta' => $fecha_alta, 'salario' => $salario,
            'comision' => $comision, 'dept' => $dept);
         $this->update($data, 'id = ' . (int) $id);
    }
    public function add($emp_no, $apellido, $oficio, $dir, $fecha_alta, $salario, $comision, $dept){
         $data = array('emp_no' => emp_no, 'apellido' => $apellido,
            'oficio' => $oficio, 'dir' => $dir,
            'fecha_alta' => $fecha_alta, 'salario' => $salario,
            'comision' => $comision, 'dept' => $dept);
         $this->insert($data);
    }
}

