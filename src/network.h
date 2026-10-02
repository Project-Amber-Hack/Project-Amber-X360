#ifndef NETWORK_H
#define NETWORK_H

#include "store_ui.h"

// Returns the number of items successfully parsed and added to the store menu catalog
int FetchHomebrewCatalog(const char *url, HomebrewItem items[]);

// Handles downloading the package from the web server and saving it directly to the console hard drive
int DownloadAppPackage(const char *download_url, const char *destination_path);

#endif

