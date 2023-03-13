rm -f lacrosse.db
pip install sqlite-utils datasette
datasette install datasette-codespaces
sqlite-utils insert lacrosse.db matches ncaa_mens_lacrosse_matchstats_2023.csv --csv
sqlite-utils transform lacrosse.db matches --type date REAL
sqlite-utils transform lacrosse.db matches --type team TEXT
sqlite-utils transform lacrosse.db matches --type opponent TEXT
sqlite-utils transform lacrosse.db matches --type home_away TEXT
sqlite-utils transform lacrosse.db matches --type result TEXT
sqlite-utils transform lacrosse.db matches --type home_score integer
sqlite-utils transform lacrosse.db matches --visitor_score integer
sqlite-utils transform lacrosse.db matches --type overtime integer
sqlite-utils transform lacrosse.db matches --type g integer
sqlite-utils transform lacrosse.db matches --type goals integer
sqlite-utils transform lacrosse.db matches --type assists integer
sqlite-utils transform lacrosse.db matches --type points integer
sqlite-utils transform lacrosse.db matches --type shots integer
sqlite-utils transform lacrosse.db matches --type sog integer
sqlite-utils transform lacrosse.db matches --type man_up_g integer
sqlite-utils transform lacrosse.db matches --type man_down integer
sqlite-utils transform lacrosse.db matches --type gb integer
sqlite-utils transform lacrosse.db matches --type to integer
sqlite-utils transform lacrosse.db matches --type ct integer
sqlite-utils transform lacrosse.db matches --type fo_won integer
sqlite-utils transform lacrosse.db matches --type f_os_taken integer
sqlite-utils transform lacrosse.db matches --type pen integer
sqlite-utils transform lacrosse.db matches --type pen_time integer
sqlite-utils transform lacrosse.db matches --type g_min integer
sqlite-utils transform lacrosse.db matches --type goals_allowed integer
sqlite-utils transform lacrosse.db matches --type saves integer
sqlite-utils transform lacrosse.db matches --type w integer
sqlite-utils transform lacrosse.db matches --type l integer
sqlite-utils transform lacrosse.db matches --type t integer
sqlite-utils transform lacrosse.db matches --type rc integer
sqlite-utils transform lacrosse.db matches --type yc integer
sqlite-utils transform lacrosse.db matches --type clears integer
sqlite-utils transform lacrosse.db matches --type att.x integer
sqlite-utils transform lacrosse.db matches --type clear_pct.x integer
sqlite-utils transform lacrosse.db matches --type otg.x integer
sqlite-utils transform lacrosse.db matches --type defensive_g integer
sqlite-utils transform lacrosse.db matches --type defensive_goals integer
sqlite-utils transform lacrosse.db matches --type defensive_assists integer
sqlite-utils transform lacrosse.db matches --type defensive_points integer
sqlite-utils transform lacrosse.db matches --type defensive_shots integer
sqlite-utils transform lacrosse.db matches --type defensive_sog integer
sqlite-utils transform lacrosse.db matches --type defensive_man_up_g integer
sqlite-utils transform lacrosse.db matches --type defensive_man_down_g integer
sqlite-utils transform lacrosse.db matches --type defensive_gb integer
sqlite-utils transform lacrosse.db matches --type defensive_to integer
sqlite-utils transform lacrosse.db matches --type defensive_ct integer
sqlite-utils transform lacrosse.db matches --type defensive_fo_won integer
sqlite-utils transform lacrosse.db matches --type defensive_f_os_taken integer
sqlite-utils transform lacrosse.db matches --type defensive_pen integer
sqlite-utils transform lacrosse.db matches --type defensive_pen_time integer
sqlite-utils transform lacrosse.db matches --type defensive_g_min integer
sqlite-utils transform lacrosse.db matches --type defensive_goals_allowed integer
sqlite-utils transform lacrosse.db matches --type defensive_saves integer
sqlite-utils transform lacrosse.db matches --type defensive_w integer
sqlite-utils transform lacrosse.db matches --type defensive_l integer
sqlite-utils transform lacrosse.db matches --type defensive_t integer
sqlite-utils transform lacrosse.db matches --type defensive_rc integer
sqlite-utils transform lacrosse.db matches --type defensive_yc integer
sqlite-utils transform lacrosse.db matches --type defensive_defensive_clears integer
sqlite-utils transform lacrosse.db matches --type defensive_att.y integer
sqlite-utils transform lacrosse.db matches --type defensive_clear_pct.y integer
sqlite-utils transform lacrosse.db matches --type defensive_otg.y integer

sqlite-utils insert lacrosse.db players ncaa_mens_lacrosse_playerstats_2023.csv --csv
sqlite-utils transform lacrosse.db players --type season TEXT
sqlite-utils transform lacrosse.db players --type team TEXT
sqlite-utils transform lacrosse.db players --type jersey integer
sqlite-utils transform lacrosse.db players --type full_name TEXT
sqlite-utils transform lacrosse.db players --type roster_name TEXT
sqlite-utils transform lacrosse.db players --type first_name TEXT
sqlite-utils transform lacrosse.db players --type last_name TEXT
sqlite-utils transform lacrosse.db players --type yr TEXT
sqlite-utils transform lacrosse.db players --type pos TEXT
sqlite-utils transform lacrosse.db players --type gp integer
sqlite-utils transform lacrosse.db players --type gs integer
sqlite-utils transform lacrosse.db players --type g integer
sqlite-utils transform lacrosse.db players --type gs_2 integer
sqlite-utils transform lacrosse.db players --type goals integer
sqlite-utils transform lacrosse.db players --type assists integer
sqlite-utils transform lacrosse.db players --type points integer
sqlite-utils transform lacrosse.db players --type shots integer
sqlite-utils transform lacrosse.db players --type shot_pct integer
sqlite-utils transform lacrosse.db players --type sog integer
sqlite-utils transform lacrosse.db players --type sog_pct integer
sqlite-utils transform lacrosse.db players --type gwg integer
sqlite-utils transform lacrosse.db players --type man_up_g integer
sqlite-utils transform lacrosse.db players --type to integer
sqlite-utils transform lacrosse.db players --type ct integer
sqlite-utils transform lacrosse.db players --type fo_won integer
sqlite-utils transform lacrosse.db players --type f_os_taken integer
sqlite-utils transform lacrosse.db players --type fo_pct integer
sqlite-utils transform lacrosse.db players --type pen integer
sqlite-utils transform lacrosse.db players --type pen_time integer
sqlite-utils transform lacrosse.db players --type ggp integer
sqlite-utils transform lacrosse.db players --type ggs integer
sqlite-utils transform lacrosse.db players --type g_min integer
sqlite-utils transform lacrosse.db players --type goals_allowed integer
sqlite-utils transform lacrosse.db players --type gaa integer
sqlite-utils transform lacrosse.db players --type saves integer
sqlite-utils transform lacrosse.db players --type save_pct integer
sqlite-utils transform lacrosse.db players --type rc integer
sqlite-utils transform lacrosse.db players --type clears integer
sqlite-utils transform lacrosse.db players --type att integer
sqlite-utils transform lacrosse.db players --type clear_pct integer
sqlite-utils transform lacrosse.db players --type otg integer
sqlite-utils transform lacrosse.db players --type ncaa_id integer


datasette serve lacrosse.db


