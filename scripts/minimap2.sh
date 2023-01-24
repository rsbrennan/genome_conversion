#!/bin/bash
#SBATCH -D /home/smomw504/genome_coordinate_conversion/log_files/
#SBATCH --mail-type=END
#SBATCH --mail-user=rbrennan@geomar.de
#SBATCH --partition=all
#SBATCH --nodes=1
#SBATCH --tasks-per-node=1
#SBATCH --cpus-per-task=1
#SBATCH --mem=16G
#SBATCH --time=40:00:00
#SBATCH --job-name=minimap2
#SBATCH --output=minimap2.%j.out
#SBATCH --error=minimap2.%j.err

cd /work_beegfs/smomw504/genome_coordinate_conversion

~/bin/minimap2/minimap2 -cx asm5 --cs GCA_900241095.1_Aton1.0_genomic.fna.gz /work_beegfs/smomw504/acartia_tonsa_genome_hiRise/jordan-uni2350-mb-hirise-upu6y__09-22-2022__final_assembly.fasta > PAF_FILE.paf
