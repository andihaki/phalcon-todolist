<?php

namespace Application\Controllers;

use Phalcon\Mvc\Controller;
use Application\Models\Todos;

class TodoController extends ControllerBase {
    public function indexAction() {
        // echo "Todos";
        $todos = Todos::find();
        // $todos = [
        //     "todo" => "aa"
        // ];
        $this->view->todos = $todos;
    }

    public function addTodoAction() {
        $todo = new Todos();

        $success = $todo->save(
            $this->request->getPost(),
            ["todo"]
        );

        if ($success) {
            return $this->view->message = "Success, Add New Todo";
        } else {
            $msg = "Oops, ";
            $messages = $todo->getMessages();

            foreach ($messages as $message) {
                $msg += $message->getMessage(). "<br />";
            }
            return $this->view->message = $msg;
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
        $todo->status = $this->request->getPost('status');

        if ($todo->save()) {
            return $this->view->message = "Update todo OK";
        } else {
            return $this->view->message = "Update todo FAILED";
        }
    }

    public function deleteTodoAction($id) {
        $todo = Todos::findFirstByid($id);
        if ($todo->delete()) {
            return $this->view->message = "Delete todo OK";
        } else {
            return $this->view->message = "Delete todo FAILED";
        }
    }
}