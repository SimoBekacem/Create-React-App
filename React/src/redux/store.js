import { configureStore } from '@reduxjs/toolkit';
import exempleSliceReducer from './slices/exempleSlice.slice';

export const store = configureStore({
	reducer: {
		exemple: exempleSliceReducer,
	},
});
