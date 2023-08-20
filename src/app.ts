import cors from "cors";
import express, { Application } from "express";
import { doctorRoutes } from "./modules/doctor/doctor.route";
import { patientRoutes } from "./modules/patient/patient.route";

const app: Application = express();

app.use(express.json());
app.use(cors());
app.use(express.urlencoded({ extended: true }));

app.use("/api/v1/doctor", doctorRoutes);
app.use("/api/v1/patient", patientRoutes);

export default app;
