/*
  Warnings:

  - A unique constraint covering the columns `[family_name]` on the table `Family` will be added. If there are existing duplicate values, this will fail.

*/
-- DropIndex
DROP INDEX "Family_id_key";

-- CreateIndex
CREATE UNIQUE INDEX "Family_family_name_key" ON "Family"("family_name");
