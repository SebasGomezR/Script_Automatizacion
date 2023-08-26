create table Usuario (
    id VARCHAR PRIMARY KEY,
    updated_at DATE,
    created_at DATE,
    email VARCHAR,
    contraseña VARCHAR,
    first_name VARCHAR NULL,
    last_name VARCHAR NULL
);


create table Review (
    id VARCHAR PRIMARY KEY,
    updated_at DATE,
    created_at DATE,
    user_id VARCHAR,
    place_id VARCHAR,
    texto VARCHAR2,
    FOREIGN KEY (user_id) REFERENCES Usuario(id),
    FOREIGN KEY (place_id) REFERENCES Place(id)
);


create table Place (
    id VARCHAR PRIMARY KEY,
    updated_at DATE,
    created_at DATE,
    user_id VARCHAR,
    nombre VARCHAR,
    city_id VARCHAR,
    descripcion VARCHAR2,
    number_rooms INTEGER DEFAULT 0,
    number_bathrooms INTEGER DEFAULT 0,
    max_guest INTEGER DEFAULT 0,
    price_by_night INTEGER DEFAULT 0,
    latitude FLOAT NULL,
    longitude FLOAT NULL,
    FOREIGN KEY (user_id) REFERENCES Usuario(id),
    FOREIGN KEY (city_id) REFERENCES City(id)
);



create table Amenity (
    id VARCHAR PRIMARY KEY,
    updated_at DATE,
    created_at DATE,
    nombre VARCHAR
);


create table PlaceAmenity (
    amenity_id VARCHAR,
    place_id VARCHAR, 
    FOREIGN KEY (amenity_id) REFERENCES Amenity(id),
    FOREIGN KEY (place_id) REFERENCES Place(id)
);



create table Estado (
    id VARCHAR PRIMARY KEY,
    updated_at DATE,
    created_at DATE,
    nombre VARCHAR
);


create table City (
    id VARCHAR PRIMARY KEY,
    updated_at DATE,
    created_at DATE,
    state_id VARCHAR,
    nombre VARCHAR,
    FOREIGN KEY (state_id) REFERENCES Estado(id)
);


