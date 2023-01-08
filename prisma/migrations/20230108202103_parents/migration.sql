/*
  Warnings:

  - You are about to drop the `users` table. If the table is not empty, all the data it contains will be lost.

*/
-- DropForeignKey
ALTER TABLE "users" DROP CONSTRAINT "users_familyId_fkey";

-- DropTable
DROP TABLE "users";

-- CreateTable
CREATE TABLE "parents" (
    "id" BIGSERIAL NOT NULL,
    "first_name" VARCHAR(20) NOT NULL,
    "last_name" VARCHAR(20) NOT NULL,
    "email" VARCHAR(100),
    "bio" VARCHAR(255),
    "inserted_at" TIMESTAMP(0) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "updated_at" TIMESTAMP(0) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "familyId" BIGINT NOT NULL,

    CONSTRAINT "parents_pkey" PRIMARY KEY ("id")
);

-- AddForeignKey
ALTER TABLE "parents" ADD CONSTRAINT "parents_familyId_fkey" FOREIGN KEY ("familyId") REFERENCES "Family"("id") ON DELETE RESTRICT ON UPDATE CASCADE;
