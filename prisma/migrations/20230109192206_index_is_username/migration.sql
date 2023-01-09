/*
  Warnings:

  - The primary key for the `parent` table will be changed. If it partially fails, the table could be left without primary key constraint.
  - You are about to drop the column `id` on the `parent` table. All the data in the column will be lost.
  - Made the column `username` on table `parent` required. This step will fail if there are existing NULL values in that column.

*/
-- AlterTable
ALTER TABLE "parent" DROP CONSTRAINT "parent_pkey",
DROP COLUMN "id",
ALTER COLUMN "username" SET NOT NULL,
ADD CONSTRAINT "parent_pkey" PRIMARY KEY ("username");
