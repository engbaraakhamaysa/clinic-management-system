INSERT INTO departments(name, description, location)

VALUES

('Cardiology', 'Heart and blood vessels treatment department', 'Building A - Floor 2'),

('Pediatrics', 'Child healthcare department', 'Building B - Floor 1'),

('Dermatology', 'Skin, hair and nails treatment department', 'Building A - Floor 1'),

('Orthopedics', 'Bones and joints treatment department', 'Building C - Floor 3')

RETURNING *;