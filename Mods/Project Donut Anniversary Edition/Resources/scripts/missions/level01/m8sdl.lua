-- HACK: Outputting NOTHING causes CustomFiles to try to load the original file
--	   which is not present in the mod. This is a workaround to prevent that.
Output(" ")