package se.bth.serl.clony.hadoop;

import java.io.IOException;
import java.util.ArrayList;

import org.apache.hadoop.io.NullWritable;
import org.apache.hadoop.io.Text;
import org.apache.hadoop.io.Writable;
import org.apache.hadoop.mapreduce.Reducer;
import org.apache.hadoop.mapreduce.Reducer.Context;

import se.bth.serl.clony.chunks.Chunk;
import se.bth.serl.clony.chunks.Clone;

public class ExpanderReducer extends Reducer<Clone, NullWritable, Clone, NullWritable> {

	//TODO implement the reduce() method
	@Override
	protected void reduce(Clone arg0, Iterable<NullWritable> arg1, Context arg2) throws IOException, InterruptedException {
		// TODO Auto-generated method stub
		arg2.write(arg0, NullWritable.get());
	}
	

}
