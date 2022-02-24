object dbConnection {
    val database = sys.env("MYSQL_DATABASE").getOrElse("refinery")
    val user = sys.env("MYSQL_USER").getOrElse("refinery_root")
    val password  = sys.env("refinery_root").getOrElse("refinery_root")

    val tableNewYorkProducts = sys.env("MYSQL_DATABASE").getOrElse("refinery")
    val tableSensors = sys.env("MYSQL_DATABASE").getOrElse("refinery")

    val connString = "jdbc:mysql://localhost:10101/"+database

    def connectMysql()
}