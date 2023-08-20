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
exports.receptionistController = void 0;
const receptionist_service_1 = require("./receptionist.service");
const createReceptionist = (req, res) => __awaiter(void 0, void 0, void 0, function* () {
    try {
        const receptionistData = req.body;
        const createdReceptionist = yield receptionist_service_1.receptionistService.createReceptionist(receptionistData);
        res.send({
            status: 200,
            message: "Receptionist created successfully!",
            data: createdReceptionist,
        });
    }
    catch (error) {
        console.error(error);
    }
});
const getAllReceptionists = (req, res) => __awaiter(void 0, void 0, void 0, function* () {
    try {
        const receptionists = yield receptionist_service_1.receptionistService.getAllReceptionists();
        res.send({
            status: 200,
            message: "Get all receptionists successfully!",
            data: receptionists,
        });
    }
    catch (error) {
        console.error(error);
    }
});
const getSingleReceptionist = (req, res) => __awaiter(void 0, void 0, void 0, function* () {
    const receptionistId = parseInt(req.params.id);
    try {
        const receptionist = yield receptionist_service_1.receptionistService.getSingleReceptionist(receptionistId);
        res.send({
            status: 200,
            message: "Get single receptionist successfully!",
            data: receptionist,
        });
    }
    catch (error) {
        console.error(error);
    }
});
exports.receptionistController = {
    createReceptionist,
    getAllReceptionists,
    getSingleReceptionist,
};
