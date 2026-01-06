ALTER TABLE studentdetails ADD COLUMN meal_category ENUM('veg', 'non-veg') DEFAULT NULL;

CREATE TABLE IF NOT EXISTS `meal_deductions` (
  `deduction_id` INT NOT NULL AUTO_INCREMENT,
  `uid` VARCHAR(50) NOT NULL,
  `meal_type` ENUM('veg', 'non-veg') NOT NULL,
  `deduction_date` DATETIME DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`deduction_id`),
  KEY `idx_uid` (`uid`),
  KEY `idx_deduction_date` (`deduction_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
