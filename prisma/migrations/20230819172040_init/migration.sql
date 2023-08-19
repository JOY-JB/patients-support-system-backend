/*
  Warnings:

  - You are about to drop the column `age` on the `Doctor` table. All the data in the column will be lost.
  - You are about to drop the column `qualifications` on the `Doctor` table. All the data in the column will be lost.
  - You are about to drop the column `specialty` on the `Doctor` table. All the data in the column will be lost.
  - You are about to drop the column `email` on the `Patient` table. All the data in the column will be lost.
  - You are about to drop the column `previousConsultant` on the `Patient` table. All the data in the column will be lost.
  - The `currentIssues` column on the `Patient` table would be dropped and recreated. This will lead to data loss if there is data in the column.
  - You are about to drop the column `content` on the `Prescription` table. All the data in the column will be lost.
  - You are about to drop the column `age` on the `Receptionist` table. All the data in the column will be lost.
  - You are about to drop the `PrimaryQuestionForm` table. If the table is not empty, all the data it contains will be lost.
  - Added the required column `specialization` to the `Doctor` table without a default value. This is not possible if the table is not empty.
  - Added the required column `updatedAt` to the `Doctor` table without a default value. This is not possible if the table is not empty.
  - Added the required column `recommendation` to the `Patient` table without a default value. This is not possible if the table is not empty.
  - Added the required column `updatedAt` to the `Patient` table without a default value. This is not possible if the table is not empty.
  - Added the required column `dosage` to the `Prescription` table without a default value. This is not possible if the table is not empty.
  - Added the required column `frequency` to the `Prescription` table without a default value. This is not possible if the table is not empty.
  - Added the required column `instructions` to the `Prescription` table without a default value. This is not possible if the table is not empty.
  - Added the required column `medication` to the `Prescription` table without a default value. This is not possible if the table is not empty.
  - Added the required column `address` to the `Receptionist` table without a default value. This is not possible if the table is not empty.
  - Added the required column `updatedAt` to the `Receptionist` table without a default value. This is not possible if the table is not empty.

*/
-- DropForeignKey
ALTER TABLE "Prescription" DROP CONSTRAINT "Prescription_doctorId_fkey";

-- DropForeignKey
ALTER TABLE "Prescription" DROP CONSTRAINT "Prescription_patientId_fkey";

-- DropForeignKey
ALTER TABLE "PrimaryQuestionForm" DROP CONSTRAINT "PrimaryQuestionForm_patientId_fkey";

-- DropIndex
DROP INDEX "Patient_email_key";

-- AlterTable
ALTER TABLE "Doctor" DROP COLUMN "age",
DROP COLUMN "qualifications",
DROP COLUMN "specialty",
ADD COLUMN     "createdAt" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
ADD COLUMN     "specialization" TEXT NOT NULL,
ADD COLUMN     "updatedAt" TIMESTAMP(3) NOT NULL;

-- AlterTable
ALTER TABLE "Patient" DROP COLUMN "email",
DROP COLUMN "previousConsultant",
ADD COLUMN     "createdAt" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
ADD COLUMN     "recommendation" TEXT NOT NULL,
ADD COLUMN     "updatedAt" TIMESTAMP(3) NOT NULL,
DROP COLUMN "currentIssues",
ADD COLUMN     "currentIssues" TEXT[],
ALTER COLUMN "depression" SET NOT NULL,
ALTER COLUMN "depression" SET DATA TYPE TEXT,
ALTER COLUMN "ocd" SET NOT NULL,
ALTER COLUMN "ocd" SET DATA TYPE TEXT;

-- AlterTable
ALTER TABLE "Prescription" DROP COLUMN "content",
ADD COLUMN     "dosage" TEXT NOT NULL,
ADD COLUMN     "frequency" TEXT NOT NULL,
ADD COLUMN     "instructions" TEXT NOT NULL,
ADD COLUMN     "medication" TEXT NOT NULL;

-- AlterTable
ALTER TABLE "Receptionist" DROP COLUMN "age",
ADD COLUMN     "address" TEXT NOT NULL,
ADD COLUMN     "createdAt" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
ADD COLUMN     "updatedAt" TIMESTAMP(3) NOT NULL;

-- DropTable
DROP TABLE "PrimaryQuestionForm";

-- CreateTable
CREATE TABLE "User" (
    "id" SERIAL NOT NULL,
    "name" TEXT NOT NULL,
    "email" TEXT NOT NULL,
    "password" TEXT NOT NULL,
    "createdAt" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "updatedAt" TIMESTAMP(3) NOT NULL,

    CONSTRAINT "User_pkey" PRIMARY KEY ("id")
);

-- CreateIndex
CREATE UNIQUE INDEX "User_email_key" ON "User"("email");
