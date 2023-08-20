// controllers/patient.controller.js
import { Request, Response } from "express";
import { patientService } from "./patient.service";

const createPatient = async (req: Request, res: Response) => {
  try {
    const patientData = req.body;

    const createdPatient = await patientService.createPatient(patientData);

    res.send({
      status: 200,
      message: "Patient created successfully!",
      data: createdPatient,
    });
  } catch (error) {
    console.error(error);
  }
};

const getAllPatients = async (req: Request, res: Response) => {
  try {
    const patients = await patientService.getAllPatients();

    res.send({
      status: 200,
      message: "Retrived all patients successfully!",
      data: patients,
    });
  } catch (error) {
    console.error(error);
  }
};

const getSinglePatient = async (req: Request, res: Response) => {
  try {
    const patientId = parseInt(req.params.id);

    const patient = await patientService.getPatientById(patientId);

    res.send({
      status: 200,
      message: "Get single patient successfully!",
      data: patient,
    });
  } catch (error) {
    console.error(error);
  }
};

export const patientController = {
  createPatient,
  getAllPatients,
  getSinglePatient,
};
