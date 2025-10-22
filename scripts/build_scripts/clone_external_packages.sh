  # Clone required packages
  rm -rf ${TAPPAS_WORKSPACE}/sources
  mkdir -p ${TAPPAS_WORKSPACE}/sources

  pushd ${TAPPAS_WORKSPACE}/sources

  git clone --depth 1 --shallow-submodules -b 0.27.1 https://github.com/xtensor-stack/xtensor.git
  git clone --depth 1 --shallow-submodules -b 0.23.0 https://github.com/xtensor-stack/xtensor-blas.git
  git clone --depth 1 --shallow-submodules -b 0.8.1 https://github.com/xtensor-stack/xtl.git
  git clone --depth 1 --shallow-submodules -b v3.3.1 https://github.com/jarro2783/cxxopts.git
  git clone --depth 1 --shallow-submodules -b v1.1.0 https://github.com/Tencent/rapidjson.git
  git clone --depth 1 --shallow-submodules -b v3.0.1 https://github.com/pybind/pybind11.git


  mkdir -p ${TAPPAS_WORKSPACE}/core/open_source/xtensor_stack/base
  mkdir -p ${TAPPAS_WORKSPACE}/core/open_source/xtensor_stack/blas
  mkdir -p ${TAPPAS_WORKSPACE}/core/open_source/cxxopts
  mkdir -p ${TAPPAS_WORKSPACE}/core/open_source/rapidjson
  mkdir -p ${TAPPAS_WORKSPACE}/core/open_source/pybind11

  cp -r xtensor/include/. ${TAPPAS_WORKSPACE}/core/open_source/xtensor_stack/base
  cp -r xtensor-blas/include/. ${TAPPAS_WORKSPACE}/core/open_source/xtensor_stack/blas
  cp -r xtl/include/. ${TAPPAS_WORKSPACE}/core/open_source/xtensor_stack/base
  cp -r cxxopts/include/. ${TAPPAS_WORKSPACE}/core/open_source/cxxopts
  cp -r rapidjson/include/. ${TAPPAS_WORKSPACE}/core/open_source/rapidjson
  cp -r pybind11/include/. ${TAPPAS_WORKSPACE}/core/open_source/pybind11
  popd
  
  # Clone Catch2 required packages
  #FIXME: Catch2 on v3.0 uses a different build and single_include dir was removed,
  # 2.13.10 is terminal version on v2.0 branch
  pushd ${TAPPAS_WORKSPACE}/sources
  git clone --depth 1 --shallow-submodules -b v2.13.10 https://github.com/catchorg/Catch2.git
  mkdir -p ${TAPPAS_WORKSPACE}/core/open_source/catch2
  cp -r Catch2/single_include/catch2/. ${TAPPAS_WORKSPACE}/core/open_source/catch2/
  popd
