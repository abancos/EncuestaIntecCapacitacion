<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" EnableEventValidation="false" Inherits="ABA._Default" %>


<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">

    <script src="js/jquery-1.10.2.js"></script>
    <script type="text/javascript">
        var j = $.noConflict(true);
    </script>




    <script>

        function Submitar() {
            var Enviar = document.getElementById("<%= btnEnviar.ClientID %>");
            var Submit = document.getElementById("<%= btnSubmit.ClientID %>");

            Enviar.disabled = true;
            Enviar.innerText = "Enviando por favor espere...."

            Submit.click();

        }



        function showhidetxt2(radio, text) {


            var text = document.getElementById(text);
            var radio = document.getElementById(radio);


            if (radio.checked == true) {
                text.hidden = false;
                text.className = "required"
            }
            else {
                text.hidden = true;
                text.className = ""
            }
        }


    </script>

    <div id="top-wizard">
        <strong>Completado <span id="location" style="display: none"></span></strong>
        <div id="progressbar"></div>
        <div class="shadow"></div>
    </div>
    <!-- end top-wizard -->

    <form name="survey_container" runat="server" method="POST">
        <div id="middle-wizard">

            <div class="step">
                <div class="row">
                    <h3 class="col-md-10">Identificación de la Institución</h3>
                    <div class="col-md-6">
                        <ul class="data-list">
                            <li>
                                <div class="styled-select">
                                    <select id="cboBank" runat="server" class="form-control required" name="country">
                                        <option value="" selected>Nombre de la Institución </option>
                                    </select>
                                </div>
                            </li>
                        </ul>
                        <ul class="data-list">

                            <li>
                                <input type="text" id="txtPhone" runat="server" class="required form-control" placeholder="Teléfono"></li>

                        </ul>
                        <ul class="data-list">
                            <li>
                                <input name="email" id="txtEmail" runat="server" class="required form-control" placeholder="Correo electrónico"></li>
                        </ul>

                    </div>
                    <!-- end col-md-6 -->

                    <div class="col-md-6">

                        <ul class="data-list">

                            <li>
                                <input type="text" name="firstname" id="txtName" runat="server" class="required form-control" placeholder="Nombre de la persona que responde"></li>

                        </ul>

                        <ul class="data-list">

                            <li>
                                <input type="text" name="firstname" id="txtCargo" runat="server" class="required form-control" placeholder="Cargo de la persona que responde"></li>

                        </ul>





                    </div>
                    <!-- end col-md-6 -->

                </div>
                <!-- end row -->

                <div class="row">
                    <div class="col-md-4 col-md-offset-4">
                        <ul class="data-list" id="terms">
                            <li>
                                <strong>¿Ha leido <a href="#" data-toggle="modal" data-target="#terms-txt">las indicaciónes</a>?</strong>
                                <label class="switch-light switch-ios ">
                                    <input type="checkbox" name="terms" class="required fix_ie8" value="Si">
                                    <span>
                                        <span class="ie8_hide">No</span>
                                        <span>Sí</span>
                                    </span>
                                    <a></a>
                                </label>
                            </li>
                        </ul>
                    </div>
                </div>

            </div>
            <!-- end step-->
            <!-- start step2-->
            <div class="step row">
                <h3>1. ¿Cuál es el grado de necesidades de capacitación que su institución tiene sobre los siguientes tópicos?</h3>
                <div class="col-md-12" style="border: 1px solid grey;">
                 <b>  Marcar la opción de su preferencia de acuerdo a la siguiente escala:</b>
                    <p><b>(0=nulo, no requiero; 1=requiero algo de capacitación; 2=máxima necesidad)</b></p>
                    <ul class="data-list floated clearfix">
                        <li style="width: 25%">
                            <label></label>
                        </li>
                        <li>
                            <label>0</label></li>
                        <li>
                            <label>1</label></li>
                        <li>
                            <label>2</label></li>
                    </ul>

                    <ul class="data-list floated clearfix">
                        <li style="width: 25%">
                            <label>Gestión Integral de Riesgos</label></li>
                        <li>
                            <input type="radio" name="r11"  runat="server" value="0" id="r110" /><label for="male"></label>
                        </li>
                        <li>
                            <input type="radio" name="r11" runat="server" value="1" id="r111" /><label for="male"></label>

                        </li>
                        <li>
                            <input type="radio" name="r11" runat="server" value="2" id="r112" /><label for="male"></label>
                        </li>
                    </ul>


                    <ul class="data-list floated clearfix">
                        <li style="width: 25%">
                            <label>
                                Riesgo de Liquidez
                            </label>
                        </li>
                        <li>
                            <input type="radio" runat="server" name="r12" value="0" id="r120" /><label></label></li>
                        <li>
                            <input type="radio" runat="server" name="r12" value="1" id="r121" /><label></label></li>
                        <li>
                            <input type="radio" runat="server" name="r12" value="2" id="r122" /><label></label></li>
                    </ul>
                    <ul class="data-list floated clearfix">
                        <li style="width: 25%">
                            <label>
                                Riesgo de Crédito
                            </label>
                        </li>
                        <li>
                            <input type="radio" runat="server" name="r13" value="0" id="r130" /><label></label></li>
                        <li>
                            <input type="radio" runat="server" name="r13" value="1" id="r131" /><label></label></li>
                        <li>
                            <input type="radio" runat="server" name="r13" value="2" id="r132" /><label></label></li>
                    </ul>
                    <ul class="data-list floated clearfix">
                        <li style="width: 25%">
                            <label>
                                Riesgo de Mercado
                            </label>
                        </li>
                        <li>
                            <input type="radio" runat="server" name="r14" value="0" id="r140" /><label></label></li>
                        <li>
                            <input type="radio" runat="server" name="r14" value="1" id="r141" /><label></label></li>
                        <li>
                            <input type="radio" runat="server" name="r14" value="2" id="r142" /><label></label></li>
                    </ul>
                    <ul class="data-list floated clearfix">
                        <li style="width: 25%">
                            <label>
                                Riesgo Operativo
                            </label>
                        </li>
                        <li>
                            <input type="radio" runat="server" name="r15" value="0" id="r150" /><label></label></li>
                        <li>
                            <input type="radio" runat="server" name="r15" value="1" id="r151" /><label></label></li>
                        <li>
                            <input type="radio" runat="server" name="r15" value="2" id="r152" /><label></label></li>
                    </ul>
                    <ul class="data-list floated clearfix">
                        <li style="width: 25%">
                            <label>
                                NIIF/Contabilidad
                            </label>
                        </li>
                        <li>
                            <input type="radio" runat="server" name="r16" value="0" id="r160" /><label></label></li>
                        <li>
                            <input type="radio" runat="server" name="r16" value="1" id="r161" /><label></label></li>
                        <li>
                            <input type="radio" runat="server" name="r16" value="2" id="r162" /><label></label></li>
                    </ul>

                    <ul class="data-list floated clearfix">
                        <li style="width: 25%">
                            <label>
                                Gestión Tesorería
                            </label>
                        </li>
                        <li>
                            <input type="radio" runat="server" name="r17" value="0" id="r170" /><label></label></li>
                        <li>
                            <input type="radio" runat="server" name="r17" value="1" id="r171" /><label></label></li>
                        <li>
                            <input type="radio" runat="server" name="r17" value="2" id="r172" /><label></label></li>
                    </ul>
                    <ul class="data-list floated clearfix">
                        <li style="width: 25%">
                            <label>
                                Análisis de Datos (Big data)
                            </label>
                        </li>
                        <li>
                            <input type="radio" runat="server" name="r18" value="0" id="r180" /><label></label></li>
                        <li>
                            <input type="radio" runat="server" name="r18" value="1" id="r181" /><label></label></li>
                        <li>
                            <input type="radio" runat="server" name="r18" value="2" id="r182" /><label></label></li>
                    </ul>
                    <ul class="data-list floated clearfix">
                        <li style="width: 25%">
                            <label>
                                Matemática Financiera
                            </label>
                        </li>
                        <li>
                            <input type="radio" runat="server" name="r19" value="0" id="r190" /><label></label></li>
                        <li>
                            <input type="radio" runat="server" name="r19" value="1" id="r191" /><label></label></li>
                        <li>
                            <input type="radio" runat="server" name="r19" value="2" id="r192" /><label></label></li>
                    </ul>
                    <ul class="data-list floated clearfix">
                        <li style="width: 25%">
                            <label>
                                Ciberseguridad
                            </label>
                        </li>
                        <li>
                            <input type="radio" runat="server" name="r120" value="0" id="r1200" /><label></label></li>
                        <li>
                            <input type="radio" runat="server" name="r120" value="1" id="r1201" /><label></label></li>
                        <li>
                            <input type="radio" runat="server" name="r120" value="2" id="r1202" /><label></label></li>
                    </ul>
                    <ul class="data-list floated clearfix">
                        <li style="width: 25%">
                            <label>
                                Prevención de Lavado de Activos
                            </label>
                        </li>
                        <li>
                            <input type="radio" runat="server" name="r121" value="0" id="r1210" /><label></label></li>
                        <li>
                            <input type="radio" runat="server" name="r121" value="1" id="r1211" /><label></label></li>
                        <li>
                            <input type="radio" runat="server" name="r121" value="2" id="r1212" /><label></label></li>
                    </ul>
                    <ul class="data-list floated clearfix">
                        <li style="width: 25%">
                            <label>
                                Regulación/Derecho Financiero
                            </label>
                        </li>
                        <li>
                            <input type="radio" runat="server" name="r122" value="0" id="r1220" /><label></label></li>
                        <li>
                            <input type="radio" runat="server" name="r122" value="1" id="r1221" /><label></label></li>
                        <li>
                            <input type="radio" runat="server" name="r122" value="2" id="r1222" /><label></label></li>
                    </ul>
                    <ul class="data-list floated clearfix">
                        <li style="width: 25%">
                            <label>
                                Gestión de Fideicomisos
                            </label>
                        </li>
                        <li>
                            <input type="radio" runat="server" name="r123" value="0" id="r1230" /><label></label></li>
                        <li>
                            <input type="radio" runat="server" name="r123" value="1" id="r1231" /><label></label></li>
                        <li>
                            <input type="radio" runat="server" name="r123" value="2" id="r1232" /><label></label></li>
                    </ul>
                    <ul class="data-list floated clearfix">
                        <li style="width: 25%">
                            <label>
                                Gobierno Corporativo
                            </label>
                        </li>
                        <li>
                            <input type="radio" runat="server" name="r124" value="0" id="r1240" /><label></label></li>
                        <li>
                            <input type="radio" runat="server" name="r124" value="1" id="r1241" /><label></label></li>
                        <li>
                            <input type="radio" runat="server" name="r124" value="2" id="r1242" /><label></label></li>
                    </ul>
                    <ul class="data-list floated clearfix">
                        <li style="width: 25%">
                            <label>
                                Otros:
                            </label>
                            <input type="text" placeholder="Por favor detallar" id="txt126" runat="server" />
                        </li>
                        <li>
                            <input type="radio" runat="server" name="r125" value="0" id="r1251" /><label></label></li>
                        <li>
                            <input type="radio" runat="server" name="r125" value="1" id="r1252" /><label></label></li>
                        <li>
                            <input type="radio" runat="server" name="r125" value="2" id="r1253" /><label></label></li>
                    </ul>
                    <br />
                </div>

            </div>
           
            <div class="step row" id="b1">
                <h3>2. De las áreas arriba mencionadas, ¿a qué grupo de ejecutivos iría dirigida la capacitación?</h3>
                <div class="col-md-12" style="border: 1px solid grey;">

                    <p><b>Marcar la opción de su preferencia : </b></p>
                    <ul class="data-list floated clearfix">
                        <li style="width: 20%">
                            <label></label>
                        </li>
                        <li>
                            <label>Consejo Directivo</label></li>
                        <li>
                            <label>Alta Gerencia</label></li>
                        <li>
                            <label>Gerencia Media</label></li>
                        <li>
                            <label>Ejecutivos de Negocios</label></li>
                        <li>
                            <label>Otros</label></li>

                    </ul>
                    <ul class="data-list floated clearfix">
                        <li style="width: 20%">
                            <label>Gestión Integral de Riesgos</label></li>
                        <li class="center">
                            <input type="checkbox" runat="server" name="rb21" value="Consejo Directivo" id="rb211" onclick="showhidetxt2('MainContent_rb21Otro', 'MainContent_txt21')" /></li>
                        <li class="center">
                            <input type="checkbox" runat="server" name="rb21" value="Alta Gerencia" id="rb212" onclick="showhidetxt2('MainContent_rb21Otro', 'MainContent_txt21')" /></li>
                        <li class="center">
                            <input type="checkbox" runat="server" name="rb21" value="Gerencia Media" id="rb213" onclick="showhidetxt2('MainContent_rb21Otro', 'MainContent_txt21')" /></li>
                        <li class="center">
                            <input type="checkbox" runat="server" name="rb21" value="Ejecutivos de Negocios" id="rb214" onclick="showhidetxt2('MainContent_rb21Otro', 'MainContent_txt21')" /></li>
                        <li style="display: inline; width: 20%;">
                            <input type="checkbox" runat="server" name="rb21" value="otro" id="rb21Otro" onclick="showhidetxt2('MainContent_rb21Otro', 'MainContent_txt21')" />
                            <input type="text" id="txt21" hidden="hidden" runat="server" size="15" placeholder="Por favor detallar" /></li>
                    </ul>
                    <ul class="data-list floated clearfix">
                        <li style="width: 20%">
                            <label>Riesgo de Liquidez</label></li>
                        <li class="center">
                            <input type="checkbox" runat="server" name="rb22" value="Consejo Directivo" id="rb221" onclick="showhidetxt2('MainContent_rb22Otro', 'MainContent_txt22')" /></li>
                        <li class="center">
                            <input type="checkbox" runat="server" name="rb22" value="Alta Gerencia" id="rb222" onclick="showhidetxt2('MainContent_rb22Otro', 'MainContent_txt22')" /></li>
                        <li class="center">
                            <input type="checkbox" runat="server" name="rb22" value="Gerencia Media" id="rb223" onclick="showhidetxt2('MainContent_rb22Otro', 'MainContent_txt22')" /></li>
                        <li class="center">
                            <input type="checkbox" runat="server" name="rb22" value="Ejecutivos de Negocios" id="rb224" onclick="showhidetxt2('MainContent_rb22Otro', 'MainContent_txt22')" /></li>
                        <li style="display: inline; width: 20%;">
                            <input type="checkbox" runat="server" name="rb22" value="otro" id="rb22Otro" onclick="showhidetxt2('MainContent_rb22Otro', 'MainContent_txt22');" />
                            <input type="text" id="txt22" hidden="hidden" runat="server" size="15" placeholder="Por favor detallar" /></li>
                    </ul>
                    <ul class="data-list floated clearfix">
                        <li style="width: 20%">
                            <label>Riesgo de Crédito</label></li>
                        <li class="center">
                            <input type="checkbox" runat="server" name="rb23" value="Consejo Directivo" id="rb231" onclick="showhidetxt2('MainContent_rb23Otro', 'MainContent_txt23')" /></li>
                        <li class="center">
                            <input type="checkbox" runat="server" name="rb23" value="Alta Gerencia" id="rb232" onclick="showhidetxt2('MainContent_rb23Otro', 'MainContent_txt23')" /></li>
                        <li class="center">
                            <input type="checkbox" runat="server" name="rb23" value="Gerencia Media" id="rb233" onclick="showhidetxt2('MainContent_rb23Otro', 'MainContent_txt23')" /></li>
                        <li class="center">
                            <input type="checkbox" runat="server" name="rb23" value="Ejecutivos de Negocios" id="rb234" onclick="showhidetxt2('MainContent_rb23Otro', 'MainContent_txt23')" /></li>
                        <li style="display: inline; width: 20%;">
                            <input type="checkbox" runat="server" name="rb23" value="otro" id="rb23Otro" onclick="showhidetxt2('MainContent_rb23Otro', 'MainContent_txt23');" />
                            <input type="text" id="txt23" hidden="hidden" runat="server" size="15" placeholder="Por favor detallar" /></li>
                    </ul>
                    <ul class="data-list floated clearfix">
                        <li style="width: 20%">
                            <label>Riesgo de Mercado</label></li>
                        <li class="center">
                            <input type="checkbox" runat="server" name="rb24" value="Consejo Directivo" id="rb241" onclick="showhidetxt2('MainContent_rb24Otro', 'MainContent_txt24')" /></li>
                        <li class="center">
                            <input type="checkbox" runat="server" name="rb24" value="Alta Gerencia" id="rb242" onclick="showhidetxt2('MainContent_rb24Otro', 'MainContent_txt24')" /></li>
                        <li class="center">
                            <input type="checkbox" runat="server" name="rb24" value="Gerencia Media" id="rb243" onclick="showhidetxt2('MainContent_rb24Otro', 'MainContent_txt24')" /></li>
                        <li class="center">
                            <input type="checkbox" runat="server" name="rb24" value="Ejecutivos de Negocios" id="rb244" onclick="showhidetxt2('MainContent_rb24Otro', 'MainContent_txt24')" /></li>
                        <li style="display: inline; width: 20%;">
                            <input type="checkbox" runat="server" name="rb24" value="otro" id="rb24Otro" onclick="showhidetxt2('MainContent_rb24Otro', 'MainContent_txt24');" />
                            <input type="text" id="txt24" hidden="hidden" runat="server" size="15" placeholder="Por favor detallar" /></li>
                    </ul>
                    <ul class="data-list floated clearfix">
                        <li style="width: 20%">
                            <label>Riesgo Operativo</label></li>
                        <li class="center">
                            <input type="checkbox" runat="server" name="rb25" value="Consejo Directivo" id="rb251" onclick="showhidetxt2('MainContent_rb25Otro', 'MainContent_txt25')" /></li>
                        <li class="center">
                            <input type="checkbox" runat="server" name="rb25" value="Alta Gerencia" id="rb252" onclick="showhidetxt2('MainContent_rb25Otro', 'MainContent_txt25')" /></li>
                        <li class="center">
                            <input type="checkbox" runat="server" name="rb25" value="Gerencia Media" id="rb253" onclick="showhidetxt2('MainContent_rb25Otro', 'MainContent_txt25')" /></li>
                        <li class="center">
                            <input type="checkbox" runat="server" name="rb25" value="Ejecutivos de Negocios" id="rb254" onclick="showhidetxt2('MainContent_rb25Otro', 'MainContent_txt25')" /></li>
                        <li style="display: inline; width: 20%;">
                            <input type="checkbox" runat="server" name="rb25" value="otro" id="rb25Otro" onclick="showhidetxt2('MainContent_rb25Otro', 'MainContent_txt25');" />
                            <input type="text" id="txt25" hidden="hidden" runat="server" size="15" placeholder="Por favor detallar" /></li>
                    </ul>
                    <ul class="data-list floated clearfix">
                        <li style="width: 20%">
                            <label>NIIF/Contabilidad</label></li>
                        <li class="center">
                            <input type="checkbox" runat="server" name="rb26" value="Consejo Directivo" id="rb261" onclick="showhidetxt2('MainContent_rb26Otro', 'MainContent_txt26')" /></li>
                        <li class="center">
                            <input type="checkbox" runat="server" name="rb26" value="Alta Gerencia" id="rb262" onclick="showhidetxt2('MainContent_rb26Otro', 'MainContent_txt26')" /></li>
                        <li class="center">
                            <input type="checkbox" runat="server" name="rb26" value="Gerencia Media" id="rb263" onclick="showhidetxt2('MainContent_rb26Otro', 'MainContent_txt26')" /></li>
                        <li class="center">
                            <input type="checkbox" runat="server" name="rb26" value="Ejecutivos de Negocios" id="rb264" onclick="showhidetxt2('MainContent_rb26Otro', 'MainContent_txt26')" /></li>
                        <li style="display: inline; width: 20%;">
                            <input type="checkbox" runat="server" name="rb26" value="otro" id="rb26Otro" onclick="showhidetxt2('MainContent_rb26Otro', 'MainContent_txt26');" />
                            <input type="text" id="txt26" hidden="hidden" runat="server" size="15" placeholder="Por favor detallar" /></li>
                    </ul>
                    <ul class="data-list floated clearfix">
                        <li style="width: 20%">
                            <label>Gestión Tesorería</label></li>
                        <li class="center">
                            <input type="checkbox" runat="server" name="rb27" value="Consejo Directivo" id="rb271" onclick="showhidetxt2('MainContent_rb27Otro', 'MainContent_txt27')" /></li>
                        <li class="center">
                            <input type="checkbox" runat="server" name="rb27" value="Alta Gerencia" id="rb272" onclick="showhidetxt2('MainContent_rb27Otro', 'MainContent_txt27')" /></li>
                        <li class="center">
                            <input type="checkbox" runat="server" name="rb27" value="Gerencia Media" id="rb273" onclick="showhidetxt2('MainContent_rb27Otro', 'MainContent_txt27')" /></li>
                        <li class="center">
                            <input type="checkbox" runat="server" name="rb27" value="Ejecutivos de Negocios" id="rb274" onclick="showhidetxt2('MainContent_rb27Otro', 'MainContent_txt27')" /></li>
                        <li style="display: inline; width: 20%;">
                            <input type="checkbox" runat="server" name="rb27" value="otro" id="rb27Otro" onclick="showhidetxt2('MainContent_rb27Otro', 'MainContent_txt27');" />
                            <input type="text" id="txt27" hidden="hidden" runat="server" size="15" placeholder="Por favor detallar" /></li>
                    </ul>
                    <ul class="data-list floated clearfix">
                        <li style="width: 20%">
                            <label>Análisis de Datos (Big data)</label></li>
                        <li class="center">
                            <input type="checkbox" runat="server" name="rb28" value="Consejo Directivo" id="rb281" onclick="showhidetxt2('MainContent_rb28Otro', 'MainContent_txt28')" /></li>
                        <li class="center">
                            <input type="checkbox" runat="server" name="rb28" value="Alta Gerencia" id="rb282" onclick="showhidetxt2('MainContent_rb28Otro', 'MainContent_txt28')" /></li>
                        <li class="center">
                            <input type="checkbox" runat="server" name="rb28" value="Gerencia Media" id="rb283" onclick="showhidetxt2('MainContent_rb28Otro', 'MainContent_txt28')" /></li>
                        <li class="center">
                            <input type="checkbox" runat="server" name="rb28" value="Ejecutivos de Negocios" id="rb284" onclick="showhidetxt2('MainContent_rb28Otro', 'MainContent_txt28')" /></li>
                        <li style="display: inline; width: 20%;">
                            <input type="checkbox" runat="server" name="rb28" value="otro" id="rb28Otro" onclick="showhidetxt2('MainContent_rb28Otro', 'MainContent_txt28');" />
                            <input type="text" id="txt28" hidden="hidden" runat="server" size="15" placeholder="Por favor detallar" /></li>
                    </ul>
                    <ul class="data-list floated clearfix">
                        <li style="width: 20%">
                            <label>Matemática Financiera</label></li>
                        <li class="center">
                            <input type="checkbox" runat="server" name="rb29" value="Consejo Directivo" id="rb291" onclick="showhidetxt2('MainContent_rb29Otro', 'MainContent_txt29')" /></li>
                        <li class="center">
                            <input type="checkbox" runat="server" name="rb29" value="Alta Gerencia" id="rb292" onclick="showhidetxt2('MainContent_rb29Otro', 'MainContent_txt29')" /></li>
                        <li class="center">
                            <input type="checkbox" runat="server" name="rb29" value="Gerencia Media" id="rb293" onclick="showhidetxt2('MainContent_rb29Otro', 'MainContent_txt29')" /></li>
                        <li class="center">
                            <input type="checkbox" runat="server" name="rb29" value="Ejecutivos de Negocios" id="rb294" onclick="showhidetxt2('MainContent_rb29Otro', 'MainContent_txt29')" /></li>
                        <li style="display: inline; width: 20%;">
                            <input type="checkbox" runat="server" name="rb29" value="otro" id="rb29Otro" onclick="showhidetxt2('MainContent_rb29Otro', 'MainContent_txt29');" />
                            <input type="text" id="txt29" hidden="hidden" runat="server" size="15" placeholder="Por favor detallar" /></li>
                    </ul>
                    <ul class="data-list floated clearfix">
                        <li style="width: 20%">
                            <label>Ciberseguridad</label></li>
                        <li class="center">
                            <input type="checkbox" runat="server" name="rb30" value="Consejo Directivo" id="rb301" onclick="showhidetxt2('MainContent_rb30Otro', 'MainContent_txt30')" /></li>
                        <li class="center">
                            <input type="checkbox" runat="server" name="rb30" value="Alta Gerencia" id="rb302" onclick="showhidetxt2('MainContent_rb30Otro', 'MainContent_txt30')" /></li>
                        <li class="center">
                            <input type="checkbox" runat="server" name="rb30" value="Gerencia Media" id="rb303" onclick="showhidetxt2('MainContent_rb30Otro', 'MainContent_txt30')" /></li>
                        <li class="center">
                            <input type="checkbox" runat="server" name="rb30" value="Ejecutivos de Negocios" id="rb304" onclick="showhidetxt2('MainContent_rb30Otro', 'MainContent_txt30')" /></li>
                        <li style="display: inline; width: 20%;">
                            <input type="checkbox" runat="server" name="rb30" value="otro" id="rb30Otro" onclick="showhidetxt2('MainContent_rb30Otro', 'MainContent_txt30');" />
                            <input type="text" id="txt30" hidden="hidden" runat="server" size="15" placeholder="Por favor detallar" /></li>
                    </ul>
                    <ul class="data-list floated clearfix">
                        <li style="width: 20%">
                            <label>Prevención de Lavado de Activos</label></li>
                        <li class="center">
                            <input type="checkbox" runat="server" name="rb31" value="Consejo Directivo" id="rb311" onclick="showhidetxt2('MainContent_rb31Otro', 'MainContent_txt31')" /></li>
                        <li class="center">
                            <input type="checkbox" runat="server" name="rb31" value="Alta Gerencia" id="rb312" onclick="showhidetxt2('MainContent_rb31Otro', 'MainContent_txt31')" /></li>
                        <li class="center">
                            <input type="checkbox" runat="server" name="rb31" value="Gerencia Media" id="rb313" onclick="showhidetxt2('MainContent_rb31Otro', 'MainContent_txt31')" /></li>
                        <li class="center">
                            <input type="checkbox" runat="server" name="rb31" value="Ejecutivos de Negocios" id="rb314" onclick="showhidetxt2('MainContent_rb31Otro', 'MainContent_txt31')" /></li>
                        <li style="display: inline; width: 20%;">
                            <input type="checkbox" runat="server" name="rb31" value="otro" id="rb31Otro" onclick="showhidetxt2('MainContent_rb31Otro', 'MainContent_txt31');" />
                            <input type="text" id="txt31" hidden="hidden" runat="server" size="15" placeholder="Por favor detallar" /></li>
                    </ul>
                    <ul class="data-list floated clearfix">
                        <li style="width: 20%">
                            <label>Regulación/Derecho Financiero</label></li>
                        <li class="center">
                            <input type="checkbox" runat="server" name="rb32" value="Consejo Directivo" id="rb321" onclick="showhidetxt2('MainContent_rb32Otro', 'MainContent_txt32')" /></li>
                        <li class="center">
                            <input type="checkbox" runat="server" name="rb32" value="Alta Gerencia" id="rb322" onclick="showhidetxt2('MainContent_rb32Otro', 'MainContent_txt32')" /></li>
                        <li class="center">
                            <input type="checkbox" runat="server" name="rb32" value="Gerencia Media" id="rb323" onclick="showhidetxt2('MainContent_rb32Otro', 'MainContent_txt32')" /></li>
                        <li class="center">
                            <input type="checkbox" runat="server" name="rb32" value="Ejecutivos de Negocios" id="rb324" onclick="showhidetxt2('MainContent_rb32Otro', 'MainContent_txt32')" /></li>
                        <li style="display: inline; width: 20%;">
                            <input type="checkbox" runat="server" name="rb32" value="otro" id="rb32Otro" onclick="showhidetxt2('MainContent_rb32Otro', 'MainContent_txt32');" />
                            <input type="text" id="txt32" hidden="hidden" runat="server" size="15" placeholder="Por favor detallar" /></li>
                    </ul>
                    <ul class="data-list floated clearfix">
                        <li style="width: 20%">
                            <label>Gestión de Fideicomisos</label></li>
                        <li class="center">
                            <input type="checkbox" runat="server" name="rb33" value="Consejo Directivo" id="rb331" onclick="showhidetxt2('MainContent_rb33Otro', 'MainContent_txt33')" /></li>
                        <li class="center">
                            <input type="checkbox" runat="server" name="rb33" value="Alta Gerencia" id="rb332" onclick="showhidetxt2('MainContent_rb33Otro', 'MainContent_txt33')" /></li>
                        <li class="center">
                            <input type="checkbox" runat="server" name="rb33" value="Gerencia Media" id="rb333" onclick="showhidetxt2('MainContent_rb33Otro', 'MainContent_txt33')" /></li>
                        <li class="center">
                            <input type="checkbox" runat="server" name="rb33" value="Ejecutivos de Negocios" id="rb334" onclick="showhidetxt2('MainContent_rb33Otro', 'MainContent_txt33')" /></li>
                        <li style="display: inline; width: 20%;">
                            <input type="checkbox" runat="server" name="rb33" value="otro" id="rb33Otro" onclick="showhidetxt2('MainContent_rb33Otro', 'MainContent_txt33');" />
                            <input type="text" id="txt33" hidden="hidden" runat="server" size="15" placeholder="Por favor detallar" /></li>
                    </ul>
                    <ul class="data-list floated clearfix">
                        <li style="width: 20%">
                            <label>Gobierno Corporativo</label></li>
                        <li class="center">
                            <input type="checkbox" runat="server" name="rb34" value="Consejo Directivo" id="rb341" onclick="showhidetxt2('MainContent_rb34Otro', 'MainContent_txt34')" /></li>
                        <li class="center">
                            <input type="checkbox" runat="server" name="rb34" value="Alta Gerencia" id="rb342" onclick="showhidetxt2('MainContent_rb34Otro', 'MainContent_txt34')" /></li>
                        <li class="center">
                            <input type="checkbox" runat="server" name="rb34" value="Gerencia Media" id="rb343" onclick="showhidetxt2('MainContent_rb34Otro', 'MainContent_txt34')" /></li>
                        <li class="center">
                            <input type="checkbox" runat="server" name="rb34" value="Ejecutivos de Negocios" id="rb344" onclick="showhidetxt2('MainContent_rb34Otro', 'MainContent_txt34')" /></li>
                        <li style="display: inline; width: 20%;">
                            <input type="checkbox" runat="server" name="rb34" value="otro" id="rb34Otro" onclick="showhidetxt2('MainContent_rb34Otro', 'MainContent_txt34');" />
                            <input type="text" id="txt34" hidden="hidden" runat="server" size="15" placeholder="Por favor detallar" /></li>
                    </ul>
                    <ul class="data-list floated clearfix">
                        <li style="width: 20%">
                            <label>
                                Otros:
                            </label>
                            <input type="text" placeholder="Por favor detallar" size="15" id="txt35" runat="server" />
                        <li class="center">
                            <input type="checkbox" runat="server" name="rb35" value="Consejo Directivo" id="rb351" onclick="showhidetxt2('MainContent_rb34Otro', 'MainContent_txt34')" /></li>
                        <li class="center">
                            <input type="checkbox" runat="server" name="rb35" value="Alta Gerencia" id="rb352" onclick="showhidetxt2('MainContent_rb34Otro', 'MainContent_txt34')" /></li>
                        <li class="center">
                            <input type="checkbox" runat="server" name="rb35" value="Gerencia Media" id="rb353" onclick="showhidetxt2('MainContent_rb34Otro', 'MainContent_txt34')" /></li>
                        <li class="center">
                            <input type="checkbox" runat="server" name="rb35" value="Ejecutivos de Negocios" id="rb354" onclick="showhidetxt2('MainContent_rb34Otro', 'MainContent_txt34')" /></li>
                        <li style="display: inline; width: 20%;">
                            </li>
                    </ul>
                    <br />
                </div>

            </div>
            <!-- end step b1-->

            <!--- sin cambio step 3 -->
            <!-- B -->


            <div class="step row" id="b2">
                <h3>3. Según el grupo de ejecutivos ¿qué modalidad de capacitación prefiere?</h3>
                <div class="col-md-12" style="border: 1px solid grey;">
                    <p><b>Marcar la opción de su preferencia:</b></p>
                    <ul class="data-list floated clearfix">
                        <li style="width: 20%">
                            <label></label>
                        </li>
                        <li style="width: 20%">
                            <label>En instalaciones del Banco</label></li>
                        <li>
                            <label>En INTEC</label></li>
                        <li>
                            <label>En ABA</label></li>
                        <li>
                            <label>Virtual</label></li>
                    </ul>

                    <ul class="data-list floated clearfix">
                        <li style="width: 20%">
                            <label>Consejo directivo</label></li>
                        <li class="center">
                            <input type="radio" name="rc1" runat="server"  value="En instalaciones del Banco" id="rc11" />
                        </li>
                        <li class="center">
                            <input type="radio" name="rc1" runat="server" value="En INTEC" id="rc12" />
                        </li>
                        <li class="center">
                            <input type="radio" name="rc1" runat="server" value="En ABA" id="rc13" />
                        </li>
                        <li class="center">
                            <input type="radio" name="rc1" runat="server" value="Virtual" id="rc14" />
                        </li>
                    </ul>
                    <ul class="data-list floated clearfix">
                        <li style="width: 20%">
                            <label>Alta Gerencia</label></li>
                        <li
                            class="center">
                            <input type="radio" name="rc2" runat="server"  value="En instalaciones del Banco" id="rc21" />
                        </li>
                        <li class="center">
                            <input type="radio" name="rc2" runat="server" value="En INTEC" id="rc22" />
                        </li>
                        <li class="center">
                            <input type="radio" name="rc2" runat="server" value="En ABA" id="rc23" />
                        </li>
                        <li class="center">
                            <input type="radio" name="rc2" runat="server" value="Virtual" id="rc24" />
                        </li>
                    </ul>
                    <ul class="data-list floated clearfix">
                        <li style="width: 20%">
                            <label>Gerencia Media</label></li>
                        <li class="center">
                            <input type="radio" name="rc3" runat="server"  value="En instalaciones del Banco" id="rc31" />
                        </li>
                        <li class="center">
                            <input type="radio" name="rc3" runat="server" value="En INTEC" id="rc32" />
                        </li>
                        <li class="center">
                            <input type="radio" name="rc3" runat="server" value="En ABA" id="rc33" />
                        </li>
                        <li class="center">
                            <input type="radio" name="rc3" runat="server" value="Virtual" id="rc34" />
                        </li>
                    </ul>
                    <ul class="data-list floated clearfix">
                        <li style="width: 20%">
                            <label>Ejecutivos de Negocios</label></li>
                        <li class="center">
                            <input type="radio" name="rc4" runat="server"  value="En instalaciones del Banco" id="rc41" />
                        </li>
                        <li class="center">
                            <input type="radio" name="rc4" runat="server" value="En INTEC" id="rc42" />
                        </li>
                        <li class="center">
                            <input type="radio" name="rc4" runat="server" value="En ABA" id="rc43" />
                        </li>
                        <li class="center">
                            <input type="radio" name="rc4" runat="server" value="Virtual" id="rc44" />
                        </li>
                    </ul>
                    <ul class="data-list floated clearfix">
                        <li style="width: 20%">
                            <label>Otros</label></li>
                        <li class="center">
                            <input type="radio" name="rc5" runat="server"  value="En instalaciones del Banco" id="rc51" />
                        </li>
                        <li class="center">
                            <input type="radio" name="rc5" runat="server" value="En INTEC" id="rc52" />
                        </li>
                        <li class="center">
                            <input type="radio" name="rc5" runat="server" value="En ABA" id="rc53" />
                        </li>
                        <li class="center">
                            <input type="radio" name="rc5" runat="server" value="Virtual" id="rc54" />
                        </li>
                    </ul>
                    <br />
                </div>

            </div>



            <div class="step row" id="b3">
                <h3>4. Según el grupo de ejecutivos ¿qué tipo de certificación/acreditación desearía obtener? </h3>
                <div class="col-md-10" style="border: 1px solid grey;">

                    <p><b>Marcar la opción de su preferencia : </b></p>
                    <ul class="data-list floated clearfix">
                        <li style="width: 20%">
                            <label></label>
                        </li>
                        <li>
                            <label>Consejo Directivo</label></li>
                        <li>
                            <label>Alta Gerencia</label></li>
                        <li>
                            <label>Gerencia Media</label></li>
                        <li>
                            <label>Ejecutivos de Negocios</label></li>
                        <li>
                            <label>Otros</label></li>

                    </ul>
                    <ul class="data-list floated clearfix">
                        <li style="width: 20%">
                            <label>Certificado de Participación (sin acreditación)</label></li>
                        <li class="center">
                            <input type="checkbox" runat="server"  name="rd21" value="Consejo Directivo" id="rd211" onclick="showhidetxt2('MainContent_rd21Otro', 'MainContent_txtOtrosD1')" /></li>
                        <li class="center">
                            <input type="checkbox" runat="server" name="rd21" value="Alta Gerencia" id="rd212" onclick="showhidetxt2('MainContent_rd21Otro', 'MainContent_txtOtrosD1')" /></li>
                        <li class="center">
                            <input type="checkbox" runat="server" name="rd21" value="Gerencia Media" id="rd213" onclick="showhidetxt2('MainContent_rd21Otro', 'MainContent_txtOtrosD1')" /></li>
                        <li class="center">
                            <input type="checkbox" runat="server" name="rd21" value="Ejecutivos de Negocios" id="rd214" onclick="showhidetxt2('MainContent_rd21Otro', 'MainContent_txtOtrosD1')" /></li>
                        <li style="display: inline; width: 20%;">
                            <input type="checkbox" runat="server" name="rd21" value="otro" id="rd21Otro" onclick="showhidetxt2('MainContent_rd21Otro', 'MainContent_txtOtrosD1')" />
                            <input type="text" id="txtOtrosD1" hidden="hidden" runat="server" size="15" placeholder="Por favor detallar" /></li>
                    </ul>
                    <ul class="data-list floated clearfix">
                        <li style="width: 20%">
                            <label>Diplomado acreditado con entidad nacional</label></li>
                        <li class="center">
                            <input type="checkbox" runat="server"  name="rd22" value="Consejo Directivo" id="rd221" onclick="showhidetxt2('MainContent_rd22Otro', 'MainContent_txtOtrosD2')" /></li>
                        <li class="center">
                            <input type="checkbox" runat="server" name="rd22" value="Alta Gerencia" id="rd222" onclick="showhidetxt2('MainContent_rd22Otro', 'MainContent_txtOtrosD2')" /></li>
                        <li class="center">
                            <input type="checkbox" runat="server" name="rd22" value="Gerencia Media" id="rd223" onclick="showhidetxt2('MainContent_rd22Otro', 'MainContent_txtOtrosD2')" /></li>
                        <li class="center">
                            <input type="checkbox" runat="server" name="rd22" value="Ejecutivos de Negocios" id="rd224" onclick="showhidetxt2('MainContent_rd22Otro', 'MainContent_txtOtrosD2')" /></li>
                        <li style="display: inline; width: 20%;">
                            <input type="checkbox" runat="server" name="rd22" value="otro" id="rd22Otro" onclick="showhidetxt2('MainContent_rd22Otro', 'MainContent_txtOtrosD2');" />
                            <input type="text" id="txtOtrosD2" hidden="hidden" runat="server" size="15" placeholder="Por favor detallar" /></li>
                    </ul>
                    <ul class="data-list floated clearfix">
                        <li style="width: 20%">
                            <label>Diplomado acreditado con entidad internacional</label></li>
                        <li class="center">
                            <input type="checkbox" runat="server"  name="rd23" value="Consejo Directivo" id="rd231" onclick="showhidetxt2('MainContent_rd23Otro', 'MainContent_txtOtrosD3')" /></li>
                        <li class="center">
                            <input type="checkbox" runat="server" name="rd23" value="Alta Gerencia" id="rd232" onclick="showhidetxt2('MainContent_rd23Otro', 'MainContent_txtOtrosD3')" /></li>
                        <li class="center">
                            <input type="checkbox" runat="server" name="rd23" value="Gerencia Media" id="rd233" onclick="showhidetxt2('MainContent_rd23Otro', 'MainContent_txtOtrosD3')" /></li>
                        <li class="center">
                            <input type="checkbox" runat="server" name="rd23" value="Ejecutivos de Negocios" id="rd234" onclick="showhidetxt2('MainContent_rd23Otro', 'MainContent_txtOtrosD3')" /></li>
                        <li style="display: inline; width: 20%;">
                            <input type="checkbox" runat="server" name="rd23" value="otro" id="rd23Otro" onclick="showhidetxt2('MainContent_rd23Otro', 'MainContent_txtOtrosD3');" />
                            <input type="text" id="txtOtrosD3" hidden="hidden" runat="server" size="15" placeholder="Por favor detallar" /></li>
                    </ul>
                    <ul class="data-list floated clearfix">
                        <li style="width: 20%">
                            <label>Certificado de Especialista con acreditación nacional</label></li>
                        <li class="center">
                            <input type="checkbox"  name="rd24" runat="server" value="Consejo Directivo" id="rd241" onclick="showhidetxt2('MainContent_rd24Otro', 'MainContent_txtOtrosD4')" /></li>
                        <li class="center">
                            <input type="checkbox" runat="server" name="rd24" value="Alta Gerencia" id="rd242" onclick="showhidetxt2('MainContent_rd24Otro', 'MainContent_txtOtrosD4')" /></li>
                        <li class="center">
                            <input type="checkbox" runat="server" name="rd24" value="Gerencia Media" id="rd243" onclick="showhidetxt2('MainContent_rd24Otro', 'MainContent_txtOtrosD4')" /></li>
                        <li class="center">
                            <input type="checkbox" runat="server" name="rd24" value="Ejecutivos de Negocios" id="rd244" onclick="showhidetxt2('MainContent_rd24Otro', 'MainContent_txtOtrosD4')" /></li>
                        <li style="display: inline; width: 20%;">
                            <input type="checkbox" runat="server" name="rd24" value="otro" id="rd24Otro" onclick="showhidetxt2('MainContent_rd24Otro', 'MainContent_txtOtrosD4')" />
                            <input type="text" id="txtOtrosD4" hidden="hidden" runat="server" size="15" placeholder="Por favor detallar" /></li>
                    </ul>
                    <ul class="data-list floated clearfix">
                        <li style="width: 20%">
                            <label>Certificado de Especialista con acreditación internacional</label></li>
                        <li class="center">
                            <input type="checkbox" runat="server"  name="rd25" value="Consejo Directivo" id="rd251" onclick="showhidetxt2('MainContent_rd25Otro', 'MainContent_txtOtrosD5')" /></li>
                        <li class="center">
                            <input type="checkbox" runat="server" name="rd25" value="Alta Gerencia" id="rd252" onclick="showhidetxt2('MainContent_rd25Otro', 'MainContent_txtOtrosD5')" /></li>
                        <li class="center">
                            <input type="checkbox" runat="server" name="rd25" value="Gerencia Media" id="rd253" onclick="showhidetxt2('MainContent_rd25Otro', 'MainContent_txtOtrosD5')" /></li>
                        <li class="center">
                            <input type="checkbox" runat="server" name="rd25" value="Ejecutivos de Negocios" id="rd254" onclick="showhidetxt2('MainContent_rd25Otro', 'MainContent_txtOtrosD5')" /></li>
                        <li style="display: inline; width: 20%;">
                            <input type="checkbox" runat="server" name="rd25" value="otro" id="rd25Otro" onclick="showhidetxt2('MainContent_rd25Otro', 'MainContent_txtOtrosD5');" />
                            <input type="text" id="txtOtrosD5" hidden="hidden" runat="server" size="15" placeholder="Por favor detallar" /></li>
                    </ul>
                    <ul class="data-list floated clearfix">
                        <li style="width: 20%">
                            <label>Maestría</label></li>
                        <li class="center">
                            <input type="checkbox" runat="server"  name="rd26" value="Consejo Directivo" id="rd261" onclick="showhidetxt2('MainContent_rd26Otro', 'MainContent_txtOtrosD6')" /></li>
                        <li class="center">
                            <input type="checkbox" runat="server" name="rd26" value="Alta Gerencia" id="rd262" onclick="showhidetxt2('MainContent_rd26Otro', 'MainContent_txtOtrosD6')" /></li>
                        <li class="center">
                            <input type="checkbox" runat="server" name="rd26" value="Gerencia Media" id="rd263" onclick="showhidetxt2('MainContent_rd26Otro', 'MainContent_txtOtrosD6')" /></li>
                        <li class="center">
                            <input type="checkbox" runat="server" name="rd26" value="Ejecutivos de Negocios" id="rd264" onclick="showhidetxt2('MainContent_rd26Otro', 'MainContent_txtOtrosD6')" /></li>
                        <li style="display: inline; width: 20%;">
                            <input type="checkbox" runat="server" name="rd26" value="otro" id="rd26Otro" onclick="showhidetxt2('MainContent_rd26Otro', 'MainContent_txtOtrosD6');" />
                            <input type="text" id="txtOtrosD6" hidden="hidden" runat="server" size="15" placeholder="Por favor detallar" /></li>
                    </ul>
                    <br />
                </div>
            </div>








            <div class="step row" id="b4">
                <h3>5. Según el grupo de ejecutivos ¿cuántas sesiones de 2 horas estarían dispuestos a dedicar a la capacitación?</h3>
                <div class="col-md-10" style="border: 1px solid grey;">

                    <p><b>Marcar la opción de su preferencia : </b></p>
                    <ul class="data-list floated clearfix">
                        <li style="width: 20%">
                            <label></label>
                        </li>
                        <li>
                            <label>Consejo Directivo</label></li>
                        <li>
                            <label>Alta Gerencia</label></li>
                        <li>
                            <label>Gerencia Media</label></li>
                        <li>
                            <label>Ejecutivos de Negocios</label></li>
                        <li>
                            <label>Otros</label></li>

                    </ul>
                    <ul class="data-list floated clearfix">
                        <li style="width: 20%">
                            <label>1 sesión (2 horas)</label></li>
                        <li class="center">
                            <input type="checkbox" runat="server" name="re21" value="Consejo Directivo" id="re211" onclick="showhidetxt2('MainContent_re21Otro', 'MainContent_txtOtrosE1')" /></li>
                        <li class="center">
                            <input type="checkbox" runat="server" name="re21" value="Alta Gerencia" id="re212" onclick="showhidetxt2('MainContent_re21Otro', 'MainContent_txtOtrosE1')" /></li>
                        <li class="center">
                            <input type="checkbox" runat="server" name="re21" value="Gerencia Media" id="re213" onclick="showhidetxt2('MainContent_re21Otro', 'MainContent_txtOtrosE1')" /></li>
                        <li class="center">
                            <input type="checkbox" runat="server" name="re21" value="Ejecutivos de Negocios" id="re214" onclick="showhidetxt2('MainContent_re21Otro', 'MainContent_txtOtrosE1')" /></li>
                        <li style="display: inline; width: 20%;">
                            <input type="checkbox" runat="server" name="re21" value="otro" id="re21Otro" onclick="showhidetxt2('MainContent_re21Otro', 'MainContent_txtOtrosE1')" />
                            <input type="text" id="txtOtrosE1" hidden="hidden" runat="server" size="15" placeholder="Por favor detallar" /></li>
                    </ul>
                    <ul class="data-list floated clearfix">
                        <li style="width: 20%">
                            <label>entre 1 y 5 sesiones (10 horas)</label></li>
                        <li class="center">
                            <input type="checkbox" runat="server" name="re22" value="Consejo Directivo" id="re221" onclick="showhidetxt2('MainContent_re22Otro', 'MainContent_txtOtrosE2')" /></li>
                        <li class="center">
                            <input type="checkbox" runat="server" name="re22" value="Alta Gerencia" id="re222" onclick="showhidetxt2('MainContent_re22Otro', 'MainContent_txtOtrosE2')" /></li>
                        <li class="center">
                            <input type="checkbox" runat="server" name="re22" value="Gerencia Media" id="re223" onclick="showhidetxt2('MainContent_re22Otro', 'MainContent_txtOtrosE2')" /></li>
                        <li class="center">
                            <input type="checkbox" runat="server" name="re22" value="Ejecutivos de Negocios" id="re224" onclick="showhidetxt2('MainContent_re22Otro', 'MainContent_txtOtrosE2')" /></li>
                        <li style="display: inline; width: 20%;">
                            <input type="checkbox" runat="server" name="re22" value="otro" id="re22Otro" onclick="showhidetxt2('MainContent_re22Otro', 'MainContent_txtOtrosE2');" />
                            <input type="text" id="txtOtrosE2" hidden="hidden" runat="server" size="15" placeholder="Por favor detallar" /></li>
                    </ul>
                    <ul class="data-list floated clearfix">
                        <li style="width: 20%">
                            <label>entre 5 y 10 sesiones (20 horas)</label></li>
                        <li class="center">
                            <input type="checkbox" runat="server" name="re23" value="Consejo Directivo" id="re231" onclick="showhidetxt2('MainContent_re23Otro', 'MainContent_txtOtrosE3')" /></li>
                        <li class="center">
                            <input type="checkbox" runat="server" name="re23" value="Alta Gerencia" id="re232" onclick="showhidetxt2('MainContent_re23Otro', 'MainContent_txtOtrosE3')" /></li>
                        <li class="center">
                            <input type="checkbox" runat="server" name="re23" value="Gerencia Media" id="re233" onclick="showhidetxt2('MainContent_re23Otro', 'MainContent_txtOtrosE3')" /></li>
                        <li class="center">
                            <input type="checkbox" runat="server" name="re23" value="Ejecutivos de Negocios" id="re234" onclick="showhidetxt2('MainContent_re23Otro', 'MainContent_txtOtrosE3')" /></li>
                        <li style="display: inline; width: 20%;">
                            <input type="checkbox" runat="server" name="re23" value="otro" id="re23Otro" onclick="showhidetxt2('MainContent_re23Otro', 'MainContent_txtOtrosE3');" />
                            <input type="text" id="txtOtrosE3" hidden="hidden" runat="server" size="15" placeholder="Por favor detallar" /></li>
                    </ul>
                    <ul class="data-list floated clearfix">
                        <li style="width: 20%">
                            <label>entre 10 y 20 sesiones (40 horas)</label></li>
                        <li class="center">
                            <input type="checkbox" runat="server" name="re24" value="Consejo Directivo" id="re241" onclick="showhidetxt2('MainContent_re24Otro', 'MainContent_txtOtrosE4')" /></li>
                        <li class="center">
                            <input type="checkbox" runat="server" name="re24" value="Alta Gerencia" id="re242" onclick="showhidetxt2('MainContent_re24Otro', 'MainContent_txtOtrosE4')" /></li>
                        <li class="center">
                            <input type="checkbox" runat="server" name="re24" value="Gerencia Media" id="re243" onclick="showhidetxt2('MainContent_re24Otro', 'MainContent_txtOtrosE4')" /></li>
                        <li class="center">
                            <input type="checkbox" runat="server" name="re24" value="Ejecutivos de Negocios" id="re244" onclick="showhidetxt2('MainContent_re24Otro', 'MainContent_txtOtrosE4')" /></li>
                        <li style="display: inline; width: 20%;">
                            <input type="checkbox" runat="server" name="re24" value="otro" id="re24Otro" onclick="showhidetxt2('MainContent_re24Otro', 'MainContent_txtOtrosE4')" />
                            <input type="text" id="txtOtrosE4" hidden="hidden" runat="server" size="15" placeholder="Por favor detallar" /></li>
                    </ul>
                    <ul class="data-list floated clearfix">
                        <li style="width: 20%">
                            <label>más de 20 sesiones (más de 40 horas)</label></li>
                        <li class="center">
                            <input type="checkbox" runat="server" name="re25" value="Consejo Directivo" id="re251" onclick="showhidetxt2('MainContent_re25Otro', 'MainContent_txtOtrosE5')" /></li>
                        <li class="center">
                            <input type="checkbox" runat="server" name="re25" value="Alta Gerencia" id="re252" onclick="showhidetxt2('MainContent_re25Otro', 'MainContent_txtOtrosE5')" /></li>
                        <li class="center">
                            <input type="checkbox" runat="server" name="re25" value="Gerencia Media" id="re253" onclick="showhidetxt2('MainContent_re25Otro', 'MainContent_txtOtrosE5')" /></li>
                        <li class="center">
                            <input type="checkbox" runat="server" name="re25" value="Ejecutivos de Negocios" id="re254" onclick="showhidetxt2('MainContent_re25Otro', 'MainContent_txtOtrosE5')" /></li>
                        <li style="display: inline; width: 20%;">
                            <input type="checkbox" runat="server" name="re25" value="otro" id="re25Otro" onclick="showhidetxt2('MainContent_re25Otro', 'MainContent_txtOtrosE5');" />
                            <input type="text" id="txtOtrosE5" hidden="hidden" runat="server" size="15" placeholder="Por favor detallar" /></li>
                    </ul>

                </div>

            </div>







            <!--- End Step E --->

            <div class="submit step" id="end">
                <i class="icon-check"></i>
                <h3>Por favor indique en esta sección sus sugerencias al diseño y/o a los contenidos de esta encuesta.</h3>
                <br />
                <textarea id="txtSugerencias" runat="server" rows="5" style="height: auto;" class="form-control"></textarea>
                <br />

                <button id="btnEnviar" type="button" class="submit" runat="server" onclick="Submitar()">Enviar los resultados</button>
                <asp:Button ID="btnSubmit" Style="visibility: hidden" runat="server" OnClick="btnSubmit_Click" Text="Button" />


            </div>
            <!-- end submit step -->

        </div>

        <!-- end middle-wizard -->

        <div id="bottom-wizard">
            <button type="button" name="backward" id="btnback" class="backward">Anterior</button>
            <button type="button" name="forward" id="btnforward" class="forward">Siguiente </button>
        </div>
        <!-- end bottom-wizard -->




    </form>
</asp:Content>
