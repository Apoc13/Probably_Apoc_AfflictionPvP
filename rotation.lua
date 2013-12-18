-- ProbablyEngine Rotation Packager
-- Custom Affliction Warlock Rotation
-- Created on Nov 21st 2013 1:58 pm
rootAffli = { }
function rootAffli.hs () --Create Health Stone
if GetItemCount (5512, nil, true) < 3 then return true end 
return false
end 

ProbablyEngine.rotation.register_custom(265, "Apoc_AfflictionPvP", {

--InCombat

 --Buffs 

  {"Dark Intent",
    "!player.buff(Dark Intent)"},
  {"Blood Horror",
    "!player.buff(Blood Horror)"},
  {"Dark Soul: Misery",
    "!player.buff(Dark Soul: Misery)"},
  {"Twilight Ward",
    "!player.buff(Twilight Ward)"},

 --Mana

  {"Life Tap",{
    "player.health >= 85",
    "player.mana <= 40"},
    "player"}, 

 --Pet
  {"112868","!pet.exists",
    "modifier.last > 2"}, 

  {"Pet Attack",{
   "!totem.exists(Grounding Totem)",
   "!totem.exists(Windfury Totem)",
   "!totem.exists(Tremor Totem)",
   "!totem.exists(Mana Tide Totem)",
   "totem.range < 20"}},
   
 --OHHSHITZ

  --{"!#5512", 
   -- "player.health <= 40",
   -- "player"},
  {"Unending Resolve",
     "player.health <= 50"},
  {"Demonic Circle: Teleport",
    "!player.health <= 30"},
  {"Fear",
    "!target.immune.fear",
    "target.range <= 6"},
  {"Sacrificial Pact",
     "player.health <= 40"}, 
  {"Howl of Terror",
    "modifier.cooldown",
    "!target.immune.fear",
    "target.range <= 9"},  
  {"Demonic Circle: Summon",
    "modifier.lshift"}, 
  {"Demonic Gateway",
    "modifier.lcontrol"}, 
  {"Drain Life", 
    "player.health <= 90"},


 --Interupts

  {"Fear",
    "target.casting",
    "!target.immune.fear",
    "target.range <= 39"},
  {"Mortal Coil",
    "target.casting",
    "!target.immune.fear",
    "target.range <= 10"},

--  {"Devour Magic",
--    "!target.immune.devour magic",
--    "target.range <= 20"},   
--  {"Clone Magic",
--    "!target.immune.clone magic",
--    "target.range <= 20"},   
--  {"Singe Magic",
--    "!target.immune.singe magic",
--    "target.range <= 20"},
--  {"Sear Magic",
--    "!target.immune.sear magic",
--    "target.range <= 20"},

 --Curses

  {"Curse of the Elements",
    "!target.debuff(Curse of the Elements)"},
  {"Curse of the Exhaustion",
    "!target.debuff(Curse of the Exhaustion)",
    "target.moving"},  
  {"Fel Flame",
    "player.moving"},
  {"Agony",
    "!target.debuff(Agony)"},
  {"Unstable Affliction",{
    "target.debuff(Unstable Affliction).duration <= 3",
    "player.spell(Unstable Affliction).casted < 1"}},
  {"Seed of Corruption",{
    "target.debuff(Seed of Corruption).duration <= 3",
    "target.spell(Seed of Corruption).casted < 1"}},
  {"Haunt", 
    "!target.debuff(Haunt)"},
  {"Drain Soul",
    "target.health <= 20"},
  {"Malefic Grasp",
   "player.spell(Malefic Grasp).casted < 3"},
  

 --Healing
   ---HEALING?!?! Theres no crying in Baseball!!!
},{

 --Buffs 

  {"Dark Intent",
    "!player.buff(Dark Intent)"},
  {"Blood Horror",
    "!player.buff(Blood Horror)"},
  {"Create Healthstone",
    (function() return rootAffli.hs() end) },
  {"Life Tap",{
    "player.health >= 95",
    "player.mana <= 40"},
    "player"}, 
  {"Demonic Circle: Summon",
     "modifier.lshift"}, 
  {"Demonic Gateway",
     "modifier.lcontrol"}, 
  {"112868","!pet.exists"},

  --{"!#5512", 
  --  "player.health <= 40",
  --  "player"},

})
