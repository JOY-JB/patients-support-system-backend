// routes/patient.route.js
import express from "express";
import { patientController } from "./patient.controller";

const router = express.Router();

router.post("/create-patient", patientController.createPatient);
router.get("/", patientController.getAllPatients);
router.get("/:id", patientController.getSinglePatient);

export const patientRoutes = router;
