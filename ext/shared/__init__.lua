-- Pimped Crossbow

	local partition_ammo = Guid ("EEEC6E85-6A26-4C51-842E-55C5B75DE9DC")
	local Instance_ammo = Guid  ("408C21F4-6D2F-41D8-AB92-D79141A3645E")

	local partition_crossbolt_damage_HE = Guid ("07E407B3-A4FE-4CD1-BABA-D8F6EB59FAEA")
	local Instance_crossbolt_damage_HE = Guid ("B85B6C38-0D14-4079-932A-237984798ADF")

	local partition_crossbolt_default = Guid ("26076E01-A015-44A8-BFBF-695187E25FFB")
	local Instance_crossbolt_default = Guid ("391BB7D5-C4AE-4952-B103-189DC1700030")

	local partition_crossbolt_scan = Guid ("2E6F6D70-6D07-4E9A-A679-DA61C0892CA8")
	local Instance_crossbolt_scan = Guid ("D7D7E957-27B1-4125-936E-0D851C7CEF9C")

	local partition_crossbolt_he = Guid ("07E407B3-A4FE-4CD1-BABA-D8F6EB59FAEA")
	local Instance_crossbolt_he = Guid ("D09E04C4-4B06-4967-A7F5-1DE6D0912676")

	local partition_crossbolt_BA = Guid ("7060D665-78CF-41A5-862B-B3055748A8C3")
	local Instance_crossbolt_BA = Guid ("D3A33689-42BD-478C-8D83-B7C0B73EE19D")

ResourceManager:RegisterInstanceLoadHandler(partition_crossbolt_damage_HE, Instance_crossbolt_damage_HE, function(loadedInstance)

    loadedInstance = VeniceExplosionEntityData(loadedInstance)
    loadedInstance:MakeWritable()

    loadedInstance.blastDamage = 70
    loadedInstance.blastRadius = 5
    loadedInstance.blastImpulse = 500
    loadedInstance.shockwaveDamage = 10
    loadedInstance.shockwaveRadius = 10
    loadedInstance.shockwaveImpulse = 125
    loadedInstance.shockwaveTime = 0.1
    loadedInstance.triggerImpairedHearing = true
    loadedInstance.isCausingSuppression = true 


	print('Changed william Tell HE BOOM changed ... ... ...')
end)

ResourceManager:RegisterInstanceLoadHandler(partition_ammo, Instance_ammo, function(loadedInstance)

    loadedInstance = FiringFunctionData(loadedInstance)
    loadedInstance:MakeWritable()

    loadedInstance.ammo.magazineCapacity = 1
    loadedInstance.ammo.numberOfMagazines = 25

	print('Changed william Tell instance (pimped ammo)... ... ...')
end)

ResourceManager:RegisterInstanceLoadHandler(partition_crossbolt_default, Instance_crossbolt_default, function(loadedInstance)

    loadedInstance = BulletEntityData(loadedInstance)
    loadedInstance:MakeWritable()

    loadedInstance.gravity = 0

	print('Changed william Tell Gravity data (Default bolt) ... ... ...')
end)

ResourceManager:RegisterInstanceLoadHandler(partition_crossbolt_scan, Instance_crossbolt_scan, function(loadedInstance)

    loadedInstance = BulletEntityData(loadedInstance)
    loadedInstance:MakeWritable()

    loadedInstance.gravity = 0

	print('Changed william Tell Gravity data (Scan bolt) ... ... ...')
end)

ResourceManager:RegisterInstanceLoadHandler(partition_crossbolt_he, Instance_crossbolt_he, function(loadedInstance)

    loadedInstance = BulletEntityData(loadedInstance)
    loadedInstance:MakeWritable()

    loadedInstance.gravity = 0
    loadedInstance.initialSpeed = 400.0
    loadedInstance.timeToLive = 8.0

	print('Changed william Tell Gravity data (Explosion bolt) ... ... ...')
end)

ResourceManager:RegisterInstanceLoadHandler(partition_crossbolt_BA, Instance_crossbolt_BA, function(loadedInstance)

    loadedInstance = BulletEntityData(loadedInstance)
    loadedInstance:MakeWritable()

    loadedInstance.gravity = 0

	print('Changed william Tell Gravity data (Bully bolt) ... ... ...')
end)
