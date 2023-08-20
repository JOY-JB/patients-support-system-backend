import { Request, Response } from "express";
import { receptionistService } from "./receptionist.service";

const createReceptionist = async (req: Request, res: Response) => {
  try {
    const receptionistData = req.body;

    const createdReceptionist = await receptionistService.createReceptionist(
      receptionistData
    );

    res.send({
      status: 200,
      message: "Receptionist created successfully!",
      data: createdReceptionist,
    });
  } catch (error) {
    console.error(error);
  }
};

const getAllReceptionists = async (req: Request, res: Response) => {
  try {
    const receptionists = await receptionistService.getAllReceptionists();

    res.send({
      status: 200,
      message: "Get all receptionists successfully!",
      data: receptionists,
    });
  } catch (error) {
    console.error(error);
  }
};

const getSingleReceptionist = async (req: Request, res: Response) => {
  const receptionistId = parseInt(req.params.id);

  try {
    const receptionist = await receptionistService.getSingleReceptionist(
      receptionistId
    );

    res.send({
      status: 200,
      message: "Get single receptionist successfully!",
      data: receptionist,
    });
  } catch (error) {
    console.error(error);
  }
};

export const receptionistController = {
  createReceptionist,
  getAllReceptionists,
  getSingleReceptionist,
};
