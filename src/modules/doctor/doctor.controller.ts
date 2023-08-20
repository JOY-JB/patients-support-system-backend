import { Request, Response } from "express";
import { doctorService } from "./doctor.service";

const addDoctor = async (req: Request, res: Response) => {
  try {
    const result = await doctorService.addDoctor(req.body);

    res.send({
      status: 200,
      message: "Doctor created successfully!",
      data: result,
    });
  } catch (error) {
    console.log(error);
  }
};

const getAllDoctors = async (req: Request, res: Response) => {
  try {
    const doctors = await doctorService.getAllDoctors();

    res.send({
      status: 200,
      message: "Doctor fetched successfully!",
      data: doctors,
    });
  } catch (error) {
    console.error(error);
  }
};

export const doctorController = {
  addDoctor,
  getAllDoctors,
};
