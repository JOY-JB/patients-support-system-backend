/*
  Warnings:

  - You are about to drop the column `address` on the `Doctor` table. All the data in the column will be lost.
  - You are about to drop the column `phoneNumber` on the `Doctor` table. All the data in the column will be lost.
  - You are about to drop the column `qualifications` on the `Doctor` table. All the data in the column will be lost.
  - You are about to drop the column `specialty` on the `Doctor` table. All the data in the column will be lost.
  - You are about to drop the column `currentIssues` on the `Patient` table. All the data in the column will be lost.
  - You are about to drop the column `depression` on the `Patient` table. All the data in the column will be lost.
  - You are about to drop the column `email` on the `Patient` table. All the data in the column will be lost.
  - You are about to drop the column `ocd` on the `Patient` table. All the data in the column will be lost.
  - You are about to drop the column `previousConsultant` on the `Patient` table. All the data in the column will be lost.
  - You are about to drop the column `previousIssues` on the `Patient` table. All the data in the column will be lost.
  - You are about to drop the column `sleepMode` on the `Patient` table. All the data in the column will be lost.
  - You are about to drop the column `address` on the `PrimaryQuestionForm` table. All the data in the column will be lost.
  - You are about to drop the column `age` on the `PrimaryQuestionForm` table. All the data in the column will be lost.
  - You are about to drop the column `name` on the `PrimaryQuestionForm` table. All the data in the column will be lost.
  - You are about to drop the column `phoneNumber` on the `PrimaryQuestionForm` table. All the data in the column will be lost.
  - You are about to drop the column `phoneNumber` on the `Receptionist` table. All the data in the column will be lost.
  - You are about to drop the `_PrimaryQuestionFormToReceptionist` table. If the table is not empty, all the data it contains will be lost.
  - A unique constraint covering the columns `[phoneNumber]` on the table `Patient` will be added. If there are existing duplicate values, this will fail.
  - A unique constraint covering the columns `[patientId]` on the table `Prescription` will be added. If there are existing duplicate values, this will fail.
  - A unique constraint covering the columns `[patientId]` on the table `PrimaryQuestionForm` will be added. If there are existing duplicate values, this will fail.
  - Added the required column `password` to the `Doctor` table without a default value. This is not possible if the table is not empty.
  - Added the required column `specialization` to the `Doctor` table without a default value. This is not possible if the table is not empty.
  - Added the required column `receiptionistId` to the `PrimaryQuestionForm` table without a default value. This is not possible if the table is not empty.
  - Added the required column `password` to the `Receptionist` table without a default value. This is not possible if the table is not empty.

*/
-- DropForeignKey
ALTER TABLE "_PrimaryQuestionFormToReceptionist" DROP CONSTRAINT "_PrimaryQuestionFormToReceptionist_A_fkey";

-- DropForeignKey
ALTER TABLE "_PrimaryQuestionFormToReceptionist" DROP CONSTRAINT "_PrimaryQuestionFormToReceptionist_B_fkey";

-- DropIndex
DROP INDEX "Patient_email_key";

-- AlterTable
ALTER TABLE "Doctor" DROP COLUMN "address",
DROP COLUMN "phoneNumber",
DROP COLUMN "qualifications",
DROP COLUMN "specialty",
ADD COLUMN     "password" TEXT NOT NULL,
ADD COLUMN     "specialization" TEXT NOT NULL;

-- AlterTable
ALTER TABLE "Patient" DROP COLUMN "currentIssues",
DROP COLUMN "depression",
DROP COLUMN "email",
DROP COLUMN "ocd",
DROP COLUMN "previousConsultant",
DROP COLUMN "previousIssues",
DROP COLUMN "sleepMode";

-- AlterTable
ALTER TABLE "PrimaryQuestionForm" DROP COLUMN "address",
DROP COLUMN "age",
DROP COLUMN "name",
DROP COLUMN "phoneNumber",
ADD COLUMN     "receiptionistId" INTEGER NOT NULL;

-- AlterTable
ALTER TABLE "Receptionist" DROP COLUMN "phoneNumber",
ADD COLUMN     "password" TEXT NOT NULL;

-- DropTable
DROP TABLE "_PrimaryQuestionFormToReceptionist";

-- CreateIndex
CREATE UNIQUE INDEX "Patient_phoneNumber_key" ON "Patient"("phoneNumber");

-- CreateIndex
CREATE UNIQUE INDEX "Prescription_patientId_key" ON "Prescription"("patientId");

-- CreateIndex
CREATE UNIQUE INDEX "PrimaryQuestionForm_patientId_key" ON "PrimaryQuestionForm"("patientId");

-- AddForeignKey
ALTER TABLE "Patient" ADD CONSTRAINT "Patient_id_fkey" FOREIGN KEY ("id") REFERENCES "Doctor"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "PrimaryQuestionForm" ADD CONSTRAINT "PrimaryQuestionForm_receiptionistId_fkey" FOREIGN KEY ("receiptionistId") REFERENCES "Receptionist"("id") ON DELETE RESTRICT ON UPDATE CASCADE;
