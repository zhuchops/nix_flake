{ stdenv, lib, fetchurl, kernel, kmod, ... }:

stdenv.mkDerivation rec {
  pname = "xp-pen-g690";
  version = "3.4.9-240607";

  src = fetchurl {
    url = "https://www.xp-pen.com/download/file.html?id=2901&pid=493&ext=gz";
    hash = "sha256-AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA=";
  };
  sourceRoot = "source/linux/xp-pen-g690";
  hardeningDisable = [ "pic" "format" ];                                             # 1
  nativeBuildInputs = kernel.moduleBuildDependencies;                       # 2

  makeFlags = [
    "KERNELRELEASE=${kernel.modDirVersion}"                                 # 3
    "KERNEL_DIR=${kernel.dev}/lib/modules/${kernel.modDirVersion}/build"    # 4
    "INSTALL_MOD_PATH=$(out)"                                               # 5
  ];

  meta = {
    description = "Driver from official website for graphic tablet xppen g690 and compatible";
    homepage = "https://github.com/aramg/droidcam";
    license = lib.licenses.gpl2;
    maintainers = [ lib.maintainers.makefu ];
    platforms = lib.platforms.linux;
  };
}
