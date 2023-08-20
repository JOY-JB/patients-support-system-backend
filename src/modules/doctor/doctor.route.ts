import express from "express";
import { doctorController } from "./doctor.controller";

const router = express.Router();

router.post("/create-doctor", doctorController.addDoctor);
router.get("/", doctorController.getAllDoctors);

export const doctorRoutes = router;
