include $(TI_AM37x_SDK_PATH)/Rules.make

ANT_POWER_PATH = ../ant_power

LIB = libantradio.so
LIB_VER = 0.4
BIN_DIR = bin

CC = $(CROSS_COMPILE)gcc
CFLAGS = -g -c -fPIC -W -Wall -O2 -D_POSIX_SOURCE -mcpu=cortex-a8 \
   -Ihal/common/inc -Ihal/bluez_hci/inc -I$(ANT_POWER_PATH)/inc \
   -I$(TI_AM37x_SDK_PATH)/linux-devkit/arm-none-linux-gnueabi/usr/include \
   -DBOARD_ANT_DEVICE_WILINK -DBOARD_HAVE_ANT_WIRELESS
LD = $(CROSS_COMPILE)gcc
LDFLAGS = -shared -Wl,-soname,$(LIB).$(LIB_VER) -L$(ANT_POWER_PATH)/bin -lantradiopm

SRC_FILES := \
   hal/common/ant_utils.c \
   hal/bluez_hci/ant_native_hci.c \
   hal/bluez_hci/ant_rx.c \
   hal/bluez_hci/ant_tx.c \

OBJ_FILES = $(patsubst %.c, $(BIN_DIR)/obj/%.o, $(notdir $(SRC_FILES)))

VPATH = $(dir $(SRC_FILES))

$(LIB).$(LIB_VER) : build_dir $(OBJ_FILES)
	@echo "[ld ] => $(LIB).$(LIB_VER)"
	@$(LD) $(LDFLAGS) -o $(BIN_DIR)/$(LIB).$(LIB_VER) $(OBJ_FILES)
	@ln -sf $(LIB).$(LIB_VER) $(BIN_DIR)/$(LIB)

$(BIN_DIR)/obj/%.o : %.c
	@echo "[gcc] <= $<"
	@$(CC) $(CFLAGS) $< -o $@

build_dir :
	@mkdir -p $(BIN_DIR)/obj

clean :
	@rm -rf $(BIN_DIR)

