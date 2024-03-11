#- 👋 Hi, I’m @SMURALI970
- I’m interested in fullstack development
- I’m currently learning artificial intelligence and cybersecurity other boomimg technologies
- I’m looking to collaborate on building projects  
- How to reach me muralisrinivas991@gmail.com
- Fun fact: ...

<!---
SMURALI970/SMURALI970 is a ✨ special ✨ repository because its `README.md` (this file) appears on your GitHub profile.
You can click the Preview link to take a look at your changes.
--->

                                <!________________ANSWERS_______________ >
                                
   1       The relationship between product and product_category in the diagram provided follows many-to-one or many to one relationship [both are same].
           i.It can be identified by the foreign key ** "category_id"** as shown in the ER diagram 
   
   2       with  use of database constraints we can say that the given tables are valid.These are the database constraints
           i.Foreign key constraint
              The database enforces a foreign keyconstraint on the category idin the product table. This ensures that category_id must exist in product_category table.
          ii.Check constraint
             We can use this constraint as a query to check whether it is valid or not by processing the query
             Syntax:
              ALTER TABLE product
              ADD CONSTRAINT chk_vallid_category_id CHECK (category_id in select(id from category id);
    
