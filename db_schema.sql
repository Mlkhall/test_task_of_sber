CREATE TABLE IF NOT EXISTS clnt_aggr
(
    client_dk integer PRIMARY KEY ,
    tb_name TEXT(100) NOT NULL ,
    salary NUMERIC,
    pos_amt NUMERIC,
    pos_qty NUMERIC,
    report_dt DATE
);

CREATE TABLE IF NOT EXISTS clnt_data
(
    сlient_dk integer PRIMARY KEY,
    actual_from_dt DATE,
    actual_to_dt DATE,
    gender TEXT(1),
    age integer,
    сhild_qty integer
);

CREATE TABLE IF NOT EXISTS t_client_addr
(
    client_id INTEGER,
    start_dt DATE,
    end_dt DATE,
    Client_addr TEXT(100) NOT NULL,
    PRIMARY KEY (client_id, start_dt, end_dt)
);

CREATE TABLE IF NOT EXISTS t_client_job
(
    client_id INTEGER,
    start_dt DATE,
    end_dt DATE,
    Client_job TEXT(100) NOT NULL,
    PRIMARY KEY (client_id, start_dt, end_dt)
);