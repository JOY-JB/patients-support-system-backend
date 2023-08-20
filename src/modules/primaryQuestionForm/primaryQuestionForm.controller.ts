import { Request, Response } from "express";
import { primaryQuestionFormService } from "./primaryQuestionForm.service";

const createForm = async (req: Request, res: Response) => {
  try {
    const formData = req.body;
    const createdForm = await primaryQuestionFormService.createForm(formData);

    res.send({
      status: 200,
      message: "Primary question form created successfully!",
      data: createdForm,
    });
  } catch (error) {
    console.error(error);
    res.send({
      status: 500,
      message: error,
    });
  }
};

const getAllForms = async (req: Request, res: Response) => {
  try {
    const forms = await primaryQuestionFormService.getAllForms();

    res.send({
      status: 200,
      message: "Retrieved all primary question forms successfully!",
      data: forms,
    });
  } catch (error) {
    console.error(error);
    res.send({
      status: 500,
      message: "An error occurred while fetching primary question forms.",
    });
  }
};

const getSingleForm = async (req: Request, res: Response) => {
  try {
    const formId = parseInt(req.params.id);
    const form = await primaryQuestionFormService.getSingleForm(formId);

    if (!form) {
      res.send({
        status: 404,
        message: "Primary question form not found.",
      });
    } else {
      res.send({
        status: 200,
        message: "Retrieved single primary question form successfully!",
        data: form,
      });
    }
  } catch (error) {
    console.error(error);
    res.send({
      status: 500,
      message: "An error occurred while fetching the primary question form.",
    });
  }
};

export const primaryQuestionFormController = {
  createForm,
  getAllForms,
  getSingleForm,
};
