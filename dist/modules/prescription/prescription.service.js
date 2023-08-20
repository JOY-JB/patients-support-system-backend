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
exports.prescriptionService = void 0;
const client_1 = require("@prisma/client");
const prisma = new client_1.PrismaClient();
const createPrescription = (data) => __awaiter(void 0, void 0, void 0, function* () {
    const createdPrescription = yield prisma.prescription.create({
        data,
    });
    return createdPrescription;
});
const getAllPrescriptions = () => __awaiter(void 0, void 0, void 0, function* () {
    const prescriptions = yield prisma.prescription.findMany();
    return prescriptions;
});
const getSinglePrescription = (id) => __awaiter(void 0, void 0, void 0, function* () {
    const prescription = yield prisma.prescription.findUnique({
        where: {
            id,
        },
    });
    return prescription;
});
exports.prescriptionService = {
    createPrescription,
    getAllPrescriptions,
    getSinglePrescription,
};
