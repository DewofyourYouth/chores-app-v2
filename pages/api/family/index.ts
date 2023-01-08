import { NextApiRequest, NextApiResponse } from "next";

import { PrismaClient } from "@prisma/client";

BigInt.prototype.toJSON = function () {
  return this.toString();
};

const prisma = new PrismaClient();

export default function handler(req: NextApiRequest, res: NextApiResponse) {
  res.status(200).json({ message: "will return a list of families" });
}
