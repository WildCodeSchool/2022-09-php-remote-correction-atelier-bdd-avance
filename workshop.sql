-- SELECT firstname, lastname, age FROM Person;
-- SELECT k.id, p.id AS personId, firstname, lastname, age, name FROM Person p JOIN Kingdom k ON p.kingdom_id=k.id;
-- SELECT k.id, p.id AS personId, firstname, lastname, age, name FROM Person p LEFT JOIN Kingdom k ON p.kingdom_id=k.id;
-- SELECT AVG(age) as avg FROM Person;
-- SELECT AVG(age) as avg FROM Person p JOIN Role r ON p.role_id=r.id WHERE r.role!='magicien';
-- SELECT k.name, COUNT(p.id) AS nbPerson FROM Person p RIGHT JOIN Kingdom k ON p.kingdom_id=k.id GROUP BY k.id;
-- SELECT r.role, ROUND(AVG(p.age)) as avg FROM Person p JOIN Role r ON p.role_id=r.id GROUP BY r.id;
-- SELECT firstname, lastname, age, role, name AS kingdomName FROM Person p LEFT JOIN Role r ON p.role_id=r.id LEFT JOIN Kingdom k ON p.kingdom_id=k.id;
SELECT k.name, COUNT(p.id) AS nbPerson FROM Person p RIGHT JOIN Kingdom k ON p.kingdom_id=k.id GROUP BY k.id HAVING nbPerson>=2;