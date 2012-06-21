###############################################################################
# 
# ANT Stack
# 
# Copyright 2010 Dynastream Innovations
# 
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
# 
#     http://www.apache.org/licenses/LICENSE-2.0
# 
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and  
# limitations under the License.
# 
###############################################################################

PRODUCT_PACKAGES += \
        com.dsi.ant.antradio_library \
        AntHalService \
        libantradio \
        ANTRadioService \
        antradio_app \

PRODUCT_COPY_FILES += \
        hardware/ant_wireless/antradio_library/com.dsi.ant.antradio_library.xml:system/etc/permissions/com.dsi.ant.antradio_library.xml \

