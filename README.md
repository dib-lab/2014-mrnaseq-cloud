Digital artifacts for paper on Molgula transcriptome assemblies,
by Elijah Lowe, Billie Swalla, and C. Titus Brown.

Subdirectories:

   manuscript - LaTeX manuscript
   figures - figures for the paper

   qsub - queue submission scripts for running things on our HPC
   scripts - miscellaneous scripts used in the paper

Script descriptions:

     scripts/blastparser.py - library for BLAST output parsing
     scripts/parse_blast.py - library for BLAST output parsing

     scripts/extract_missing_from_blast.py
     scripts/filter_transcripts_from_blast.py
     scripts/find-reciprocal-2.py
     scripts/identity.py

     scripts/mocc_blast.R
     scripts/Mocc_dist.R
     scripts/Mocc_read_mapping.R
     scripts/Moccu_blast.R
     scripts/moccVsknowmolg.R
     scripts/mocu_blast.R
     scripts/Mocu_dist.R
     scripts/Mocu_read_mapping.R
     scripts/mocuVsknowmolg.R
     scripts/recovery_percent2.py
     scripts/time and memory graphs.R
     scripts/Vsknowmolg.R

qsub descriptions:

     qsub/assem_sra.qsub - download SRA and do trimming

     qsub/blast_mocc_*_dn.qsub - run BLASTs on assemblies
     qsub/blast_mocc_*_raw.qsub
     qsub/blast_mocu_*_dn.qsub
     qsub/blast_mocu_*_raw.qsub

     qsub/dn_occ_oases_pytrim.qsub - run Oases/dn
     qsub/dn_occ_tri_pytrim.qsub - run Trinity/dn
     qsub/dn_ocu_oases_pytrim.qsub
     qsub/dn_ocu_tri_pytrim.qsub

     qsub/raw_occ_oases_pytrim.qsub
     qsub/raw_occ_tri_pytrim.qsub
     qsub/raw_ocu_oases_pytrim.qsub
     qsub/raw_ocu_tri_pytrim.qsub

     qsub/mapping_occ_dn.qsub - run mapping
     qsub/mapping_occ_dnt.qsub
     qsub/mapping_occ_rawo.qsub
     qsub/mapping_occ_rawt.qsub
     qsub/mapping_ocu_dno.qsub
     qsub/mapping_ocu_dnt.qsub
     qsub/mapping_ocu_rawo.qsub
     qsub/mapping_ocu_rawt.qsub
