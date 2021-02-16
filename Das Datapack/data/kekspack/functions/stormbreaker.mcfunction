#scoreboard erstellen
scoreboard objectives add stormbreakerused minecraft.used:minecraft.carrot_on_a_stick
#ermitteln ob er es benutzt hat
execute as @a[scores={stormbreakerused=1..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{stormbreaker:1b}}}] at @s run summon lightning_bolt ^ ^ ^4
#wert zurücksetzen
scoreboard players set @a[scores={stormbreakerused=1..}] stormbreakerused 0