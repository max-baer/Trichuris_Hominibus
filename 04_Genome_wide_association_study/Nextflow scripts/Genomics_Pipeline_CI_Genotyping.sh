#!/bin/bash

#SBATCH --job-name=Trichuris_Genomics_Pipeline_Max                   #This is the name of your job
#SBATCH --cpus-per-task=1                  #This is the number of cores reserved
#SBATCH --mem-per-cpu=8G              #This is the memory reserved per core.
#Total memory reserved: 8GB

#SBATCH --time=00:30:00        #This is the time that your task will run
#SBATCH --qos=30min           #You will run in this queue

# Paths to STDOUT or STDERR files should be absolute or relative to current working directory
#SBATCH --output=/scicore/home/schpie00/baer0006/Trichuris_Trichiura_CI/analysis_pipeline/stdout_run_final    #These are the STDOUT and STDERR files
#SBATCH --error=/scicore/home/schpie00/baer0006/Trichuris_Trichiura_CI/analysis_pipeline/stderr_run_final
#SBATCH --mail-type=END,FAIL,TIME_LIMIT
#SBATCH --mail-user=max.baer@swisstph.ch        #You will be notified via email when your task ends or fails

#This job runs from the current working directory


#Remember:
#The variable $TMPDIR points to the local hard disks in the computing nodes.
#The variable $HOME points to your home directory.
#The variable $SLURM_JOBID stores the ID number of your job.


#load your required modules below
ml load Java/11.0.3_7

#export your required environment variables below
#################################################


#add your command lines below
nextflow run Genomics_Pipeline_CI_Genotyping.nf -resume
