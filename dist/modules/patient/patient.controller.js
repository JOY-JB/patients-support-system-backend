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
var __rest = (this && this.__rest) || function (s, e) {
    var t = {};
    for (var p in s) if (Object.prototype.hasOwnProperty.call(s, p) && e.indexOf(p) < 0)
        t[p] = s[p];
    if (s != null && typeof Object.getOwnPropertySymbols === "function")
        for (var i = 0, p = Object.getOwnPropertySymbols(s); i < p.length; i++) {
            if (e.indexOf(p[i]) < 0 && Object.prototype.propertyIsEnumerable.call(s, p[i]))
                t[p[i]] = s[p[i]];
        }
    return t;
};
Object.defineProperty(exports, "__esModule", { value: true });
exports.patientController = void 0;
const patient_service_1 = require("./patient.service");
const createPatient = (req, res) => __awaiter(void 0, void 0, void 0, function* () {
    try {
        const patientData = __rest(req.body, []);
        const createdPatient = yield patient_service_1.patientService.createPatient(patientData);
        res.send({
            status: 200,
            message: "Patient created successfully!",
            data: createdPatient,
        });
    }
    catch (error) {
        console.error(error);
    }
});
const getAllPatients = (req, res) => __awaiter(void 0, void 0, void 0, function* () {
    try {
        const patients = yield patient_service_1.patientService.getAllPatients();
        res.send({
            status: 200,
            message: "Retrived all patients successfully!",
            data: patients,
        });
    }
    catch (error) {
        console.error(error);
    }
});
const getSinglePatient = (req, res) => __awaiter(void 0, void 0, void 0, function* () {
    try {
        const patientId = parseInt(req.params.id);
        const patient = yield patient_service_1.patientService.getPatientById(patientId);
        res.send({
            status: 200,
            message: "Get single patient successfully!",
            data: patient,
        });
    }
    catch (error) {
        console.error(error);
    }
});
exports.patientController = {
    createPatient,
    getAllPatients,
    getSinglePatient,
};
