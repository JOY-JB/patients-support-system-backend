-- CreateTable
CREATE TABLE "_PrimaryQuestionFormToReceptionist" (
    "A" INTEGER NOT NULL,
    "B" INTEGER NOT NULL
);

-- CreateIndex
CREATE UNIQUE INDEX "_PrimaryQuestionFormToReceptionist_AB_unique" ON "_PrimaryQuestionFormToReceptionist"("A", "B");

-- CreateIndex
CREATE INDEX "_PrimaryQuestionFormToReceptionist_B_index" ON "_PrimaryQuestionFormToReceptionist"("B");

-- AddForeignKey
ALTER TABLE "_PrimaryQuestionFormToReceptionist" ADD CONSTRAINT "_PrimaryQuestionFormToReceptionist_A_fkey" FOREIGN KEY ("A") REFERENCES "PrimaryQuestionForm"("id") ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "_PrimaryQuestionFormToReceptionist" ADD CONSTRAINT "_PrimaryQuestionFormToReceptionist_B_fkey" FOREIGN KEY ("B") REFERENCES "Receptionist"("id") ON DELETE CASCADE ON UPDATE CASCADE;
