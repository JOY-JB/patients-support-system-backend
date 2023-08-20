"use strict";
var __awaiter = (this && this.__awaiter) || function (thisArg, _arguments, P, generator) {
    function adopt(value) { return value instanceof P ? value : new P(function (resolve) { resolve(value); }); }
    return new (P || (P = Promise))(function (resolve, reject) {
        function fulfilled(value) { try { step(generator.next(value)); } catch (e) { reject(e); } }
        function rejected(value) { try { step(generator["throw"](value)); } catch (e) { reject(e); } }
        function step(result) { result.done ? resolve(result.value) : adopt(result.value).then(fulfilled, rejected); }
        step((generator = generator.apply(thisArg, _arguments || [])).next());
    });
};
Object.defineProperty(exports, "__esModule", { value: true });
exports.prescriptionController = void 0;
const prescription_service_1 = require("./prescription.service");
const createPrescription = (req, res) => __awaiter(void 0, void 0, void 0, function* () {
    try {
        const prescriptionData = req.body;
        const createdPrescription = yield prescription_service_1.prescriptionService.createPrescription(prescriptionData);
        res.send({
            status: 200,
            message: "Prescription created successfully!",
            data: createdPrescription,
        });
    }
    catch (error) {
        console.error(error);
    }
});
const getAllPrescriptions = (req, res) => __awaiter(void 0, void 0, void 0, function* () {
    try {
        const prescriptions = yield prescription_service_1.prescriptionService.getAllPrescriptions();
        res.send({
            status: 200,
            message: "Get All Prescriptions successfully!",
            data: prescriptions,
        });
    }
    catch (error) {
        console.error(error);
    }
});
const getSinglePrescription = (req, res) => __awaiter(void 0, void 0, void 0, function* () {
    const prescriptionId = parseInt(req.params.id);
    try {
        const prescription = yield prescription_service_1.prescriptionService.getSinglePrescription(prescriptionId);
        res.send({
            status: 200,
            message: "Get single prescription successfully!",
            data: prescription,
        });
    }
    catch (error) {
        console.error(error);
    }
});
exports.prescriptionController = {
    createPrescription,
    getAllPrescriptions,
    getSinglePrescription,
};
