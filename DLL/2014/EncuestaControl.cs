using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using DAL._2014.EncuestaTableAdapters;
using DAL._2014;
using System.Data;
using DAL.EncuestaIntec;

namespace BLL._2014
{
    public class EncuestaControl
    {




        private SelEncuestaTableAdapter taSelEnc_Enc;
        private DAL._2014.Encuesta.SelEncuestaDataTable dtSelEnc_Enc;

        private InsEncuesta_EncTableAdapter taInsEnc_Enc;
        private DAL._2014.Encuesta.InsEncuesta_EncDataTable dtInsEnc_Enc;

        private InsBancoTableAdapter taInsBanco;
        private DAL._2014.Encuesta.InsBancoDataTable dtInsBanco;

        private SelBancosTableAdapter taSelBanco;
        private DAL._2014.Encuesta.SelBancosDataTable dtSelBanco;

        private SelBancos_Disp_IntecTableAdapter taSelBancoDisp;
        private DAL._2014.Encuesta.SelBancos_Disp_IntecDataTable dtSelBancoDisp;

        private SelEncuestaCountTableAdapter taSelEncuestaCont;
        private DAL._2014.Encuesta.SelEncuestaCountDataTable dtSelEncuestaCont;

        private SP_EncuestaIntecTableAdapter taInsEncuesta;
        private Encuesta.SP_EncuestaIntecDataTable dtInsEncuesta;

        private SelEncuestaIntecTableAdapter taSelEncuesta;
        private Encuesta.SelEncuestaIntecDataTable dtSelEncuesta;


        public int InsEncuestaIntec(EncuestaIntecInfo I)
        {
            try
            {
                taInsEncuesta = new SP_EncuestaIntecTableAdapter();
                dtInsEncuesta = new DAL._2014.Encuesta.SP_EncuestaIntecDataTable();

                taInsEncuesta.Fill(dtInsEncuesta, I.ID_Encuesta, I.ID_Usuario, I.IP, I.Cargo, I.NombreInts, I.NombreyCargo, I.Telefono, I.Correo, I.GestionIntegralRiesgos1, I.RiesgoLiquidez1, I.RiesgoCredito1, I.RiesgoMercado1, I.RiesgoOperativo1, I.NIIFContabilidad1, I.GestionTesoreria1, I.BigData1, I.MatematicaFinanciera1, I.Ciberseguridad1, I.PrevencionLavadoActivos1, I.RegulacionDerechoFinanciero1, I.GestionFideicomisos1, I.GobiernoCorporativo1, I.Otros1, I.Otrostxt1, I.GestionIntegralRiesgos2, I.RiesgoLiquidez2, I.RiesgoCredito2, I.RiesgoMercado2, I.RiesgoOperativo2, I.NIIFContabilidad2, I.GestionTesoreria2, I.BigData2, I.MatematicaFinanciera2, I.ModelosEconometricos2, I.Ciberseguridad2, I.PrevencionLavadoActivos2, I.TransformacionDigital2, I.RegulacionDerechoFinanciero2, I.GestionFideicomisos2, I.GobiernoCorporativo2, I.Otros2, I.ConsejoDirectivo3, I.AltaGerencia3, I.GerenciaMedia3, I.EjecutivosNegocios3, I.Otros3, I.Otrostxt3, I.CertificadoParticipacion4, I.DiplomadoNacional4, I.CertificacionAcreditacionInternacional4, I.MaestriaFinanzasConcentracionRiesgosIngenieriaFinan4, I.Horas2_5, I.Horas10_5, I.Horas20_5, I.Horas40_5, I.HorasMas_5, I.Sugerencias);

            }
            catch (Exception ex)
            {
                throw ex;
            }
            return 1;
        }
        public int SelEncuestaCont(EncuestaInfo I)
        {
            try
            {
                taSelEncuestaCont = new SelEncuestaCountTableAdapter();
                dtSelEncuestaCont = new DAL._2014.Encuesta.SelEncuestaCountDataTable();

                taSelEncuestaCont.Fill(dtSelEncuestaCont, I.ID_Encuesta);

            }
            catch (Exception ex)
            {

            }
            return dtSelEncuestaCont.Rows.Count;
        }


        public DataTable SelBancoDisp(EncuestaInfo I)
        {
            try
            {
                taSelBancoDisp = new SelBancos_Disp_IntecTableAdapter();
                dtSelBancoDisp = new DAL._2014.Encuesta.SelBancos_Disp_IntecDataTable();

                taSelBancoDisp.Fill(dtSelBancoDisp, I.ID_Encuesta);

            }
            catch (Exception ex)
            {

            }
            return dtSelBancoDisp;
        }


        public DataTable SelBanco()
        {
            try
            {
                taSelBanco = new SelBancosTableAdapter();
                dtSelBanco = new DAL._2014.Encuesta.SelBancosDataTable();

                taSelBanco.Fill(dtSelBanco);

            }
            catch (Exception ex)
            {

            }
            return dtSelBanco;
        }


        public DataTable InsBanco(EncuestaInfo I)
        {
            try
            {
                taInsBanco = new InsBancoTableAdapter();
                dtInsBanco = new DAL._2014.Encuesta.InsBancoDataTable();

                taInsBanco.Fill(dtInsBanco, I.Descripcion);

            }
            catch (Exception ex)
            {

            }
            return dtInsBanco;
        }

        public DataTable InsEncuesta_Enc(EncuestaInfo I)
        {
            try
            {
                taInsEnc_Enc = new InsEncuesta_EncTableAdapter();
                dtInsEnc_Enc = new DAL._2014.Encuesta.InsEncuesta_EncDataTable();

                taInsEnc_Enc.Fill(dtInsEnc_Enc, I.Descripcion, I.Estado);

            }
            catch (Exception ex)
            {

            }
            return dtInsEnc_Enc;
        }


        public DataTable SelEncuesta_xID(EncuestaInfo I)
        {
            try
            {
                taSelEncuesta = new SelEncuestaIntecTableAdapter();
                dtSelEncuesta = new Encuesta.SelEncuestaIntecDataTable();

                taSelEncuesta.Fill(dtSelEncuesta);

            }
            catch (Exception ex)
            {

            }
            return dtSelEncuesta;
        }

        public DataTable SelEncuesta_Enc()
        {
            try
            {
                taSelEnc_Enc = new SelEncuestaTableAdapter();
                dtSelEnc_Enc = new DAL._2014.Encuesta.SelEncuestaDataTable();

                taSelEnc_Enc.Fill(dtSelEnc_Enc);

            }
            catch (Exception ex)
            {

            }
            return dtSelEnc_Enc;
        }




    }
}
