import { PrismaClient } from "@prisma/client";
import fs from 'fs'
import path from 'path'
const csvjson = require('csvjson');
const prisma = new PrismaClient()

const linesToJson = fs.readFileSync(path.join(__dirname, 'RolfsLines_edTestData.csv'),{
  encoding: 'utf-8'
});
let csvdata = csvjson.toObject(linesToJson);

interface Quote {
  character: String;
  line: String;
}

const data:any = [];

csvdata.map((quote: Quote) => (
  data.push({
  content: quote.line,
  characterId: 1
})))

async function main(){
  await prisma.character.create({
    data:{
      name: 'Rolf',
    }
  })
  await prisma.line.createMany({
    data
  })
}

main()
  .then(async () => {
    await prisma.$disconnect()
  })
  .catch(async (e) => {
    console.error(e)
    await prisma.$disconnect()
    process.exit(1)
  })