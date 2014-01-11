/* Copyright (c) 2013 Research In Motion Limited.
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
import bb.cascades 1.0


Page {
    id: infoPage

    // Custom signal for notifying that this page needs to be closed
    signal done ()
    
    titleBar: TitleBar {
        title: "Info"
        dismissAction: ActionItem {
            title: "Close"
            onTriggered: {
                // Emit the custom signal here to indicate that this page needs to be closed
                // The signal would be handled by the page which invoked it
                infoPage.done();
            }
        }
    }
    
    Container {
        ImageView {
            id: logo
            imageSource: "images/klogo.png"
            scalingMethod: ScalingMethod.None
            loadEffect: ImageViewLoadEffect.Subtle
            verticalAlignment: VerticalAlignment.Top
            horizontalAlignment: HorizontalAlignment.Center
     
        }
        background: Color.create("#fdebbf")
        layout: DockLayout {
        }
        topPadding: 10.0
        Container {
            
            layout: StackLayout {
            }
            verticalAlignment: VerticalAlignment.Center
            horizontalAlignment: HorizontalAlignment.Center
            
            
            
            
            TextArea {
                text: "This is an app for K9 Klub Playcenter INC.\n\n" + "The purpose of this app is to watch your pet via our webcams.\n\n" +
                 
                "  Author:\n" + 
                "  Sergio Sandoval\n" + 
                "  Pet Owner & Graphic Designer\n"
            
                
                editable: false
                scrollMode: TextAreaScrollMode.Stiff
               
                textStyle.fontStyle: FontStyle.Italic
                textStyle.textAlign: TextAlign.Justify
                textStyle.color: Color.DarkRed
            }
            Label {
                text: "<html><a href=\"https://twitter.com/SergioDSandoval\">@SergioDSandoval</a></html>"
                horizontalAlignment: HorizontalAlignment.Center
            }
          
        
        } // Container StackLyaout
    } // Container DockLayout
    
} // Page