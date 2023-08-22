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
INSERT INTO patients ("name", "age", "phoneNumber", "address", "doctorId") VALUES
  ('John Doe', 30, '555-1234', '123 Main St', 1),
  ('Jane Smith', 25, '555-5678', '456 Elm St', 2),
  ('Michael Johnson', 40, '555-9876', '789 Oak St', 1),
  ('Emily Davis', 28, '555-4321', '321 Pine St', 3),
  ('David Wilson', 35, '555-8765', '654 Maple St', 2),
  ('Sarah Lee', 29, '555-2345', '987 Birch St', 1),
  ('Robert Brown', 45, '555-7654', '234 Cedar St', 3),
  ('Jennifer Miller', 33, '555-3456', '567 Walnut St', 2),
  ('William Martinez', 27, '555-6543', '890 Spruce St', 1),
  ('Linda Taylor', 50, '555-5432', '1234 Fir St', 3);



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
  -- (1, 1, 'Take medication A once a day.'),
  -- (2, 2, 'Follow up in a week. Prescription for pain relief.'),
  -- (3, 3, 'Prescription for skin cream. Apply twice daily.'),
  -- (4, 4, 'Medication for cold symptoms. Take as needed.'),
  -- (5, 5, 'Pain reliever for headaches. Follow dosage instructions.'),
  (6, 6, 'Prescription for allergy relief.'),
  (7, 7, 'Eye drops for dry eyes. Apply before bedtime.'),
  (8, 8, 'Medication for hormone balance. Take daily.'),
  (9, 9, 'Prescription for antibiotics. Finish entire course.'),
  (10, 10, 'Medication for anxiety. Take as directed.');

-- TRUNCATE TABLE "primaryQuestionForm";
-- DROP TABLE "primaryQuestionForm";

INSERT INTO "primaryQuestionForm" ("receptionistId", "patientId", "previousIssues", "previousConsultant", "currentIssues", "sleepMode", "depression", "ocd", "recommendation")
VALUES
  (1, 1, '{"Anxiety", "Depression"}', 'Dr. Smith', 'Trouble sleeping', 'poor', '{"unstable", "irritated"}', '{"extra-washing"}', 'Try relaxation techniques and establish a sleep routine.'),
  (2, 2, '{"Headaches"}', 'Dr. Johnson', 'Back pain', 'poor', '{"unstable", "irritated"}', '{"extra-washing"}', 'Physical therapy and rest.'),
  (3, 3, '{"Eczema"}', 'Dr. White', 'Skin irritation', 'poor', '{"unstable", "irritated"}', '{"extra-washing"}', 'Apply prescribed cream as directed.'),
  (4, 4, '{"Cold symptoms"}', 'Dr. Green', 'Congestion, cough', 'good', '{"unstable", "irritated"}', '{"extra-washing"}', 'Rest, stay hydrated, and monitor symptoms.'),
  (5, 5, '{"Headaches"}', 'Dr. Taylor', 'Frequent headaches', 'poor', '{"unstable", "irritated"}', '{"extra-washing"}', 'Take over-the-counter pain reliever as needed.'),
  (6, 6, '{"Allergies"}', 'Dr. Walker', 'Sneezing, itching', 'poor', '{"unstable", "irritated"}', '{"extra-washing"}', 'Avoid allergens and take allergy medication.'),
  (7, 7, '{"Dry eyes"}', 'Dr. Clark', 'Dryness, irritation', 'good', '{"unstable", "irritated"}', '{"extra-washing"}', 'Use preservative-free eye drops regularly.'),
  (8, 8, '{"Fatigue"}', 'Dr. Martinez', 'Low energy, mood swings', 'good', '{"unstable", "irritated"}', '{"extra-washing"}', 'Follow balanced diet, exercise, and sleep routine.'),
  (9, 9, '{"Throat pain"}', 'Dr. Turner', 'Sore throat, difficulty swallowing', 'good', '{"unstable", "irritated"}', '{"extra-washing"}', 'Rest, warm saltwater gargles, and hydrate.'),
  (10, 10, '{"Anxiety"}', 'Dr. Adams', 'Nervousness, restlessness', 'poor', '{"unstable", "irritated"}', '{"extra-washing"}', 'Practice mindfulness, consider therapy.');
