CREATE UNIQUE INDEX idx_menu_unique ON menu (pizzeria_id, pizza_name);

SET ENABLE_SEQSCAN TO OFF;
EXPLAIN ANALYSE
SELECT pizzeria_id, pizza_name FROM menu WHERE pizzeria_id = 3 AND pizza_name = 'supreme pizza';