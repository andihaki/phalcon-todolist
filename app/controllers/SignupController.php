<?php

namespace Application\Controllers;

class SignupController extends ControllerBase
{

    public function indexAction()
    {

    }

    public function registerAction() {
        $user = new Users();

        // store and error checking
        $success = $user->save($this->request->get_post(["name", "email"]));
        

        if ($success) {
            echo "Yess";
        } else {
            echo "Oops, craps happend: ";
            $messages = $user->getMessages();
            foreach ($messages as $message) {
                echo $message->getMessage(), "<br />";
            }
        }

        $this->View->disable();
    }

}

