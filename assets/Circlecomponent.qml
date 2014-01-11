import bb.cascades 1.2

Container {
    property  alias guageTitle: guageTitle
    
    layout: StackLayout {
        orientation: LayoutOrientation.TopToBottom
    }
    
    verticalAlignment: VerticalAlignment.Center
    horizontalAlignment: HorizontalAlignment.Center
    layoutProperties: FlowListLayoutProperties {
    
    }
    topPadding: 20.0
    leftPadding: 20.0
    rightPadding: 20.0
    bottomPadding: 20.0
    Label {
        id: guageTitle     
        text: "Steps"
        
        textStyle.color: Color.create("#ffffff")
        horizontalAlignment: HorizontalAlignment.Center
        textStyle.fontStyle: FontStyle.Default
        textStyle.fontWeight: FontWeight.Normal
        autoSize.maxLineCount: 2
        multiline: true
        textStyle.fontSize: FontSize.XXLarge
        onCreationCompleted: {
            if (text.length >= 10) {
                textStyle.fontSize = FontSize.Large;
            }
        }
        layoutProperties: StackLayoutProperties {
        
        }
    }
    
    ImageButton {
        
        defaultImageSource: "images/circle.png"
        id: steps
        
        horizontalAlignment: HorizontalAlignment.Center
    
    } 

}