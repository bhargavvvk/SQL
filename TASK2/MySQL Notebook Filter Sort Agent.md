# MySQL Assignment - Filtering and Sorting

## 1. Filtering Data using WHERE

```sql
SELECT * FROM AGENT WHERE commission IS NOT NULL;
SELECT * FROM AGENT WHERE commission IS NOT NULL AND commission > 5000;
```

---

## 2. Sorting Data

```sql
SELECT * FROM AGENT ORDER BY commission;
SELECT * FROM AGENT ORDER BY commission DESC;
SELECT * FROM AGENT WHERE commission IS NOT NULL ORDER BY commission;
```


