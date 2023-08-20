import { Prescription, PrismaClient } from "@prisma/client";

const prisma = new PrismaClient();

const createPrescription = async (data: Prescription) => {
  const createdPrescription = await prisma.prescription.create({
    data,
  });
  return createdPrescription;
};

const getAllPrescriptions = async () => {
  const prescriptions = await prisma.prescription.findMany();
  return prescriptions;
};

const getSinglePrescription = async (id: number) => {
  const prescription = await prisma.prescription.findUnique({
    where: {
      id,
    },
  });
  return prescription;
};

export const prescriptionService = {
  createPrescription,
  getAllPrescriptions,
  getSinglePrescription,
};
