import org.apache.spark.sql.SparkSession
import dbConnection

object scriptSpark {

    def main(args: Array[String]) {
    
    val logFile = "YOUR_SPARK_HOME/README.md" // Should be some file on your system

    val spark = SparkSession.builder.appName("Simple Application").getOrCreate()
    


    print("Total number of rows:")
    print( df.count() )
    println(s"Lines with a: $numAs, Lines with b: $numBs")


/*

• Number of distinct sensors present on the database;
df.distinct('sensors').count()
• Number of rows for the sensor PPL340;
df['name'].count()
• The number of rows by year for the sensor PPL340;
df['year'].count().filter( df['name' = 'PPL340'] )

• Average number of readings by year for the sensor PPL340;
df['year']filter( df['name' = 'PPL340'] ).agg(avg( df['reading'] ))
*/
     spark.stop()       
    }

}