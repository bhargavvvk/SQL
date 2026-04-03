use module;
#simple procedure

DELIMITER //
CREATE PROCEDURE GET_AGENTS(IN country_name VARCHAR(20))
BEGIN
    SELECT agent_code, agent_name, commission,country from agent where country=country_name;
END //

DELIMITER ;


CALL GET_AGENTS('India');

#procedure to calculate the bonus of agents



DELIMITER //
CREATE PROCEDURE CAL_BONUS(IN COUNTRY_NAME VARCHAR(20))
BEGIN
	DECLARE percentage INT;
    IF COUNTRY_NAME='India' THEN 
		SET percentage=10;
	ELSEIF COUNTRY_NAME='USA' THEN
		SET percentage=15;
	ELSE 
		SET percentage=12.5;
	END IF;
    
    select agent_name,agent_code,country,commission,commission*(percentage/100) as bonus from agent where country=COUNTRY_NAME;
END //

DELIMITER ;
    
call CAL_BONUS('India');
    
