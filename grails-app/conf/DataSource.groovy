dataSource {
    /*pooled = true
    driverClassName = "org.hsqldb.jdbcDriver"
    username = "sa"
    password = ""*/
    /*url = 'jdbc:sqlserver://10.1.0.252:6403'
    driverClassName = 'com.microsoft.sqlserver.jdbc.SQLServerDriver'
    username = 'sa'
    password = 'Kismet1'*/
    url = 'jdbc:mysql://localhost:3306/strawinv'
    driverClassName = 'com.mysql.jdbc.Driver'
    username = 'root'
    password = 'lutefisk'

}
hibernate {
    cache.use_second_level_cache = true
    cache.use_query_cache = true
    cache.provider_class = 'net.sf.ehcache.hibernate.EhCacheProvider'
}
// environment specific settings
environments {
    development {
        /*dataSource {
            dbCreate = "create-drop" // one of 'create', 'create-drop','update'
            url = "jdbc:hsqldb:mem:devDB"
        }*/
        /*dataSource {
            dbCreate = "create-drop" // one of 'create', 'create-drop','update'
            url = "jdbc:sqlserver://10.1.0.252:6403"
            driverClassName = 'com.microsoft.sqlserver.jdbc.SQLServerDriver'
            username = 'sa'
            password = 'Kismet1'
        }*/
        dataSource {
            dbCreate = "update"
            url = "jdbc:mysql://localhost:3306/strawinv"
            driverClassName = 'com.mysql.jdbc.Driver'
            username = 'root'
            password = 'lutefisk'
            dialect = org.hibernate.dialect.MySQL5InnoDBDialect
        }
    }
    test {
        dataSource {
            dbCreate = "update"
            url = "jdbc:hsqldb:mem:testDb"
        }
    }
    production {
        dataSource {
            dbCreate = "update"
            url = "jdbc:hsqldb:file:prodDb;shutdown=true"
        }
    }
}
