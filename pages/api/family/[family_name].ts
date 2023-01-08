import { NextApiRequest, NextApiResponse } from "next";
import { Prisma, PrismaClient } from "@prisma/client";

const prisma = new PrismaClient();
const createFamily = async (familyName: string) =>
  await prisma.family.create({
    data: {
      family_name: familyName,
    },
  });

export default async function handler(
  req: NextApiRequest,
  res: NextApiResponse
) {
  const { query } = req;
  const { family_name } = query;
  if (!family_name || Array.isArray(family_name)) {
    res.status(400).json({ error: "Invalid input." });
    return;
  }
  switch (req.method) {
    case "POST":
      let family = await createFamily(family_name);
      res.status(201).json(family);
      break;
    case "GET":
      let familyData = await prisma.family.findUnique({
        where: {
          family_name,
        },
      });

      res.status(200).json(familyData);
      break;
  }
}
