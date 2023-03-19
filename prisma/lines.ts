import prisma from "..";

export async function getLine(){
  try{
    const id = 1 + Math.floor((837 - 1 + 1) * Math.random());
    const line = prisma.line.findUnique({ where: { id }});
    return { line }
  } catch(error){
    return {error}
  }
}