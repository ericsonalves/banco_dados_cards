CREATE TABLE tbl_types (
    id INTEGER GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    name VARCHAR(20) NOT NULL UNIQUE
);

CREATE TABLE tbl_stages (
    id INTEGER GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    name VARCHAR(20) NOT NULL UNIQUE
);

CREATE TABLE tbl_collections (
    id INTEGER GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    collection_set_name VARCHAR(100) NOT NULL,
    release_date DATE NOT NULL,
    total_cards_in_collection SMALLINT NOT NULL CHECK (total_cards_in_collection > 0)
);

CREATE TABLE tbl_cards (
    id INTEGER GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    collection_id INTEGER NOT NULL,
    type_id INTEGER NOT NULL,
    stage_id INTEGER NOT NULL,
    hp SMALLINT CHECK (hp > 0),
    name VARCHAR(50) NOT NULL,
    info TEXT,
    attack VARCHAR(50),
    damage VARCHAR(20),
    weak VARCHAR(20),
    resistance VARCHAR(20),
    retreat SMALLINT CHECK (retreat >= 0),
    card_number_in_collection VARCHAR(10) NOT NULL,
    CONSTRAINT fk_cards_collection
        FOREIGN KEY (collection_id)
        REFERENCES tbl_collections(id)
        ON DELETE CASCADE,
    CONSTRAINT fk_cards_type
        FOREIGN KEY (type_id)
        REFERENCES tbl_types(id),
    CONSTRAINT fk_cards_stage
        FOREIGN KEY (stage_id)
        REFERENCES tbl_stages(id)
);

CREATE UNIQUE INDEX ux_cards_collection_number
ON tbl_cards (
    collection_id,
    card_number_in_collection
);