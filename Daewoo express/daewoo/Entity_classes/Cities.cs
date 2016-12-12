using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using daewoo;
using System.Data.SqlClient;
using System.Data;
namespace daewoo
{
    class Cities
    {
        #region Variables

        private const string _spName = "SP_Cities";

        private DBBridge ObjDBBridge = new DBBridge();

        private int _City;
        private int _Total_cities;

        private string _Name;
        private int _Source;
        private int _Destination;
        #endregion

        #region Public Property

        public int Source
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

        public int Destination
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
        public int City
        {
            get
            {
                return _City;
            }
            set
            {
                _City = value;
            }
        }
        public int Total_cities
        {
            get
            {
                return _Total_cities;
            }
            set
            {
                _Total_cities = value;
            }
        }
        public string Name
        {
            get
            {
                return _Name;
            }
            set
            {
                _Name = value;
            }
        }


        #endregion

        #region Method
        public int Insert()
        {
            SqlParameter[] param = new SqlParameter[3];
            param[0] = new SqlParameter("@Mode", "Insert");
            param[1] = new SqlParameter("@City", _City);
            param[2] = new SqlParameter("@Name", _Name);

            return ObjDBBridge.ExecuteNonQuery(_spName, param);

        }

        public int Update()
        {
            SqlParameter[] param = new SqlParameter[3];
            param[0] = new SqlParameter("@Mode", "Update");
            param[1] = new SqlParameter("@City", _City);
            param[2] = new SqlParameter("@Name", _Name);

            return ObjDBBridge.ExecuteNonQuery(_spName, param);

        }


        public DataTable Cities_data()
        {
            SqlParameter[] param = new SqlParameter[1];
            param[0] = new SqlParameter("@Mode", "cities");
            return ObjDBBridge.ExecuteDataset(_spName, param).Tables[0];
        }

        public DataTable Source_Data()
        {
            SqlParameter[] param = new SqlParameter[1];
            param[0] = new SqlParameter("@Mode", "Source_Data");
            return ObjDBBridge.ExecuteDataset(_spName, param).Tables[0];
        }
        public DataTable Destination_Data()
        {
            SqlParameter[] param = new SqlParameter[2];
            param[0] = new SqlParameter("@Mode", "Destination_Data");
            param[1] = new SqlParameter("@Source", Source);
            return ObjDBBridge.ExecuteDataset(_spName, param).Tables[0];
        }

        //public void SelectById()
        //{
        //    SqlParameter[] param = new SqlParameter[2];
        //    param[0] = new SqlParameter("@Mode", "ViewById");
        //    param[1] = new SqlParameter("@City", _City);
        //    DataTable dt = new DataTable();
        //    dt = ObjDBBridge.ExecuteDataset(_spName, param).Tables[0];
        //    if (dt.Rows.Count != 0)
        //    {
        //        DataRow dr = null;
        //        dr = dt.Rows[0];

        //        _City = dr["City"].ToString();
        //        _Name = dr["Name"].ToString();

        //    }

        //}

        public int Cities_count()
        {
            int temp = 0;
            SqlParameter[] param = new SqlParameter[1];
            param[0] = new SqlParameter("@Mode", "count");
            DataTable dt = new DataTable();
            dt = ObjDBBridge.ExecuteDataset(_spName, param).Tables[0];
            if (dt.Rows.Count != 0)
            {
                DataRow dr = null;
                dr = dt.Rows[0];
                temp =Convert.ToInt32( dr[0]);
                _Total_cities = Convert.ToInt32(dr[0]);

            }
            return temp;
        }



        #endregion
    }
}
