/*
 * Modelo de equilibrio general din�mico Fedesarrollo
 *

//***************************************************************
// Definici�n de variables end�genas
//***************************************************************
var
    AA_t_1              ${AA_t_1}$              (long_name='Productividad total de los factores sector 1')
    AA_t_2              ${AA_t_2}$              (long_name='Productividad total de los factores sector 2')
    AA_t_3              ${AA_t_3}$              (long_name='Productividad total de los factores sector 3')
    A_t                 ${A_t}$                 (long_name='�ndice de productividad agregada multifactorial')
    A_t_1               ${AA_t_1}$              (long_name='�ndice de productividad espec�fica a sector 1')
    A_t_2               ${AA_t_2}$              (long_name='�ndice de productividad espec�fica a sector 2')
    A_t_3               ${AA_t_3}$              (long_name='�ndice de productividad espec�fica a sector 3')
    BC_t                ${BC_t}$                (long_name='Balanza comercial')
    B_gt                ${B_gt}$                (long_name='Oferta de bonos dom�sticos del gobierno')
    B_pt                ${B_pt}$                (long_name='Demanda de bonos del gobierno del sector privado')
    B_t_o               ${B_t_o}$               (long_name='Demanda de bonos dom�sticos de la familia Ricardiana')
    CC_t                ${CC_t}$                (long_name='Cuenta corriente')
    CM_1t               ${CM_1t}$               (long_name='Costo marginal de minoristas del sector 1')
    CM_2t               ${CM_2t}$               (long_name='Costo marginal de minoristas del sector 2')
    C_pt                ${C_pt}$                (long_name='Gasto de consumo real del sector privado')
    C_t_NO              ${C_t_NO}$              (long_name='Gasto de consumo real de la familia no-Ricardiana')
    C_t_O               ${C_t_O}$               (long_name='Gasto de consumo real de la familia Ricardiana') 
    D_ct                ${D_ct}$                (long_name='Insumo de bien dom�stico en producci�n del bien de consumo')
    D_it                ${D_it}$                (long_name='Insumo de bien dom�stico en producci�n del bien de inversi�n')
    D_gt_*              ${D_gt_*}$              (long_name='Deuda externa del gobierno')
    D_pt_*              ${D_pt_*}$              (long_name='Deuda externa del sector privado')
    D_t_*O              ${D_t_*O}$              (long_name='Deuda externa de la familia Ricardiana')
    E_t                 ${E_t}$                 (long_name='Exportaciones reales totales')
    E_Ct                ${E_Ct}$                (long_name='Exportaciones reales del bien de consumo')
    E_t_oil             ${E_t_oil}$             (long_name='Exportaciones petroleras')
    F_t                 ${F_t}$                 (long_name='Necesidades nominales de financiaci�n del gobierno')
    gamma_Lt            ${gamma_Lt}$            (long_name='Tasa bruta de crecimiento del cr�dito a la familia no Ricardiana')
    gamma_pibt          ${gamma_pibt}$          (long_name='Tasa bruta de crecimiento del PIB real')
    G_t                 ${G_t}$                 (long_name='Gasto corriente real del gobierno')
    g_Ct                ${g_Ct}$                (long_name='Gasto corriente del gobierno como % del PIB nominal')
    g_t_exo             ${g_t_exo}$             (long_name='Gasto corriente del gobierno como % del PIB, dado ex�genamente')
    g_Ft                ${g_Ft}$                (long_name='% necesidad de financiaci�n del gobierno con bonos dom�sticos')
    g_It                ${g_It}$                (long_name='Gasto en infraestructura como % del PIB nominal')
    h_1t                ${h_1t}$                (long_name='Oferta total de trabajo en sector 1')
    h_2t                ${h_2t}$                (long_name='Oferta total de trabajo en sector 2')
    h_3t                ${h_3t}$                (long_name='Oferta total de trabajo en sector 3')
    h_1t_NO             ${h_1t_NO}$             (long_name='Oferta de trabajo de la familia no Ricardiana en sector 1')
    h_2t_NO             ${h_2t_NO}$             (long_name='Oferta de trabajo de la familia no Ricardiana en sector 2')
    h_3t_NO             ${h_3t_NO}$             (long_name='Oferta de trabajo de la familia no Ricardiana en sector 3')
    h_1t_O              ${h_1t_O}$              (long_name='Oferta de trabajo de la familia Ricardiana en sector 1')
    h_2t_O              ${h_2t_O}$              (long_name='Oferta de trabajo de la familia Ricardiana en sector 2')
    h_3t_O              ${h_3t_O}$              (long_name='Oferta de trabajo de la familia Ricardiana en sector 3')
    II_gt               ${II_gt}$               (long_name='Funci�n Indicador para cambio de r�gimen de gasto p�blico')
    II_mt               ${II_mt}$               (long_name='Funci�n Indicador para cambio de r�gimen de pol�tica monetaria')
    I_gt                ${I_gt}$                (long_name='Inversi�n real de gobierno en infraestructura')
    I_1t                ${I_1t}$                (long_name='Inversi�n privada en capital del sector 1')
    I_2t                ${I_2t}$                (long_name='Inversi�n privada en capital del sector 2')
    I_3t                ${I_3t}$                (long_name='Inversi�n privada en capital del sector 3')
    I_1t_O              ${I_1t_O}$              (long_name='Inversi�n de capital en sector 1 de la familia Ricardiana')
    I_2t_O              ${I_2t_O}$              (long_name='Inversi�n de capital en sector 2 de la familia Ricardiana')
    I_3t_O              ${I_3t_O}$              (long_name='Inversi�n de capital en sector 3 de la familia Ricardiana')
    I_pt                ${I_pt}$                (long_name='Inversi�n real privada')
    KK_t                ${KK_t}$                (long_name='Acervo efectivo de infraestructura')
    K_gt                ${K_gt}$                (long_name='Stock de infraestructura p�blica instalada')
    K_1t                ${K_1t}$                (long_name='Capital privado instalado en sector 1')
    K_2t                ${K_2t}$                (long_name='Capital privado instalado en sector 2')
    K_3t                ${K_3t}$                (long_name='Capital privado instalado en sector 3')
    