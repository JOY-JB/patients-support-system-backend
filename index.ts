import { PrismaClient } from "@prisma/client";

const prisma = new PrismaClient();

async function main() {
  const getAllDoctors = await prisma.doctor.findMany();

  console.log(getAllDoctors);
}

main();
