import { createSlice } from '@reduxjs/toolkit';

const initialState = {
	value: 0,
};

export const exempleSlice = createSlice({
	name: 'exemple',
	initialState,
	reducers: {
		increment: (state) => {
			state.value += 1;
		},
		decrement: (state) => {
			state.value -= 1;
		},
		incrementByAmount: (state, action) => {
			state.value += action.payload;
		},
	},
});

// Action creators are generated for each case reducer function
export const { increment, decrement, incrementByAmount } = exempleSlice.actions;

export default exempleSlice.reducer;
