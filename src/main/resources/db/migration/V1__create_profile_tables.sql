-- Tabla de perfiles de Distribuidores
CREATE TABLE distributors (
                              id VARCHAR(255) NOT NULL PRIMARY KEY,
                              company_name VARCHAR(255),
                              full_name VARCHAR(255),
                              ruc VARCHAR(20),
                              phone VARCHAR(20),
                              city VARCHAR(100),
                              country VARCHAR(100),
                              created_at TIMESTAMP,
                              updated_at TIMESTAMP,

    -- De nuevo, solo el ID, sin Foreign Key
                              user_id VARCHAR(255) NOT NULL UNIQUE -- Asumo que un usuario solo puede tener un perfil de distribuidor
);

-- Tabla de perfiles de Productores
CREATE TABLE agricultural_producers (
                                        id VARCHAR(255) NOT NULL PRIMARY KEY,
                                        full_name VARCHAR(255),
                                        dni VARCHAR(20),
                                        phone VARCHAR(20),
                                        city VARCHAR(100),
                                        country VARCHAR(100),
                                        created_at TIMESTAMP,
                                        updated_at TIMESTAMP,

    -- De nuevo, solo el ID, sin Foreign Key
                                        user_id VARCHAR(255) NOT NULL UNIQUE -- Asumo que un usuario solo puede tener un perfil de productor
);