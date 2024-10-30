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
