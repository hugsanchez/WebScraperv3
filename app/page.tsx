
import { getLine } from "@/prisma/lines";
import Tweet from "./tweet/page";
import Button from "./button/page";


export async function getData() {
  const { line } = await getLine();

  if(!line){
    throw new Error('Failed to fetch data')
  }
  return line;
}


export default async function Home() {
  let data = await getData();
  return (
    <div className="overall">
      <Button></Button>
      <main>
        <Tweet>{data}</Tweet>
      </main>
    </div>
  )
}
