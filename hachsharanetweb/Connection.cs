using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace hachsharanetweb
{
    public class Connection
    {
        public static string ConnectionString = "Data Source=hachsharanet.ccsgujpsbgon.eu-central-1.rds.amazonaws.com;Initial Catalog=HachsharaNET;User ID=DBhachshara;Password=Niv6968872";
        public static hacDataContext dbml = new hacDataContext(ConnectionString);
        public static hacDataContext getdatacontext()
        {
            return dbml;
        }
    }
}