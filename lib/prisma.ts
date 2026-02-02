import { PrismaClient } from "./generated/prisma/client";

const prisma = new PrismaClient({
    accelerateUrl: process.env.POSTGRES_PRISMA_URL || "",
});

export default prisma;
