unitDef = {
  unitname            = [[shieldassault]],
  name                = [[Thug]],
  description         = [[Shielded Assault Bot]],
  acceleration        = 0.25,
  activateWhenBuilt   = true,
  brakeRate           = 0.22,
  buildCostMetal      = 180,
  buildPic            = [[shieldassault.png]],
  canGuard            = true,
  canMove             = true,
  canPatrol           = true,
  category            = [[LAND]],
  corpse              = [[DEAD]],

  customParams        = {
  },

  explodeAs           = [[BIG_UNITEX]],
  footprintX          = 2,
  footprintZ          = 2,
  iconType            = [[walkerassault]],
  idleAutoHeal        = 5,
  idleTime            = 1800,
  leaveTracks         = true,
  maxDamage           = 960,
  maxSlope            = 36,
  maxVelocity         = 1.925,
  maxWaterDepth       = 22,
  minCloakDistance    = 75,
  movementClass       = [[KBOT2]],
  noChaseCategory     = [[TERRAFORM FIXEDWING SUB]],
  objectName          = [[thud.s3o]],
  onoffable           = false,
  script			  = [[shieldassault.lua]],
  selfDestructAs      = [[BIG_UNITEX]],

  sfxtypes            = {

    explosiongenerators = {
      [[custom:THUDMUZZLE]],
      [[custom:THUDSHELLS]],
      [[custom:THUDDUST]],
    },

  },

  sightDistance       = 420,
  trackOffset         = 0,
  trackStrength       = 8,
  trackStretch        = 1,
  trackType           = [[ComTrack]],
  trackWidth          = 22,
  turnRate            = 2000,
  upright             = true,

  weapons             = {

    {
      def                = [[THUD_WEAPON]],
      badTargetCategory  = [[FIXEDWING]],
      onlyTargetCategory = [[FIXEDWING LAND SINK TURRET SHIP SWIM FLOAT GUNSHIP HOVER]],
    },

    {
      def = [[SHIELD]],
    },

  },

  weaponDefs          = {

    SHIELD      = {
      name                    = [[Energy Shield]],

      damage                  = {
        default = 10,
      },

      exteriorShield          = true,
      shieldAlpha             = 0.2,
      shieldBadColor          = [[1 0.1 0.1]],
      shieldGoodColor         = [[0.1 0.1 1]],
      shieldInterceptType     = 3,
      shieldPower             = 1250,
      shieldPowerRegen        = 16,
      shieldPowerRegenEnergy  = 0,
      shieldRadius            = 80,
      shieldRepulser          = false,
      shieldStartingPower     = 850,
      smartShield             = true,
      texture1                = [[shield3mist]],
      visibleShield           = true,
      visibleShieldHitFrames  = 4,
      visibleShieldRepulse    = true,
      weaponType              = [[Shield]],
    },

    THUD_WEAPON = {
      name                    = [[Light Plasma Cannon]],
      areaOfEffect            = 36,
      craterBoost             = 0,
      craterMult              = 0,

      customParams        = {
		light_camera_height = 1400,
		light_color = [[0.80 0.54 0.23]],
		light_radius = 200,
      },
	  
      damage                  = {
        default = 170,
        planes  = 170,
        subs    = 8,
      },

      explosionGenerator      = [[custom:MARY_SUE]],
      impulseBoost            = 0,
      impulseFactor           = 0.4,
      interceptedByShieldType = 1,
      range                   = 280,
      reloadtime              = 4,
      soundHit                = [[explosion/ex_med5]],
      soundStart              = [[weapon/cannon/cannon_fire5]],
      turret                  = true,
      weaponType              = [[Cannon]],
      weaponVelocity          = 200,
    },

  },

  featureDefs         = {

    DEAD  = {
      blocking         = true,
      featureDead      = [[HEAP]],
      footprintX       = 2,
      footprintZ       = 2,
      object           = [[thug_d.s3o]],
    },

    HEAP  = {
      blocking         = false,
      footprintX       = 2,
      footprintZ       = 2,
      object           = [[debris2x2c.s3o]],
    },

  },

}

return lowerkeys({ shieldassault = unitDef })