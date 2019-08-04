<?php

namespace Application\Controllers;
// use Application\Controllers\Users;

use Phalcon\Mvc\Controller;
use Application\Models;

class UserController extends ControllerBase
{

    public function indexAction()
    {
        echo "ok";
    }

    public function signupAction() {
        
    }

    public function registerAction() {
        $user = new \Application\Models\Users();
        // $user = $this;

        $success = $user->save(
            $this->request->getPost(),
            ["name", "email"]
        );
        // $success = true;

        if ($success) {
            return $this->view->message = "OK";
        } else {
            $msg = "Something wrong, ";
            $messages = $user->getMessages();

            foreach ($messages as $message) {
                $msg += $message->getMessage(). "<br />";
            }
            return $this->view->message = $msg;
        }
    }

}

