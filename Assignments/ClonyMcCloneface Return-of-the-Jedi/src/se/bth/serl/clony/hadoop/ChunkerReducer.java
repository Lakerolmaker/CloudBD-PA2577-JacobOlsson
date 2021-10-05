package se.bth.serl.clony.hadoop;

import java.io.IOException;
import java.util.ArrayList;

import org.apache.hadoop.io.Text;
import org.apache.hadoop.io.Writable;
import org.apache.hadoop.mapreduce.Reducer;

import se.bth.serl.clony.chunks.Chunk;

public class ChunkerReducer extends Reducer<Text, Chunk, Text, ChunkArrayWritable> {

	@Override
	public void reduce(Text key, Iterable<Chunk> values, Context context) throws IOException, InterruptedException {
		ArrayList<Chunk> instances = new ArrayList<>();
		values.forEach( entry -> {
			Chunk copy = new Chunk(entry);
			instances.add(copy);
		});
		
		if(instances.size() > 1) {
			//TODO Write the correct key/value pairs to the context
			
			// array of content (chunks)
			Writable[] writable = instances.toArray(new Chunk[instances.size()]);
				
			// Writable
			ChunkArrayWritable chunkarr = new ChunkArrayWritable(writable);

			//: Key + ChunkArrayWritable
			context.write(key,chunkarr);	
			
			
		}
	
	}
}
