using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace daewoo
{
    class Time
    {
        #region Variables

        private const string _spName = "SP_Time";

        private DBBridge ObjDBBridge = new DBBridge();

        private int _Source_Desitnation_ID;
        private int _Source;
        private int _Destination;
        private int _Total_Times;

        private double _newtme;
        #endregion

        #region Public Property

        public int Total_Times
        {
            get
            {
                return _Total_Times;
            }
            set
            {
                _Total_Times = value;
            }
        }
        public double newtime
        {

            get 
            {
                return _newtme;
            }
            set
            {
                _newtme = value;
            }
        }
        public int Source_Desitnation_ID
        {
            get
            {
                return _Source_Desitnation_ID;
            }
            set
            {
                _Source_Desitnation_ID = value;
            }
        }

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

        #endregion

        #region Method
        public int Insert()
        {
            SqlParameter[] param = new SqlParameter[6];
            param[0] = new SqlParameter("@Mode", "Insert");            
            param[1] = new SqlParameter("@Source", _Source);
            param[2] = new SqlParameter("@Destination", _Destination);
            param[3] = new SqlParameter("@Time", _newtme);
            

            return ObjDBBridge.ExecuteNonQuery(_spName, param);

        }

        public int Update()
        {
            SqlParameter[] param = new SqlParameter[6];
            param[0] = new SqlParameter("@Mode", "Update");
            param[1] = new SqlParameter("@Source_Desitnation_ID", _Source_Desitnation_ID);
            param[2] = new SqlParameter("@Source", _Source);
            param[3] = new SqlParameter("@Destination", _Destination);
            param[4] = new SqlParameter("@Time", _newtme);

            

            return ObjDBBridge.ExecuteNonQuery(_spName, param);

        }

        public DataTable Time_data()
        {
            SqlParameter[] param = new SqlParameter[1];
            param[0] = new SqlParameter("@Mode", "Time");
            return ObjDBBridge.ExecuteDataset(_spName, param).Tables[0];
        }

        public int Times_count()
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
                temp = Convert.ToInt32(dr[0]);
                _Total_Times = Convert.ToInt32(dr[0]);

            }
            return temp;
        }
        //public void SelectById()
        //{
        //    SqlParameter[] param = new SqlParameter[2];
        //    param[0] = new SqlParameter("@Mode", "ViewById");
        //    param[1] = new SqlParameter("@Source_Desitnation_ID", _Source_Desitnation_ID);
        //    DataTable dt = new DataTable();
        //    dt = ObjDBBridge.ExecuteDataset(_spName, param).Tables[0];
        //    if (dt.Rows.Count != 0)
        //    {
        //        DataRow dr = null;
        //        dr = dt.Rows[0];

        //        _Source_Desitnation_ID = dr["Source_Desitnation_ID"].ToString();
        //        _Source = dr["Source"].ToString();
        //        _Destination = dr["Destination"].ToString();
        //        _Departure = dr["Departure"].ToString();
        //        _Arrival = dr["Arrival"].ToString();

        //    }

        //}

        //public int GetId()
        //{
        //    int tempGetId = 0;
        //    SqlParameter[] param = new SqlParameter[1];
        //    param[0] = new SqlParameter("@Mode", "GetId");
        //    DataTable dt = new DataTable();
        //    dt = ObjDBBridge.ExecuteDataset(_spName, param).Tables[0];
        //    if (dt.Rows.Count != 0)
        //    {
        //        DataRow dr = null;
        //        dr = dt.Rows[0];
        //        tempGetId = dr[0].ToString();
        //    }
        //    return tempGetId;
        //}

        //public BindingSource DBPaneGrid()
        //{
        //    SqlParameter[] param = new SqlParameter[1];
        //    param[0] = new SqlParameter("@Mode", "PaneGrid");
        //    DataTable dt = new DataTable();
        //    dt = ObjDBBridge.ExecuteDataset(_spName, param).Tables[0];
        //    BindingSource DataBind = new BindingSource();
        //    DataBind.DataSource = dt;
        //    return DataBind;

        //}

        #endregion
    }
}
