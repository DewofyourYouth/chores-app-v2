/*
  Warnings:

  - Added the required column `family_name` to the `Family` table without a default value. This is not possible if the table is not empty.

*/
-- AlterTable
ALTER TABLE "Family" ADD COLUMN     "family_name" VARCHAR(20) NOT NULL;
