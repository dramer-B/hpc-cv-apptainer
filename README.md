Optimized HPC Computer Vision Container (Apptainer/Singularity)
This repository provides a highly optimized, modernized Apptainer (Singularity) container recipe designed for High-Performance Computing (HPC) environments. It demonstrates how to resolve complex C++ and Python dependency chains while drastically reducing the container footprint.

Key Engineering Metrics:

Modern Core: Built on Python 3.12 (Debian Trixie).

Extreme Optimization: Final image size reduced from 2GB+ down to ~570MB.

Performance Compiled: Includes Dlib 20.0 compiled from source with AVX/SSE4 instructions enabled for faster inference on grid nodes.

Headless Vision: Integrates OpenCV 4.12 (Headless) to eliminate unnecessary GUI dependencies in server environments.
