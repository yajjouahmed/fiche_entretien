<?php

namespace AccopopBundle\Entity;

use Doctrine\ORM\Mapping as ORM;

/**
 * aroundvehicule
 *
 * @ORM\Table(name="aroundvehicule")
 * @ORM\Entity(repositoryClass="AccopopBundle\Repository\aroundvehiculeRepository")
 */
class aroundvehicule
{
    /**
     * @var int
     *
     * @ORM\Column(name="id", type="integer")
     * @ORM\Id
     * @ORM\GeneratedValue(strategy="AUTO")
     */
    private $id;

    /**
     * @var string
     *
     * @ORM\Column(name="inspect_element_around", type="string", length=255)
     */
    private $inspectElementAround;

    /**
     * @var int
     *
     * @ORM\Column(name="conform", type="integer")
     */
    private $conform;

    /**
     * @var int
     *
     * @ORM\Column(name="no_conform", type="integer")
     */
    private $noConform;

    /**
     * @var string
     *
     * @ORM\Column(name="element_vehicule", type="string", length=255)
     */
    private $elementVehicule;


    /**
     * Get id
     *
     * @return int
     */
    public function getId()
    {
        return $this->id;
    }

    /**
     * Set inspectElementAround
     *
     * @param string $inspectElementAround
     *
     * @return aroundvehicule
     */
    public function setInspectElementAround($inspectElementAround)
    {
        $this->inspectElementAround = $inspectElementAround;

        return $this;
    }

    /**
     * Get inspectElementAround
     *
     * @return string
     */
    public function getInspectElementAround()
    {
        return $this->inspectElementAround;
    }

    /**
     * Set conform
     *
     * @param integer $conform
     *
     * @return aroundvehicule
     */
    public function setConform($conform)
    {
        $this->conform = $conform;

        return $this;
    }

    /**
     * Get conform
     *
     * @return int
     */
    public function getConform()
    {
        return $this->conform;
    }

    /**
     * Set noConform
     *
     * @param integer $noConform
     *
     * @return aroundvehicule
     */
    public function setNoConform($noConform)
    {
        $this->noConform = $noConform;

        return $this;
    }

    /**
     * Get noConform
     *
     * @return int
     */
    public function getNoConform()
    {
        return $this->noConform;
    }

    /**
     * Set elementVehicule
     *
     * @param string $elementVehicule
     *
     * @return aroundvehicule
     */
    public function setElementVehicule($elementVehicule)
    {
        $this->elementVehicule = $elementVehicule;

        return $this;
    }

    /**
     * Get elementVehicule
     *
     * @return string
     */
    public function getElementVehicule()
    {
        return $this->elementVehicule;
    }
}
