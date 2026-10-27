CREATE VIEW vw_cards AS
SELECT
    c.id,
    c.name,
    t.name AS type_name,
    s.name AS stage_name,
    col.collection_set_name,
    col.release_date,
    col.total_cards_in_collection,
    c.hp,
    c.info,
    c.attack,
    c.damage,
    c.weak,
    c.resistance,
    c.retreat,
    c.card_number_in_collection
FROM tbl_cards c
INNER JOIN tbl_types t
    ON t.id = c.type_id
INNER JOIN tbl_stages s
    ON s.id = c.stage_id
INNER JOIN tbl_collections col
    ON col.id = c.collection_id;