-- Insert 10 Doctors
INSERT INTO doctors ("name", "specialization", "email", "age", "password")
VALUES
  ('Dr. John Smith', 'Cardiology', 'john.smith@example.com', 45, 'doctor123'),
  ('Dr. Emily Johnson', 'Pediatrics', 'emily.johnson@example.com', 38, 'pediatrics456'),
  ('Dr. Robert White', 'Dermatology', 'robert.white@example.com', 52, 'derma789'),
  ('Dr. Lisa Green', 'Internal Medicine', 'lisa.green@example.com', 41, 'meddoc123'),
  ('Dr. Michael Taylor', 'Orthopedics', 'michael.taylor@example.com', 49, 'ortho456'),
  ('Dr. Sarah Walker', 'Neurology', 'sarah.walker@example.com', 35, 'neuro789'),
  ('Dr. David Clark', 'Ophthalmology', 'david.clark@example.com', 47, 'eyes456'),
  ('Dr. Michelle Martinez', 'Gynecology', 'michelle.martinez@example.com', 40, 'gyno123'),
  ('Dr. James Turner', 'ENT', 'james.turner@example.com', 44, 'entdoc789'),
  ('Dr. Karen Adams', 'Psychiatry', 'karen.adams@example.com', 39, 'psych789');

-- Insert 10 Patients
INSERT INTO patients ("name", "age", "phoneNumber", "address")
VALUES
  ('Alice Roberts', 30, '123-456-7890', '123 Main St, Cityville'),
  ('Bob Anderson', 25, '987-654-3210', '456 Elm St, Townsville'),
  ('Eva Williams', 42, '555-123-4567', '789 Oak Ave, Villagetown'),
  ('Daniel Harris', 28, '111-222-3333', '567 Pine Rd, Countryside'),
  ('Sophia Martinez', 31, '999-888-7777', '789 Maple St, Suburbia'),
  ('Liam Johnson', 19, '444-555-6666', '456 Birch Ln, Woodsville'),
  ('Olivia Davis', 55, '777-666-5555', '987 Cedar Dr, Riverside'),
  ('Noah Rodriguez', 37, '222-333-4444', '345 Willow Rd, Mountainside'),
  ('Emma Wilson', 28, '777-999-1111', '789 Elm St, Metropolis'),
  ('Aiden Brown', 33, '444-111-8888', '123 Oak Rd, Oceanview');


-- Insert 10 Receptionists
INSERT INTO receptionists ("name", "email", "age", "password")
VALUES
  ('Sarah Davis', 'sarah.davis@example.com', 28, 'receptionist123'),
  ('Michael Brown', 'michael.brown@example.com', 32, 'frontdesk456'),
  ('Emily Johnson', 'emily.johnson@example.com', 25, 'reception456'),
  ('Daniel Smith', 'daniel.smith@example.com', 29, 'admin123'),
  ('Olivia Williams', 'olivia.williams@example.com', 27, 'office789'),
  ('Jacob Miller', 'jacob.miller@example.com', 31, 'recept789'),
  ('Sophia Martinez', 'sophia.martinez@example.com', 26, 'frontdesk789'),
  ('Ethan Wilson', 'ethan.wilson@example.com', 24, 'admin456'),
  ('Isabella Taylor', 'isabella.taylor@example.com', 30, 'office123'),
  ('Liam Jackson', 'liam.jackson@example.com', 23, 'recept123');

-- Insert 10 Prescriptions
INSERT INTO prescriptions ("patientId", "doctorId", "content")
VALUES
  (1, 1, 'Take medication A once a day.'),
  (2, 2, 'Follow up in a week. Prescription for pain relief.'),
  (3, 3, 'Prescription for skin cream. Apply twice daily.'),
  (4, 4, 'Medication for cold symptoms. Take as needed.'),
  (5, 5, 'Pain reliever for headaches. Follow dosage instructions.'),
  (6, 6, 'Prescription for allergy relief.'),
  (7, 7, 'Eye drops for dry eyes. Apply before bedtime.'),
  (8, 8, 'Medication for hormone balance. Take daily.'),
  (9, 9, 'Prescription for antibiotics. Finish entire course.'),
  (10, 10, 'Medication for anxiety. Take as directed.');

-- Insert 10 Primary Question Forms
INSERT INTO "primaryQuestionForm" ("receiptionistId", "patientId", "previousIssues", "previousConsultant", "currentIssues", "sleepMode", "depression", "ocd", "recommendation")
VALUES
  (1, 1, '{"Allergies", "Headaches"}', 'Dr. Lee', 'Shortness of breath', 'Normal', '{}', '{}', 'Rest and monitor'),
  (2, 2, '{"Sprained ankle"}', 'Dr. Johnson', 'Back pain', 'Insomnia', '{}', '{}', 'Physical therapy'),
  (3, 3, '{"Eczema"}', 'Dr. White', 'Skin irritation', 'Normal', '{}', '{}', 'Apply cream as directed'),
  (4, 4, '{"Cold symptoms"}', 'Dr. Green', 'Congestion, cough', 'Normal', '{}', '{}', 'Rest and stay hydrated'),
  (5, 5, '{"Headaches"}', 'Dr. Taylor', 'Frequent headaches', 'Normal', '{}', '{}', 'Take pain reliever as needed'),
  (6, 6, '{"Allergies"}', 'Dr. Walker', 'Sneezing, itching', 'Normal', '{}', '{}', 'Avoid allergens'),
  (7, 7, '{"Dry eyes"}', 'Dr. Clark', 'Dryness, irritation', 'Normal', '{}', '{}', 'Use eye drops regularly'),
  (8, 8, '{"Hormone imbalance"}', 'Dr. Martinez', 'Mood swings, fatigue', 'Normal', '{}', '{}', 'Follow medication schedule'),
  (9, 9, '{"Infection"}', 'Dr. Turner', 'Fever, sore throat', 'Normal', '{}', '{}', 'Finish antibiotic course'),
  (10, 10, '{"Anxiety"}', 'Dr. Adams', 'Nervousness, restlessness', 'Normal', '{}', '{}', 'Take medication as directed');
