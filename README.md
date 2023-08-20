# Patient Support System Backend

Welcome to the backend for the Patient Support System application. This backend is built using Prisma, PostgreSQL, Express, and TypeScript.

## Entities and Cardinality Relationships

- **Doctor**:

  - A Doctor can have many Patients.
  - A Doctor can create many Prescriptions.

- **Patient**:

  - A Patient belongs to one Doctor.
  - A Patient can have at most one Prescription.
  - A Patient can have at most one Primary Question Form.

- **Prescription**:

  - A Prescription belongs to one Doctor.
  - A Prescription is associated with one Patient.

- **Primary Question Form**:

  - A Primary Question Form is created by one Receptionist.
  - A Primary Question Form is associated with one Patient.

- **Receptionist**:
  - A Receptionist can create multiple Primary Question Forms.

## API Endpoints

### Doctors

- POST `/create-doctor`: Create a new doctor.
- GET `/`: Get details of all doctors.

### Patients

- POST `/create-patient`: Create a new patient.
- GET `/`: Get details of all patients.
- GET `/:id`: Get details of a single patient.

### Prescriptions

- POST `/create-prescription`: Create a new prescription.
- GET `/`: Get details of all prescriptions.
- GET `/:id`: Get details of a single prescription.

### Primary Question Forms

- POST `/create-form`: Create a new primary question form.
- GET `/`: Get details of all primary question forms.
- GET `/:id`: Get details of a single primary question form.

### Receptionists

- POST `/create-receptionist`: Create a new receptionist.
- GET `/`: Get details of all receptionists.
- GET `/:id`: Get details of a single receptionist.

## Backend Link

Check out the deployed backend at: [https://health-care-backend-lac.vercel.app/](https://health-care-backend-lac.vercel.app/)

## Frontend Link

Explore the frontend at: [https://upcomming](upcomming)
