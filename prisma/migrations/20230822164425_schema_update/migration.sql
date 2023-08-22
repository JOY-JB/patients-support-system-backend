/*
  Warnings:

  - A unique constraint covering the columns `[patientId]` on the table `prescriptions` will be added. If there are existing duplicate values, this will fail.
  - A unique constraint covering the columns `[patientId]` on the table `primaryQuestionForm` will be added. If there are existing duplicate values, this will fail.

*/
-- CreateIndex
CREATE UNIQUE INDEX "prescriptions_patientId_key" ON "prescriptions"("patientId");

-- CreateIndex
CREATE UNIQUE INDEX "primaryQuestionForm_patientId_key" ON "primaryQuestionForm"("patientId");
