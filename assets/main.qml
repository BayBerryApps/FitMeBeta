/*
 * Copyright (c) 2011-2013 BlackBerry Limited.
 * 
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 * 
 * http://www.apache.org/licenses/LICENSE-2.0
 * 
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

import bb.cascades 1.2

TabbedPane {
    showTabsOnActionBar: true
    Tab { //First tab
        // Localized text with the dynamic translation and locale updates support
        title: qsTr("Dashboard") + Retranslate.onLocaleOrLanguageChanged
        imageSource: "images/db.png"
        Page {
            
            Menu.definition: MenuDefinition {
                id: menu
                actions: [
                    ActionItem {
                        title: "Settings"
                    }
                ]
            }
            //titleBar: TitleBar {
               // title: "Dashboard"
                //kind: TitleBarKind.FreeForm
               // kindProperties: FreeFormTitleBarKindProperties {
                    //Container {
                        //layout: StackLayout {
                            //orientation: LayoutOrientation.LeftToRight
                    
                        //}
                        /*leftPadding: 10
                        rightPadding: 10
        
                        Label {
                        
                            text: "Dashboard"
                            verticalAlignment: VerticalAlignment.Center
                            horizontalAlignment: HorizontalAlignment.Center
                            leftMargin: 100.0
                            rightMargin: 400.0
                            textStyle.fontSize: FontSize.Large

                        }
                        verticalAlignment: VerticalAlignment.Center
                       
                        Container {
                            
                            layoutProperties: StackLayoutProperties {

                            }

                            horizontalAlignment: HorizontalAlignment.Center
                            verticalAlignment: VerticalAlignment.Center
                            Button {
                            
                            maxWidth: 180
                            verticalAlignment: VerticalAlignment.Top
                            text: "Refresh"
                            horizontalAlignment: HorizontalAlignment.Right
                        }}
                
                    }
                }
                appearance: TitleBarAppearance.Plain

            }*///title bar
            Container {
                background: Color.create("#333333")
                verticalAlignment: VerticalAlignment.Center
                horizontalAlignment: HorizontalAlignment.Center
                Container {
                    topPadding: 70.0

                }
                Container {//circles1
                    
                    layout: StackLayout {
                        orientation: LayoutOrientation.LeftToRight

                    }
                    horizontalAlignment: HorizontalAlignment.Center
                    Circlecomponent {
                        guageTitle.text: "Steps"
                    }
                    Circlecomponent {
                        guageTitle.text: "Miles"
                    }

                }
                Container {//circles2
                    layout: StackLayout {
                        orientation: LayoutOrientation.LeftToRight

                    }
                    horizontalAlignment: HorizontalAlignment.Center
                    Circlecomponent {
                        guageTitle.text: "Active\n Mins"
                    }
                    Circlecomponent {
                        guageTitle.text: "Calories\n Burned"
                    }

                }
                Container {
                    layoutProperties: StackLayoutProperties {

                    }
                    topPadding: 100
                    leftPadding: 15.0
                    verticalAlignment: VerticalAlignment.Bottom
                    Label {
                    text: "Last synched:1000 mins ago"
                    textStyle.textAlign: TextAlign.Default
                    textStyle.fontWeight: FontWeight.Normal
                    textStyle.fontStyle: FontStyle.Italic
                    textStyle.color: Color.create("#ffffff")
                    layoutProperties: StackLayoutProperties {

                    }
}
                }
            }
        }
    }
    Tab { //Second tab
        
        title: qsTr("Friends") + Retranslate.onLocaleOrLanguageChanged
        imageSource: "images/friends.png"
        Page {
            titleBar: TitleBar {
                id: friends
                title: "Friends"
                appearance: TitleBarAppearance.Plain
            
            }
            Container {
                background: Color.create("#333333")
            
            }
        }
    } //End of second tab
}
//TODO: Implement Oauth login to fitbit
//TODO: Add refresh icon to button
//TODO: Fix second tab (mockup to come)
//TODO: Create list view for friends
//TODO: Pull down to refresh
//TODO: Make $$$$
