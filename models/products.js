var conn = require('../connections/mysql');
let Products = {};

Products.all = (callback) => {

    if(conn) {
        const sql = "SELECT * FROM products";
        conn.query(sql, (error, rows) => {
            if(error) {
                console.log(error);
                return callback(error);
            }
            return callback(null, rows);
        });
    }
    else
    {
        return callback("No se ha podido conectar");
    }
}

Products.findById = (id, callback) => {
    if(conn)
    {
        conn.query("SELECT * FROM products WHERE id = ?", [id], (error, row) => {
            if(error)
            {
                return callback(error);
            }
            return callback(null, row);
        })
    }
}

Products.insert = (product, callback) => {
    if(conn) {
        conn.query('INSERT INTO products SET ?', [product], (error, result) => {
            if(error) {
                return callback(error);
            }
            return callback(null, result.insertId);
        })
    }
    else
    {
        return callback('No se ha podido conectar');
    }
}

Products.update = (product, callback) => {
    if(conn) {
        conn.query(
            'UPDATE products SET name = ?, price = ?, description = ? WHERE id = ?',
            [product.name, product.price, product.description, product.id],
            (error, result) => {
                if(error) {
                    return callback('Error actualizando producto');
                }
                return callback(null, "Producto actualizado");
            }
        )
    }
}

Products.remove = (id, callback) => {
    if(conn) {
        conn.query(
            'DELETE FROM products WHERE id = ?',
            [id],
            (error, result) => {
                if(error) {
                    return callback('Error eliminando producto');
                }
                return callback(null, "Producto eliminado");
            }
        )
    }
}

Products.response = (res, error, data) => {
    if(error) {
        res.status(500).json(error);
    }
    else
    {
        res.status(200).json(data);
    }
}

module.exports = Products;
