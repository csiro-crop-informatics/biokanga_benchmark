#!/bin/bash -e
#BSUB -J star_stats<%= @run_name %>              # LSF job name
#BSUB -o star_stats<%= @run_name %>.%J.out       # Name of the job output file
#BSUB -e star_stats<%= @run_name %>.%J.error     # Name of the job error file

cd <%= @stats_path %>

grep -v "^@" <%= @tool_result_path %>/*Aligned.out.sam | sort -t'.' -k 2n > output.sam
ruby <%= @aligner_benchmark %>/fix_sam.rb <%= @start %> <%= @nummer %> output.sam > fixed.sam
ruby <%= @aligner_benchmark %>/compare2truth_multi_mappers.rb <%= @cut_bases %> <%= @read_length %> <%= @cig_file %> fixed.sam > comp_res_multi_mappers.txt
ruby <%= @aligner_benchmark %>/compare2truth.rb <%= @cut_bases %> <%= @read_length %> <%= @cig_file %> fixed.sam > comp_res.txt
#perl <%= @aligner_benchmark %>/perl_scripts/sam2junctions.pl fixed.sam > inferred_junctions.txt
#perl <%= @aligner_benchmark %>/perl_scripts/compare_junctions_in_simulated_to_INFERRED_junctions.pl <%= @transcripts %> <%= @junctions_crossed %> inferred_junctions.txt junctions > junctions_stats.txt
