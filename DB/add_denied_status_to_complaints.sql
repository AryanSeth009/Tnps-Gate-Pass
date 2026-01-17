-- Migration script to add 'denied' status to complaints table
-- Run this SQL command to add 'denied' as a valid status option

-- Add 'denied' to the status ENUM
ALTER TABLE complaints 
MODIFY COLUMN status ENUM('pending_approval', 'approved', 'resolved', 'denied') DEFAULT 'pending_approval';
