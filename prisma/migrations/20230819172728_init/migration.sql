/*
  Warnings:

  - You are about to drop the column `createdAt` on the `Doctor` table. All the data in the column will be lost.
  - You are about to drop the column `specialization` on the `Doctor` table. All the data in the column will be lost.
  - You are about to drop the column `updatedAt` on the `Doctor` table. All the data in the column will be lost.
  - You are about to drop the column `createdAt` on the `Patient` table. All the data in the column will be lost.
  - You are about to drop the column `recommendation` on the `Patient` table. All the data in the column will be lost.
  - You are about to drop the column `updatedAt` on the `Patient` table. All the data in the column will be lost.
  - The `depression` column on the `Patient` table would be dropped and recreated. This will lead to data loss if there is data in the column.
  - The `ocd` column on the `Patient` table would be dropped and recreated. This will lead to data loss if there is data in the column.
  - You are about to drop the column `dosage` on the `Prescription` table. All the data in the column will be lost.
  - You are about to drop the column `frequency` on the `Prescription` table. All the data in the column will be lost.
  - You are about to drop the column `instructions` on the `Prescription` table. All the data in the column will be lost.
  - You are about to drop the column `medication` on the `Prescription` table. All the data in the column will be lost.
  - You are about to drop the column `address` on the `Receptionist` table. All the data in the column will be lost.
  - You are about to drop the column `createdAt` on the `Receptionist` table. All the data in the column will be lost.
  - You are about to drop the column `updatedAt` on the `Receptionist` table. All the data in the column will be lost.
  - You are about to drop the `User` table. If the table is not empty, all the data it contains will be lost.
  - A unique constraint covering the columns `[email]` on the table `Patient` will be added. If there are existing duplicate values, this will fail.
  - Added the required column `age` to the `Doctor` table without a default value. This is not possible if the table is not empty.
  - Added the required column `qualifications` to the `Doctor` table without a default value. This is not possible if the table is not empty.
  - Added the required column `specialty` to the `Doctor` table without a default value. This is not possible if the table is not empty.
  - Added the required column `email` to the `Patient` table without a default value. This is not possible if the table is not empty.
  - Added the required column `previousConsultant` to the `Patient` table without a default value. This is not possible if the table is not empty.
  - Added the required column `content` to the `Prescription` table without a default value. This is not possible if the table is not empty.
  - Added the required column `age` to the `Receptionist` table without a default value. This is not possible if the table is not empty.

*/
-- AlterTable
ALTER TABLE "Doctor" DROP COLUMN "createdAt",
DROP COLUMN "specialization",
DROP COLUMN "updatedAt",
ADD COLUMN     "age" INTEGER NOT NULL,
ADD COLUMN     "qualifications" TEXT NOT NULL,
ADD COLUMN     "specialty" TEXT NOT NULL;

-- AlterTable
ALTER TABLE "Patient" DROP COLUMN "createdAt",
DROP COLUMN "recommendation",
DROP COLUMN "updatedAt",
ADD COLUMN     "email" TEXT NOT NULL,
ADD COLUMN     "previousConsultant" TEXT NOT NULL,
DROP COLUMN "depression",
ADD COLUMN     "depression" TEXT[],
DROP COLUMN "ocd",
ADD COLUMN     "ocd" TEXT[],
ALTER COLUMN "currentIssues" SET NOT NULL,
ALTER COLUMN "currentIssues" SET DATA TYPE TEXT;

-- AlterTable
ALTER TABLE "Prescription" DROP COLUMN "dosage",
DROP COLUMN "frequency",
DROP COLUMN "instructions",
DROP COLUMN "medication",
ADD COLUMN     "content" TEXT NOT NULL;

-- AlterTable
ALTER TABLE "Receptionist" DROP COLUMN "address",
DROP COLUMN "createdAt",
DROP COLUMN "updatedAt",
ADD COLUMN     "age" INTEGER NOT NULL;

-- DropTable
DROP TABLE "User";

-- CreateTable
CREATE TABLE "PrimaryQuestionForm" (
    "id" SERIAL NOT NULL,
    "patientId" INTEGER NOT NULL,
    "name" TEXT NOT NULL,
    "age" INTEGER NOT NULL,
    "phoneNumber" TEXT NOT NULL,
    "address" TEXT NOT NULL,
    "previousIssues" TEXT[],
    "previousConsultant" TEXT NOT NULL,
    "currentIssues" TEXT NOT NULL,
    "sleepMode" TEXT NOT NULL,
    "depression" TEXT[],
    "ocd" TEXT[],
    "recommendation" TEXT NOT NULL,
    "createdAt" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "updatedAt" TIMESTAMP(3) NOT NULL,

    CONSTRAINT "PrimaryQuestionForm_pkey" PRIMARY KEY ("id")
);

-- CreateIndex
CREATE UNIQUE INDEX "Patient_email_key" ON "Patient"("email");

-- AddForeignKey
ALTER TABLE "Prescription" ADD CONSTRAINT "Prescription_patientId_fkey" FOREIGN KEY ("patientId") REFERENCES "Patient"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "Prescription" ADD CONSTRAINT "Prescription_doctorId_fkey" FOREIGN KEY ("doctorId") REFERENCES "Doctor"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "PrimaryQuestionForm" ADD CONSTRAINT "PrimaryQuestionForm_patientId_fkey" FOREIGN KEY ("patientId") REFERENCES "Patient"("id") ON DELETE RESTRICT ON UPDATE CASCADE;
