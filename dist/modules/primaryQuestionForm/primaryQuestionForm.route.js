"use strict";
var __importDefault = (this && this.__importDefault) || function (mod) {
    return (mod && mod.__esModule) ? mod : { "default": mod };
};
Object.defineProperty(exports, "__esModule", { value: true });
exports.primaryQuestionFormRoutes = void 0;
// routes/primaryQuestionForm.route.js
const express_1 = __importDefault(require("express"));
const primaryQuestionForm_controller_1 = require("./primaryQuestionForm.controller");
const router = express_1.default.Router();
router.post("/create-form", primaryQuestionForm_controller_1.primaryQuestionFormController.createForm);
router.get("/", primaryQuestionForm_controller_1.primaryQuestionFormController.getAllForms);
router.get("/:id", primaryQuestionForm_controller_1.primaryQuestionFormController.getSingleForm);
exports.primaryQuestionFormRoutes = router;
