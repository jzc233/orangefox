#
#	This file is part of the OrangeFox Recovery Project
# 	Copyright (C) 2018-2022 The OrangeFox Recovery Project
#	
#	OrangeFox is free software: you can redistribute it and/or modify
#	it under the terms of the GNU General Public License as published by
#	the Free Software Foundation, either version 3 of the License, or
#	any later version.
#
#	OrangeFox is distributed in the hope that it will be useful,
#	but WITHOUT ANY WARRANTY; without even the implied warranty of
#	MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
#	GNU General Public License for more details.
#
# 	This software is released under GPL version 3 or any later version.
#	See <http://www.gnu.org/licenses/>.
# 	
# 	Please maintain this if you use this script or any part of it
#

#if [ "$1" = "$FDEVICE" -o "$FOX_BUILD_DEVICE" = "$FDEVICE" ]; then
        export FOX_ENABLE_APP_MANAGER=1
        export OF_DISABLE_MIUI_OTA_BY_DEFAULT=1
  	export OF_HIDE_NOTCH=1
	export OF_CLOCK_POS=1
	export OF_SCREEN_H=2248
	export OF_STATUS_H=80
	export FOX_DELETE_AROMAFM=1
	export OF_CLASSIC_LEDS_FUNCTION=1
	export FOX_USE_LZMA_COMPRESSION=1
	export OF_USE_MAGISKBOOT_FOR_ALL_PATCHES=1
	export OF_DONT_PATCH_ENCRYPTED_DEVICE=1
	export FOX_USE_BASH_SHELL=1
	export FOX_ASH_IS_BASH=1
	export FOX_USE_NANO_EDITOR=1
	export FOX_USE_TAR_BINARY=1
 	export FOX_USE_ZIP_BINARY=1
	export FOX_USE_SED_BINARY=1
	export FOX_USE_XZ_UTILS=1
	export FOX_REPLACE_BUSYBOX_PS=1
	export OF_SKIP_MULTIUSER_FOLDERS_BACKUP=1
	export FOX_BUGGED_AOSP_ARB_WORKAROUND="1230768000"; # set build date to Jan 1 2009 00:00:00

	# delta OTA for custom ROMs
        export OF_SUPPORT_ALL_BLOCK_OTA_UPDATES=1
        export OF_FIX_OTA_UPDATE_MANUAL_FLASH_ERROR=1

	# run a process after formatting data to recreate /data/media/0 (only when forced-encryption is being disabled)
	export OF_RUN_POST_FORMAT_PROCESS=1

	# ensure that /sdcard is bind-unmounted before f2fs data repair or format (required for FBE v1)
	export OF_UNBIND_SDCARD_F2FS=1

    	# dynamic partitions ?
	if [ "$FOX_USE_DYNAMIC_PARTITIONS" = "1"  ]; then
		export OF_QUICK_BACKUP_LIST="/boot;/data;"
		export FOX_RECOVERY_SYSTEM_PARTITION="/dev/block/mapper/system"
		export FOX_RECOVERY_VENDOR_PARTITION="/dev/block/mapper/vendor"
		export OF_QUICK_BACKUP_LIST="/boot;/data;"
		export FOX_VERSION=$FOX_VERSION"_dynamic"
		export FOX_USE_KEYMASTER_4=1
	else
		export OF_PATCH_AVB20=1
		export OF_QUICK_BACKUP_LIST="/boot;/data;/system_image;/vendor_image;"
		if [ "$FOX_USE_KEYMASTER_4" = "1" ]; then
		   export FOX_VERSION=$FOX_VERSION"_keymaster4"
		fi
	fi
#fi
#
