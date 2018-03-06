Q1. Standard Syntax:

SELECT st.lastname Name, s.saledate 'Sale Date'
FROM staff st, sales s
WHERE st.staffno = s.staffno
AND s.saledate = '2014-09-23';

Q1. Syntax 1999:

SELECT st.lastname Name,s.saledate 'Sale Date'
FROM staff st INNER JOIN sales s
ON st.staffno = s.staffno
WHERE s.saledate='2014-09-23';

Q2.Standard Syntax:

SELECT CONCAT(e.firstname,'  ', e.lastname) staff, CONCAT(m.firstname, '  ',m.lastname) supervisor
FROM  staff e ,  staff m 
WHERE m.staffno = e.supervisorno AND e.lastname='mclester';


Q3.Standard Syntax:

SELECT inv.descript Item, it.orderno 'Order NO.'
FROM inventory inv, items it
WHERE inv.partno = it.partno
AND it.orderno = '020011';

Q3. Syntax 1999:

SELECT inv.descript Item, it.orderno 'Order NO'
FROM inventory inv JOIN items it
ON inv.partno = it.partno
WHERE it.orderno = '020011';


Q4.Standard Syntax

Select sf.Lastname 'Staff Name', (sf.Commission/100) * SUM(i.SalePrice * it.Qty) Commission, SUM(i.SalePrice * it.Qty) 'Total Amount on Sales'
From Staff sf, Sales s, Items it, Inventory i 
Where sf.StaffNo = s.StaffNo AND
s.OrderNo = it.OrderNo AND
it.PartNo = i.PartNo AND
sf.Lastname = 'Michaels';

Q4. Syntax 1999:

SELECT sf.Lastname 'Staff Name', (sf.Commission/100) * SUM(i.SalePrice * it.Qty) Commission, SUM(i.SalePrice * it.Qty) 'Total Amount on Sales'
FROM staff sf JOIN sales s
ON sf.staffno=s.staffno
JOIN items it
ON i.orderno=s.orderno
JOIN inventory inv
ON inv.partno=it.partno
WHERE sf.lastname = 'Michaels';

Q5.Standard Syntax:

Select sf.Lastname 'Staff Name', Concat("$ ",Format(Sum(i.SalePrice * it.Qty), 2)) 'Total Amount on Sales'
    From Staff sf, Sales s, Items it, Inventory i
    Where sf.StaffNo = s.StaffNo AND
    s.OrderNo = it.OrderNo AND
    it.PartNo = i.PartNo AND
    sf.Lastname = 'McLester';

Q5. Syntax 1999:

SELECT sf.Lastname 'Staff Name', Concat("$ ",Format(Sum(i.SalePrice * it.Qty), 2)) 'Total Amount on Sales'
FROM staff sf JOIN sales s
ON sf.staffno = sa.staffno
JOIN items it
ON it.orderno = s.orderno
JOIN inventory i
ON i.partno = it.partno
WHERE st.lastname = 'McLester';

Q6.Standard Syntax:

SELECT orderno, saledate,lastname
FROM sales sa, staff s
WHERE sa.staffno = s.staffno AND MONTH(saledate)='09';


Q6. Syntax 1999:

SELECT orderno, saledate,lastname
FROM sales sa JOIN staff s
ON sa.staffno = s.staffno 
WHERE MONTH(saledate) = '09';



Q7.Standard Syntax:

SELECT COUNT(orderno) 'number of sales'
FROM sales sa,staff s
WHERE sa.staffno=s.staffno AND s.lastname='zambini';

Q7. Syntax 1999:

SELECT count(orderno) 'number of sales'
FROM sales sa JOIN staff s
ON sa.staffno = s.staffno
WHERE s.lastname ='zambini';

Q8. Standard Syntax:

SELECT i.orderno,i.partno,inv.descript,i.qty,inv.saleprice, concat('$',format(i.qty*inv.saleprice,2)) 'total'
FROM sales sa, staff s, inventory inv,items i
WHERE s.staffno = sa.staffno AND
sa.orderno = i.orderno AND
inv.partno = i.partno AND 
sa.custno = '100019';

Q8.Syntax 1999:

SELECT i.orderno,i.partno,inv.descript,i.qty,inv.saleprice, concat('$',format(i.qty*inv.saleprice,2)) 'total'
FROM sales sa join staff s
ON s.staffno=sa.staffno 
JOIN items i
ON sa.orderno=i.orderno
JOIN inventory inv
ON inv.partno=i.partno
WHERE sa.custno ='100019';

Q9. Standard Syntax:

SELECT sa.custno 'Customer NO , ordered items discontinued',sa.orderno 'Order#'
FROM sales sa,items it,inventory inv
WHERE sa.orderno = it.orderno
AND it.partno = inv.partno
AND inv.discontinue = '1'
ORDER BY 1 asc;

Q9. Syntax 1999:

SELECT sa.custno 'Customer NO ,ordered items discontinued', sa.orderno 'Order NO'
FROM sales sa JOIN items it
ON sa.orderno = it.orderno
JOIN inventory inv
ON it.partno = inv.partno
WHERE inv.discontinue = '1'
order by 1;
