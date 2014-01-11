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
            property NavigationPane currentNavigationPane: tab1Handle.navHandle
            Menu.definition: MenuDefinition {
                id: menu
                actions: [
                    ActionItem {
                        title: "Settings"
                        onTriggered: {
                            console.log("Info: ActionItem : onTriggered");
                            // For InfoPage, we will use Sheet
                            infoSheet.open();
                        }
                    }
                ]
            }
            Container {

                Label {
                    text: "Dashboard"
                    textStyle.color: Color.create("#ffffff")
                    textStyle.fontSize: FontSize.Large
                    verticalAlignment: VerticalAlignment.Center
                    horizontalAlignment: HorizontalAlignment.Center

                    bottomMargin: 90.0
                    textStyle.fontStyle: FontStyle.Italic

                }

                background: Color.create("#333333")
                Container {
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
                Container {
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
            }
        }
    }
    Tab { //Second tab
        title: qsTr("Friends") + Retranslate.onLocaleOrLanguageChanged
        imageSource: "images/friends.png"
        Page {
            Container {
                Label {
                    text: qsTr("Second tab") + Retranslate.onLocaleOrLanguageChanged
                }
            }
        }
    } //End of second tab
}
