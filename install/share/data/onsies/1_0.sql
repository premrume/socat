INSERT INTO public.socat_questionnaire(
	created, updated, id, version, questionnaire, description)
	VALUES 
            (current_timestamp, current_timestamp,  1, 1.1, 'Tactical' , 'Basic')
           ,(current_timestamp, current_timestamp,  2, 1.1, 'Strategic', 'Stretch A')
           ,(current_timestamp, current_timestamp,  3, 1.1, 'Operational'  , 'Stretch B')
        ;
