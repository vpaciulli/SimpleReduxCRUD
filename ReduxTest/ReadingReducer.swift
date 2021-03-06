//
//  ReadingReducer.swift
//  ReduxTest
//
//  Created by Guilherme Paciulli on 04/08/17.
//  Copyright © 2017 Guilherme Paciulli. All rights reserved.
//

import Foundation
import ReSwift

func ReadingReducer(action: Action, state: ReadingState?) -> ReadingState {
    
    var state = state ?? ReadingState()
    
    switch action {
    case let fetchByNameAction as FetchByNameAction:
        state.beers = Beer.fetch(by: fetchByNameAction.name)
    default:
        break
    }
    
    
    return state
    
}
