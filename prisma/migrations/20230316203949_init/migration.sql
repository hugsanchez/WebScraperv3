/*
  Warnings:

  - You are about to drop the `House` table. If the table is not empty, all the data it contains will be lost.

*/
-- DropTable
DROP TABLE "House";

-- CreateTable
CREATE TABLE "Line" (
    "id" SERIAL NOT NULL,
    "content" TEXT NOT NULL,
    "characterId" INTEGER,

    CONSTRAINT "Line_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "Character" (
    "id" SERIAL NOT NULL,
    "name" TEXT NOT NULL,

    CONSTRAINT "Character_pkey" PRIMARY KEY ("id")
);

-- AddForeignKey
ALTER TABLE "Line" ADD CONSTRAINT "Line_characterId_fkey" FOREIGN KEY ("characterId") REFERENCES "Character"("id") ON DELETE SET NULL ON UPDATE CASCADE;
