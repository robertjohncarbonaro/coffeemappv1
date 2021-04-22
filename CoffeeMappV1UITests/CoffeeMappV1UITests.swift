//
//  CoffeeMappV1UITests.swift
//  CoffeeMappV1UITests
//
//  Created by Robert Carbonaro on 21/04/2021.
//

import XCTest

class CoffeeMappV1UITests: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.

        // In UI tests it is usually best to stop immediately when a failure occurs.
        continueAfterFailure = false

        // In UI tests it’s important to set the initial state - such as interface orientation - required for your tests before they run. The setUp method is a good place to do this.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testExample() throws {
        // UI tests must launch the application that they test.
        // Use recording to get started writing UI tests.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
        
        
        let app = XCUIApplication()
        let stLukeSChurchOfEnglandPrimaryMap = app/*@START_MENU_TOKEN@*/.maps.containing(.other, identifier:"St Luke's Church of England Primary").element/*[[".maps.containing(.other, identifier:\"Tesco Express\").element",".maps.containing(.other, identifier:\"Malmin Orthodontics\").element",".maps.containing(.other, identifier:\"Hampstead School of Art\").element",".maps.containing(.other, identifier:\"St Luke's Church of England Primary\").element"],[[[-1,3],[-1,2],[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/
        stLukeSChurchOfEnglandPrimaryMap.tap()
        stLukeSChurchOfEnglandPrimaryMap.tap()
        
        let hampsteadCemeteryMap = app.maps.containing(.other, identifier:"Hampstead Cemetery").element
        hampsteadCemeteryMap.tap()
        hampsteadCemeteryMap.tap()
        app/*@START_MENU_TOKEN@*/.maps.containing(.other, identifier:"Golders Hill Park").element/*[[".maps.containing(.other, identifier:\"Finchley Road\").element",".maps.containing(.other, identifier:\"West Hampstead\").element",".maps.containing(.other, identifier:\"Hampstead Cemetery\").element",".maps.containing(.other, identifier:\"UCS Sports Grounds\").element",".maps.containing(.other, identifier:\"Hampstead\").element",".maps.containing(.other, identifier:\"Jack Straw's Castle\").element",".maps.containing(.other, identifier:\"Childs Hill\").element",".maps.containing(.other, identifier:\"West Heath\").element",".maps.containing(.other, identifier:\"Golders Hill Park\").element"],[[[-1,8],[-1,7],[-1,6],[-1,5],[-1,4],[-1,3],[-1,2],[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/.tap()
        
        let tablesQuery = app.tables
        tablesQuery/*@START_MENU_TOKEN@*/.staticTexts["The Pumpkin Cafe"]/*[[".cells.staticTexts[\"The Pumpkin Cafe\"]",".staticTexts[\"The Pumpkin Cafe\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/.tap()
        tablesQuery/*@START_MENU_TOKEN@*/.staticTexts["David's Deli"]/*[[".cells.staticTexts[\"David's Deli\"]",".staticTexts[\"David's Deli\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/.tap()
        tablesQuery/*@START_MENU_TOKEN@*/.staticTexts["Caffè Nero"]/*[[".cells.staticTexts[\"Caffè Nero\"]",".staticTexts[\"Caffè Nero\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/.tap()
        tablesQuery/*@START_MENU_TOKEN@*/.staticTexts["Moment Expresso Bar"]/*[[".cells.staticTexts[\"Moment Expresso Bar\"]",".staticTexts[\"Moment Expresso Bar\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/.tap()
        
        let costaCoffeeStaticText = tablesQuery/*@START_MENU_TOKEN@*/.staticTexts["Costa Coffee"]/*[[".cells.staticTexts[\"Costa Coffee\"]",".staticTexts[\"Costa Coffee\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/
        costaCoffeeStaticText.tap()
        tablesQuery/*@START_MENU_TOKEN@*/.staticTexts["Papa's Cafe"]/*[[".cells.staticTexts[\"Papa's Cafe\"]",".staticTexts[\"Papa's Cafe\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/.tap()
        costaCoffeeStaticText.tap()
        costaCoffeeStaticText.tap()
        app.otherElements["Costa Coffee"].tap()
        
    }
    
    

    func testLaunchPerformance() throws {
        if #available(macOS 10.15, iOS 13.0, tvOS 13.0, *) {
            // This measures how long it takes to launch your application.
            measure(metrics: [XCTApplicationLaunchMetric()]) {
                XCUIApplication().launch()
            }
        }
    }
}
