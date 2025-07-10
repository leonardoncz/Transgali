import oracledb
def get_connection():
    return oracledb.connect(
        user="system",
        password="gali",
        dsn="localhost/FREEPDB1" 
    )