using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace hachsharanetweb
{
    public class Connection
    {
        public static string ConnectionString = "Data Source=.;Initial Catalog=HachsharaNET;Persist Security Info=True;User ID=sa;Password=1";
        public static hacDataContext dbml = new hacDataContext(ConnectionString);
        public static hacDataContext getdatacontext()
        {
            return dbml;
        }
    }
}