import bb.cascades 1.2

ListView {
    signal refreshTriggered()
    property bool loading: false
    id: refreshableList
    leadingVisualSnapThreshold: 2.0
    leadingVisual: RefreshHeader {
        id: refreshHandler
        onRefreshTriggered: {
            refreshableList.refreshTriggered();
        }
    }
    onTouch: {
        refreshHandler.onListViewTouch(event);
    }
    onLoadingChanged: {
        refreshHandler.refreshing = refreshableList.loading;
        
        if(!refreshHandler.refreshing) {
            // If the refresh is done 
            // Force scroll to top to ensure that all items are visible
            scrollToPosition(ScrollPosition.Beginning, ScrollAnimation.None);
        }
    }
}