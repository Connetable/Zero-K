unitDef = {
  unitname               = [[gunshipkrow]],
  name                   = [[Krow]],
  description            = [[Flying Fortress]],
  acceleration           = 0.09,
  activateWhenBuilt      = true,
  airStrafe              = 0,
  bankingAllowed         = false,
  brakeRate              = 0.04,
  buildCostMetal         = 4500,
  builder                = false,
  buildPic               = [[gunshipkrow.png]],
  canFly                 = true,
  canGuard               = true,
  canMove                = true,
  canPatrol              = true,
  canSubmerge            = false,
  category               = [[GUNSHIP]],
  collide                = true,
  collisionVolumeOffsets = [[0 0 5]],
  collisionVolumeScales  = [[86 22 86]],
  collisionVolumeType    = [[cylY]],
  corpse                 = [[DEAD]],
  cruiseAlt              = 120,

  customParams           = {
	modelradius    = [[10]],
  },

  explodeAs              = [[LARGE_BUILDINGEX]],
  floater                = true,
  footprintX             = 5,
  footprintZ             = 5,
  hoverAttack            = true,
  iconType               = [[supergunship]],
  idleAutoHeal           = 5,
  idleTime               = 1800,
  maneuverleashlength    = [[500]],
  maxDamage              = 16000,
  maxVelocity            = 3.3,
  minCloakDistance       = 150,
  noAutoFire             = false,
  noChaseCategory        = [[TERRAFORM FIXEDWING SATELLITE SUB]],
  objectName          	 = [[krow.s3o]],
  script			     = [[gunshipkrow.lua]],
  selfDestructAs         = [[LARGE_BUILDINGEX]],

  sfxtypes               = {

    explosiongenerators = {
      [[custom:BEAMWEAPON_MUZZLE_RED]],
      [[custom:BEAMWEAPON_MUZZLE_RED]],
    },

  },
  sightDistance          = 633,
  turnRate               = 250,
  upright                = true,
  workerTime             = 0,
  
  weapons                = {

    {
      def                = [[KROWLASER]],
	  mainDir            = [[0.38 0.1 0.2]],
	  maxAngleDif        = 180,
      badTargetCategory  = [[FIXEDWING]],
      onlyTargetCategory = [[FIXEDWING LAND SINK TURRET SHIP SWIM FLOAT GUNSHIP HOVER]],
    },


    {
      def                = [[KROWLASER]],
	  mainDir            = [[-0.38 0.1 0.2]],
	  maxAngleDif        = 180,
      badTargetCategory  = [[FIXEDWING]],
      onlyTargetCategory = [[FIXEDWING LAND SINK TURRET SHIP SWIM FLOAT GUNSHIP HOVER]],
    },
	
    {
      def                = [[CLUSTERBOMB]],
	  mainDir            = [[0 0 1]],
	  maxAngleDif        = 360,	  
    },
	
    {
      def                = [[KROWLASER]],
	  mainDir            = [[0 0.1 -0.38]],
	  maxAngleDif        = 180,
      badTargetCategory  = [[FIXEDWING]],
      onlyTargetCategory = [[FIXEDWING LAND SINK TURRET SHIP SWIM FLOAT GUNSHIP HOVER]],
    },

  },


  weaponDefs             = {

    KROWLASER  = {
      name                    = [[Laserbeam]],
      areaOfEffect            = 8,
      avoidFeature            = false,
      canattackground         = true,
      collideFriendly         = false,
      coreThickness           = 0.5,
      craterBoost             = 0,
      craterMult              = 0,

      customParams        = {
		light_camera_height = 1800,
		light_radius = 160,
      },

      damage                  = {
        default = 37.8,
        subs    = 1.8,
      },

      duration                = 0.02,
      explosionGenerator      = [[custom:BEAMWEAPON_HIT_RED]],
      fireStarter             = 50,
      impactOnly              = true,
      impulseBoost            = 0,
      impulseFactor           = 0.4,
      interceptedByShieldType = 1,
      range                   = 450,
      reloadtime              = 0.2,
      rgbColor                = [[1 0 0]],
      soundHit                = [[weapon/laser/lasercannon_hit]],
      soundStart              = [[weapon/laser/heavylaser_fire2]],
	  soundStartVolume		  = 0.7,
      soundTrigger            = true,
      thickness               = 3.25,
      tolerance               = 10000,
      turret                  = true,
      weaponType              = [[LaserCannon]],
      weaponVelocity          = 2300,
    },

    TIMEDISTORT    = {
      name                    = [[Time Distortion Field]],
      areaOfEffect            = 600,
	  burst					  = 100,
	  burstRate				  = 0.1,	  
      craterBoost             = 0,
      craterMult              = 0,

      damage                  = {
        default = 100,
      },

      edgeeffectiveness       = 0.75,
      explosionGenerator      = [[custom:riotball_dark]],
      explosionSpeed          = 3,
      impulseBoost            = 1,
      impulseFactor           = -2,
      interceptedByShieldType = 1,
      myGravity               = 10,
      noSelfDamage            = true,
      range                   = 300,
      reloadtime              = 30,
      soundHitVolume          = 1,
      turret                  = true,
      weaponType              = [[Cannon]],
      weaponVelocity          = 230,
    },	
	
    CLUSTERBOMB = {
      name                    = [[Cluster Bomb]],
      accuracy                = 200,
      areaOfEffect            = 128,
	  burst					  = 75,
	  burstRate				  = 0.07, -- real value in script; here for widgets	  
      commandFire             = true,
      craterBoost             = 1,
      craterMult              = 2,
	
      damage                  = {
        default = 250,
        planes  = 250,
        subs    = 12.5,
      },
      
      explosionGenerator      = [[custom:MEDMISSILE_EXPLOSION]],
      fireStarter             = 180,
      impulseBoost            = 0,
      impulseFactor           = 0.2,
      interceptedByShieldType = 2,
      model                   = [[wep_b_fabby.s3o]],
      range                   = 200,
      reloadtime              = 30, -- if you change this redo the value in oneclick_weapon_defs EMPIRICALLY
      smokeTrail              = true,
      soundHit                = [[explosion/ex_med6]],
      soundHitVolume          = 8,
      soundStart              = [[weapon/cannon/mini_cannon]],
      soundStartVolume        = 2,
      sprayangle              = 14400,
      turret                  = true,
      weaponType              = [[Cannon]],
      weaponVelocity          = 400,
	},
  },


  featureDefs            = {

    DEAD  = {
      blocking         = true,
	  collisionVolumeOffsets = [[0 0 0]],
	  collisionVolumeScales  = [[80 30 80]],
	  collisionVolumeType    = [[ellipsoid]],	  
      featureDead      = [[HEAP]],
      footprintX       = 5,
      footprintZ       = 5,
      object           = [[krow_dead.s3o]],
    },


    HEAP  = {
      blocking         = false,
      footprintX       = 4,
      footprintZ       = 4,
      object           = [[debris4x4a.s3o]],
    },

  },

}

return lowerkeys({ gunshipkrow = unitDef })