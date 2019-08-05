<?php

namespace Application\Controllers;

use Phalcon\Mvc\Controller;
use Application\Models\Todos;

class TodoController extends ControllerBase {
    public function indexAction() {
        $todos = Todos::find();
        $this->view->todos = $todos;
    }

    public function addTodoAction() {
        $todo = new Todos();

        $success = $todo->save(
            $this->request->getPost(),
            ["todo"]
        );

        if ($success) {
            $this->view->message = "Success, Add New Todo";
        } else {
            $msg = "Oops, ";
            $messages = $todo->getMessages();

            foreach ($messages as $message) {
                $msg += $message->getMessage(). "<br />";
            }
            $this->view->message = $msg;
        }
    }

    public function editTodoAction($id) {
        $user = Todos::findFirstByid($id);
        $this->view->id = $user->id;
        $this->view->todo = $user->todo;
        $this->view->status = $user->status;
        $this->view->last_update = $user->last_update;
    }

    public function updateTodoAction() {
        $id = $this->request->getPost('id');
        
        $todo = Todos::findFirstByid($id);
        $todo->todo = $this->request->getPost('todo');
        $todo->status = $this->request->getPost('status')
            ? $this->request->getPost('status')
            : 0;
        $todo->last_update = date('Y-m-d H:i:s');

        if ($todo->save()) {
            $this->view->message = "Update todo OK";
        } else {
            $this->view->message = "Update todo FAILED";
        }
    }

    public function deleteTodoAction($id) {
        $todo = Todos::findFirstByid($id);
        if ($todo->delete()) {
            $this->view->message = "Delete todo OK";
        } else {
            $this->view->message = "Delete todo FAILED";
        }
    }
}