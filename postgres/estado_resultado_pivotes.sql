select *
into estado_resultados.er_cor_pivote
from crosstab(
'select * from estado_resultados.id_cat_value_er_cor order by id, cat',
'select cat from estado_resultados.er_categories'
)
as pivot(
id text,
sales double precision,
sales_cost double precision,
salaries double precision,
misc_incomes double precision,
sale_expenses double precision,
admin_expenses double precision,
family_expenses double precision,
finance_products double precision,
finance_expenses double precision,
repomo double precision,
exchange_fluctuation double precision,
subsidiaries_parts double precision,
other_incomes double precision,
other_items double precision,
taxes double precision,
extraordinary_items double precision,
credit_payments double precision,
misc_expenses double precision
)