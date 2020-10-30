using BLL._2014;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ABA
{
    public partial class Bancos : System.Web.UI.Page
    {
        EncuestaControl objCtrl;
        EncuestaInfo objInfo;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
              
                Cargar();
            }
        }

       

        public void Cargar()
        {

            try
            {

                objCtrl = new EncuestaControl();
                objInfo = new EncuestaInfo();

          

                rgBancos.DataSource = objCtrl.SelBanco();
                rgBancos.DataBind();


            }
            catch (Exception)
            {


            }

        }

        protected void rgResultados_NeedDataSource(object sender, Telerik.Web.UI.GridNeedDataSourceEventArgs e)
        {
            try
            {
                objCtrl = new EncuestaControl();
                objInfo = new EncuestaInfo();


                rgBancos.DataSource = objCtrl.SelBanco();
                rgBancos.DataBind();
            }
            catch (Exception)
            {


            }

        }

        protected void btnAgregar_Click(object sender, EventArgs e)
        {
            try
            {
                objCtrl = new EncuestaControl();
                objInfo = new EncuestaInfo();

                objInfo.Descripcion = txtBanco.Text;


                rgBancos.DataSource = objCtrl.InsBanco(objInfo);
                rgBancos.DataBind();

                Cargar();

            }
            catch (Exception)
            {


            }

        }




    }
}