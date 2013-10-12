if [ -n "$SLURM_JOB_NUM_NODES" ]; then
    GALAXY_SLOTS="$SLURM_JOB_NUM_NODES"
    GALAXY_SLOTS_CONFIGURED="1"
elif [ -n "$NSLOTS" ]; then
    GALAXY_SLOTS="$NSLOTS"
    GALAXY_SLOTS_CONFIGURED="1"
elif [ -f "$PBS_NODEFILE" ]; then
    GALAXY_SLOTS=`wc -l < $PBS_NODEFILE`
    GALAXY_SLOTS_CONFIGURED="1"
else
    GALAXY_SLOTS="1"
fi