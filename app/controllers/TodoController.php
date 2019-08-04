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
}