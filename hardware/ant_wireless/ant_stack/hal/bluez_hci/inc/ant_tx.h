#ifndef __ANT_TX_H
#define __ANT_TX_H

#include "ant_types.h"
#include "ant_hciutils.h"

int         ant_open_tx_transport(void);
void        ant_close_tx_transport(int socket);
ANT_BOOL    wait_for_message(int socket);
ANTStatus   write_data(ANT_U8 ant_message[], int ant_message_len);

ANTStatus get_command_complete_result(int socket);

#endif /* __ANT_TX_H */

