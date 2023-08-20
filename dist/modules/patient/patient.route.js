"use strict";
var __importDefault = (this && this.__importDefault) || function (mod) {
    return (mod && mod.__esModule) ? mod : { "default": mod };
};
Object.defineProperty(exports, "__esModule", { value: true });
exports.patientRoutes = void 0;
// routes/patient.route.js
const express_1 = __importDefault(require("express"));
const patient_controller_1 = require("./patient.controller");
const router = express_1.default.Router();
router.post("/create-patient", patient_controller_1.patientController.createPatient);
router.get("/", patient_controller_1.patientController.getAllPatients);
router.get("/:id", patient_controller_1.patientController.getSinglePatient);
exports.patientRoutes = router;
