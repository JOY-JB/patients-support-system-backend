// routes/prescription.route.js
import express from "express";
import { prescriptionController } from "./prescription.controller";

const router = express.Router();

router.post("/create-prescription", prescriptionController.createPrescription);
router.get("/", prescriptionController.getAllPrescriptions);
router.get("/:id", prescriptionController.getSinglePrescription);

export const prescriptionRoutes = router;
