#scoreboard erstellen
scoreboard objectives add Firewandused minecraft.used:minecraft.carrot_on_a_stick
#ermitteln ob er es benutzt hat
execute as @a[scores={Firewandused=1..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{firewand:1b}}}] at @s run summon fireball ^ ^1 ^2 {ExplosionPower:3,Item:{id:"minecraft:fire_charge",Count:1b}}
#wert zurücksetzen
scoreboard players set @a[scores={Firewandused=1..}] Firewandused 0