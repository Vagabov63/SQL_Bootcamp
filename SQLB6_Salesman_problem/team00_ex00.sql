WITH router AS (
    SELECT concat('{', p1.point1, ',', p2.point1, ',', p3.point1, ',', p4.point1, ',', p5.point2, '}') AS tour,
    p1.cost + p2.cost + p3.cost + p4.cost + p5.cost AS total_cost
    FROM paths p1
    JOIN paths p2 ON p2.point1 = p1.point2 AND p1.point1 = 'a'
    JOIN paths p3 ON p3.point1 = p2.point2 AND p3.point1 NOT IN (p1.point1, p2.point1)
    JOIN paths p4 ON p4.point1 = p3.point2 AND p4.point1 NOT IN (p1.point1, p2.point1, p3.point1)
    JOIN paths p5 ON p5.point1 = p4.point2 AND p5.point2 = 'a'
)
SELECT tour, total_cost FROM router
ORDER BY 2, 1;

SELECT * FROM paths;