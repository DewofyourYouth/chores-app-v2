/*
  Warnings:

  - A unique constraint covering the columns `[id]` on the table `Family` will be added. If there are existing duplicate values, this will fail.

*/
-- CreateIndex
CREATE UNIQUE INDEX "Family_id_key" ON "Family"("id");
