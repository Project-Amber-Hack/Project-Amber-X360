#ifndef STORE_UI_H
#define STORE_UI_H

#define MAX_ITEMS 50

typedef struct {
    char title[64];
    char category[32];
    char download_url[256];
    char version[16];
    int size_mb;
} HomebrewItem;

void InitStoreInterface();
void RenderStoreGrid(HomebrewItem items[], int count);
void DrawSelectionHighlight(int selectedIndex);

#endif

