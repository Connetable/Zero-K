unitDef = {
  unitname            = [[spiderscout]],
  name                = [[Flea]],
  description         = [[Ultralight Scout Spider (Burrows)]],
  acceleration        = 0.7,
  brakeRate           = 2.1,
  buildCostMetal      = 20,
  buildPic            = [[spiderscout.png]],
  canGuard            = true,
  canMove             = true,
  canPatrol           = true,
  category            = [[LAND TOOFAST]],
  cloakCost           = 0,
  corpse              = [[DEAD]],

  customParams        = {
    idle_cloak = 1,
  },

  explodeAs           = [[TINY_BUILDINGEX]],
  footprintX          = 1,
  footprintZ          = 1,
  iconType            = [[spiderscout]],
  idleAutoHeal        = 5,
  idleTime            = 1800,
  maxDamage           = 40,
  maxSlope            = 72,
  maxVelocity         = 4.8,
  maxWaterDepth       = 15,
  minCloakDistance    = 120,
  movementClass       = [[TKBOT1]],
  moveState           = 0,
  noChaseCategory     = [[TERRAFORM FIXEDWING SATELLITE SUB]],
  objectName          = [[arm_flea.s3o]],
  pushResistant       = 0,
  script	      			= [[spiderscout.lua]],
  selfDestructAs      = [[TINY_BUILDINGEX]],

  sfxtypes            = {

    explosiongenerators = {
      [[custom:digdig]],
    },

  },

  sightDistance       = 560,
  turnRate            = 2100,

  weapons             = {

    {
      def                = [[LASER]],
      badTargetCategory  = [[FIXEDWING]],
      onlyTargetCategory = [[FIXEDWING LAND SINK TURRET SHIP SWIM FLOAT GUNSHIP HOVER]],
    },

  },

  weaponDefs          = {

    LASER = {
      name                    = [[Micro Laser]],
      areaOfEffect            = 8,
      beamTime                = 0.1,
      burstrate               = 0.2,
      coreThickness           = 0.5,
      craterBoost             = 0,
      craterMult              = 0,
      
      customParams            = {
		light_color = [[0.8 0.8 0]],
		light_radius = 50,
      },

      damage                  = {
        default = 10.57,
        planes  = 10.57,
        subs    = 0.5,
      },

      explosionGenerator      = [[custom:beamweapon_hit_yellow_tiny]],
      fireStarter             = 50,
      impactOnly              = true,
      impulseBoost            = 0,
      impulseFactor           = 0.4,
      interceptedByShieldType = 1,
      laserFlareSize          = 3.22,
      minIntensity            = 1,
      noSelfDamage            = true,
      range                   = 140,
      reloadtime              = 0.25,
      rgbColor                = [[1 1 0]],
      soundStart              = [[weapon/laser/small_laser_fire]],
      soundTrigger            = true,
      thickness               = 2.14476105895272,
      tolerance               = 10000,
      turret                  = true,
      weaponType              = [[BeamLaser]],
      weaponVelocity          = 600,
    },

  },

  featureDefs                   = {

    DEAD = {
      blocking         = false,
      featureDead      = [[HEAP]],
      footprintX       = 1,
      footprintZ       = 1,
      object           = [[flea_d.dae]],
    },

    HEAP = {
      blocking         = false,
      footprintX       = 1,
      footprintZ       = 1,
      object           = [[debris1x1b.s3o]],
    },

  },

}

return lowerkeys({ spiderscout = unitDef })