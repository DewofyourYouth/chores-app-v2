/*
  Warnings:

  - Made the column `birthday` on table `child` required. This step will fail if there are existing NULL values in that column.

*/
-- AlterTable
ALTER TABLE "child" ALTER COLUMN "birthday" SET NOT NULL;
