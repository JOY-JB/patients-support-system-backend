"use strict";
var __importDefault = (this && this.__importDefault) || function (mod) {
    return (mod && mod.__esModule) ? mod : { "default": mod };
};
Object.defineProperty(exports, "__esModule", { value: true });
exports.receptionistRoutes = void 0;
const express_1 = __importDefault(require("express"));
const receptionist_controller_1 = require("./receptionist.controller");
const router = express_1.default.Router();
router.post("/create-receptionist", receptionist_controller_1.receptionistController.createReceptionist);
router.get("/", receptionist_controller_1.receptionistController.getAllReceptionists);
router.get("/:id", receptionist_controller_1.receptionistController.getSingleReceptionist);
exports.receptionistRoutes = router;
