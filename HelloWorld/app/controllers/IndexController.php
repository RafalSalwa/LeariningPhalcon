<?php

class IndexController extends ControllerBase
{

    public function indexAction()
    {
        $this->view->message = 'Hello World From Controller';
        $this->view->setVar("message2", "Hello Volt From Controller");
        $this->view->setVar("random", rand(1,10));
    }

}

