
'use client';

import { useRouter } from "next/navigation";


export default function Button() {
  const router = useRouter();
  return (
    <div>
      <button type="button" className="button" onClick={() => router.refresh()}>NEW TWEET?</button>
    </div>
  )
}