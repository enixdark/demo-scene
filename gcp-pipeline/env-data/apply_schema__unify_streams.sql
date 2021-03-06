CREATE STREAM ENVIRONMENT_DATA WITH \
        (VALUE_FORMAT='AVRO') AS \
SELECT  items->stationreference AS stationreference, \
        items->earegionname AS earegionname, \
        items->eaareaname AS eaareaname, \
        items->town AS town, \
        items->RiverName AS RiverName, \
        items->label AS label, \
        items->lat AS lat, items->long AS long, \
        items->measures->latestreading->datetime AS datetime, \
        items->measures->parameterName AS parameterName, \
        items->measures->latestreading->value AS value, \
        items->measures->unitname AS unitname \
 FROM   flood_monitoring_L2404 ;

INSERT INTO ENVIRONMENT_DATA \
SELECT  items->stationreference AS stationreference, \
        items->earegionname AS earegionname, \
        items->eaareaname AS eaareaname, \
        items->town AS town, \
        items->RiverName AS RiverName, \
        items->label AS label, \
        items->lat AS lat, items->long AS long, \
        items->measures->latestreading->datetime AS datetime, \
        items->measures->parameterName AS parameterName, \
        items->measures->latestreading->value AS value, \
        items->measures->unitname AS unitname \
 FROM   flood_monitoring_L2481 ;

INSERT INTO ENVIRONMENT_DATA \
SELECT  items->stationreference AS stationreference, \
        items->earegionname AS earegionname, \
        items->eaareaname AS eaareaname, \
        items->town AS town, \
        items->RiverName AS RiverName, \
        items->label AS label, \
        items->lat AS lat, items->long AS long, \
        items->measures->latestreading->datetime AS datetime, \
        items->measures->parameterName AS parameterName, \
        items->measures->latestreading->value AS value, \
        items->measures->unitname AS unitname \
 FROM   flood_monitoring_059793 ;
