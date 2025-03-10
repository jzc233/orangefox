#
#	This file is part of the OrangeFox Recovery Project
# 	Copyright (C) 2018-2024 The OrangeFox Recovery Project
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
	export FOX_USE_BASH_SHELL=1
	export FOX_ASH_IS_BASH=1
	export FOX_USE_TAR_BINARY=1
	export FOX_USE_LZ4_BINARY=1
	export FOX_USE_ZSTD_BINARY=1
	export FOX_USE_SED_BINARY=1
	export FOX_USE_XZ_UTILS=1
	export FOX_DELETE_AROMAFM=1
	export OF_PATCH_AVB20=1

	# magisk addon
	export FOX_USE_SPECIFIC_MAGISK_ZIP=~/Magisk/Magisk-v28.0.zip

    	# dynamic partitions ?
    	export FOX_USE_DYNAMIC_PARTITIONS=1; # make all builds dynamic

	if [ "$FOX_USE_DYNAMIC_PARTITIONS" = "1"  ]; then
		export FOX_VARIANT="unified"
		export FOX_RECOVERY_SYSTEM_PARTITION="/dev/block/mapper/system"
		export FOX_RECOVERY_VENDOR_PARTITION="/dev/block/mapper/vendor"
		export FOX_VANILLA_BUILD=1
	fi

	##export FOX_USE_KEYMASTER_4=1; # only used by PE
	if [ "$FOX_USE_KEYMASTER_4" = "1" ]; then
		export FOX_VANILLA_BUILD=1
		export FOX_VARIANT="keymaster4"
	fi
#fi
#
