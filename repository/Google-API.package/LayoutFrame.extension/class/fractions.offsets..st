*Google-API
fractions: f offsets: o

	^ self identity
		  leftFraction: f left;
		  topFraction: f top;
		  rightFraction: f right;
		  bottomFraction: f bottom;
		  leftOffset: o left;
		  topOffset: o top;
		  rightOffset: o right;
		  bottomOffset: o bottom;
		  yourself