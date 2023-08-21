import { Doctor, PrismaClient } from "@prisma/client";

const prisma = new PrismaClient();

const addDoctor = async (data: Doctor): Promise<Doctor> => {
  const result = await prisma.doctor.create({
    data,
  });

  return result;
};

const getAllDoctors = async () => {
  const doctors = await prisma.doctor.findMany();

  const doctorsWithoutPassword = doctors.map((doctor) => {
    const { password, ...doctorWithoutPassword } = doctor;
    return doctorWithoutPassword;
  });

  return doctorsWithoutPassword;
};

export const doctorService = {
  addDoctor,
  getAllDoctors,
};
