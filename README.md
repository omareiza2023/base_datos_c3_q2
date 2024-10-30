## caso 1
Se requiere crear una consulta para:
Obtener de manera ordenada la lista de vistas y modulos a los que tiene acceso un rol en estado activo. 
role[name=> rol, route => ruta]
module[name=> modulo, route => paquete]

```sql
SELECT 
    r.name AS rol,
    v.name AS vista,
    v.path AS ruta_vista,
    m.name AS modulo,
    m.path AS paquete_modulo
FROM 
    role r
JOIN 
    role_module rm ON r.id = rm.role_id
JOIN 
    module m ON rm.module_id = m.id
JOIN 
    module_view mv ON m.id = mv.module_id
JOIN 
    view v ON mv.view_id = v.id
WHERE 
    r.state = 1
ORDER BY 
    r.name, v.name;



``` 

## resultados

![consulta parcial](/IMG/Sin%20título.png)

![consulta completa](/IMG/imagen%202.png)
    