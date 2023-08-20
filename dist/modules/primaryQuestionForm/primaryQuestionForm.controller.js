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
exports.primaryQuestionFormController = void 0;
const primaryQuestionForm_service_1 = require("./primaryQuestionForm.service");
const createForm = (req, res) => __awaiter(void 0, void 0, void 0, function* () {
    try {
        const formData = req.body;
        const createdForm = yield primaryQuestionForm_service_1.primaryQuestionFormService.createForm(formData);
        res.send({
            status: 200,
            message: "Primary question form created successfully!",
            data: createdForm,
        });
    }
    catch (error) {
        console.error(error);
        res.send({
            status: 500,
            message: error,
        });
    }
});
const getAllForms = (req, res) => __awaiter(void 0, void 0, void 0, function* () {
    try {
        const forms = yield primaryQuestionForm_service_1.primaryQuestionFormService.getAllForms();
        res.send({
            status: 200,
            message: "Retrieved all primary question forms successfully!",
            data: forms,
        });
    }
    catch (error) {
        console.error(error);
        res.send({
            status: 500,
            message: "An error occurred while fetching primary question forms.",
        });
    }
});
const getSingleForm = (req, res) => __awaiter(void 0, void 0, void 0, function* () {
    try {
        const formId = parseInt(req.params.id);
        const form = yield primaryQuestionForm_service_1.primaryQuestionFormService.getSingleForm(formId);
        if (!form) {
            res.send({
                status: 404,
                message: "Primary question form not found.",
            });
        }
        else {
            res.send({
                status: 200,
                message: "Retrieved single primary question form successfully!",
                data: form,
            });
        }
    }
    catch (error) {
        console.error(error);
        res.send({
            status: 500,
            message: "An error occurred while fetching the primary question form.",
        });
    }
});
exports.primaryQuestionFormController = {
    createForm,
    getAllForms,
    getSingleForm,
};
