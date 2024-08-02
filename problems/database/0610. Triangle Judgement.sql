Report for every three line segments whether they can form a triangle.

Return the result table in any order.

The result format is in the following example.

Example 1:
```sql
Input: 
Triangle table:
+----+----+----+
| x  | y  | z  |
+----+----+----+
| 13 | 15 | 30 |
| 10 | 20 | 15 |
+----+----+----+
Output: 
+----+----+----+----------+
| x  | y  | z  | triangle |
+----+----+----+----------+
| 13 | 15 | 30 | No       |
| 10 | 20 | 15 | Yes      |
+----+----+----+----------+
```
```sql
# Write your MySQL query statement below
select x, y, z, 
case 
    when x + y > z and x + z > y and y + z > x then 'Yes'
    else 'No'
end as triangle
from Triangle
```
