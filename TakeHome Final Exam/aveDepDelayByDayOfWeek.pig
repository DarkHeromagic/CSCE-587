flights = load 'wholeEnchilada.csv' using PigStorage(',');
flight_details = FOREACH flights GENERATE $3 as dayofweek, (int)$15 AS DepDelay;
grp_airline = GROUP flight_details by dayofweek;
aveDepDelay= foreach grp_airline generate group, AVG(flight_details.DepDelay);
store aveDepDelay into 'aveDepDelayByDayOfWeekPigResults';

