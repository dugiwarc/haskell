-- duplicate the elements of a list

dupli list = concat [[x, x] | x <- list]