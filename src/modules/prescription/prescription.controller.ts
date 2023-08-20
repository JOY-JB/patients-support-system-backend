import { Request, Response } from "express";
import { prescriptionService } from "./prescription.service";

const createPrescription = async (req: Request, res: Response) => {
  try {
    const prescriptionData = req.body;
    const createdPrescription = await prescriptionService.createPrescription(
      prescriptionData
    );

    res.send({
      status: 200,
      message: "Prescription created successfully!",
      data: createdPrescription,
    });
  } catch (error) {
    console.error(error);
  }
};

const getAllPrescriptions = async (req: Request, res: Response) => {
  try {
    const prescriptions = await prescriptionService.getAllPrescriptions();

    res.send({
      status: 200,
      message: "Get All Prescriptions successfully!",
      data: prescriptions,
    });
  } catch (error) {
    console.error(error);
  }
};

const getSinglePrescription = async (req: Request, res: Response) => {
  const prescriptionId = parseInt(req.params.id);

  try {
    const prescription = await prescriptionService.getSinglePrescription(
      prescriptionId
    );

    res.send({
      status: 200,
      message: "Get single prescription successfully!",
      data: prescription,
    });
  } catch (error) {
    console.error(error);
  }
};

export const prescriptionController = {
  createPrescription,
  getAllPrescriptions,
  getSinglePrescription,
};
