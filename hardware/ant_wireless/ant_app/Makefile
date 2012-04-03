include $(TI_AM37x_SDK_PATH)/Rules.make

ANT_STACK_PATH = ../ant_stack
ANT_POWER_PATH = ../ant_power
EXEC = antradio_app
EXEC_DIR = bin/
BUILD_DIR = $(EXEC_DIR)/obj/

CC = $(CROSS_COMPILE)gcc
CFLAGS = -g -W -Wall -O2 -D_POSIX_SOURCE -mcpu=cortex-a8 \
   -I$(ANT_STACK_PATH)/hal/common/inc \
   -L$(ANT_POWER_PATH)/bin -L$(ANT_STACK_PATH)/bin -lantradiopm -lantradio -lpthread

$(EXEC) : build_dir
	@echo "[gcc] => $(EXEC)"
	@$(CC) $(CFLAGS) ant_app.c -o $(EXEC_DIR)/$(EXEC)

build_dir :
	@mkdir -p $(EXEC_DIR)

clean :
	@rm -rf $(EXEC_DIR)

