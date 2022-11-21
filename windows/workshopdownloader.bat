@echo off

:: Modlist
set Mods[0]=1623423360 &:: UI Overhaul Dynamic
set Mods[1]=1628912584 &:: UI Overhaul Dynamic + Tiny Outliner v2
set Mods[2]=1121692237 &:: Gigastructural Engineering & More (3.5)
set Mods[3]=937289339 &:: Real Space 3.8
set Mods[4]=2475617894 &:: Real Space - New Frontiers
set Mods[5]=2775968897 &:: Real Space - Planetary Stations
set Mods[6]=910751973 &:: Hypothetical Stars
set Mods[7]=1651768817 &:: Ultimate Imperium of Man Namelist
set Mods[8]=1172859036 &:: Mass Effect Species Pack - Expanded Edition
set Mods[9]=1999328266 &:: Precursor Story Pack
set Mods[10]=1993869579 &:: Archaeology Story Pack
set Mods[11]=2030472413 &:: Origins Extended
set Mods[12]=2025131190 &:: More Origins Mod
set Mods[13]=1998204784 &:: Even More Origins
set Mods[14]=2093276523 &:: Origin - The Great Mistake
set Mods[15]=2027051983 &:: Basic Ordinary Origins
set Mods[16]=1455861246 &:: Technology Ascendant
set Mods[17]=953888861 &:: Admiral Level Skills
set Mods[18]=701432146 &:: More AI Personalities
set Mods[19]=2028826064 &:: A Deadly Tempest [3.5.☠]
set Mods[20]=2506911097 &:: At War: Planetary Cannons (3.4.*)
set Mods[21]=819148835 &:: Planetary Diversity
set Mods[22]=1732437279 &:: Planetary Diversity - Exotic Worlds
set Mods[23]=2284514368 &:: Planetary Diversity - Gaia Worlds
set Mods[24]=1732447147 &:: Planetary Diversity - More Arcologies
set Mods[25]=1866576239 &:: Planetary Diversity - Planet View
set Mods[26]=1878751971 &:: Planetary Diversity - Planetary Habitats
set Mods[27]=1807850864 &:: Planetary Diversity - Reworked Habitability
set Mods[28]=1960179456 &:: Planetary Diversity - Shroud Worlds
set Mods[29]=2171564735 &:: Planetary Diversity - Space Habitats
set Mods[30]=1740165239 &:: Planetary Diversity - Unique Worlds
set Mods[31]=2391277656 &:: Planetary Diversity - Ringworlds
set Mods[32]=1623423504 &:: UI Overhaul Dynamic + Planetary Diversity
::set Mods[32]=2665920156 &:: Real Space & Planetary Diversity Compatibility Patch Light
set Mods[33]=865040033 &:: Guilli's Planet Modifiers and Features
set Mods[34]=1793768254 &:: Guilli's Technologies
set Mods[35]=690350384 &:: Guilli's Ship Components
set Mods[36]=2802824108 &:: Guilli's Exploration And Expansion Tweaks
set Mods[37]=2851156907 &:: Giga Diversity 2 Electric Bugaloo
set Mods[38]=2807759164 &:: ! The Merger of Rules 3.5



::set Mods[30]=2441507863 &:: Machine & Robot Expansion

::set Mods[30]=2032299408 &:: Taskforce Xeno: Alien Invasion Origin

::set Mods[30]=2389164674 &:: Fatherland: Colonial Empires
::set Mods[30]=2522923816 &:: Fatherland: Frontier Worlds

::set Mods[28]=2012803646 &:: Aesthetic Cinematic Gameplay https://steamcommunity.com/workshop/filedetails/discussion/2012803646/1751276085133241295/

::set Mods[28]=2195523300 &:: SW:Fallen Republic
::set Mods[28]=2202461067 &:: SW: Fallen Republic - More Music
::set Mods[28]=2218335517 &:: SW: Fallen Republic - Galaxy BG

set "x=0"

:SymLoop
if defined Mods[%x%] (
	call set list=%list% +"workshop_download_item 281990 %%Mods[%x%]%%" validate
    set /a "x+=1"
    GOTO :SymLoop
)
echo.
steamcmd +login anonymous %pass%%list%