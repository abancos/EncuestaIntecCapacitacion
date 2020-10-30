using BLL._2014;
using System;
using System.Web.UI;

namespace ABA
{
    public partial class Resultados : System.Web.UI.Page
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

                objInfo.ID_Encuesta = 1;

                rgResultados.DataSource = objCtrl.SelEncuesta_xID(objInfo);
                rgResultados.DataBind();

                rgResultados0.DataSource = objCtrl.SelEncuesta_xID(objInfo);
                rgResultados0.DataBind();
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

                objInfo.ID_Encuesta = 1;

                rgResultados.DataSource = objCtrl.SelEncuesta_xID(objInfo);
                rgResultados.DataBind();
            }
            catch (Exception)
            {


            }

        }


     

        protected void rtAdmin_ButtonClick(object sender, Telerik.Web.UI.RadToolBarEventArgs e)
        {
            if (e.Item.Text == "Exportar Resultados")
            {
                rgResultados0.ExportSettings.FileName = "Resultados";
                rgResultados0.MasterTableView.ExportToCSV();
            }

        }

        protected void cboEncuesta_SelectedIndexChanged(object sender, Telerik.Web.UI.RadComboBoxSelectedIndexChangedEventArgs e)
        {
            Cargar();
        }




    }
}