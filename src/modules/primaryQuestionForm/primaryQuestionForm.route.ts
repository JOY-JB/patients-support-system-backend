// routes/primaryQuestionForm.route.js
import express from "express";
import { primaryQuestionFormController } from "./primaryQuestionForm.controller";

const router = express.Router();

router.post("/create-form", primaryQuestionFormController.createForm);
router.get("/", primaryQuestionFormController.getAllForms);
router.get("/:id", primaryQuestionFormController.getSingleForm);

export const primaryQuestionFormRoutes = router;
