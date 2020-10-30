<%@ Page Title="About" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="About.aspx.cs" Inherits="ABA.About" %>

<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">
    <div id="middle-wizard">
        <div class="branch" id="notsatisfied">
            <div class="step row" data-state="end">


                <div class="col-md-10" style="border: 1px solid grey;">

                    <div class="col-md-10" style="border: 1px solid grey;">

                        <p class="MsoNormal">
                            <b><span lang="ES">C.2 Si los estándares de aprobación de solicitudes de los créditos de consumo, hipotecarios y/o tarjetas de crédito se han hecho “más restrictivos” ¿qué tan importantes han sido los siguientes factores para explicar tales cambios? (Escala: 1 = sin importancia, 2 = relativamente importante, 3 = muy importante). Si su respuesta a C.1 fue “menos restrictivo” pase a la pregunta C.3
                            
                            </span></b>
                        </p>
                        <div style="width: 100%;" class="col-md-10">
                            <table class="table">
                                <tr>
                                    <th colspan="1">Según el tipo de crédito:</th>
                                    <th colspan="3">C.2.1 Consumo</th>
                                    <th colspan="3">C.2.2 Hipotecario</th>
                                    <th colspan="3">C.2.3 Tarjeta de Crédito</th>
                                </tr>
                                <tr>
                                    <td>&nbsp;</td>
                                    <td>1</td>
                                    <td>2</td>
                                    <td>3</td>
                                    <td>1</td>
                                    <td>2</td>
                                    <td>3</td>
                                    <td>1</td>
                                    <td>2</td>
                                    <td>3</td>
                                </tr>
                                <tr>
                                    <td style="max-width: 150px;">Aumento del riesgo de la cartera de clientes (aumento de morosidad, aumento de provisiones, etc.)</td>
                                    <td>
                                        <input type="radio" name="rc211" value="1" id="rc211_1" /></td>
                                    <td>
                                        <input type="radio" name="rc211" value="2" id="rc211_2" /></td>
                                    <td>
                                        <input type="radio" name="rc211" value="3" id="rc211_3" /></td>
                                    <td>
                                        <input type="radio" name="rc221" value="1" id="rc221_1" /></td>
                                    <td>
                                        <input type="radio" name="rc221" value="2" id="rc221_2" /></td>
                                    <td>
                                        <input type="radio" name="rc221" value="3" id="rc221_3" /></td>
                                    <td>
                                        <input type="radio" name="rc231" value="1" id="rc231_1" /></td>
                                    <td>
                                        <input type="radio" name="rc231" value="2" id="rc231_2" /></td>
                                    <td>
                                        <input type="radio" name="rc231" value="3" id="rc231_3" /></td>
                                </tr>
                                <tr>
                                    <td>Competencia menos agresiva de otros bancos o instituciones no bancarias.</td>
                                    <td>
                                        <input type="radio" name="rc212" value="1" id="rc212_1" /></td>
                                    <td>
                                        <input type="radio" name="rc212" value="2" id="rc212_2" /></td>
                                    <td>
                                        <input type="radio" name="rc212" value="3" id="rc212_3" /></td>
                                    <td>
                                        <input type="radio" name="rc222" value="1" id="rc222_1" /></td>
                                    <td>
                                        <input type="radio" name="rc222" value="2" id="rc222_2" /></td>
                                    <td>
                                        <input type="radio" name="rc222" value="3" id="rc222_3" /></td>
                                    <td>
                                        <input type="radio" name="rc232" value="1" id="rc232_1" /></td>
                                    <td>
                                        <input type="radio" name="rc232" value="2" id="rc232_2" /></td>
                                    <td>
                                        <input type="radio" name="rc232" value="3" id="rc232_3" /></td>
                                </tr>
                                <tr>
                                    <td>Cambios normativos. Especificar
                                        <input type="text" id="otrosC2" /></td>
                                    <td>
                                        <input type="radio" name="rc213" value="1" id="rc213_1" /></td>
                                    <td>
                                        <input type="radio" name="rc213" value="2" id="rc213_2" /></td>
                                    <td>
                                        <input type="radio" name="rc213" value="3" id="rc213_3" /></td>
                                    <td>
                                        <input type="radio" name="rc223" value="1" id="rc223_1" /></td>
                                    <td>
                                        <input type="radio" name="rc223" value="2" id="rc223_2" /></td>
                                    <td>
                                        <input type="radio" name="rc223" value="3" id="rc223_3" /></td>
                                    <td>
                                        <input type="radio" name="rc233" value="1" id="rc233_1" /></td>
                                    <td>
                                        <input type="radio" name="rc233" value="2" id="rc233_2" /></td>
                                    <td>
                                        <input type="radio" name="rc233" value="3" id="rc233_3" /></td>
                                </tr>
                                <tr>
                                    <td>Otros. Especificar
                                        <input type="text" id="otrosC22" /></td>
                                    <td>
                                        <input type="radio" name="rc214" value="1" id="rc214_1" /></td>
                                    <td>
                                        <input type="radio" name="rc214" value="2" id="rc214_2" /></td>
                                    <td>
                                        <input type="radio" name="rc214" value="3" id="rc214_3" /></td>
                                    <td>
                                        <input type="radio" name="rc224" value="1" id="rc224_1" /></td>
                                    <td>
                                        <input type="radio" name="rc224" value="2" id="rc224_2" /></td>
                                    <td>
                                        <input type="radio" name="rc224" value="3" id="rc224_3" /></td>
                                    <td>
                                        <input type="radio" name="rc234" value="1" id="rc234_1" /></td>
                                    <td>
                                        <input type="radio" name="rc234" value="2" id="rc234_2" /></td>
                                    <td>
                                        <input type="radio" name="rc234" value="3" id="rc234_3" /></td>
                                </tr>
                            </table>

                        </div>


                    </div>
                    <div class="col-md-10">
                        <br />
                        <br />
                    </div>

                    <div class="col-md-10" style="border: 1px solid grey;">

                        <p class="MsoNormal">
                            <b><span lang="ES">C.3 Si los estándares de aprobación de solicitudes de los créditos de consumo, hipotecarios y/o tarjetas de crédito se han hecho “menos exigentes” ¿qué tan importantes han sido los siguientes factores para explicar tales cambios? (Escala: 1 = sin importancia, 2 = relativamente importante, 3 = muy importante)
                            
                            </span></b>
                        </p>
                        <div style="width: 100%;" class="col-md-10">
                            <table class="table">
                                <tr>
                                    <th colspan="1">Según el tipo de crédito:</th>
                                    <th colspan="3">C.3.1 Consumo</th>
                                    <th colspan="3">C.3.2 Hipotecario</th>
                                    <th colspan="3">C.3.3 Tarjeta de Crédito</th>
                                </tr>
                                <tr>
                                    <td>&nbsp;</td>
                                    <td>1</td>
                                    <td>2</td>
                                    <td>3</td>
                                    <td>1</td>
                                    <td>2</td>
                                    <td>3</td>
                                    <td>1</td>
                                    <td>2</td>
                                    <td>3</td>
                                </tr>
                                <tr>
                                    <td style="max-width: 150px;">Disminución del riesgo de la cartera de clientes (menor morosidad, disminución de provisiones, etc.)</td>
                                    <td>
                                        <input type="radio" name="rc311" value="1" id="rc311_1" /></td>
                                    <td>
                                        <input type="radio" name="rc311" value="2" id="rc311_2" /></td>
                                    <td>
                                        <input type="radio" name="rc311" value="3" id="rc311_3" /></td>
                                    <td>
                                        <input type="radio" name="rc321" value="1" id="rc321_1" /></td>
                                    <td>
                                        <input type="radio" name="rc321" value="2" id="rc321_2" /></td>
                                    <td>
                                        <input type="radio" name="rc321" value="3" id="rc321_3" /></td>
                                    <td>
                                        <input type="radio" name="rc331" value="1" id="rc331_1" /></td>
                                    <td>
                                        <input type="radio" name="rc331" value="2" id="rc331_2" /></td>
                                    <td>
                                        <input type="radio" name="rc331" value="3" id="rc331_3" /></td>
                                </tr>
                                <tr>
                                    <td>Competencia más agresiva de otros bancos o instituciones no bancarias.</td>
                                    <td>
                                        <input type="radio" name="rc312" value="1" id="rc312_1" /></td>
                                    <td>
                                        <input type="radio" name="rc312" value="2" id="rc312_2" /></td>
                                    <td>
                                        <input type="radio" name="rc312" value="3" id="rc312_3" /></td>
                                    <td>
                                        <input type="radio" name="rc322" value="1" id="rc322_1" /></td>
                                    <td>
                                        <input type="radio" name="rc322" value="2" id="rc322_2" /></td>
                                    <td>
                                        <input type="radio" name="rc322" value="3" id="rc322_3" /></td>
                                    <td>
                                        <input type="radio" name="rc332" value="1" id="rc332_1" /></td>
                                    <td>
                                        <input type="radio" name="rc332" value="2" id="rc332_2" /></td>
                                    <td>
                                        <input type="radio" name="rc332" value="3" id="rc332_3" /></td>
                                </tr>
                                <tr>
                                    <td>Cambios normativos. Especificar
                                        <input type="text" id="otrosC3" /></td>
                                    <td>
                                        <input type="radio" name="rc313" value="1" id="rc313_1" /></td>
                                    <td>
                                        <input type="radio" name="rc313" value="2" id="rc313_2" /></td>
                                    <td>
                                        <input type="radio" name="rc313" value="3" id="rc313_3" /></td>
                                    <td>
                                        <input type="radio" name="rc323" value="1" id="rc323_1" /></td>
                                    <td>
                                        <input type="radio" name="rc323" value="2" id="rc323_2" /></td>
                                    <td>
                                        <input type="radio" name="rc323" value="3" id="rc323_3" /></td>
                                    <td>
                                        <input type="radio" name="rc333" value="1" id="rc333_1" /></td>
                                    <td>
                                        <input type="radio" name="rc333" value="2" id="rc333_2" /></td>
                                    <td>
                                        <input type="radio" name="rc333" value="3" id="rc333_3" /></td>
                                </tr>
                                <tr>
                                    <td>Otros. Especificar
                                        <input type="text" id="otrosC32" /></td>
                                    <td>
                                        <input type="radio" name="rc314" value="1" id="rc314_1" /></td>
                                    <td>
                                        <input type="radio" name="rc314" value="2" id="rc314_2" /></td>
                                    <td>
                                        <input type="radio" name="rc314" value="3" id="rc314_3" /></td>
                                    <td>
                                        <input type="radio" name="rc324" value="1" id="rc324_1" /></td>
                                    <td>
                                        <input type="radio" name="rc324" value="2" id="rc324_2" /></td>
                                    <td>
                                        <input type="radio" name="rc324" value="3" id="rc324_3" /></td>
                                    <td>
                                        <input type="radio" name="rc334" value="1" id="rc334_1" /></td>
                                    <td>
                                        <input type="radio" name="rc334" value="2" id="rc334_2" /></td>
                                    <td>
                                        <input type="radio" name="rc334" value="3" id="rc334_3" /></td>
                                </tr>
                            </table>

                        </div>


                    </div>
                    <div class="col-md-10">
                        <br />
                        <br />
                    </div>

                    <div class="col-md-10" style="border: 1px solid grey;">
                        <p class="MsoNormal">
                            <b><span lang="ES">D.1 Considerando los próximos tres meses ¿Podría indicar como se prevé que varíen las condiciones de aprobación de estándares de créditos?
                           
                            </span></b>
                        </p>
                        <div style="width: 100%;" class="col-md-10">
                            <table class="table">
                                <tr>
                                    <th colspan="1" style="width:25%">&nbsp;</th>
                                    <th colspan="1" style="width:25%">D.1.1 Corporativos</th>
                                    <th colspan="1" style="width:25%">D.1.2 Pymes</th>
                                    <th colspan="1" style="width:25%">D.1.3 Consumo</th>
                                </tr>
                                <tr>
                                    <td style="max-width: 150px;">Más restrictivos</td>
                                    <td>
                                        <input type="radio" name="rd11" value="1" id="rd11mas" /></td>
                                    <td>
                                        <input type="radio" name="rd12" value="2" id="rd12mas" /></td>
                                    <td>
                                        <input type="radio" name="rd13" value="3" id="rd13mas" /></td>
                                </tr>
                                <tr>
                                    <td>Sin cambios</td>
                                    <td>
                                        <input type="radio" name="rd11" value="1" id="rd11sin" /></td>
                                    <td>
                                        <input type="radio" name="rd12" value="2" id="rd12sin" /></td>
                                    <td>
                                        <input type="radio" name="rd13" value="3" id="rd13sin" /></td>
                                </tr>
                                <tr>
                                    <td>Menos restrictivos</td>
                                    <td>
                                        <input type="radio" name="rd11" value="1" id="rd11menos" /></td>
                                    <td>
                                        <input type="radio" name="rd12" value="2" id="rd12menos" /></td>
                                    <td>
                                        <input type="radio" name="rd13" value="3" id="rd13menos" /></td>

                                </tr>
                            </table>
                            <table class="table">
                                <tr>
                                    <th colspan="1" style="width:25%">&nbsp;</th>
                                    <th colspan="1" style="width:25%">D.2.4 Hipotecario</th>
                                    <th colspan="1" style="width:25%">D.2.5 Tarjeta de Crédito</th>
                                    <th colspan="1" style="width:25%"></th>
                                </tr>
                                <tr>
                                    <td style="max-width: 150px;">Más restrictivos</td>
                                    <td>
                                        <input type="radio" name="rd14" value="1" id="rd14mas" /></td>
                                    <td>
                                        <input type="radio" name="rd15" value="2" id="rd15mas" /></td>
                                    <td></td>
                                </tr>
                                <tr>
                                    <td>Sin cambios</td>
                                    <td>
                                        <input type="radio" name="rd14" value="1" id="rd14sin" /></td>
                                    <td>
                                        <input type="radio" name="rd15" value="2" id="rd15sin" /></td>
                                    <td></td>
                                </tr>
                                <tr>
                                    <td>Menos restrictivos</td>
                                    <td>
                                        <input type="radio" name="rd14" value="1" id="rd14menos" /></td>
                                    <td>
                                        <input type="radio" name="rd15" value="2" id="rd15menos" /></td>

                                    <td></td>
                                </tr>
                            </table>

                        </div>
                    </div>

                </div>
                <div class="col-md-10">
                    <br />
                    <br />
                </div>


                <div class="col-md-10" style="border: 1px solid grey;">

                    <p class="MsoNormal">
                        <b><span lang="ES">C.6 Si la demanda por estos créditos a su banco se debilitó durante el 2do trimestre (Abril-Junio) del año 2014<span>&nbsp; </span>¿qué tan importantes han sido los siguientes factores en explicar tal cambio? (Escala: 1 = sin importancia, 2 = relativamente importante, 3 = muy importante)
                           
                        </span></b>
                    </p>
                    <div style="width: 100%;" class="col-md-10">
                        <table class="table">
                            <tr>
                                <th colspan="1">&nbsp;</th>
                                <th colspan="3">C.6.1 Consumo</th>
                                <th colspan="3">C.6.2 Hipotecario</th>
                                <th colspan="3">C.6.3 Tarjeta de Crédito</th>
                            </tr>
                            <tr>
                                <td>&nbsp;</td>
                                <td>1</td>
                                <td>2</td>
                                <td>3</td>
                                <td>1</td>
                                <td>2</td>
                                <td>3</td>
                                <td>1</td>
                                <td>2</td>
                                <td>3</td>
                            </tr>
                            <tr>
                                <td style="max-width: 150px;">Empeoramiento de las condiciones de ingreso y/o empleo de los clientes.</td>
                                <td>
                                    <input type="radio" name="rc611" value="1" id="rc611_1" /></td>
                                <td>
                                    <input type="radio" name="rc611" value="2" id="rc611_2" /></td>
                                <td>
                                    <input type="radio" name="rc611" value="3" id="rc611_3" /></td>
                                <td>
                                    <input type="radio" name="rc621" value="1" id="rc621_1" /></td>
                                <td>
                                    <input type="radio" name="rc621" value="2" id="rc621_2" /></td>
                                <td>
                                    <input type="radio" name="rc621" value="3" id="rc621_3" /></td>
                                <td>
                                    <input type="radio" name="rc631" value="1" id="rc631_1" /></td>
                                <td>
                                    <input type="radio" name="rc631" value="2" id="rc631_2" /></td>
                                <td>
                                    <input type="radio" name="rc631" value="3" id="rc631_3" /></td>
                            </tr>
                            <tr>
                                <td>Clientes acuden a otros bancos u otras fuentes de financiamiento no bancarias (comercio) cuyas condiciones se hicieron más atractivas.</td>
                                <td>
                                    <input type="radio" name="rc612" value="1" id="rc612_1" /></td>
                                <td>
                                    <input type="radio" name="rc612" value="2" id="rc612_2" /></td>
                                <td>
                                    <input type="radio" name="rc612" value="3" id="rc612_3" /></td>
                                <td>
                                    <input type="radio" name="rc622" value="1" id="rc622_1" /></td>
                                <td>
                                    <input type="radio" name="rc622" value="2" id="rc622_2" /></td>
                                <td>
                                    <input type="radio" name="rc622" value="3" id="rc622_3" /></td>
                                <td>
                                    <input type="radio" name="rc632" value="1" id="rc632_1" /></td>
                                <td>
                                    <input type="radio" name="rc632" value="2" id="rc632_2" /></td>
                                <td>
                                    <input type="radio" name="rc632" value="3" id="rc632_3" /></td>
                            </tr>
                            <tr>
                                <td>Condiciones menos atractivas de tasas de interés.</td>
                                <td>
                                    <input type="radio" name="rc613" value="1" id="rc613_1" /></td>
                                <td>
                                    <input type="radio" name="rc613" value="2" id="rc613_2" /></td>
                                <td>
                                    <input type="radio" name="rc613" value="3" id="rc613_3" /></td>
                                <td>
                                    <input type="radio" name="rc623" value="1" id="rc623_1" /></td>
                                <td>
                                    <input type="radio" name="rc623" value="2" id="rc623_2" /></td>
                                <td>
                                    <input type="radio" name="rc623" value="3" id="rc623_3" /></td>
                                <td>
                                    <input type="radio" name="rc633" value="1" id="rc633_1" /></td>
                                <td>
                                    <input type="radio" name="rc633" value="2" id="rc633_2" /></td>
                                <td>
                                    <input type="radio" name="rc633" value="3" id="rc633_3" /></td>
                            </tr>
                            <tr>
                                <td>Otros. Especificar
                                    <input type="text" id="otrosC6" /></td>
                                <td>
                                    <input type="radio" name="rc614" value="1" id="rc614_1" /></td>
                                <td>
                                    <input type="radio" name="rc614" value="2" id="rc614_2" /></td>
                                <td>
                                    <input type="radio" name="rc614" value="3" id="rc614_3" /></td>
                                <td>
                                    <input type="radio" name="rc624" value="1" id="rc624_1" /></td>
                                <td>
                                    <input type="radio" name="rc624" value="2" id="rc624_2" /></td>
                                <td>
                                    <input type="radio" name="rc624" value="3" id="rc624_3" /></td>
                                <td>
                                    <input type="radio" name="rc634" value="1" id="rc634_1" /></td>
                                <td>
                                    <input type="radio" name="rc634" value="2" id="rc634_2" /></td>
                                <td>
                                    <input type="radio" name="rc634" value="3" id="rc634_3" /></td>
                            </tr>
                        </table>

                    </div>


                </div>
                <div class="col-md-10">
                    <br />
                    <br />
                </div>


            </div>
        </div>
    </div>
</asp:Content>
