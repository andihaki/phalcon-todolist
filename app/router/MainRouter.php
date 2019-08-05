<?php
/**
 * Created by PhpStorm.
 * User: gamalan
 * Date: 07/10/16
 * Time: 10:24
 */

namespace Application\Router;

use Phalcon\Mvc\Router\Group;

class MainRouter extends Group
{
    public function initialize()
    {
        $this->setPaths([
            'namespaces' => 'Application\\Controllers',
            'controller'=>'index'
        ]);

        $this->add('/', [
            'controller' => 'todo',
            'action' => 'index'
        ]);
        
        $this->add('/add-todo', [
            'controller' => 'todo',
            'action' => 'addTodo'
        ]);

        $this->add('/edit-todo/:params', [
            'controller' => 'todo',
            'action' => 'editTodo',
            'params' => 1
        ]);

        $this->add('/update-todo', [
            'controller' => 'todo',
            'action' => 'updateTodo',
        ]);

        $this->add('/delete-todo/:params', [
            'controller' => 'todo',
            'action' => 'deleteTodo',
            'params' => 1
        ]);
    }
}