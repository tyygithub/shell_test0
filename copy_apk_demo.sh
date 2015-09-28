lly copy by vendor oem   #
#######################################

echo "oem start !!!"

OEM_COMMON_PATH=vendor/oem

OUT_PATH=out/target/product/$1
OUT_SYSTEM_PATH=${OUT_PATH}/system/

OUT_APP_PATCH=${OUT_PATH}/system/app/
OUT_ETC_PATCH=${OUT_PATH}/system/etc/
OUT_XBIN_PATCH=${OUT_PATH}/system/xbin/
OUT_BIN_PATCH=${OUT_PATH}/system/bin/
OUT_LIB_PATCH=${OUT_PATH}/system/lib/
OUT_USR_PATCH=${OUT_PATH}/system/usr/

PATCH_FOLDER=${OEM_COMMON_PATH}/patches/
SYSTEM_FOLDER=${OEM_COMMON_PATH}/system/



echo " "
echo '[[[[[[[ enter vendor.sh ]]]]]]]'
echo " "

echo "************* [$1] [$2] ******************"

case $1 in

	rk3288 )
		case $2 in
			user )
				cp -a ${SYSTEM_FOLDER}/* ${OUT_SYSTEM_PATH}/			
				echo "do Nothing !!!!, usually, this case for CTS build."
				;;

			* )
				cp -a ${SYSTEM_FOLDER}/* ${OUT_SYSTEM_PATH}/
				echo "added xxx_patch.tgz"
				for UT_BOARD_PATCHES in `find ${PATCH_FOLDER} -name "*patch.tgz"`
				do
					echo " $UT_BOARD_PATCHES"
					tar zxf $UT_BOARD_PATCHES -C ${OUT_PATH}
				done	
				;;
		esac
		;;
	* )
		echo "do Nothing !!!![$1]"	
	;;
esac

echo " "
echo '[[[[[[[ exit vendor.sh ]]]]]]]'
echo " "
