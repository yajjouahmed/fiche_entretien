<?php

namespace AccopopBundle\Entity;

use Doctrine\ORM\Mapping as ORM;

/**
 * invehicule
 *
 * @ORM\Table(name="invehicule")
 * @ORM\Entity(repositoryClass="AccopopBundle\Repository\invehiculeRepository")
 */
class invehicule
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
     * @ORM\Column(name="inspect_element_in", type="string", length=255)
     */
    private $inspectElementIn;

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
     * Set inspectElementIn
     *
     * @param string $inspectElementIn
     *
     * @return invehicule
     */
    public function setInspectElementIn($inspectElementIn)
    {
        $this->inspectElementIn = $inspectElementIn;

        return $this;
    }

    /**
     * Get inspectElementIn
     *
     * @return string
     */
    public function getInspectElementIn()
    {
        return $this->inspectElementIn;
    }

    /**
     * Set conform
     *
     * @param integer $conform
     *
     * @return invehicule
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
     * @return invehicule
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
     * @return invehicule
     */
    public function setElementVeehicule($elementVehicule)
    {
        $this->elementVehicule = $elementVeehicule;

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
