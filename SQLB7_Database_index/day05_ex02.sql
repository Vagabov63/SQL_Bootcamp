CREATE INDEX idx_person_name ON person (name);

SET ENABLE_SEQSCAN TO OFF;
EXPLAIN ANALYSE
SELECT * FROM person WHERE name = 'Andrey';