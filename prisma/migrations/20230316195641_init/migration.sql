/*
  Warnings:

  - You are about to drop the `Post` table. If the table is not empty, all the data it contains will be lost.
  - You are about to drop the `Profile` table. If the table is not empty, all the data it contains will be lost.
  - You are about to drop the `User` table. If the table is not empty, all the data it contains will be lost.

*/
-- DropForeignKey
ALTER TABLE "Post" DROP CONSTRAINT "Post_authorId_fkey";

-- DropForeignKey
ALTER TABLE "Profile" DROP CONSTRAINT "Profile_userId_fkey";

-- DropTable
DROP TABLE "Post";

-- DropTable
DROP TABLE "Profile";

-- DropTable
DROP TABLE "User";

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

    CONSTRAINT "Character_pkey" PRIMARY KEY ("id")
);

-- AddForeignKey
ALTER TABLE "Line" ADD CONSTRAINT "Line_characterId_fkey" FOREIGN KEY ("characterId") REFERENCES "Character"("id") ON DELETE SET NULL ON UPDATE CASCADE;
