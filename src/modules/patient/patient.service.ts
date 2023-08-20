import { Patient, PrismaClient } from "@prisma/client";

const prisma = new PrismaClient();

const createPatient = async (data: Patient) => {
  const createdPatient = await prisma.patient.create({
    data,
  });

  return createdPatient;
};

const getAllPatients = async () => {
  const patients = await prisma.patient.findMany();

  return patients;
};

const getPatientById = async (id: number) => {
  const patient = await prisma.patient.findUnique({
    where: { id },
  });

  return patient;
};

export const patientService = {
  createPatient,
  getAllPatients,
  getPatientById,
};
