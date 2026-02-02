"use server";

import prisma from "@/lib/prisma"

export async function getProposals({ page = 1, limit = 12 }: { page?: number; limit?: number }) {
  const proposals = await prisma.proposal.
}

export async function getProposal() {

} 

export async function createProposal() {

}

export async function deleteProposal() {

}