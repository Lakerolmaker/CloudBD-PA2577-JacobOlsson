package se.bth.serl.clony;


import java.io.BufferedWriter;
import java.io.File;
import java.io.FileWriter;
import java.io.IOException;

import javax.security.auth.callback.TextOutputCallback;

import org.apache.commons.io.FileUtils;
import org.apache.hadoop.conf.Configuration;
import org.apache.hadoop.fs.FileSystem;
import org.apache.hadoop.fs.Path;
import org.apache.hadoop.io.IntWritable;
import org.apache.hadoop.io.NullWritable;
import org.apache.hadoop.io.SequenceFile;
import org.apache.hadoop.io.SequenceFile.Reader;
import org.apache.hadoop.io.SequenceFile.Writer;
import org.apache.hadoop.io.Text;
import org.apache.hadoop.io.Writable;
import org.apache.hadoop.io.WritableComparable;
import org.apache.hadoop.io.compress.GzipCodec;
import org.apache.hadoop.mapred.TextOutputFormat;

import se.bth.serl.clony.chunks.Chunk;
import se.bth.serl.clony.chunks.Clone;
import se.bth.serl.clony.hadoop.ChunkArrayWritable;

public class readexpander {

	@SuppressWarnings("deprecation")
	public static void main(String[] args) throws Exception {
		
//		Configuration config = new Configuration();
//		Path path = new Path("");
//		SequenceFile.Reader reader = new SequenceFile.Reader(FileSystem.get(config), path, config);
//		WritableComparable key = (WritableComparable) reader.getKeyClass().newInstance();
//		Writable value = (Writable) reader.getValueClass().newInstance();
//		while (reader.next(key, value))
//		  // do some thing
//		reader.close();
		
		Configuration conf = new Configuration();
		  try {
		   Path inFile = new Path(args[0]);
		   SequenceFile.Reader reader = new SequenceFile.Reader(FileSystem.get(conf), inFile, conf);
		   try {
			WritableComparable key = (WritableComparable) Clone.class.newInstance();
			NullWritable value = null;
		    reader = new SequenceFile.Reader(conf, Reader.file(inFile), Reader.bufferSize(4096));
		    while(reader.next(key, value)) {
		    
		    System.out.println("Key " + key + "Value " + value);
		    System.out.println("-----------");
		    }
		 
		   }finally {
		    if(reader != null) {
		     reader.close();
		    }
		   }
		  } catch (IOException e) {
		   // TODO Auto-generated catch bloc
		   e.printStackTrace();
		  }
		
	}
	
	public void writeToTextFile(String fileName, String addedText, String path) {

		BufferedWriter bw = null;
		FileWriter fw = null;

		// : Gets the path
		String fname = path + File.separator + fileName + ".txt";

		try {

			// : Writes to the file
			fw = new FileWriter(fname);
			bw = new BufferedWriter(fw);
			bw.write(addedText);

		} catch (IOException e) {
			System.out.println(e);
		} finally {

			try {
				// closes the writers
				if (bw != null)
					bw.close();

				if (fw != null)
					fw.close();

			} catch (IOException ex) {
			}

		}

	}
	
	
}
