import { Doctor, PrismaClient } from "@prisma/client";

const prisma = new PrismaClient();

const addDoctor = async (data: Doctor): Promise<Doctor> => {
  const result = await prisma.doctor.create({
    data,
  });

  return result;
};

const getAllDoctors = async (): Promise<Doctor[]> => {
  const doctors = await prisma.doctor.findMany();
  return doctors;
};

export const doctorService = {
  addDoctor,
  getAllDoctors,
};
