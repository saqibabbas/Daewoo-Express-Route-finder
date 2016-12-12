using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace daewoo
{
    class Routes
    {
        #region Variables

        private const string _spName = "SP_Routes";

        private DBBridge ObjDBBridge = new DBBridge();

        

        
        private string _Source;
        private string _Destination;
        private string _Route;
        private int _Ticket;
        private int _No_of_cities;
        private double _Time;


        #endregion

        #region Public Property

        public string Source
        {
            get
            {
                return _Source;
            }
            set
            {
                _Source = value;
            }
        }

        public string Destination
        {
            get
            {
                return _Destination;
            }
            set
            {
                _Destination = value;
            }
        }
        public string Route
        {
            get
            {
                return _Route;
            }
            set
            {
                _Route = value;
            }
        }


        public int Ticket
        {
            get
            {
                return _Ticket;
            }
            set
            {
                _Ticket = value;
            }
        }

        public int No_of_cities
        {
            get
            {
                return _No_of_cities;
            }
            set
            {
                _No_of_cities = value;
            }
        }

        public double Time
        {
            get
            {
                return _Time;
            }
            set
            {
                _Time = value;
            }
        }

        #endregion

        #region Method
        public int Insert()
        {
            SqlParameter[] param = new SqlParameter[7];
            param[0] = new SqlParameter("@Mode", "Insert");
            //param[1] = new SqlParameter("@Source_Desitnation_ID", _Source_Desitnation_ID);
            param[1] = new SqlParameter("@Source", _Source);
            param[2] = new SqlParameter("@Destination", _Destination);
            param[3] = new SqlParameter("@Ticket", _Ticket);
            param[4] = new SqlParameter("@Route", _Route);
            param[5] = new SqlParameter("@Time", _Time);
            param[6] = new SqlParameter("@No_of_cities", _No_of_cities);
            return ObjDBBridge.ExecuteNonQuery(_spName, param);

        }

        public void Trunc()
        { 
        SqlParameter [] param=new SqlParameter[1];
        param[0] = new SqlParameter("@Mode","Trunc");
        ObjDBBridge.ExecuteNonQuery(_spName, param);
        
        }
        #endregion
    }
}
