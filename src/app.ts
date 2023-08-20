import cors from "cors";
import express, { Application } from "express";
import { doctorRoutes } from "./modules/doctor/doctor.route";
import { patientRoutes } from "./modules/patient/patient.route";
import { prescriptionRoutes } from "./modules/prescription/prescription.route";
import { primaryQuestionFormRoutes } from "./modules/primaryQuestionForm/primaryQuestionForm.route";
import { receptionistRoutes } from "./modules/receptionist/receptionist.route";

const app: Application = express();

app.use(express.json());
app.use(cors());
app.use(express.urlencoded({ extended: true }));

app.use("/api/v1/doctor", doctorRoutes);
app.use("/api/v1/patient", patientRoutes);
app.use("/api/v1/prescription", prescriptionRoutes);
app.use("/api/v1/receptionist", receptionistRoutes);
app.use("/api/v1/primaryQuestionForm", primaryQuestionFormRoutes);

export default app;
