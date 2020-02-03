#macro PMD_INI_OSTACKED \
ds_map_create(); \
var params; \
params[? PM_INI_OSTACKED.PRECISION] = 12; \
params[? PM_INI_OSTACKED.DYNAMIC] = true;