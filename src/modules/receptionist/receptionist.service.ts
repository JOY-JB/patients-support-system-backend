import { PrismaClient, Receptionist } from "@prisma/client";

const prisma = new PrismaClient();

const createReceptionist = async (data: Receptionist) => {
  const createdReceptionist = await prisma.receptionist.create({
    data,
  });
  return createdReceptionist;
};

const getAllReceptionists = async () => {
  const receptionists = await prisma.receptionist.findMany();

  const receptionistsWithoutPassword = receptionists.map((rec) => {
    const { password, ...receptionistsWithoutPassword } = rec;
    return receptionistsWithoutPassword;
  });

  return receptionistsWithoutPassword;
};

const getSingleReceptionist = async (id: number) => {
  const receptionist = await prisma.receptionist.findUnique({
    where: {
      id,
    },
  });

  return receptionist;
};

export const receptionistService = {
  createReceptionist,
  getAllReceptionists,
  getSingleReceptionist,
};
