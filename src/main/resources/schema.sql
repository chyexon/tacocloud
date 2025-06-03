CREATE TABLE IF NOT EXISTS Taco_Order (
                                          id IDENTITY PRIMARY KEY,
                                          deliveryName VARCHAR(50) NOT NULL,
    deliveryStreet VARCHAR(50) NOT NULL,
    deliveryCity VARCHAR(50) NOT NULL,
    deliveryState VARCHAR(2) NOT NULL,
    deliveryZip VARCHAR(10) NOT NULL,
    ccNumber VARCHAR(16) NOT NULL,
    ccExpiration VARCHAR(5) NOT NULL,
    ccCVV VARCHAR(3) NOT NULL,
    placedAt TIMESTAMP NOT NULL
    );

CREATE TABLE IF NOT EXISTS Taco (
                                    id IDENTITY PRIMARY KEY,
                                    name VARCHAR(50) NOT NULL,
    taco_order BIGINT NOT NULL,
    created_at TIMESTAMP NOT NULL,
    CONSTRAINT fk_taco_order FOREIGN KEY (taco_order) REFERENCES Taco_Order(id)
    );

CREATE TABLE IF NOT EXISTS Ingredient (
                                          id VARCHAR(4) NOT NULL PRIMARY KEY,
    name VARCHAR(25) NOT NULL,
    type VARCHAR(10) NOT NULL
    );

CREATE TABLE IF NOT EXISTS Ingredient_Ref (
                                              ingredient VARCHAR(4) NOT NULL,
    taco BIGINT NOT NULL,
    CONSTRAINT fk_ingredient FOREIGN KEY (ingredient) REFERENCES Ingredient(id),
    CONSTRAINT fk_taco FOREIGN KEY (taco) REFERENCES Taco(id)
    );
