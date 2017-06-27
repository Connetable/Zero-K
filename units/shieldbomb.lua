unitDef = {
  unitname               = [[shieldbomb]],
  name                   = [[Roach]],
  description            = [[Crawling Bomb (Burrows)]],
  acceleration           = 0.25,
  activateWhenBuilt      = true,
  brakeRate              = 0.4,
  buildCostMetal         = 160,
  buildPic               = [[shieldbomb.png]],
  canGuard               = true,
  canMove                = true,
  canPatrol              = true,
  category               = [[LAND TOOFAST]],
  cloakCost              = 0,
  collisionVolumeOffsets = [[0 0 0]],
  collisionVolumeScales  = [[16 16 16]],
  collisionVolumeType	 = [[ellipsoid]],
  corpse                 = [[DEAD]],

  customParams           = {
	modelradius    = [[7]],
	idle_cloak = 1,
  },

  explodeAs              = [[shieldbomb_DEATH]],
  fireState              = 0,
  footprintX             = 1,
  footprintZ             = 1,
  iconType               = [[walkerbomb]],
  idleAutoHeal           = 5,
  idleTime               = 1800,
  kamikaze               = true,
  kamikazeDistance       = 80,
  kamikazeUseLOS         = true,
  maxDamage              = 60,
  maxSlope               = 36,
  maxVelocity            = 4,
  maxWaterDepth          = 15,
  minCloakDistance       = 75,
  movementClass          = [[KBOT1]],
  noChaseCategory        = [[FIXEDWING LAND SINK TURRET SHIP SWIM GUNSHIP FLOAT SUB HOVER]],
  objectName             = [[logroach.s3o]],
  pushResistant          = 0,
  script                 = [[shieldbomb.lua]],
  selfDestructAs         = [[shieldbomb_DEATH]],
  selfDestructCountdown  = 0,

  sfxtypes               = {

    explosiongenerators = {
      [[custom:RAIDMUZZLE]],
      [[custom:VINDIBACK]],
      [[custom:digdig]],
    },

  },

  sightDistance          = 240,
  turnRate               = 3000,
  
  featureDefs            = {

    DEAD      = {
      blocking         = false,
      featureDead      = [[HEAP]],
      footprintX       = 3,
      footprintZ       = 3,
      object           = [[wreck2x2b.s3o]],
    },

    HEAP      = {
      blocking         = false,
      footprintX       = 2,
      footprintZ       = 2,
      object           = [[debris2x2c.s3o]],
    },

  },
}

--------------------------------------------------------------------------------

local weaponDefs = {
  shieldbomb_DEATH = {
    areaOfEffect       = 384,
    craterBoost        = 1,
    craterMult         = 3.5,
    edgeEffectiveness  = 0.4,
    explosionGenerator = "custom:ROACHPLOSION",
    explosionSpeed     = 10000,
    impulseBoost       = 0,
    impulseFactor      = 0.3,
    name               = "Explosion",
    soundHit           = "explosion/mini_nuke",
    damage = {
      default          = 1200.8,
    },
  },
}
unitDef.weaponDefs = weaponDefs

--------------------------------------------------------------------------------
return lowerkeys({ shieldbomb = unitDef })