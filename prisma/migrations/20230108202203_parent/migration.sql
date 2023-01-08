/*
  Warnings:

  - You are about to drop the `parents` table. If the table is not empty, all the data it contains will be lost.

*/
-- DropForeignKey
ALTER TABLE "parents" DROP CONSTRAINT "parents_familyId_fkey";

-- DropTable
DROP TABLE "parents";

-- CreateTable
CREATE TABLE "parent" (
    "id" BIGSERIAL NOT NULL,
    "first_name" VARCHAR(20) NOT NULL,
    "last_name" VARCHAR(20) NOT NULL,
    "email" VARCHAR(100),
    "bio" VARCHAR(255),
    "inserted_at" TIMESTAMP(0) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "updated_at" TIMESTAMP(0) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "familyId" BIGINT NOT NULL,

    CONSTRAINT "parent_pkey" PRIMARY KEY ("id")
);

-- AddForeignKey
ALTER TABLE "parent" ADD CONSTRAINT "parent_familyId_fkey" FOREIGN KEY ("familyId") REFERENCES "Family"("id") ON DELETE RESTRICT ON UPDATE CASCADE;
