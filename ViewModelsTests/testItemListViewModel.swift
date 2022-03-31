//
//  testItemListViewModel.swift
//  ViewModelsTests
//
//  Created by Nguyen Quang Huy on 31/3/2022.
//

import XCTest
@testable import ViewModels

class testItemListViewModel: XCTestCase {
    
    func testInitItemListViewModel () {
        let testItem1 = Item(name: "testItem1", isChecked: false)
        let testItem2 = Item(name: "testItem1", isChecked: false)

        let itemListViewModel = ItemListViewModel(name: "Todo List test",
                                                  items: [ItemViewModel(item: testItem1),
                                                          ItemViewModel(item: testItem2)])
        XCTAssertNotNil(itemListViewModel, "ItemListViewModel is not nil")
        XCTAssertEqual(itemListViewModel.name, "Todo List test")
    }
    
    func testFuncResetItemItemListViewModel () {
        let testItem1 = Item(name: "testItem1", isChecked: true)
        let testItem2 = Item(name: "testItem1", isChecked: true)

        let itemListViewModel = ItemListViewModel(name: "Todo List test",
                                                  items: [ItemViewModel(item: testItem1),
                                                          ItemViewModel(item: testItem2)])
        itemListViewModel.resetItems()

        for i in 0..<(itemListViewModel.items.count) {
            XCTAssertEqual(itemListViewModel.items[i].item.isChecked, false)
        }
    }
}
