<?php

namespace AccopopBundle\Controller;

use Symfony\Bundle\FrameworkBundle\Controller\Controller;
use Sensio\Bundle\FrameworkExtraBundle\Configuration\Route;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\HttpFoundation\Response;

class DefaultController extends Controller
{
    /**
     * @Route("/")
     */
    public function indexAction()
    {
        // $user = $this->getUser();
        $em = $this->getDoctrine()->getManager();
        $inVehicule = $em->getRepository('AccopopBundle:invehicule')->findAll();
        $aroundVehicule = $em->getRepository('AccopopBundle:aroundvehicule')->findAll();
        $userId = $this->getUser()->getId();
        $userName = $this->getUser();
        return $this->render('@Accopop/Default/index.html.twig', array(
            'userid' => $userId, 'username' => $userName, 'invehicule' => $inVehicule, 'aroundvehicule' => $aroundVehicule ));
    }


    /**
     *
     * @Route("/sendForm")
     */
    public function sendForm(Request $request)
    {
      $em = $this->getDoctrine()->getManager();
      $inVehicule = $em->getRepository('AccopopBundle:invehicule')->findAll();
      $aroundVehicule = $em->getRepository('AccopopBundle:aroundvehicule')->findAll();
      $post = $request->request->all();
      $userId = $this->getUser()->getId();
      $userName = $this->getUser();
      return $this->render('@Accopop/Fiche/fiche.html.twig', array(
          'userid' => $userId, 'username' => $userName, 'requete' => $post, 'invehicule' => $inVehicule, 'aroundvehicule' => $aroundVehicule ));
    }


}
