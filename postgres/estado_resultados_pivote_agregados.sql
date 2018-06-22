create view estado_resultados.er_cor_pivote_agregados as
select 
*,
coalesce(sales, 0) - coalesce(sales_cost, 0) as gross_profit,  --   utilidad bruta 
coalesce(sales, 0) - coalesce(sales_cost, 0) - coalesce(sale_expenses, 0) 
- coalesce(admin_expenses, 0) as operation_profit,   --  utilidad de operacion
coalesce(sales, 0) - coalesce(sales_cost, 0) - coalesce(sale_expenses, 0) 
- coalesce(admin_expenses, 0) - coalesce(finance_products, 0) - coalesce(finance_expenses, 0)
- coalesce(repomo, 0) - coalesce(exchange_fluctuation, 0) - coalesce(subsidiaries_parts, 0)
- coalesce(other_incomes, 0) - coalesce(other_items, 0) - coalesce(taxes, 0) 
- coalesce(extraordinary_items, 0) as net_profit  --  utilidad neta
from estado_resultados.er_cor_pivote

