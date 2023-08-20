import { PrimaryQuestionForm, PrismaClient } from "@prisma/client";

const prisma = new PrismaClient();

const createForm = async (data: PrimaryQuestionForm) => {
  const createdForm = await prisma.primaryQuestionForm.create({
    data,
  });
  return createdForm;
};

const getAllForms = async () => {
  const forms = await prisma.primaryQuestionForm.findMany();
  return forms;
};

const getSingleForm = async (id: number) => {
  const form = await prisma.primaryQuestionForm.findUnique({
    where: {
      id,
    },
  });
  return form;
};

export const primaryQuestionFormService = {
  createForm,
  getAllForms,
  getSingleForm,
};
