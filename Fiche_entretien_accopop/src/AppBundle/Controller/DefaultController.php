<?php

namespace AppBundle\Controller;

use Sensio\Bundle\FrameworkExtraBundle\Configuration\Route;
use Symfony\Bundle\FrameworkBundle\Controller\Controller;
use Symfony\Component\HttpFoundation\Request;
use FOS\UserBundle\Model\User;

class DefaultController extends Controller
{
      /**
       * @Route("/" , name="homepage")
       */
      public function indexAction()
      {
          return $this->render('Default/index.html.twig');
      }

}
