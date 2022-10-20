CREATE TABLE match_data_2021(
gameid TEXT,
datacompleteness TEXT,
url TEXT,
league TEXT,
years TEXT,
split TEXT,
playoffs TEXT,
d8t TEXT,
game TEXT,
patch TEXT,
participantid TEXT,
side TEXT,
position TEXT,
playername TEXT,
playerid TEXT,
teamname TEXT,
teamid TEXT,
champion TEXT,
ban1 TEXT,
ban2 TEXT,
ban3 TEXT,
ban4 TEXT,
ban5 TEXT,
gamelength TEXT,
result TEXT,
kills TEXT,
deaths TEXT,
assists TEXT,
teamkills TEXT,
teamdeaths TEXT,
doublekills TEXT,
triplekills TEXT,
quadrakills TEXT,
pentakills TEXT,
firstblood TEXT,
firstbloodkill TEXT,
firstbloodassist TEXT,
firstbloodvictim TEXT,
team_kpm TEXT,
ckpm TEXT,
firstdragon TEXT,
dragons TEXT,
opp_dragons TEXT,
elementaldrakes TEXT,
opp_elementaldrakes TEXT,
infernals TEXT,
mountains TEXT,
clouds TEXT,
oceans TEXT,
chemtechs TEXT,
hextechs TEXT,
dragons_type_unknown TEXT,
elders TEXT,
opp_elders TEXT,
firstherald TEXT,
heralds TEXT,
opp_heralds TEXT,
firstbaron TEXT,
barons TEXT,
opp_barons TEXT,
firsttower TEXT,
towers TEXT,
opp_towers TEXT,
firstmidtower TEXT,
firsttothreetowers TEXT,
turretplates TEXT,
opp_turretplates TEXT,
inhibitors TEXT,
opp_inhibitors TEXT,
damagetochampions TEXT,
dpm TEXT,
damageshare TEXT,
damagetakenperminute TEXT,
damagemitigatedperminute TEXT,
wardsplaced TEXT,
wpm TEXT,
wardskilled TEXT,
wcpm TEXT,
controlwardsbought TEXT,
visionscore TEXT,
vspm TEXT,
totalgold TEXT,
earnedgold TEXT,
earned_gpm TEXT,
earnedgoldshare TEXT,
goldspent TEXT,
gspd TEXT,
total_cs TEXT,
minionkills TEXT,
monsterkills TEXT,
monsterkillsownjungle TEXT,
monsterkillsenemyjungle TEXT,
cspm TEXT,
goldat10 TEXT,
xpat10 TEXT,
csat10 TEXT,
opp_goldat10 TEXT,
opp_xpat10 TEXT,
opp_csat10 TEXT,
golddiffat10 TEXT,
xpdiffat10 TEXT,
csdiffat10 TEXT,
killsat10 TEXT,
assistsat10 TEXT,
deathsat10 TEXT,
opp_killsat10 TEXT,
opp_assistsat10 TEXT,
opp_deathsat10 TEXT,
goldat15 TEXT,
xpat15 TEXT,
csat15 TEXT,
opp_goldat15 TEXT,
opp_xpat15 TEXT,
opp_csat15 TEXT,
golddiffat15 TEXT,
xpdiffat15 TEXT,
csdiffat15 TEXT,
killsat15 TEXT,
assistsat15 TEXT,
deathsat15 TEXT,
opp_killsat15 TEXT,
opp_assistsat15 TEXT,
opp_deathsat15 TEXT
);

LOAD DATA INFILE 'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/2021_LoL_esports_match_data_from_OraclesElixir_20221014_v2.csv'
INTO TABLE match_data_2021
FIELDS TERMINATED BY ','
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;

SELECT * FROM match_data_2021;