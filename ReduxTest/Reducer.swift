//
//  Reducer.swift
//  ReduxTest
//
//  Created by Guilherme Paciulli on 04/08/17.
//  Copyright © 2017 Guilherme Paciulli. All rights reserved.
//

import Foundation
import ReSwift

func appReducer(action: Action, state: AppState?) -> AppState {
    
    return AppState(readingState: ReadingReducer(action: action, state: state?.readingState))

}
