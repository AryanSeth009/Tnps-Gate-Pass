ALTER TABLE studentdetails
ADD COLUMN food_preference VARCHAR(50) DEFAULT 'Veg';

CREATE TABLE mess_counts (
    id INT AUTO_INCREMENT PRIMARY KEY,
    total_students_present INT DEFAULT 0,
    veg_count INT DEFAULT 0,
    non_veg_count INT DEFAULT 0,
    last_updated DATETIME DEFAULT CURRENT_TIMESTAMP
);

INSERT INTO mess_counts (total_students_present, veg_count, non_veg_count) VALUES (0, 0, 0);

