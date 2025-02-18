import Foundation
import SwiftUI
import Contacts

func loadContactsFromStoreToCursor(store: CNContactStore, cursor: Cursor<AppItem>) {
    logger.debug("loadContactsFromStoreToCursorDispatch start")
    cursor.state = CursorState.Loading
    let dispatchQueue = DispatchQueue(label: "load", qos: .background)
    dispatchQueue.async{
        logger.debug("loadContactsFromStoreToCursor async start")
        #if targetEnvironment(simulator)
        // demoContacts()
        #endif
        let list = store.list()
        DispatchQueue.main.async {
            cursor.setList(list: list)
            cursor.setCallable(callable: openViaCNContact)
            cursor.state = CursorState.Loaded
        }
        logger.debug("loadContactsFromStoreToCursor async stop")
    }
    logger.debug("loadContactsFromStoreToCursorDispatch stop")
}
