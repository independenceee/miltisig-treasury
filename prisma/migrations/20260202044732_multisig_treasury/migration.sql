-- CreateTable
CREATE TABLE "Proposal" (
    "id" TEXT NOT NULL,
    "title" TEXT NOT NULL,
    "threshold" INTEGER NOT NULL,
    "allowance" INTEGER NOT NULL,
    "description" TEXT NOT NULL,
    "wallet_address" TEXT NOT NULL,

    CONSTRAINT "Proposal_pkey" PRIMARY KEY ("id")
);
