-- categorias 
-- Insertar 
DELIMITER //
CREATE procedure procInsertCategory(IN v_description VARCHAR(45))
begin
insert into tbl_categorias(cat_decsripcion)
values(v_description);
end// 
DELIMITER ;

-- Actualizar


DELIMITER //
create procedure proUpdateCategory(IN v_id INT, IN v_description VARCHAR (45))
begin
update tbl_categorias
set cat_decsripcion = v_description
where cat_id = v_id;
end//
DELIMITER ;

-- Mostrar

DELIMITER //


DELIMITER ;

-- Eliminar 

DELIMITER //
create procedure procDeleteCategory(IN v_id INT)
begin 
    delete from tbl_categorias where cat_id = v_id;
end// 
DELIMITER ;

-- proveedores

DELIMITER //


DELIMITER ;

-- productos

DELIMITER //


DELIMITER ;

-- usuarios
