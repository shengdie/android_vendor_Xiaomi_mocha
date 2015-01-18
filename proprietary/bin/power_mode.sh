#!/system/bin/sh
powermode=`getprop persist.sys.aries.power_profile`
nvmode=
case "$powermode" in
    "high")
        nvmode=0;
    ;;
    "middle")
        nvmode=1;
    ;;
    "low")
        nvmode=2;
    ;;
esac
am startservice -e com.nvidia.NvCPLSvc.NV_POWER_MODE $nvmode com.nvidia.NvCPLSvc/com.nvidia.NvCPLSvc.NvCPLService
