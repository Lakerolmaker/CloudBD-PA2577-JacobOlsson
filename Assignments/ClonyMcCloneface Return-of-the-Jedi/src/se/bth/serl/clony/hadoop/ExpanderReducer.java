package se.bth.serl.clony.hadoop;

import org.apache.hadoop.io.NullWritable;
import org.apache.hadoop.mapreduce.Reducer;

import se.bth.serl.clony.chunks.Clone;

public class ExpanderReducer extends Reducer<Clone, NullWritable, Clone, NullWritable> {

	//TODO implement the reduce() method
}
