unitDef = {
  unitname            = [[armmanni]],
  name                = [[Penetrator]],
  description         = [[Mobile Tachyon Accelerator (Artillery/Anti-Armor)]],
  acceleration        = 0.016,
  bmcode              = [[1]],
  brakeRate           = 0.148,
  buildCostEnergy     = 1000,
  buildCostMetal      = 1000,
  builder             = false,
  buildPic            = [[ARMMANNI.png]],
  buildTime           = 1000,
  canAttack           = true,
  canGuard            = true,
  canHover            = true,
  canMove             = true,
  canPatrol           = true,
  canstop             = [[1]],
  category            = [[HOVER]],
  corpse              = [[DEAD]],

  customParams        = {
    description_bp = [[Acelerador the Tachyons móvel]],
    description_fr = [[Accelerateur Tachyon Mobile]],
    helptext       = [[The Penetrator's weapon, nicknamed 'the Blue Laser of Death', has the power and accuracy to skewer most units with a single shot. Use it against high armor units, but keep it behind the front lines - it has light armor and can't run from danger. Make sure you have lots of energy storage, as its weapon has an exorbitant energy cost.]],
    helptext_bp    = [[A arma do Penetrator, apelidada de "O laser azul da morte", tem o poder e a precis?o para destruir a maioria das unidades com um único tiro. Use-o contra unidades muito resistentes, mas mantenha-o atras da linha de frente: Sua armadura é fina e ele é lento demais para fugir do perigo. Esta arma consome muita energia, ent?o será necessária uma produç?o de energia e capacidade de armazenamento de energia altas.]],
    helptext_fr    = [[Le surnon du Penetrator est 'le rayon bleu de la mort'. Le Penetrator est le tank le plus devastateur de tous, son laser peut traverser les rangs ennemis et décimer les plus lourds blindages ? grande distance. Il est cependant peu protégé et peu maniable. Assurez vous également d'avoir les ressources nécessaires: c'est un gouffre ? énergie. ]],
  },

  defaultmissiontype  = [[Standby]],
  explodeAs           = [[MEDIUM_BUILDINGEX]],
  footprintX          = 3,
  footprintZ          = 3,
  iconType            = [[mobiletachyon]],
  idleAutoHeal        = 5,
  idleTime            = 1800,
  leaveTracks         = true,
  maneuverleashlength = [[640]],
  mass                = 290,
  maxDamage           = 1000,
  maxSlope            = 18,
  maxVelocity         = 2.4,
  maxWaterDepth       = 22,
  minCloakDistance    = 75,
  movementClass       = [[HOVER3]],
  moveState           = 0,
  noAutoFire          = false,
  noChaseCategory     = [[TERRAFORM FIXEDWING SATELLITE GUNSHIP SUB]],
  objectName          = [[Longneck_Tachy.s3o]],
  seismicSignature    = 4,
  selfDestructAs      = [[MEDIUM_BUILDINGEX]],
  side                = [[ARM]],
  sightDistance       = 660,
  smoothAnim          = true,
  steeringmode        = [[1]],
  TEDClass            = [[TANK]],
  turninplace         = 0,
  turnRate            = 320,
  workerTime          = 0,

  weapons             = {

    {
      def                = [[ATA]],
      badTargetCategory  = [[FIXEDWING GUNSHIP]],
      onlyTargetCategory = [[SWIM LAND SHIP SINK FLOAT GUNSHIP HOVER]],
    },

  },


  weaponDefs          = {

    ATA = {
      name                    = [[Tachyon Accelerator]],
      areaOfEffect            = 20,
      beamlaser               = 1,
      beamTime                = 1,
      coreThickness           = 0.5,
      craterBoost             = 0,
      craterMult              = 0,

      damage                  = {
        default = 3000,
        planes  = 3000,
        subs    = 150,
      },

      explosionGenerator      = [[custom:ataalaser]],
      impactOnly              = true,
      impulseBoost            = 0,
      impulseFactor           = 0.4,
      interceptedByShieldType = 1,
      largeBeamLaser          = true,
      laserFlareSize          = 16.94,
      lineOfSight             = true,
      minIntensity            = 1,
      noSelfDamage            = true,
      range                   = 1050,
      reloadtime              = 20,
      renderType              = 0,
      rgbColor                = [[0.25 0 1]],
      soundStart              = [[weapon/laser/heavy_laser6]],
      targetMoveError         = 0.3,
      texture1                = [[largelaser]],
      texture2                = [[flare]],
      texture3                = [[flare]],
      texture4                = [[smallflare]],
      thickness               = 16.9373846859543,
      tolerance               = 10000,
      turret                  = true,
      weaponType              = [[BeamLaser]],
      weaponVelocity          = 1500,
    },

  },


  featureDefs         = {

    DEAD  = {
      description      = [[Wreckage - Penetrator]],
      blocking         = true,
      category         = [[corpses]],
      damage           = 1000,
      energy           = 0,
      featureDead      = [[DEAD2]],
      featurereclamate = [[SMUDGE01]],
      footprintX       = 3,
      footprintZ       = 3,
      height           = [[20]],
      hitdensity       = [[100]],
      metal            = 400,
      object           = [[wreck3x3c.s3o]],
      reclaimable      = true,
      reclaimTime      = 400,
      seqnamereclamate = [[TREE1RECLAMATE]],
      world            = [[All Worlds]],
    },


    DEAD2 = {
      description      = [[Debris - Penetrator]],
      blocking         = false,
      category         = [[heaps]],
      damage           = 1000,
      energy           = 0,
      featureDead      = [[HEAP]],
      featurereclamate = [[SMUDGE01]],
      footprintX       = 3,
      footprintZ       = 3,
      height           = [[4]],
      hitdensity       = [[100]],
      metal            = 400,
      object           = [[debris3x3b.s3o]],
      reclaimable      = true,
      reclaimTime      = 400,
      seqnamereclamate = [[TREE1RECLAMATE]],
      world            = [[All Worlds]],
    },


    HEAP  = {
      description      = [[Debris - Penetrator]],
      blocking         = false,
      category         = [[heaps]],
      damage           = 1000,
      energy           = 0,
      featurereclamate = [[SMUDGE01]],
      footprintX       = 3,
      footprintZ       = 3,
      height           = [[4]],
      hitdensity       = [[100]],
      metal            = 200,
      object           = [[debris3x3b.s3o]],
      reclaimable      = true,
      reclaimTime      = 200,
      seqnamereclamate = [[TREE1RECLAMATE]],
      world            = [[All Worlds]],
    },

  },

}

return lowerkeys({ armmanni = unitDef })
