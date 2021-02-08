
conda build \
        -c defaults \
        -c conda-forge \
        -c bioconda \
        -c kdm801 \
        --skip-existing \
        pkgs/*

