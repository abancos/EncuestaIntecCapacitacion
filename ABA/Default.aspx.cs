using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BLL._2014;
using System.Net;
using System.Net.Mail;
using System.Web.Services;
using DAL.EncuestaIntec;

namespace ABA
{

    public partial class _Default : Page
    {

        EncuestaControl objCtrl;
        EncuestaInfo objInfo2;
        EncuestaIntecInfo objInfo;

        protected void Page_Load(object sender, EventArgs e)
        {

            if (!Page.IsPostBack)
            {
                Cargarbancos();
                txtEmail.Attributes["type"] = "email";

                //try
                //{
                //    objCtrl = new EncuestaControl();
                //    objInfo = new EncuestaInfo();

                //    objInfo.ID_Encuesta = int.Parse(Request.QueryString["p"]);

                //    if (objCtrl.SelEncuestaCont(objInfo) == 0)
                //    {
                //        Response.Redirect("http://www.aba.org.do/");
                //    }
                //}
                //catch (Exception)
                //{

                //    Response.Redirect("http://www.aba.org.do/");
                //}


            }
        }

        protected void Cargarbancos()
        {

            try
            {
                objCtrl = new EncuestaControl();
                objInfo2 = new EncuestaInfo();

                objInfo2.ID_Encuesta = 1;

                cboBank.DataValueField = "DESCRIPCION";
                cboBank.DataTextField = "DESCRIPCION";
                cboBank.DataSource = objCtrl.SelBancoDisp(objInfo2);
                cboBank.DataBind();

            }
            catch (Exception)
            {


            }

        }


        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            try
            {
                objCtrl = new EncuestaControl();
                objInfo = new EncuestaIntecInfo();

                //Informacion General
                objInfo.IP = Request.UserHostAddress;
                objInfo.NombreInts = cboBank.Value;
                objInfo.NombreyCargo = txtName.Value;
                objInfo.Sugerencias = txtSugerencias.Value;
                objInfo.Telefono = txtPhone.Value;
                objInfo.Correo = txtEmail.Value;
                objInfo.Cargo = txtCargo.Value;

                #region Pregunta 1
                //Pregunta 1
                if (r110.Checked == true)
                {
                    objInfo.GestionIntegralRiesgos1 = int.Parse(r110.Value);
                }
                else if (r111.Checked == true)
                {
                    objInfo.GestionIntegralRiesgos1 = int.Parse(r111.Value);
                }
                else if (r112.Checked == true)
                {
                    objInfo.GestionIntegralRiesgos1 = int.Parse(r112.Value);
                }



                if (r120.Checked == true)
                {
                    objInfo.RiesgoLiquidez1 = int.Parse(r120.Value);
                }
                else if (r121.Checked == true)
                {
                    objInfo.RiesgoLiquidez1 = int.Parse(r121.Value);
                }
                else if (r122.Checked == true)
                {
                    objInfo.RiesgoLiquidez1 = int.Parse(r122.Value);
                }


                if (r130.Checked == true)
                {
                    objInfo.RiesgoCredito1 = int.Parse(r130.Value);
                }
                else if (r131.Checked == true)
                {
                    objInfo.RiesgoCredito1 = int.Parse(r131.Value);
                }
                else if (r132.Checked == true)
                {
                    objInfo.RiesgoCredito1 = int.Parse(r132.Value);
                }

                if (r140.Checked == true)
                {
                    objInfo.RiesgoMercado1 = int.Parse(r140.Value);
                }
                else if (r141.Checked == true)
                {
                    objInfo.RiesgoMercado1 = int.Parse(r141.Value);
                }
                else if (r142.Checked == true)
                {
                    objInfo.RiesgoMercado1 = int.Parse(r142.Value);
                }

                if (r150.Checked == true)
                {
                    objInfo.RiesgoOperativo1 = int.Parse(r150.Value);
                }
                else if (r151.Checked == true)
                {
                    objInfo.RiesgoOperativo1 = int.Parse(r151.Value);
                }
                else if (r152.Checked == true)
                {
                    objInfo.RiesgoOperativo1 = int.Parse(r152.Value);
                }

                if (r160.Checked == true)
                {
                    objInfo.NIIFContabilidad1 = int.Parse(r160.Value);
                }
                else if (r161.Checked == true)
                {
                    objInfo.NIIFContabilidad1 = int.Parse(r161.Value);
                }
                else if (r162.Checked == true)
                {
                    objInfo.NIIFContabilidad1 = int.Parse(r162.Value);
                }

                if (r170.Checked == true)
                {
                    objInfo.GestionTesoreria1 = int.Parse(r170.Value);
                }
                else if (r171.Checked == true)
                {
                    objInfo.GestionTesoreria1 = int.Parse(r171.Value);
                }
                else if (r172.Checked == true)
                {
                    objInfo.GestionTesoreria1 = int.Parse(r172.Value);
                }

                if (r180.Checked == true)
                {
                    objInfo.BigData1 = int.Parse(r180.Value);
                }
                else if (r181.Checked == true)
                {
                    objInfo.BigData1 = int.Parse(r181.Value);
                }
                else if (r182.Checked == true)
                {
                    objInfo.BigData1 = int.Parse(r182.Value);
                }

                if (r190.Checked == true)
                {
                    objInfo.MatematicaFinanciera1 = int.Parse(r190.Value);
                }
                else if (r191.Checked == true)
                {
                    objInfo.MatematicaFinanciera1 = int.Parse(r191.Value);
                }
                else if (r192.Checked == true)
                {
                    objInfo.MatematicaFinanciera1 = int.Parse(r192.Value);
                }

                if (r1200.Checked == true)
                {
                    objInfo.Ciberseguridad1 = int.Parse(r1200.Value);
                }
                else if (r1201.Checked == true)
                {
                    objInfo.Ciberseguridad1 = int.Parse(r1201.Value);
                }
                else if (r1202.Checked == true)
                {
                    objInfo.Ciberseguridad1 = int.Parse(r1202.Value);
                }

                if (r1210.Checked == true)
                {
                    objInfo.PrevencionLavadoActivos1 = int.Parse(r1210.Value);
                }
                else if (r1211.Checked == true)
                {
                    objInfo.PrevencionLavadoActivos1 = int.Parse(r1211.Value);
                }
                else if (r1212.Checked == true)
                {
                    objInfo.PrevencionLavadoActivos1 = int.Parse(r1212.Value);
                }

                if (r1220.Checked == true)
                {
                    objInfo.RegulacionDerechoFinanciero1 = int.Parse(r1220.Value);
                }
                else if (r1221.Checked == true)
                {
                    objInfo.RegulacionDerechoFinanciero1 = int.Parse(r1221.Value);
                }
                else if (r1222.Checked == true)
                {
                    objInfo.RegulacionDerechoFinanciero1 = int.Parse(r1222.Value);
                }

                if (r1230.Checked == true)
                {
                    objInfo.GestionFideicomisos1 = int.Parse(r1230.Value);
                }
                else if (r1231.Checked == true)
                {
                    objInfo.GestionFideicomisos1 = int.Parse(r1231.Value);
                }
                else if (r1232.Checked == true)
                {
                    objInfo.GestionFideicomisos1 = int.Parse(r1232.Value);
                }

                if (r1240.Checked == true)
                {
                    objInfo.GobiernoCorporativo1 = int.Parse(r1240.Value);
                }
                else if (r1241.Checked == true)
                {
                    objInfo.GobiernoCorporativo1 = int.Parse(r1241.Value);
                }
                else if (r1242.Checked == true)
                {
                    objInfo.GobiernoCorporativo1 = int.Parse(r1242.Value);
                }

                if (r1251.Checked == true)
                {
                    objInfo.Otros1 = int.Parse(r1251.Value);
                }
                else if (r1252.Checked == true)
                {
                    objInfo.Otros1 = int.Parse(r1252.Value);
                }
                else if (r1253.Checked == true)
                {
                    objInfo.Otros1 = int.Parse(r1253.Value);
                }

                objInfo.Otrostxt1 = txt126.Value;

                #endregion


                #region Pregunta 2
                //Pregunta 2
                string p21 = "";
                if (rb211.Checked == true)
                {
                    p21 += rb211.Value + " , ";
                }
                if (rb212.Checked == true)
                {
                    p21 += rb212.Value + " , ";
                }
                if (rb213.Checked == true)
                {
                    p21 += rb213.Value + " , ";
                }
                if (rb214.Checked == true)
                {
                    p21 += rb214.Value + " , ";
                }
                if (rb21Otro.Checked == true)
                {
                    p21 += txt21.Value + " , ";
                }

                objInfo.GestionIntegralRiesgos2 = p21;

                string p22 = "";
                if (rb221.Checked == true)
                {
                    p22 += rb221.Value + " , ";
                }
                if (rb222.Checked == true)
                {
                    p22 += rb222.Value + " , ";
                }
                if (rb223.Checked == true)
                {
                    p22 += rb223.Value + " , ";
                }
                if (rb224.Checked == true)
                {
                    p22 += rb224.Value + " , ";
                }
                if (rb22Otro.Checked == true)
                {
                    p22 += txt22.Value + " , ";
                }

                objInfo.RiesgoLiquidez2 = p22;

                string p23 = "";
                if (rb231.Checked == true)
                {
                    p23 += rb231.Value + " , ";
                }
                if (rb232.Checked == true)
                {
                    p23 += rb232.Value + " , ";
                }
                if (rb233.Checked == true)
                {
                    p23 += rb233.Value + " , ";
                }
                if (rb234.Checked == true)
                {
                    p23 += rb234.Value + " , ";
                }
                if (rb23Otro.Checked == true)
                {
                    p23 += txt23.Value + " , ";
                }

                objInfo.RiesgoCredito2 = p23;

                string p24 = "";
                if (rb241.Checked == true)
                {
                    p24 += rb241.Value + " , ";
                }
                if (rb242.Checked == true)
                {
                    p24 += rb242.Value + " , ";
                }
                if (rb243.Checked == true)
                {
                    p24 += rb243.Value + " , ";
                }
                if (rb244.Checked == true)
                {
                    p24 += rb244.Value + " , ";
                }
                if (rb24Otro.Checked == true)
                {
                    p24 += txt24.Value + " , ";
                }

                objInfo.RiesgoMercado2 = p24;

                string p25 = "";
                if (rb251.Checked == true)
                {
                    p25 += rb251.Value + " , ";
                }
                if (rb252.Checked == true)
                {
                    p25 += rb252.Value + " , ";
                }
                if (rb253.Checked == true)
                {
                    p25 += rb253.Value + " , ";
                }
                if (rb254.Checked == true)
                {
                    p25 += rb254.Value + " , ";
                }
                if (rb25Otro.Checked == true)
                {
                    p25 += txt25.Value + " , ";
                }
                objInfo.RiesgoOperativo2 = p25;

                string p26 = "";
                if (rb261.Checked == true)
                {
                    p26 += rb261.Value + " , ";
                }
                if (rb262.Checked == true)
                {
                    p26 += rb262.Value + " , ";
                }
                if (rb263.Checked == true)
                {
                    p26 += rb263.Value + " , ";
                }
                if (rb264.Checked == true)
                {
                    p26 += rb264.Value + " , ";
                }
                if (rb26Otro.Checked == true)
                {
                    p26 += txt26.Value + " , ";
                }
                objInfo.NIIFContabilidad2 = p26;

                string p27 = "";
                if (rb271.Checked == true)
                {
                    p27 += rb271.Value + " , ";
                }
                if (rb272.Checked == true)
                {
                    p27 += rb272.Value + " , ";
                }
                if (rb273.Checked == true)
                {
                    p27 += rb273.Value + " , ";
                }
                if (rb274.Checked == true)
                {
                    p27 += rb274.Value + " , ";
                }
                if (rb27Otro.Checked == true)
                {
                    p27 += txt27.Value + " , ";
                }
                objInfo.GestionTesoreria2 = p27;


                string p28 = "";
                if (rb281.Checked == true)
                {
                    p28 += rb281.Value + " , ";
                }
                if (rb282.Checked == true)
                {
                    p28 += rb282.Value + " , ";
                }
                if (rb283.Checked == true)
                {
                    p28 += rb283.Value + " , ";
                }
                if (rb284.Checked == true)
                {
                    p28 += rb284.Value + " , ";
                }
                if (rb28Otro.Checked == true)
                {
                    p28 += txt28.Value + " , ";
                }
                objInfo.BigData2 = p28;

                string p29 = "";
                if (rb291.Checked == true)
                {
                    p29 += rb291.Value + " , ";
                }
                if (rb292.Checked == true)
                {
                    p29 += rb292.Value + " , ";
                }
                if (rb293.Checked == true)
                {
                    p29 += rb293.Value + " , ";
                }
                if (rb294.Checked == true)
                {
                    p29 += rb294.Value + " , ";
                }
                if (rb29Otro.Checked == true)
                {
                    p29 += txt29.Value + " , ";
                }
                objInfo.MatematicaFinanciera2 = p29;

                string p30 = "";
                if (rb301.Checked == true)
                {
                    p30 += rb301.Value + " , ";
                }
                if (rb302.Checked == true)
                {
                    p30 += rb302.Value + " , ";
                }
                if (rb303.Checked == true)
                {
                    p30 += rb303.Value + " , ";
                }
                if (rb304.Checked == true)
                {
                    p30 += rb304.Value + " , ";
                }
                if (rb30Otro.Checked == true)
                {
                    p30 += txt30.Value + " , ";
                }
                objInfo.Ciberseguridad2 = p30;

                string p31 = "";
                if (rb311.Checked == true)
                {
                    p31 += rb311.Value + " , ";
                }
                if (rb312.Checked == true)
                {
                    p31 += rb312.Value + " , ";
                }
                if (rb313.Checked == true)
                {
                    p31 += rb313.Value + " , ";
                }
                if (rb314.Checked == true)
                {
                    p31 += rb314.Value + " , ";
                }
                if (rb31Otro.Checked == true)
                {
                    p31 += txt31.Value + " , ";
                }
                objInfo.PrevencionLavadoActivos2 = p31;

                string p32 = "";
                if (rb321.Checked == true)
                {
                    p32 += rb321.Value + " , ";
                }
                if (rb322.Checked == true)
                {
                    p32 += rb322.Value + " , ";
                }
                if (rb323.Checked == true)
                {
                    p32 += rb323.Value + " , ";
                }
                if (rb324.Checked == true)
                {
                    p32 += rb324.Value + " , ";
                }
                if (rb32Otro.Checked == true)
                {
                    p32 += txt32.Value + " , ";
                }
                objInfo.RegulacionDerechoFinanciero2 = p32;

                string p33 = "";
                if (rb331.Checked == true)
                {
                    p33 += rb331.Value + " , ";
                }
                if (rb332.Checked == true)
                {
                    p33 += rb332.Value + " , ";
                }
                if (rb333.Checked == true)
                {
                    p33 += rb333.Value + " , ";
                }
                if (rb334.Checked == true)
                {
                    p33 += rb334.Value + " , ";
                }
                if (rb33Otro.Checked == true)
                {
                    p33 += txt33.Value + " , ";
                }
                objInfo.GestionFideicomisos2 = p33;

                string p34 = "";
                if (rb341.Checked == true)
                {
                    p34 += rb341.Value + " , ";
                }
                if (rb342.Checked == true)
                {
                    p34 += rb342.Value + " , ";
                }
                if (rb343.Checked == true)
                {
                    p34 += rb343.Value + " , ";
                }
                if (rb344.Checked == true)
                {
                    p34 += rb344.Value + " , ";
                }
                if (rb34Otro.Checked == true)
                {
                    p34 += txt34.Value + " , ";
                }
                objInfo.GobiernoCorporativo2 = p34;

                string p35 = "";
                if (txt35.Value != "")
                {
                    p35 += txt35.Value + " , ";
                }
                if (rb351.Checked == true)
                {
                    p35 += rb351.Value + " , ";
                }
                if (rb352.Checked == true)
                {
                    p35 += rb352.Value + " , ";
                }
                if (rb353.Checked == true)
                {
                    p35 += rb353.Value + " , ";
                }
                if (rb354.Checked == true)
                {
                    p35 += rb354.Value + " , ";
                }

                objInfo.Otros2 = p35;

                string p36 = "";
                if (txt36.Value != "")
                {
                    p36 += txt36.Value + " , ";
                }
                if (rb361.Checked == true)
                {
                    p36 += rb361.Value + " , ";
                }
                if (rb362.Checked == true)
                {
                    p36 += rb362.Value + " , ";
                }
                if (rb363.Checked == true)
                {
                    p36 += rb363.Value + " , ";
                }
                if (rb364.Checked == true)
                {
                    p36 += rb364.Value + " , ";
                }

                objInfo.ModelosEconometricos2 = p36;

                string p37 = "";
                if (txt37.Value != "")
                {
                    p37 += txt37.Value + " , ";
                }
                if (rb371.Checked == true)
                {
                    p37 += rb371.Value + " , ";
                }
                if (rb372.Checked == true)
                {
                    p37 += rb372.Value + " , ";
                }
                if (rb373.Checked == true)
                {
                    p37 += rb373.Value + " , ";
                }
                if (rb374.Checked == true)
                {
                    p37 += rb374.Value + " , ";
                }

                objInfo.TransformacionDigital2 = p37;
                #endregion

                #region Pregunta 3

                if (rc11.Checked == true)
                {
                    objInfo.ConsejoDirectivo3 = rc11.Value;
                }
                else if (rc12.Checked == true)
                {
                    objInfo.ConsejoDirectivo3 = rc12.Value;
                }
                else if (rc13.Checked == true)
                {
                    objInfo.ConsejoDirectivo3 = rc13.Value;
                }
                else if (rc14.Checked == true)
                {
                    objInfo.ConsejoDirectivo3 = rc14.Value;
                }

                if (rc21.Checked == true)
                {
                    objInfo.AltaGerencia3 = rc21.Value;
                }
                else if (rc22.Checked == true)
                {
                    objInfo.AltaGerencia3 = rc22.Value;
                }
                else if (rc23.Checked == true)
                {
                    objInfo.AltaGerencia3 = rc23.Value;
                }
                else if (rc24.Checked == true)
                {
                    objInfo.AltaGerencia3 = rc24.Value;
                }

                if (rc31.Checked == true)
                {
                    objInfo.GerenciaMedia3 = rc31.Value;
                }
                else if (rc32.Checked == true)
                {
                    objInfo.GerenciaMedia3 = rc32.Value;
                }
                else if (rc33.Checked == true)
                {
                    objInfo.GerenciaMedia3 = rc33.Value;
                }
                else if (rc34.Checked == true)
                {
                    objInfo.GerenciaMedia3 = rc34.Value;
                }


                if (rc41.Checked == true)
                {
                    objInfo.EjecutivosNegocios3 = rc41.Value;
                }
                else if (rc42.Checked == true)
                {
                    objInfo.EjecutivosNegocios3 = rc42.Value;
                }
                else if (rc43.Checked == true)
                {
                    objInfo.EjecutivosNegocios3 = rc43.Value;
                }
                else if (rc44.Checked == true)
                {
                    objInfo.EjecutivosNegocios3 = rc44.Value;
                }

                if (rc51.Checked == true)
                {
                    objInfo.Otros3 = rc51.Value;
                }
                else if (rc52.Checked == true)
                {
                    objInfo.EjecutivosNegocios3 = rc52.Value;
                }
                else if (rc53.Checked == true)
                {
                    objInfo.EjecutivosNegocios3 = rc53.Value;
                }
                else if (rc54.Checked == true)
                {
                    objInfo.EjecutivosNegocios3 = rc54.Value;
                }
                #endregion

                #region Pregunta 4
                //Pregunta 4
                string d21 = "";
                if (rd211.Checked == true)
                {
                    d21 = rd211.Value + " , ";
                }
                if (rd212.Checked == true)
                {
                    d21 += rd212.Value + " , ";
                }
                if (rd213.Checked == true)
                {
                    d21 += rd213.Value + " , ";
                }
                if (rd214.Checked == true)
                {
                    d21 += rd214.Value + " , ";
                }
                if (rd21Otro.Checked == true)
                {
                    d21 += txtOtrosD1.Value + " , ";
                }
                objInfo.CertificadoParticipacion4 = d21;

                string d22 = "";
                if (rd221.Checked == true)
                {
                    d22 = rd221.Value + " , ";
                }
                if (rd222.Checked == true)
                {
                    d22 += rd222.Value + " , ";
                }
                if (rd223.Checked == true)
                {
                    d22 += rd223.Value + " , ";
                }
                if (rd224.Checked == true)
                {
                    d22 += rd224.Value + " , ";
                }
                if (rd22Otro.Checked == true)
                {
                    d22 += txtOtrosD2.Value + " , ";
                }
                objInfo.DiplomadoNacional4 = d22;

                string d23 = "";
                if (rd231.Checked == true)
                {
                    d23 = rd231.Value + " , ";
                }
                if (rd232.Checked == true)
                {
                    d23 += rd232.Value + " , ";
                }
                if (rd233.Checked == true)
                {
                    d23 += rd233.Value + " , ";
                }
                if (rd234.Checked == true)
                {
                    d23 += rd234.Value + " , ";
                }
                if (rd23Otro.Checked == true)
                {
                    d23 += txtOtrosD3.Value + " , ";
                }
                objInfo.CertificacionAcreditacionInternacional4 = d23;

                string d24 = "";
                if (rd241.Checked == true)
                {
                    d24 = rd241.Value + " , ";
                }
                if (rd242.Checked == true)
                {
                    d24 += rd242.Value + " , ";
                }
                if (rd243.Checked == true)
                {
                    d24 += rd243.Value + " , ";
                }
                if (rd244.Checked == true)
                {
                    d24 += rd244.Value + " , ";
                }
                if (rd24Otro.Checked == true)
                {
                    d24 += txtOtrosD4.Value + " , ";
                }
                objInfo.MaestriaFinanzasConcentracionRiesgosIngenieriaFinan4 = d24;



                #endregion

                #region Pregunta 5
                //Pregunta 5
                string e21 = "";
                if (re211.Checked == true)
                {
                    e21 = re211.Value + " , ";
                }
                if (re212.Checked == true)
                {
                    e21 += re212.Value + " , ";
                }
                if (re213.Checked == true)
                {
                    e21 += re213.Value + " , ";
                }
                if (re214.Checked == true)
                {
                    e21 += re214.Value + " , ";
                }
                if (re21Otro.Checked == true)
                {
                    e21 += txtOtrosE1.Value + " , ";
                }
                objInfo.Horas2_5 = e21;

                string e22 = "";
                if (re221.Checked == true)
                {
                    e22 = re221.Value + " , ";
                }
                if (re222.Checked == true)
                {
                    e22 += re222.Value + " , ";
                }
                if (re223.Checked == true)
                {
                    e22 += re223.Value + " , ";
                }
                if (re224.Checked == true)
                {
                    e22 += re224.Value + " , ";
                }
                if (re22Otro.Checked == true)
                {
                    e22 += txtOtrosE2.Value + " , ";
                }
                objInfo.Horas10_5 = e22;

                string e23 = "";
                if (re231.Checked == true)
                {
                    e23 = re231.Value + " , ";
                }
                if (re232.Checked == true)
                {
                    e23 += re232.Value + " , ";
                }
                if (re233.Checked == true)
                {
                    e23 += re233.Value + " , ";
                }
                if (re234.Checked == true)
                {
                    e23 += re234.Value + " , ";
                }
                if (re23Otro.Checked == true)
                {
                    e23 += txtOtrosE3.Value + " , ";
                }
                objInfo.Horas20_5 = e23;

                string e24 = "";
                if (re241.Checked == true)
                {
                    e24 = re241.Value + " , ";
                }
                if (re242.Checked == true)
                {
                    e24 += re242.Value + " , ";
                }
                if (re243.Checked == true)
                {
                    e24 += re243.Value + " , ";
                }
                if (re244.Checked == true)
                {
                    e24 += re244.Value + " , ";
                }
                if (re24Otro.Checked == true)
                {
                    e24 += txtOtrosE4.Value + " , ";
                }
                objInfo.Horas40_5 = e24;

                string e25 = "";
                if (re251.Checked == true)
                {
                    e25 = re251.Value + " , ";
                }
                if (re252.Checked == true)
                {
                    e25 += re252.Value + " , ";
                }
                if (re253.Checked == true)
                {
                    e25 += re253.Value + " , ";
                }
                if (re254.Checked == true)
                {
                    e25 += re254.Value + " , ";
                }
                if (re25Otro.Checked == true)
                {
                    e25 += txtOtrosE5.Value + " , ";
                }
                objInfo.HorasMas_5 = e25;
                objInfo.Sugerencias = txtSugerencias.Value;
                #endregion
                objInfo.ID_Encuesta = 1;
                objInfo.ID_Usuario = 1;




                //string enviado = "No";

                //if (enviado == "No")
                //{
                //    enviado = "Si";
                objCtrl.InsEncuestaIntec(objInfo);


                    SendMail();

                //}
                Response.Redirect("Gracias.aspx", false);


            }
            catch (Exception ex)
            {
                throw ex;
            }
        }

        public void SendMail()
        {
            try
            {
                var fromAddress = new MailAddress("encuestasabard@gmail.com", "Encuesta Intec");
                var toAddress = new MailAddress("emedina@aba.org.do", "Elianny Medina");
                const string fromPassword = "M@nowar18";
                const string subject = "Encuesta ABA-INTEC completada";
                string body = "Encuesta completada por " + txtName.Value + " del " + cboBank.Value;

                var smtp = new SmtpClient
                {
                    Host = "smtp.gmail.com",
                    Port = 587,
                    EnableSsl = true,
                    DeliveryMethod = SmtpDeliveryMethod.Network,
                    UseDefaultCredentials = false,
                    Credentials = new NetworkCredential(fromAddress.Address, fromPassword),
                    
            };
                using (var message = new MailMessage(fromAddress, toAddress)
                {
                    Subject = subject,
                    Body = body
                })
                {
                    smtp.Send(message);
                }
            }
            catch (Exception ex)
            {
                

            }


        }



    }
}