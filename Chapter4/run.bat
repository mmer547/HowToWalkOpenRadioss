set OPENRADIOSS_PATH=C:\OpenRadioss_win64\OpenRadioss

set RAD_CFG_PATH=%OPENRADIOSS_PATH%\hm_cfg_files

set RAD_H3D_PATH=%OPENRADIOSS_PATH%\extlib\h3d\lib\win64

set KMP_STACKSIZE=400m

set PATH=%OPENRADIOSS_PATH%\extlib\hm_reader\win64;%PATH% 

set PATH=%OPENRADIOSS_PATH%\extlib\intelOneAPI_runtime\win64;%PATH%

call "C:\Program Files (x86)\Intel\oneAPI\mpi\2021.7.1\env\vars.bat"

call C:\OpenRadioss_win64\OpenRadioss\exec\starter_win64.exe -i daruma1_0000.rad -np 4

call mpiexec -delegate -np 4 C:\OpenRadioss_win64\OpenRadioss\exec\engine_win64_impi.exe -i daruma1_0001.rad

pause