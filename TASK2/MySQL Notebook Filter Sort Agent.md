# MySQL Assignment - Filtering and Sorting

## 1. Filtering Data using WHERE

```sql
SELECT * FROM AGENT WHERE commission IS NOT NULL;
SELECT * FROM AGENT WHERE commission IS NOT NULL AND commission > 5000;
```


<img width="908" height="399" alt="image" src="https://github.com/user-attachments/assets/c8cab307-b337-4803-9c2b-adb6b8a31faf" />

<img width="915" height="377" alt="image" src="https://github.com/user-attachments/assets/affd5d0c-8d9d-4a9a-99fe-48f454808d0c" />



---

## 2. Sorting Data

```sql
SELECT * FROM AGENT ORDER BY commission;
SELECT * FROM AGENT ORDER BY commission DESC;
SELECT * FROM AGENT WHERE commission IS NOT NULL ORDER BY commission;
```

<img width="899" height="389" alt="image" src="https://github.com/user-attachments/assets/998057e0-eb71-4472-aaf9-45c4ac2bc614" />

<img width="937" height="353" alt="image" src="https://github.com/user-attachments/assets/90135e46-0b26-467a-a50d-84b8a11dc5d2" />

<img width="961" height="371" alt="image" src="https://github.com/user-attachments/assets/a3d99e77-0b97-4df6-b033-f935e76821c7" />


