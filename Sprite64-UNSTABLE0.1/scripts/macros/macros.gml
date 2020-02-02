#macro PMD_DRAW_OSTACKED \
ds_map_create(); \ 
params[? PM_DRAW_OSTACKED.PRECISION] = 8; \
params[? PM_DRAW_OSTACKED.DYNAMIC] = true; \
params[? PM_DRAW_OSTACKED.I_IND] = 0; \
params[? PM_DRAW_OSTACKED.I_NUM] = 1; \
params[? PM_DRAW_OSTACKED.I_COL] = c_white; \
params[? PM_DRAW_OSTACKED.I_ALPHA] = 1;