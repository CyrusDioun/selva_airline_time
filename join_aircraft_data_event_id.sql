select * from 
aircraft a join  dt_aircraft b on a.ev_id = b.ev_id 
join  dt_events c on a.ev_id = c.ev_id 
join  dt_flight_crew d on a.ev_id = d.ev_id 
join engines e on a.ev_id = e.ev_id 
join events f on a.ev_id = f.ev_id 
join events_sequence g on a.ev_id = g.ev_id 
join findings h on a.ev_id = h.ev_id 
join flight_crew i on a.ev_id = i.ev_id 
join flight_time j on a.ev_id = j.ev_id 
join injury k on a.ev_id = k.ev_id 
join narratives l on a.ev_id = l.ev_id 
join occurrences m on a.ev_id = m.ev_id 
join seq_of_events n on a.ev_id = n.ev_id 
join ntsb_admin o on a.ev_id = o.ev_id; 
