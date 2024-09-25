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
CREATE PROCEDURE procShowCategories()
BEGIN
    SELECT cat_id, cat_decsripcion 
    FROM tbl_categorias;
END//
DELIMITER ;
-- Eliminar 

DELIMITER //
create procedure procDeleteCategory(IN v_id INT)
begin 
    delete from tbl_categorias where cat_id = v_id;
end// 
DELIMITER ;

-- proveedores
-- insertar
DELIMITER //
CREATE PROCEDURE procInsertProveedor(
    IN v_nit VARCHAR(20), -- Ajusta el tamaño según el formato del NIT
    IN v_nombre VARCHAR(100)
)
BEGIN
    INSERT INTO tbl_proveedores (prov_nit, prov_nombre)
    VALUES (v_nit, v_nombre);
END //
DELIMITER ;

--  Actualizar

DELIMITER //
CREATE PROCEDURE procUpdateProveedor(
    IN v_id INT,
    IN v_nit VARCHAR(20),
    IN v_nombre VARCHAR(100)
)
BEGIN
    UPDATE tbl_proveedores
    SET prov_nit = v_nit,
        prov_nombre = v_nombre
    WHERE prov_id = v_id;
END //
DELIMITER ;

-- Mostrar

DELIMITER //
CREATE PROCEDURE procShowProveedores()
BEGIN
    SELECT prov_id, prov_nit, prov_nombre
    FROM tbl_proveedores;
END //
DELIMITER ;

-- Eliminar

DELIMITER //
CREATE PROCEDURE procDeleteProveedor(IN v_id INT)
BEGIN
    DELETE FROM tbl_proveedores WHERE prov_id = v_id;
END //
DELIMITER ;
-- productos
-- Insertar
DELIMITER //
CREATE PROCEDURE procInsertProduct(
    IN v_codigo VARCHAR(45),
    IN v_descripcion VARCHAR(45),
    IN v_cantidad INT,
    IN v_precio DECIMAL,
    IN v_proveedor_id INT,
    IN v_categoria_id INT
)
BEGIN
    INSERT INTO tbl_productos (pro_codigo, pro_descripcion, pro_cantidad, pro_precio, tbl_proveedores_prov_id, tbl_categorias_cat_id)
    VALUES (v_codigo, v_descripcion, v_cantidad, v_precio, v_proveedor_id, v_categoria_id);
END //
DELIMITER ;

--  Actualizar

DELIMITER //
CREATE PROCEDURE procUpdateProduct(
    IN v_id INT,
    IN v_codigo VARCHAR(45),
    IN v_descripcion VARCHAR(45),
    IN v_cantidad INT,
    IN v_precio DECIMAL(10,2),
    IN v_proveedor_id INT,
    IN v_categoria_id INT
)
BEGIN
    UPDATE tbl_productos
    SET pro_codigo = v_codigo,
        pro_descripcion = v_descripcion,
        pro_cantidad = v_cantidad,
        pro_precio = v_precio,
        tbl_proveedores_prov_id = v_proveedor_id,
        tbl_categorias_cat_id = v_categoria_id
    WHERE pro_id = v_id;
END //
DELIMITER ;

--  Mostrar

DELIMITER //
CREATE PROCEDURE procShowProducts()
BEGIN
    SELECT pro_id, pro_codigo, pro_descripcion, pro_cantidad, pro_precio, tbl_proveedores_prov_id, tbl_categorias_cat_id
    FROM tbl_productos;
END //
DELIMITER ;

-- Eliminar

DELIMITER //
CREATE PROCEDURE procDeleteProduct(IN v_id INT)
BEGIN
    DELETE FROM tbl_productos WHERE pro_id = v_id;
END //
DELIMITER ;

-- usuarios
-- Insertar

DELIMITER //
CREATE PROCEDURE procInsertUsuario(
    IN v_correo VARCHAR(80),
    IN v_contrasena TEXT,
    IN v_salt TEXT,
    IN v_estado VARCHAR(15)
)
BEGIN
    INSERT INTO tbl_usuarios (usu_correo, uso_contrasena, usu_salt, usu_estado)
    VALUES (v_correo, v_contrasena, v_salt, v_estado);
END //
DELIMITER ;

-- Mostrar

DELIMITER //
CREATE PROCEDURE procGetUsuarioById(IN v_id INT)
BEGIN
    SELECT * FROM tbl_usuarios WHERE usu_id = v_id;
END //
DELIMITER ;

-- Actualizar

DELIMITER //
CREATE PROCEDURE procUpdateUsuario(
    IN v_id INT,
    IN v_correo VARCHAR(80),
    IN v_contrasena TEXT,
    IN v_salt TEXT,
    IN v_estado VARCHAR(15)
)
BEGIN
    UPDATE tbl_usuarios
    SET usu_correo = v_correo,
        uso_contrasena = v_contrasena,
        usu_salt = v_salt,
        usu_estado = v_estado
    WHERE usu_id = v_id;
END //
DELIMITER ;

-- Eliminar

DELIMITER //
CREATE PROCEDURE procDeleteUsuario(IN v_id INT)
BEGIN
    DELETE FROM tbl_usuarios WHERE usu_id = v_id;
END //
DELIMITER ;