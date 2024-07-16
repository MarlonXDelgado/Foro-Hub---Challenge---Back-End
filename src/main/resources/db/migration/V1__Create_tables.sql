CREATE TABLE users (
                       id BIGINT AUTO_INCREMENT PRIMARY KEY,
                       nombre VARCHAR(255) NOT NULL,
                       email VARCHAR(255) NOT NULL,
                       contraseña VARCHAR(255) NOT NULL
);

CREATE TABLE courses (
                         id BIGINT AUTO_INCREMENT PRIMARY KEY,
                         nombre VARCHAR(255) NOT NULL,
                         descripcion VARCHAR(255)
);

CREATE TABLE topics (
                        id BIGINT AUTO_INCREMENT PRIMARY KEY,
                        titulo VARCHAR(255) NOT NULL,
                        mensaje TEXT NOT NULL,
                        fecha_creacion TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
                        status VARCHAR(50) NOT NULL,
                        autor_id BIGINT,
                        curso_id BIGINT,
                        FOREIGN KEY (autor_id) REFERENCES users(id),
                        FOREIGN KEY (curso_id) REFERENCES courses(id)
);

CREATE TABLE IF NOT EXISTS topic (
                                     id BIGINT AUTO_INCREMENT PRIMARY KEY,
                                     titulo VARCHAR(255) NOT NULL,
    mensaje TEXT NOT NULL,
    fecha_creacion TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    status VARCHAR(50),
    autor VARCHAR(255),
    curso VARCHAR(255)
    );
