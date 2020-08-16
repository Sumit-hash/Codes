
## Code for CYP2D6
#read the haplotype file with chr37 genome of CYP2D6 got from phramvar databse
cyp2d6 <- read.table("CYP2D6.NC_000022.10.haplotypes.tsv", skip =1, header = T, sep = "\t")

#give the list of Functional allele of the CYP2D6 got from Pharamvar website
variant <- 1:139
gene <- "CYP2D6*"
functional_SNPs_cyp2d6 <- paste0(gene,variant)

df = NULL
#This loop will give you the output of all functional allele provided as the functional_SNPs from the file
for (i in 1:length(functional_SNPs_cyp2d6)){
  np <- cyp2d6[cyp2d6$Haplotype.Name == functional_SNPs_cyp2d6[i],]
  df <- rbind(df, np)
  i = i+1
}

#output file of the extracted functional allele.
write.table(df,file = "E:/TGB/internship/extracted_functional_SNPs/functional_snp_CYP2D6.haplotype.tsv", row.names = F, sep = "\t") 


#*2 has 2 allele in website but not in dataset
#*27 has difference in the SNP in website and db
#*33 has difference in the SNP in website and db
#*34 has no SNP in db but present in website
#*35 has db has 1 SNP but website has 3
#*39 has no SNP in db but present in website
#*45 has db has 1 SNP but website has 3
#*46 has db has 2 SNP but website has 4


## this is for the CYP2F1
cyp2f1 <- read.table("cyp/CYP2F1.NC_000019.9.haplotypes.tsv", skip = 1, header = T, sep = "\t")
var_cyp2f1 <- 1:6
gene_cyp2f1 <- "CYP2F1*"
functional_SNPs_cyp2f1 <- paste0(gene_cyp2f1,var_cyp2f1)

cyp2f1_SNPs = NULL
#This loop will give you the output of all functional allele provided as the functional_SNPs from the file
for (i in 1:length(functional_SNPs_cyp2f1)){
  np <- cyp2f1[cyp2d6$Haplotype.Name == functional_SNPs_cyp2f1[i],]
  cyp2f1_SNPs <- rbind(cyp2f1_SNPs, np)
  i = i+1
}
#output file of the extracted functional allele.
write.table(cyp2f1_SNPs,file = "E:/TGB/internship/extracted_functional_SNPs/functional_snp_CYP2F1.haplotype.tsv", row.names = F, sep = "\t")


## This is for cyp2b6
cyp2b6 <- read.table("cyp/CYP2B6.NC_000019.9.haplotypes.tsv", skip = 1, header = T, sep = "\t")
var_cyp2b6 <- 1:38
gene_cyp2b6 <- "CYP2B6*"
functional_SNPs_cyp2b6 <- paste0(gene_cyp2b6,var_cyp2b6)

cyp2b6_SNPs = NULL
#This loop will give you the output of all functional allele provided as the functional_SNPs from the file
for (i in 1:length(functional_SNPs_cyp2b6)){
  np <- cyp2b6[cyp2b6$Haplotype.Name == functional_SNPs_cyp2b6[i],]
  cyp2b6_SNPs <- rbind(cyp2b6_SNPs, np)
  i = i+1
}
#output file of the extracted functional allele.
write.table(cyp2b6_SNPs,file = "E:/TGB/internship/extracted_functional_SNPs/functional_snp_CYP2B6.haplotype.tsv", row.names = F, sep = "\t")




## This is for cyp2c9
cyp2c9 <- read.table("cyp/CYP2C9.NC_000010.10.haplotypes.tsv", skip = 1, header = T, sep = "\t")
var_cyp2c9 <- 1:62
gene_cyp2c9 <- "CYP2C9*"
functional_SNPs_cyp2c9 <- paste0(gene_cyp2c9,var_cyp2c9)

cyp2c9_SNPs = NULL
#This loop will give you the output of all functional allele provided as the functional_SNPs from the file
for (i in 1:length(functional_SNPs_cyp2c9)){
  np <- cyp2c9[cyp2c9$Haplotype.Name == functional_SNPs_cyp2c9[i],]
  cyp2c9_SNPs <- rbind(cyp2c9_SNPs, np)
  i = i+1
}
#output file of the extracted functional allele.
write.table(cyp2c9_SNPs,file = "E:/TGB/internship/extracted_functional_SNPs/functional_snp_CYP2C9.haplotype.tsv", row.names = F, sep = "\t")




## This is for cyp2c19
cyp2c19 <- read.table("cyp/CYP2C19.NC_000010.10.haplotypes.tsv", skip = 1, header = T, sep = "\t")
var_cyp2c19 <- 1:38
gene_cyp2c19 <- "CYP2C19*"
functional_SNPs_cyp2c19 <- paste0(gene_cyp2c19,var_cyp2c19)

cyp2c19_SNPs = NULL
#This loop will give you the output of all functional allele provided as the functional_SNPs from the file
for (i in 1:length(functional_SNPs_cyp2c19)){
  np <- cyp2c19[cyp2c19$Haplotype.Name == functional_SNPs_cyp2c19[i],]
  cyp2c19_SNPs <- rbind(cyp2c19_SNPs, np)
  i = i+1
}
#output file of the extracted functional allele.
write.table(cyp2c19_SNPs,file = "E:/TGB/internship/extracted_functional_SNPs/functional_snp_CYP2C19.haplotype.tsv", row.names = F, sep = "\t")



## This is for cyp3A5
cyp3a5 <- read.table("cyp/CYP3A5.NC_000007.13.haplotypes.tsv", skip = 1, header = T, sep = "\t")
var_cyp3a5 <- 1:9
gene_cyp3a5 <- "CYP3A5*"
functional_SNPs_cyp3a5 <- paste0(gene_cyp3a5,var_cyp3a5)

cyp3a5_SNPs = NULL
#This loop will give you the output of all functional allele provided as the functional_SNPs from the file
for (i in 1:length(functional_SNPs_cyp3a5)){
  np <- cyp3a5[cyp3a5$Haplotype.Name == functional_SNPs_cyp3a5[i],]
  cyp3a5_SNPs <- rbind(cyp3a5_SNPs, np)
  i = i+1
}
#output file of the extracted functional allele.
write.table(cyp3a5_SNPs,file = "E:/TGB/internship/extracted_functional_SNPs/functional_snp_CYP3a5.haplotype.tsv", row.names = F, sep = "\t")


