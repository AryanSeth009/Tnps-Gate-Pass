CREATE TABLE complaints (
  id INT NOT NULL AUTO_INCREMENT,
  student_uid VARCHAR(50) NOT NULL,
  description TEXT NOT NULL,
  category VARCHAR(100) DEFAULT NULL,
  room_number VARCHAR(50) DEFAULT NULL,
  phone_number VARCHAR(20) DEFAULT NULL,
  timestamp DATETIME DEFAULT CURRENT_TIMESTAMP,
  status ENUM('pending_approval', 'approved', 'resolved') DEFAULT 'pending_approval',
  PRIMARY KEY (id),
  CONSTRAINT fk_student_uid FOREIGN KEY (student_uid) REFERENCES studentdetails(uid)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;