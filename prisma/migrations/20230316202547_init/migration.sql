/*
  Warnings:

  - You are about to drop the `Character` table. If the table is not empty, all the data it contains will be lost.
  - You are about to drop the `Line` table. If the table is not empty, all the data it contains will be lost.

*/
-- DropForeignKey
ALTER TABLE "Line" DROP CONSTRAINT "Line_characterId_fkey";

-- DropTable
DROP TABLE "Character";

-- DropTable
DROP TABLE "Line";

-- CreateTable
CREATE TABLE "House" (
    "id" INTEGER NOT NULL,
    "name" TEXT NOT NULL,

    CONSTRAINT "House_pkey" PRIMARY KEY ("id")
);
