import Head from "next/head";
import { Inter } from "@next/font/google";
// import {} from "@grida/schema";
import { View } from "@grida/schema-react";
import { Static, Type } from "@sinclair/typebox";

const inter = Inter({ subsets: ["latin"] });

const T = Type.Object({
  // const T = {
  id: Type.String({
    default: "123",
  }), //   type: 'object',
  name: Type.String(), //   properties: {
  timestamp: Type.Integer(), //     id: {
  a: Type.Date(),
});

export default function Home() {
  return (
    <>
      <Head>
        <title>Schema Editor</title>
        <meta name="description" content="Visual Schema editor" />
        <meta name="viewport" content="width=device-width, initial-scale=1" />
        <link rel="icon" href="/favicon.ico" />
      </Head>
      <main
        style={{
          padding: "4rem",
        }}
      >
        <h1>Schema Editor</h1>
        <View schema={T} />
      </main>
    </>
  );
}
