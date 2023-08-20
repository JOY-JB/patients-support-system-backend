"use strict";
var __importDefault = (this && this.__importDefault) || function (mod) {
    return (mod && mod.__esModule) ? mod : { "default": mod };
};
Object.defineProperty(exports, "__esModule", { value: true });
exports.prescriptionRoutes = void 0;
// routes/prescription.route.js
const express_1 = __importDefault(require("express"));
const prescription_controller_1 = require("./prescription.controller");
const router = express_1.default.Router();
router.post("/create-prescription", prescription_controller_1.prescriptionController.createPrescription);
router.get("/", prescription_controller_1.prescriptionController.getAllPrescriptions);
router.get("/:id", prescription_controller_1.prescriptionController.getSinglePrescription);
exports.prescriptionRoutes = router;
