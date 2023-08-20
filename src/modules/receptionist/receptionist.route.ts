import express from "express";
import { receptionistController } from "./receptionist.controller";

const router = express.Router();

router.post("/create-receptionist", receptionistController.createReceptionist);
router.get("/", receptionistController.getAllReceptionists);
router.get("/:id", receptionistController.getSingleReceptionist);

export const receptionistRoutes = router;
