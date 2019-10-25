import { combineReducers, AnyAction } from 'redux'

// replace with real reducers
const placeholderReducer = (state={}, action: AnyAction) => state

export default combineReducers({
  placeholder: placeholderReducer
})
