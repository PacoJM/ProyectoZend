<?php

class Application_Model_DbTable_Departamento extends Zend_Db_Table_Abstract
{

    protected $_name = 'departamento';
    
    public function getAll(){
        return $this->fetchAll();
    }
    public function detele($id){
         $this->delete('id =' . (int) $id);
    }
    public function updateRow($deptno, $dname, $loc){
         $data = array('deptno' => $deptno, 'dname' => $dname, 'loc' => $loc);
         $this->update($data, 'id = ' . (int) $id);
    }
    public function add($deptno, $dname, $loc){
         $data = array('deptno' => $deptno, 'dname' => $dname, 'loc' => $loc);
         $this->insert($data);
    }

}

