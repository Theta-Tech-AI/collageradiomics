cmake_minimum_required(VERSION 3.13.4)

project(CollageRadiomics)

#-----------------------------------------------------------------------------
# Extension meta-information
<<<<<<< HEAD
set(EXTENSION_HOMEPAGE "https://github.com/radxtools/collageradiomics/tree/master/slicer/collageradiomics")
set(EXTENSION_CATEGORY "Informatics")
set(EXTENSION_CONTRIBUTORS "Pallavi Tiwari (BriC), Satish Viswanath (BriC), Rob Toth (Toth Technology), Nathan Hillyer (Toth Technology)")
set(EXTENSION_DESCRIPTION "The CollageRadiomics extension provides a 3D Slicer interface to the collageradiomics library. collageradiomics is an open-source python package for capturing subtle anisotropic differences in disease pathologies by measuring entropy of co-occurrences of voxel-level gradient orientations on imaging computed within a local neighborhood.")
set(EXTENSION_ICONURL "https://github.com/radxtools/collageradiomics/raw/master/slicer/collageradiomics/CollageRadiomicsSlicer/Resources/Icons/CollageRadiomicsSlicer.png")
set(EXTENSION_SCREENSHOTURLS "https://github.com/radxtools/collageradiomics/raw/master/slicer/collageradiomics/CollageRadiomicsSlicer/Screenshot.jpg")
=======
set(EXTENSION_HOMEPAGE "https://www.slicer.org/wiki/Documentation/Nightly/Extensions/CollageRadiomics")
set(EXTENSION_CATEGORY "Informatics")
set(EXTENSION_CONTRIBUTORS "BriC Lab (Case Western University)")
set(EXTENSION_DESCRIPTION "CoLlAGe captures subtle anisotropic differences in disease pathologies by measuring entropy of co-occurrences of voxel-level gradient orientations on imaging computed within a local neighborhood.

CoLlAGe is based on the hypothesis that disruption in tissue microarchitecture can be quantified on imaging by measuring the disorder in voxel-wise gradient orientations. CoLlAGe involves assigning every image voxel a ‘disorder value’ associated with the co-occurrence matrix of gradient orientations computed around every voxel.")
set(EXTENSION_ICONURL "http://www.example.com/Slicer/Extensions/CollageRadiomics.png")
set(EXTENSION_SCREENSHOTURLS "http://www.example.com/Slicer/Extensions/CollageRadiomics/Screenshots/1.png")
>>>>>>> 7a162ea (Add slicer extension. #70)
set(EXTENSION_DEPENDS "NA") # Specified as a list or "NA" if no dependencies

#-----------------------------------------------------------------------------
# Extension dependencies
find_package(Slicer REQUIRED)
include(${Slicer_USE_FILE})

#-----------------------------------------------------------------------------
# Extension modules
add_subdirectory(CollageRadiomicsSlicer)
## NEXT_MODULE

#-----------------------------------------------------------------------------
include(${Slicer_EXTENSION_GENERATE_CONFIG})
include(${Slicer_EXTENSION_CPACK})