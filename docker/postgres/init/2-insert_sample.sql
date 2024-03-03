\c general_purpose_server;

-- アプリケーションの挿入
INSERT INTO applications (id, secret_key, application_name, representative_name, corporate_name, mail, phone_number, address)
VALUES ('01FAK1E2YF0PZ1F0CBGX6V9VM2', 'yoursecretkey', 'Your App', 'John Doe', 'Your Company', 'john.doe@example.com', '1234567890', '123 Main St, City'),
       ('02FAK1E2YF0PZ1F0CBGX6V9VM2', 'anothersecretkey', 'Another App', 'Jane Doe', 'Another Company', 'jane.doe@example.com', '9876543210', '456 Market St, City');

-- ユーザーの挿入
INSERT INTO users (id, name, mail, gender, age, height, weight, address, occupation, application_id)
VALUES ('11FAK1E2YF0PZ1F0CBGX6V9VM2', 'Alice', 'alice@example.com', 'female', 25, 165.5, 55.0, '789 Side St, City', 'Developer', '01FAK1E2YF0PZ1F0CBGX6V9VM2'),
       ('12FAK1E2YF0PZ1F0CBGX6V9VM2', 'Bob', 'bob@example.com', 'male', 30, 180.0, 75.5, '321 Back St, City', 'Designer', '01FAK1E2YF0PZ1F0CBGX6V9VM2');

-- スポットの挿入
INSERT INTO spots (id, name, floor, location_type)
VALUES ('21FAK1E2YF0PZ1F0CBGX6V9VM2', 'Lobby', 1, 'indoor'),
       ('22FAK1E2YF0PZ1F0CBGX6V9VM2', 'Roof Deck', 5, 'outdoor');

-- 座標の挿入
INSERT INTO coordinates (id, latitude, longitude, spot_id)
VALUES ('41FAK1E2YF0PZ1F0CBGX6V9VM2', 35.681236, 139.767125, '21FAK1E2YF0PZ1F0CBGX6V9VM2'),
       ('42FAK1E2YF0PZ1F0CBGX6V9VM2', 35.6869, 139.7105, '22FAK1E2YF0PZ1F0CBGX6V9VM2');
