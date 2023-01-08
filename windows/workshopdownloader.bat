@echo off

:: Modlist
set Mods[0]=1623423360 &:: UI Overhaul Dynamic
set Mods[1]=1628912584 &:: UI Overhaul Dynamic + Tiny Outliner v2
set Mods[2]=937289339 &:: Real Space 3.8
set Mods[3]=2475617894 &:: Real Space - New Frontiers
set Mods[4]=2775968897 &:: Real Space - Planetary Stations
set Mods[5]=1188291383 &:: Sol System Expanded (Real Space)
set Mods[6]=910751973 &:: Hypothetical Stars
set Mods[7]=1651768817 &:: Ultimate Imperium of Man Namelist
set Mods[8]=915432220 &:: Elves of Stellaris
set Mods[9]=2274459608 &:: Elves of Stellaris - Spawns Enabled
set Mods[10]=2855533605 &:: Khorgis Khan: Scourge of the Stars
set Mods[11]=790903721 &:: Mass Effect Civilizations - Asari
set Mods[12]=1172859036 &:: Mass Effect Species Pack - Expanded Edition
set Mods[13]=2461592150 &:: Mass Effect Civilizations - Expanded Galaxy
set Mods[14]=1315017527 &:: Mass Effect Civilizations - Mass Relays
set Mods[15]=1370611629 &:: Mass Effect Civilizations - Mass Relays (Wormhole Addon)
set Mods[16]=1675554908 &:: !Mass Effect Civilizations - Asari - Spawn Thessia
set Mods[17]=2788839315 &:: Extended Aquatics
set Mods[18]=1999328266 &:: Precursor Story Pack
set Mods[19]=1993869579 &:: Archaeology Story Pack
set Mods[20]=2030472413 &:: Origins Extended
set Mods[21]=2476102240 &:: Origins Expanded
set Mods[22]=2025131190 &:: More Origins Mod
set Mods[23]=1998204784 &:: Even More Origins
set Mods[24]=2093276523 &:: Origin - The Great Mistake
set Mods[25]=2027051983 &:: Basic Ordinary Origins
set Mods[26]=2461999384 &:: Psionic Species Expansion
set Mods[27]=1715190550 &:: Expanded Gestalts: Forgotten Queens
set Mods[28]=1455861246 &:: Technology Ascendant
set Mods[29]=953888861 &:: Admiral Level Skills
set Mods[30]=2775186718 &:: More Leaders For Choose
set Mods[31]=2870710145 &:: No Titan Limit
set Mods[32]=2897373654 &:: Supremacy Juggernaut
set Mods[33]=701432146 &:: More AI Personalities
set Mods[34]=2028826064 &:: A Deadly Tempest [3.5.☠]
set Mods[35]=2506911097 &:: At War: Planetary Cannons (3.6.*)
set Mods[36]=2754434184 &:: Space Elevators
set Mods[37]=2838698207 &:: Lunar Prospecting
set Mods[38]=2562023076 &:: Station Solar System Exploitation
set Mods[39]=2441507863 &:: Machine & Robot Expansion
set Mods[40]=2077186491 &:: Machine Shipset
set Mods[41]=2389164674 &:: Fatherland: Colonial Empires
set Mods[42]=2522923816 &:: Fatherland: Frontier Worlds
set Mods[43]=865040033 &:: Guilli's Planet Modifiers and Features
set Mods[44]=1793768254 &:: Guilli's Technologies
set Mods[45]=690350384 &:: Guilli's Ship Components
set Mods[46]=2802824108 &:: Guilli's Exploration And Expansion Tweaks
set Mods[47]=819148835 &:: Planetary Diversity
set Mods[48]=1732437279 &:: Planetary Diversity - Exotic Worlds
set Mods[49]=2284514368 &:: Planetary Diversity - Gaia Worlds
set Mods[50]=1732447147 &:: Planetary Diversity - More Arcologies
set Mods[51]=1866576239 &:: Planetary Diversity - Planet View
set Mods[52]=1878751971 &:: Planetary Diversity - Planetary Habitats
set Mods[53]=1807850864 &:: Planetary Diversity - Reworked Habitability
set Mods[54]=1960179456 &:: Planetary Diversity - Shroud Worlds
set Mods[55]=2171564735 &:: Planetary Diversity - Space Habitats
set Mods[56]=1740165239 &:: Planetary Diversity - Unique Worlds
set Mods[57]=2391277656 &:: Planetary Diversity - Ringworlds
set Mods[58]=2864982635 &:: Stellaris Texture Pack - Planetary Diversity (2K)
set Mods[59]=2864420003 &:: Stellaris Texture Pack - Better Arcologies 2K (Planetary Diversity)
set Mods[60]=2864305152 &:: Stellaris Texture Pack - Better Arcologies Real Space Fix
set Mods[61]=1121692237 &:: Gigastructural Engineering & More (3.5)
set Mods[62]=2851156907 &:: Giga Diversity 2 Electric Bugaloo
set Mods[63]=1623423504 &:: UI Overhaul Dynamic + Planetary Diversity
set Mods[64]=1152436872 &:: Sol System Expanded - Planetary Diversity Patch
set Mods[65]=2463806387 &:: Psionic Species Expansion - UI Overhaul Dynamic Patch
set Mods[66]=1165953098 &:: Elves of Stellaris - Planetary Diversity
set Mods[67]=2790404258 &:: Extended Aquatics + PD
set Mods[68]=2857972680 &:: Planetary Diversity + Guilli's Planet Modifiers and Features
set Mods[69]=2898623879 &:: Planetary Diversity + Guilli's Technologies Compatibility Patch
set Mods[70]=2778530095 &:: Dune Zro
set Mods[71]=2807759164 &:: ! The Merger of Rules 3.6
set Mods[72]=1506083796 &:: Pinwheel Galaxy
set Mods[73]=1506081421 &:: Light Borders
set Mods[74]=1506078758 &:: Quadrant Fixed



::set Mods[30]=2032299408 &:: Taskforce Xeno: Alien Invasion Origin

::set Mods[32]=2665920156 &:: Real Space & Planetary Diversity Compatibility Patch Light

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