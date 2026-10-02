#include <stdio.h>
#include "store_ui.h"
#include "video_player.h"

void InitStoreInterface() {
    printf("Configuring graphics layout dimensions... Target output locked to 720p HDTV Standard.\n");
}

void RenderStoreGrid(HomebrewItem items[], int count) {
    // 1. Draw the absolute lowest background tier (Your video)
    UpdateVideoFrameBuffer();
    
    // 2. Render transparency layer text structures directly over the media stream frames
    printf("\n--- PROJECT AMBER HOMEBREW STORE FRONT --- [Video Frame Tracking ID: %d]\n", count);
    for (int i = 0; i < count; i++) {
        printf(" [%d] %s (v%s) - [%d MB]\n", i + 1, items[i].title, items[i].version, items[i].size_mb);
        printf("     Category: %s | Source Location: %s\n", items[i].category, items[i].download_url);
    }
    printf("-------------------------------------------\n");
}

void DrawSelectionHighlight(int selectedIndex) {
    // Generates a floating selector overlay around the chosen dashboard index item block
    printf("Cursor highlighted matrix index selection: Item [%d]\n", selectedIndex + 1);
}

