-- ---
-- Globals
-- ---

-- SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
-- SET FOREIGN_KEY_CHECKS=0;

-- ---
-- Table 'dm_capacitaciones'
-- 
-- ---

DROP TABLE IF EXISTS `dm_capacitaciones`;
    
CREATE TABLE `dm_capacitaciones` (
  `cod_capacitaciones` INTEGER(11) NULL AUTO_INCREMENT DEFAULT NULL,
  `cod_criterio_especifico` INTEGER(11) NULL DEFAULT 0,
  `nombre_taller` VARCHAR(255) NULL DEFAULT NULL,
  `duracion` INTEGER NULL DEFAULT NULL,
  `cumplimiento` INTEGER NULL DEFAULT NULL,
  `porcentaje_cumplimiento` DOUBLE(10,2) NULL DEFAULT NULL,
  `fecha_registro` DATE NULL DEFAULT NULL,
  `user` VARCHAR(50) NULL DEFAULT NULL,
  `luga_capacitacion` VARCHAR(100) NULL DEFAULT NULL,
  PRIMARY KEY (`cod_capacitaciones`)
);

-- ---
-- Table 'dm_requisitos'
-- 
-- ---

DROP TABLE IF EXISTS `dm_requisitos`;
    
CREATE TABLE `dm_requisitos` (
  `cod_requisitos` INTEGER(11) NOT NULL AUTO_INCREMENT DEFAULT NULL,
  `cod_criterio_especifico` INTEGER(11) NULL DEFAULT NULL,
  `cod_criterio_general` INTEGER(11) NULL DEFAULT NULL,
  `nombre_requisito` VARCHAR(150) NULL DEFAULT NULL,
  `pregunta` CHAR(2) NULL DEFAULT NULL,
  `porcentaje_cumplimiento` DOUBLE(10,2) NULL DEFAULT NULL,
  `medio_verificable` VARCHAR(255) NULL DEFAULT NULL,
  `observacion` VARCHAR(255) NULL DEFAULT NULL,
  `fecha_registro` DATE NULL DEFAULT NULL,
  `user` VARCHAR(50) NULL DEFAULT NULL,
  PRIMARY KEY (`cod_requisitos`)
);

-- ---
-- Table 'dm_criterios_especificos'
-- 
-- ---

DROP TABLE IF EXISTS `dm_criterios_especificos`;
    
CREATE TABLE `dm_criterios_especificos` (
  `cod_criterio_especifico` INTEGER(11) NULL AUTO_INCREMENT DEFAULT NULL,
  `cod_criterio_general` INTEGER(11) NULL DEFAULT NULL,
  `nombre_criterio` VARCHAR(150) NULL DEFAULT NULL,
  `pregunta` CHAR(2) NULL DEFAULT NULL,
  `peso_criterio` DOUBLE(10,2) NULL DEFAULT NULL,
  `porcentaje_cumplimiento` DOUBLE(10,2) NULL DEFAULT NULL,
  `medio_verificable` VARCHAR(255) NULL DEFAULT NULL,
  `observacion` VARCHAR(255) NULL DEFAULT NULL,
  `fecha_registro` DATE NULL DEFAULT NULL,
  `user` VARCHAR(50) NULL DEFAULT NULL,
  PRIMARY KEY (`cod_criterio_especifico`)
);

-- ---
-- Table 'dm_criterio_general'
-- 
-- ---

DROP TABLE IF EXISTS `dm_criterio_general`;
    
CREATE TABLE `dm_criterio_general` (
  `cod_criterio_general` INTEGER(11) NULL AUTO_INCREMENT DEFAULT NULL,
  `nombre_criterio` VARCHAR(150) NULL DEFAULT NULL,
  `departamento` VARCHAR(50) NULL DEFAULT NULL,
  PRIMARY KEY (`cod_criterio_general`)
);

-- ---
-- Table 'dm_producto_servicio'
-- 
-- ---

DROP TABLE IF EXISTS `dm_producto_servicio`;
    
CREATE TABLE `dm_producto_servicio` (
  `cod_producto_servicio` INTEGER(11) NULL AUTO_INCREMENT DEFAULT NULL,
  `cod_criterio_general` INTEGER(11) NULL DEFAULT NULL,
  `nombre_criterio` VARCHAR(150) NULL DEFAULT NULL,
  `tipo_criterio` VARCHAR(100) NULL DEFAULT NULL,
  `detalle` VARCHAR(150) NULL DEFAULT NULL,
  `tipo` VARCHAR(70) NULL DEFAULT NULL,
  PRIMARY KEY (`cod_producto_servicio`)
);

-- ---
-- Table 'dm_cofinanciamiento'
-- 
-- ---

DROP TABLE IF EXISTS `dm_cofinanciamiento`;
    
CREATE TABLE `dm_cofinanciamiento` (
  `cod_cofinanciamiento` INTEGER(11) NULL AUTO_INCREMENT DEFAULT NULL,
  `cod_producto_servicio` INTEGER(11) NULL DEFAULT NULL,
  `nombre_parametro` VARCHAR(150) NULL DEFAULT NULL,
  `valor` DOUBLE(10,2) NULL DEFAULT NULL,
  `observacion` VARCHAR(255) NULL DEFAULT NULL,
  `fecha_registro` DATE NULL DEFAULT NULL,
  `user` VARCHAR(50) NULL DEFAULT NULL,
  PRIMARY KEY (`cod_cofinanciamiento`)
);

-- ---
-- Table 'dm_agrolimentario'
-- 
-- ---

DROP TABLE IF EXISTS `dm_agrolimentario`;
    
CREATE TABLE `dm_agrolimentario` (
  `cod_agro_fomento_intercambio` INTEGER(11) NULL AUTO_INCREMENT DEFAULT NULL,
  `cod_md_producto` INTEGER(11) NULL DEFAULT NULL,
  `cod_u_organizaciones` INTEGER(11) NULL DEFAULT NULL,
  `cod_sector_departamento` INTEGER(11) NULL DEFAULT NULL,
  `fp_nombre_producto` VARCHAR(255) NULL DEFAULT NULL,
  `fp_caracteristicas` VARCHAR(255) NULL DEFAULT NULL,
  `fp_maq_usa_maquinaria` CHAR(7) NULL DEFAULT NULL,
  `fp_maq_cantidad_herramienta` INTEGER(11) NULL DEFAULT NULL,
  `fp_maq_detalle_herramienta` VARCHAR(500) NULL DEFAULT NULL,
  `fp_valor_agregado` VARCHAR(200) NULL DEFAULT NULL,
  `fp_pre_contenido` VARCHAR(255) NULL DEFAULT NULL,
  `fp_pre_unidad_medida` VARCHAR(80) NULL DEFAULT NULL,
  `fp_env_tipo` VARCHAR(80) NULL DEFAULT NULL,
  `fp_env_tipo_otro` VARCHAR(200) NULL DEFAULT NULL,
  `fp_env_material` VARCHAR(100) NULL DEFAULT NULL,
  `fp_env_material_otro` VARCHAR(255) NULL DEFAULT NULL,
  `fp_emp_tipo` VARCHAR(70) NULL DEFAULT NULL,
  `fp_emp_tipo_otro` VARCHAR(255) NULL DEFAULT NULL,
  `fp_emp_material` VARCHAR(100) NULL DEFAULT NULL,
  `fp_emp_material_otro` VARCHAR(255) NULL DEFAULT NULL,
  `fp_emb_tipo` VARCHAR(100) NULL DEFAULT NULL,
  `fp_emb_tipo_otro` VARCHAR(255) NULL DEFAULT NULL,
  `fp_emb_material` VARCHAR(100) NULL DEFAULT NULL,
  `fp_emb_material_otro` VARCHAR(255) NULL DEFAULT NULL,
  `fp_marca` CHAR(7) NULL DEFAULT 'no',
  `fp_mar_registrada_iepi` CHAR(7) NULL DEFAULT 'no',
  `fp_mar_nombre` VARCHAR(150) NULL DEFAULT NULL,
  `fp_logotipo` CHAR(7) NULL DEFAULT 'no',
  `fp_logo_registrada_iepi` CHAR(7) NULL DEFAULT 'no',
  `fp_logo_imagen` VARCHAR(255) NULL DEFAULT NULL,
  `fp_slogan` CHAR(7) NULL DEFAULT 'no',
  `fp_slogan_nombre` VARCHAR(150) NULL DEFAULT NULL,
  `fp_preven_unitario` DOUBLE(10,2) NULL DEFAULT NULL,
  `fp_preven_al_por_mayor` DOUBLE(10,2) NULL DEFAULT NULL,
  `fp_preven_consideracion_al_por_mayor` INTEGER(11) NULL DEFAULT NULL,
  `fp_saberes_ancestrales` CHAR(7) NULL DEFAULT 'no',
  `fp_tecnica_ancestral` VARCHAR(255) NULL DEFAULT NULL,
  `fp_tiempo_caducidad_meses` INTEGER(11) NULL DEFAULT NULL,
  `fp_capacidad_mensual` INTEGER(11) NULL DEFAULT NULL,
  `fp_cantidad_productos_vendidos_mensual` INTEGER(11) NULL DEFAULT NULL,
  `fp_monto_ventas_mensual` INTEGER(11) NULL DEFAULT NULL,
  `fp_frecuencia_entrega_cliente` VARCHAR(70) NULL DEFAULT NULL,
  `fp_frecuencia_entrega_cliente_otro` VARCHAR(100) NULL DEFAULT NULL,
  `fp_log_cobertura_entrega_productos` VARCHAR(70) NULL DEFAULT NULL,
  `fp_log_ciudades` VARCHAR(400) NULL DEFAULT NULL,
  `fp_lugcom_establecimientos` VARCHAR(150) NULL DEFAULT NULL,
  `fp_lugcom_entidad_contratante` VARCHAR(150) NULL DEFAULT NULL,
  `fp_promventas_actividad_medios` VARCHAR(100) NULL DEFAULT NULL,
  `fp_parsup_actualmente` CHAR(7) NULL DEFAULT 'no',
  `fp_parsup_interesado_comercializar_supermercados` CHAR(7) NULL DEFAULT 'no',
  `fp_parsup_supermercados` VARCHAR(100) NULL DEFAULT NULL,
  `fp_parsup_anteriormente` CHAR(7) NULL DEFAULT 'no',
  `fp_parsup_anteriormente_supermercados` VARCHAR(100) NULL DEFAULT NULL,
  `fp_parsup_motivos_no_comercializa` VARCHAR(255) NULL DEFAULT NULL,
  `fp_eti_producto` CHAR(7) NULL DEFAULT 'no',
  `fp_eti_cumple_inen` CHAR(7) NULL DEFAULT 'no',
  `fp_cumple_otra_norma` CHAR(7) NULL DEFAULT 'no',
  `fp_cumple_otra_norma_nombre` VARCHAR(255) NULL DEFAULT NULL,
  `fp_cumple_otra_norma_peso` INTEGER(11) NULL DEFAULT NULL,
  `fp_cumple_codigo_barras` CHAR(7) NULL DEFAULT 'no',
  `fp_tiene_registro_sanitario` CHAR(3) NULL DEFAULT 'no',
  `fp_registro_sanitario_na` VARCHAR(100) NULL DEFAULT NULL,
  `fp_registro_sanitario_numero` INTEGER(11) NULL DEFAULT NULL,
  `fp_registro_sanitario_peso` INTEGER NULL DEFAULT NULL,
  `fp_peso` DOUBLE(10,2) NULL DEFAULT 0.00,
  `im_sumatoria_montos_ventas` DOUBLE(10,2) NULL DEFAULT NULL,
  `im_semaforizacion_ventas` DOUBLE(10,2) NULL DEFAULT NULL,
  `im_semaforizacion_ventas_acompanamiento` DOUBLE(10,2) NULL DEFAULT NULL,
  `im_promedio` DOUBLE(10,2) NULL DEFAULT NULL,
  `im_semaforizacion_producto` DOUBLE(10,2) NULL DEFAULT NULL,
  `im_semaforizacion_oeps` DOUBLE(10,2) NULL DEFAULT NULL,
  `im_medio_verificable` VARCHAR(255) NULL DEFAULT NULL,
  `fecha_registro` TIMESTAMP NULL DEFAULT CURRENT_TIMESTAMP,
  `user` VARCHAR(50) NULL DEFAULT NULL,
  PRIMARY KEY (`cod_agro_fomento_intercambio`)
);

-- ---
-- Table 'dm_metalmecanica'
-- Sector Metalmecanica
-- ---

DROP TABLE IF EXISTS `dm_metalmecanica`;
    
CREATE TABLE `dm_metalmecanica` (
  `cod_metalmecanica` INTEGER NULL AUTO_INCREMENT DEFAULT NULL,
  `cod_md_producto` INTEGER(11) NULL DEFAULT NULL,
  `fp_caracteristicas` VARCHAR(500) NULL DEFAULT NULL,
  `fp_maq_usa_maquinaria` CHAR(7) NULL DEFAULT NULL,
  `fp_maq_cantidad_detalle_herramienta` VARCHAR(500) NULL DEFAULT NULL,
  `fp_maq_cantidad_detalle_maquinaria` VARCHAR(500) NULL DEFAULT NULL,
  `fp_valor_agregado` VARCHAR(200) NULL DEFAULT NULL,
  `fp_per_cuantos_socios` INTEGER NULL DEFAULT NULL,
  `fp_per_cuantos_socios_secap` INTEGER NULL DEFAULT NULL,
  `fp_per_experiencia_producto_meses` VARCHAR(200) NULL DEFAULT NULL,
  `fp_sso_uniforme_identificacion` CHAR(7) NULL DEFAULT NULL,
  `fp_sso_detalle_uniforme_identificacion` VARCHAR(500) NULL DEFAULT NULL,
  `fp_sso_implementos_salud_seguridad` CHAR(7) NULL DEFAULT NULL,
  `fp_sso_detalle_implementos_salud_seguridad` VARCHAR(200) NULL DEFAULT NULL,
  `fp_emb_tipo` VARCHAR(100) NULL DEFAULT NULL,
  `fp_emb_material` VARCHAR(100) NULL DEFAULT NULL,
  `fp_mar_pregunta` CHAR(7) NULL DEFAULT NULL,
  `fp_mar_registrada_iepi` CHAR(7) NULL DEFAULT NULL,
  `fp_mar_nombre_marca` VARCHAR(200) NULL DEFAULT NULL,
  `fp_logo_pregunta` VARCHAR(7) NULL DEFAULT NULL,
  `fp_logo_registrada_iepi` CHAR(7) NULL DEFAULT NULL,
  `fp_logo_imagen` VARCHAR(200) NULL DEFAULT NULL,
  `fp_slo_pregunta` CHAR(7) NULL DEFAULT NULL,
  `fp_slo_slogan` VARCHAR(200) NULL DEFAULT NULL,
  `fp_pdv_unitario` DOUBLE(10,2) NULL DEFAULT NULL,
  `fp_pdv_x_mayor` DOUBLE(10,2) NULL DEFAULT NULL,
  `fp_pdv_consideracion_x_mayor` DOUBLE(10,2) NULL DEFAULT NULL,
  `fp_pdv_costos_transporte` CHAR(7) NULL DEFAULT NULL,
  `fp_saberes_ancestrales` CHAR(7) NULL DEFAULT NULL,
  `fp_tecnica_ancenstral` VARCHAR(500) NULL DEFAULT NULL,
  `fp_capacidad_prod_mensual` INTEGER NULL DEFAULT NULL,
  `fp_productos_vendidos` INTEGER NULL DEFAULT NULL,
  `fp_monto_ventas` DOUBLE(10,2) NULL DEFAULT NULL,
  `fp_frecuencia_entrega` CHAR(100) NULL DEFAULT NULL,
  `fp_logi_cobertura_entrega_productos` VARCHAR(200) NULL DEFAULT NULL,
  `fp_logi_a_que_ciudades` VARCHAR(300) NULL DEFAULT NULL,
  `fp_prv_actividad_medios_promocionar_productos` VARCHAR(200) NULL DEFAULT NULL,
  `fp_eti_incluye_etiqueta` CHAR(7) NULL DEFAULT NULL,
  `fp_eti_normas_inen` CHAR(7) NULL DEFAULT NULL,
  `fp_ont_pregunta` CHAR(7) NULL DEFAULT NULL,
  `fp_ont_cual` VARCHAR(200) NULL DEFAULT NULL,
  `fp_cod_barras_pregunta` CHAR(7) NULL DEFAULT NULL,
  `fp_peso` DOUBLE(10,2) NULL DEFAULT 0.00,
  `im_sumatoria_montos_ventas` DOUBLE(10,2) NULL DEFAULT NULL,
  `im_semaforizacion_ventas` DOUBLE(10,2) NULL DEFAULT NULL,
  `im_semaforizacion_ventas_acompanamiento` DOUBLE(10,2) NULL DEFAULT NULL,
  `im_promedio` DOUBLE(10,2) NULL DEFAULT NULL,
  `im_semaforizacion_producto` DOUBLE(10,2) NULL DEFAULT NULL,
  `im_semaforizacion_oeps` DOUBLE(10,2) NULL DEFAULT NULL,
  `im_medio_verificable` VARCHAR(255) NULL DEFAULT NULL,
  `fecha_registro` TIMESTAMP NULL DEFAULT CURRENT_TIMESTAMP,
  `user` VARCHAR(50) NULL DEFAULT NULL,
  PRIMARY KEY (`cod_metalmecanica`)
) COMMENT 'Sector Metalmecanica';

-- ---
-- Table 'dm_articulacion_mercados'
-- 
-- ---

DROP TABLE IF EXISTS `dm_articulacion_mercados`;
    
CREATE TABLE `dm_articulacion_mercados` (
  `cod_articulacion_mercados` INTEGER(11) NULL AUTO_INCREMENT DEFAULT NULL,
  `cod_agro_fomento_intercambio` INTEGER NULL DEFAULT NULL,
  `tipo_articulacion_mercados` VARCHAR(30) NULL DEFAULT NULL,
  `tipo_entidad_contrante` VARCHAR(50) NULL DEFAULT NULL,
  `nombre_entidad_contratante` VARCHAR(100) NULL DEFAULT NULL,
  `especifique_nombre` VARCHAR(150) NULL DEFAULT NULL,
  `ventas_ieps_mensual` DOUBLE(10,2) NULL DEFAULT NULL,
  PRIMARY KEY (`cod_articulacion_mercados`)
);

-- ---
-- Table 'dm_textiil'
-- 
-- ---

DROP TABLE IF EXISTS `dm_textil`;
    
CREATE TABLE `dm_textiil` (
  `cod_textil` INTEGER(2) NULL AUTO_INCREMENT DEFAULT NULL,
  `cod_md_producto` INTEGER(11) NULL DEFAULT NULL,
  `fp_car_tipo_tela` VARCHAR(100) NULL DEFAULT NULL,
  `fp_valor_agregado` VARCHAR(200) NULL DEFAULT NULL,
  `fp_pre_talla_tamano` VARCHAR(200) NULL DEFAULT NULL,
  `fp_pre_colores` VARCHAR(200) NULL DEFAULT NULL,
  `fp_emp_tipo` VARCHAR(200) NULL DEFAULT NULL,
  `fp_emp_material` VARCHAR(200) NULL DEFAULT NULL,
  `fp_emb_tipo` VARCHAR(200) NULL DEFAULT NULL,
  `fp_emb_material` VARCHAR(200) NULL DEFAULT NULL,
  `fp_mar_pregunta` CHAR(7) NULL DEFAULT NULL,
  `fp_mar_registrado_iepi` CHAR(7) NULL DEFAULT NULL,
  `fp_mar_marca` VARCHAR(200) NULL DEFAULT NULL,
  `fp_logo_pregunta` CHAR(7) NULL DEFAULT NULL,
  `fp_logo_registrado_iepi` CHAR(7) NULL DEFAULT NULL,
  `fp_logo_imagen` VARCHAR(500) NULL DEFAULT NULL,
  `fp_slo_pregunta` CHAR(7) NULL DEFAULT NULL,
  `fp_slo_slogan` VARCHAR(200) NULL DEFAULT NULL,
  `fp_pre_ven_unitario` DECIMAL(2) NULL DEFAULT NULL,
  `fp_pre_ven_por_mayor` DECIMAL(2) NULL DEFAULT NULL,
  `fp_pre_ven_por_mayor_partir_de` DECIMAL(2) NULL DEFAULT NULL,
  `fp_meh_utiliza_para_proceso_productivo` CHAR(7) NULL DEFAULT NULL,
  `fp_maq_equ_her_cantidad_detalle_herramienta` VARCHAR(200) NULL DEFAULT NULL,
  `fp_maq_equ_cantidad_detalle_maquinaria` VARCHAR(200) NULL DEFAULT NULL,
  `fp_anc_pregunta` CHAR(7) NULL DEFAULT NULL,
  `fp_anc_tecnica` VARCHAR(200) NULL DEFAULT NULL,
  `fp_produccion_mensual_unidades` VARCHAR(200) NULL DEFAULT NULL,
  `fp_produccion_mensual_vendido` DECIMAL(2) NULL DEFAULT NULL,
  `fp_monto_venta_mensual` DECIMAL(2) NULL DEFAULT NULL,
  `fp_frecuecia_entrega_cliente` VARCHAR(200) NULL DEFAULT NULL,
  `fp_log_cobertura_entrega_productos` VARCHAR(200) NULL DEFAULT NULL,
  `fp_ciudad` VARCHAR(200) NULL DEFAULT NULL,
  `fp_com_establecimiento` VARCHAR(200) NULL DEFAULT NULL,
  `fp_com_entidad_contratante` VARCHAR(200) NULL DEFAULT NULL,
  `fp_pro_ventas_medios_promocionar_productos` VARCHAR(200) NULL DEFAULT NULL,
  `fp_supermercados_actual_pregunta` CHAR(7) NULL DEFAULT NULL,
  `fp_supermercado_actual_super_o_cadena` VARCHAR(200) NULL DEFAULT NULL,
  `fp_supermercado_ anterior_pregunta` CHAR(7) NULL DEFAULT NULL,
  `fp_supermercado_anterior_super_o_cadena` VARCHAR(200) NULL DEFAULT NULL,
  `fp_supermercado_motivo_no_comercializa` VARCHAR(200) NULL DEFAULT NULL,
  `fp_etiqueta_incluye_pregunta` CHAR(7) NULL DEFAULT NULL,
  `fp_etiqueta_normas_inen_pregunta` CHAR(7) NULL DEFAULT NULL,
  `fp_codigo_barras_pregunta` CHAR(7) NULL DEFAULT NULL,
  `fp_peso` DOUBLE(10,2) NULL DEFAULT 0.00,
  `im_sumatoria_montos_ventas` DOUBLE(10,2) NULL DEFAULT NULL,
  `im_semaforizacion_ventas` DOUBLE(10,2) NULL DEFAULT NULL,
  `im_semaforizacion_ventas_acompanamiento` DOUBLE(10,2) NULL DEFAULT NULL,
  `im_promedio` DOUBLE(10,2) NULL DEFAULT NULL,
  `im_semaforizacion_producto` DOUBLE(10,2) NULL DEFAULT NULL,
  `im_semaforizacion_oeps` DOUBLE(10,2) NULL DEFAULT NULL,
  `im_medio_verificable` VARCHAR(255) NULL DEFAULT NULL,
  `fecha_registro` TIMESTAMP NULL DEFAULT CURRENT_TIMESTAMP,
  `user` VARCHAR(50) NULL DEFAULT NULL,
  PRIMARY KEY (`cod_textil`)
);

-- ---
-- Table 'dm_artesanias'
-- 
-- ---

DROP TABLE IF EXISTS `dm_artesanias`;
    
CREATE TABLE `dm_artesanias` (
  `cod_artesanias` INTEGER NULL AUTO_INCREMENT DEFAULT NULL,
  `cod_md_producto` INTEGER NULL DEFAULT NULL,
  `fp_caracteristica` VARCHAR(250) NULL DEFAULT NULL,
  `fp_maq_usa_maquinaria` CHAR(7) NULL DEFAULT 'no',
  `fp_maq_detalle_herramienta_usa` VARCHAR(250) NULL DEFAULT NULL,
  `fp_maq_cantidad_detalle_maquinaria` VARCHAR(250) NULL DEFAULT NULL,
  `fp_valor_agregado` VARCHAR(150) NULL DEFAULT NULL,
  `fp_sal_seg_cuenta_reglamento_sanitario` CHAR(7) NULL DEFAULT 'no',
  `fp_sal_seg_socios_uniformes` CHAR(7) NULL DEFAULT 'no',
  `fp_sal_seg_detalle_implementos` VARCHAR(250) NULL DEFAULT NULL,
  `fp_per_socios_dispone_elaboracion_artesania` INTEGER(11) NULL DEFAULT NULL,
  `fp_per_socios_titulo_artesanal` INTEGER(11) NULL DEFAULT NULL,
  `fp_emp_tipo` VARCHAR(200) NULL DEFAULT NULL,
  `fp_emp_material` VARCHAR(200) NULL DEFAULT NULL,
  `fp_emb_tipo` VARCHAR(200) NULL DEFAULT NULL,
  `fp_emb_material` VARCHAR(200) NULL DEFAULT NULL,
  `fp_marca_pregunta` CHAR(7) NULL DEFAULT 'no',
  `fp_mar_registrada_iepi` CHAR(7) NULL DEFAULT 'no',
  `fp_mar_nombre` VARCHAR(200) NULL DEFAULT NULL,
  `fp_logo_pregunta` CHAR(7) NULL DEFAULT 'no',
  `fp_logo_registrada_iepi` CHAR(7) NULL DEFAULT 'no',
  `fp_logo_imagen` VARCHAR(150) NULL DEFAULT NULL,
  `fp_slo_pregunta` CHAR(7) NULL DEFAULT 'no',
  `fp_slo_nombre` VARCHAR(150) NULL DEFAULT NULL,
  `fp_pre_ven_unitario` DOUBLE(10,2) NULL DEFAULT 0.00,
  `fp_pre_ven_por_mayor` DOUBLE(10,2) NULL DEFAULT 0.00,
  `fp_pre_ven_consideracion_partir` INTEGER(11) NULL DEFAULT 0,
  `fp_usa_saberes_ancestrales` CHAR(7) NULL DEFAULT 'no',
  `fp_saberes_ancestrales_detalle` VARCHAR(200) NULL DEFAULT NULL,
  `fp_tiempo_caducidad_meses` INTEGER(11) NULL DEFAULT 0,
  `fp_capacidad_produccion_mensual_unidades` INTEGER(11) NULL DEFAULT 0,
  `fp_capacidad_produccion_mensual` INTEGER(11) NULL DEFAULT 0,
  `fp_monto_ventas_mensual` DOUBLE(10,2) NULL DEFAULT 0.00,
  `fp_frecuencia_entrega_cliente` VARCHAR(150) NULL DEFAULT NULL,
  `fp_log_cobertura_entrega_productos` VARCHAR(150) NULL DEFAULT NULL,
  `fp_log_ciudades` VARCHAR(150) NULL DEFAULT NULL,
  `fp_lug_com_establecimientos` VARCHAR(200) NULL DEFAULT NULL,
  `fp_lug_com_entidad_contratante` VARCHAR(200) NULL DEFAULT NULL,
  `fp_pro_ven_actividades` VARCHAR(150) NULL DEFAULT NULL,
  `fp_participa_supermercados_pregunta` CHAR(7) NULL DEFAULT 'no',
  `fp_par_sup_comercializar_supermercados` CHAR(7) NULL DEFAULT NULL,
  `fp_par_sup_supermercados` VARCHAR(200) NULL DEFAULT NULL,
  `fp_par_sup_anteriormente` CHAR(7) NULL DEFAULT 'no',
  `fp_par_sup_supermercados_anteriormente` VARCHAR(200) NULL DEFAULT NULL,
  `fp_par_sup_motivos_no_participa` VARCHAR(150) NULL DEFAULT NULL,
  `fp_eti_incluyen_etiqueta` CHAR(7) NULL DEFAULT 'no',
  `fp_eti_cumple_normas_inen` CHAR(7) NULL DEFAULT 'no',
  `fp_cumple_otra_norma` CHAR(7) NULL DEFAULT 'no',
  `fp_conoce_manejo_residuos` CHAR(7) NULL DEFAULT 'no',
  `fp_peso` DOUBLE(10,2) NULL DEFAULT 0.00,
  `im_semaforizacion_monto_ventas` DOUBLE(10,2) NULL DEFAULT 0.00,
  `im_semaforizacion_monto_ventas_ieps` DOUBLE(10,2) NULL DEFAULT 0.00,
  `im_promedio` DOUBLE(10,2) NULL DEFAULT 0.00,
  `im_semaforizacion_producto` DOUBLE(10,2) NULL DEFAULT 0.00,
  `im_semaforizacion_oeps` DOUBLE(10,2) NULL DEFAULT 0.00,
  `im_medio_verificable` VARCHAR(250) NULL DEFAULT NULL,
  `fecha_registro` TIMESTAMP NULL DEFAULT CURRENT_TIMESTAMP,
  `user` VARCHAR(50) NULL DEFAULT NULL,
  PRIMARY KEY (`cod_artesanias`)
);

-- ---
-- Table 'dm_alimentacion'
-- 
-- ---

DROP TABLE IF EXISTS `dm_alimentacion`;
    
CREATE TABLE `dm_alimentacion` (
  `cod_producto` INTEGER(7) NULL AUTO_INCREMENT DEFAULT NULL,
  `cod_md_servicio` INTEGER(11) NULL DEFAULT NULL,
  `fp_tipo_comida` VARCHAR(200) NULL DEFAULT NULL,
  `fp_especialidad` VARCHAR(200) NULL DEFAULT NULL,
  `fp_menaje_pregunta` CHAR(7) NULL DEFAULT NULL,
  `fp_menaje_detalle` VARCHAR(200) NULL DEFAULT NULL,
  `fp_diferencia_producto_con_competencia` VARCHAR(200) NULL DEFAULT NULL,
  `fp_proceso_productivo_con_cultura_ancestral` VARCHAR(200) NULL DEFAULT NULL,
  `fp_maquinaria_equipos_herramientas_pregunta` CHAR(7) NULL DEFAULT NULL,
  `fp_maquinaria_equipos_herramientas_detalle` VARCHAR(200) NULL DEFAULT NULL,
  `fp_numero_personas` INTEGER(2) NULL DEFAULT NULL,
  `fp_cuenta_certificaciones_pregunta` CHAR(7) NULL DEFAULT NULL,
  `fp_cuenta_certificaciones_detalle` VARCHAR(200) NULL DEFAULT NULL,
  `fp_formacion_experiencia_brindar_servicio_pregunta` CHAR(7) NULL DEFAULT NULL,
  `fp_formacion_experincia_brindar_servicio_detalle` VARCHAR(200) NULL DEFAULT NULL,
  `fp_conoce_manejo_residuo_pregunta` CHAR(7) NULL DEFAULT NULL,
  `fp_posee_uniforme_adecuado_pregunta` CHAR(7) NULL DEFAULT NULL,
  `fp_personal_posee_uniforme_identificacion_pregunta` CHAR(7) NULL DEFAULT NULL,
  `fp_personal_posee_implementos_pregunta` CHAR(7) NULL DEFAULT NULL,
  `fp_personal_salud_seguridad_ocupacional_detalle` VARCHAR(200) NULL DEFAULT NULL,
  `fp_marca_pregunta` CHAR(7) NULL DEFAULT NULL,
  `fp_marca_registrado_iepi_pregunta` CHAR(7) NULL DEFAULT NULL,
  `fp_marca` VARCHAR(200) NULL DEFAULT NULL,
  `fp_logo_pregunta` CHAR(7) NULL DEFAULT NULL,
  `fp_logo_iepi_pregunta` CHAR(7) NULL DEFAULT NULL,
  `fp_logo_imagen` VARCHAR(500) NULL DEFAULT NULL,
  `fp_slogan` VARCHAR(200) NULL DEFAULT NULL,
  `fp_slogan_nombre` VARCHAR(200) NULL DEFAULT NULL,
  `fp_ventas_frecuencia_renovacion_contratos` VARCHAR(200) NULL DEFAULT NULL,
  `fp_ventas_capacidad_productiva` VARCHAR(200) NULL DEFAULT NULL,
  `fp_ventas_precio_por_porcion_sin_iva` DECIMAL(2) NULL DEFAULT NULL,
  `fp_ventas_monto_mensual_sin_iva` DECIMAL(2) NULL DEFAULT NULL,
  `fp_ventas_precio_incluye_transporte` DECIMAL(2) NULL DEFAULT NULL,
  `fp_ventas_precio_equipamiento_adicional` DECIMAL(2) NULL DEFAULT NULL,
  `fp_transporte_pregunta` CHAR(7) NULL DEFAULT NULL,
  `fp_instrumenteria_para_transportar_pregunta` CHAR(7) NULL DEFAULT NULL,
  `fp_transporte_detalle` VARCHAR(200) NULL DEFAULT NULL,
  `fp_logistica_cobertura` VARCHAR(200) NULL DEFAULT NULL,
  `fp_logistica_ciudad` VARCHAR(200) NULL DEFAULT NULL,
  `fp_establecimiento` VARCHAR(200) NULL DEFAULT NULL,
  `fp_entidad_contratante` VARCHAR(200) NULL DEFAULT NULL,
  `fp_promocion_ventas` VARCHAR(200) NULL DEFAULT NULL,
  `fp_peso` DOUBLE(10,2) NULL DEFAULT 0.00,
  `im_sumatoria_montos_ventas` DOUBLE(10,2) NULL DEFAULT NULL,
  `im_semaforizacion_ventas` DOUBLE(10,2) NULL DEFAULT NULL,
  `im_semaforizacion_ventas_acompanamiento` DOUBLE(10,2) NULL DEFAULT NULL,
  `im_promedio` DOUBLE(10,2) NULL DEFAULT NULL,
  `im_semaforizacion_producto` DOUBLE(10,2) NULL DEFAULT NULL,
  `im_semaforizacion_oeps` DOUBLE(10,2) NULL DEFAULT NULL,
  `im_medio_verificable` VARCHAR(255) NULL DEFAULT NULL,
  `fecha_registro` TIMESTAMP NULL DEFAULT CURRENT_TIMESTAMP,
  `user` VARCHAR(50) NULL DEFAULT NULL,
  PRIMARY KEY (`cod_producto`)
);

-- ---
-- Table 'dm_publicidad'
-- 
-- ---

DROP TABLE IF EXISTS `dm_publicidad`;
    
CREATE TABLE `dm_publicidad` (
  `cod_publicidad` INTEGER NULL AUTO_INCREMENT DEFAULT NULL,
  `cod_md_servicio` INTEGER NULL DEFAULT NULL,
  `fp_valor_agregado` VARCHAR(200) NULL DEFAULT NULL,
  `fp_pdg_cuenta_con_programas_diseño_grafico` CHAR(7) NULL DEFAULT NULL,
  `fp_pdg_detalle` VARCHAR(200) NULL DEFAULT NULL,
  `fp_emh_cuenta_con_equipos_insumos_servicio` CHAR(7) NULL DEFAULT NULL,
  `fp_emh_detalle` VARCHAR(200) NULL DEFAULT NULL,
  `fp_per_cantidad_personal_prestacion_servicio` INTEGER NULL DEFAULT NULL,
  `fp_per_cantidad_personal_formacion_academica_tercer_nivel` INTEGER NULL DEFAULT NULL,
  `fp_manejo_residuo` CHAR(7) NULL DEFAULT NULL,
  `fp_mar_marca_comercial` CHAR(7) NULL DEFAULT NULL,
  `fp_mar_registrado_iepi` CHAR(7) NULL DEFAULT NULL,
  `fp_mar_nombre` VARCHAR(200) NULL DEFAULT NULL,
  `fp_logo_pregunta` CHAR(7) NULL DEFAULT NULL,
  `fp_logo_registrado_iepi` CHAR(7) NULL DEFAULT NULL,
  `fp_logo_imagen` VARCHAR(200) NULL DEFAULT NULL,
  `new field` INTEGER NULL DEFAULT NULL,
  `fp_slo_pregunta` CHAR(7) NULL DEFAULT NULL,
  `fp_slo_slogan` VARCHAR(200) NULL DEFAULT NULL,
  `fp_ven_cantidad_capacidad_productiva` INTEGER NULL DEFAULT NULL,
  `fp_ven_precio_producto_publicitario` DOUBLE(10,2) NULL DEFAULT NULL,
  `fp_ven_facturacion_mensual_servicio_publicitario` DOUBLE(10,2) NULL DEFAULT NULL,
  `fp_logi_cobertura_servicios` VARCHAR(200) NULL DEFAULT NULL,
  `fp_logi_a_que_ciudades` VARCHAR(200) NULL DEFAULT NULL,
  `fp_pds_institucion_presta_servicio` VARCHAR(100) NULL DEFAULT NULL,
  `fp_pds_detalle` VARCHAR(200) NULL DEFAULT NULL,
  `fp_promocion_ventas` VARCHAR(200) NULL DEFAULT NULL,
  `fp_peso` DOUBLE(10,2) NULL DEFAULT 0.00,
  `im_sumatoria_montos_ventas` DOUBLE(10,2) NULL DEFAULT NULL,
  `im_semaforizacion_ventas` DOUBLE(10,2) NULL DEFAULT NULL,
  `im_semaforizacion_ventas_acompanamiento` DOUBLE(10,2) NULL DEFAULT NULL,
  `im_promedio` DOUBLE(10,2) NULL DEFAULT NULL,
  `im_semaforizacion_producto` DOUBLE(10,2) NULL DEFAULT NULL,
  `im_semaforizacion_oeps` DOUBLE(10,2) NULL DEFAULT NULL,
  `im_medio_verificable` VARCHAR(255) NULL DEFAULT NULL,
  `fecha_registro` TIMESTAMP NULL DEFAULT CURRENT_TIMESTAMP,
  `user` VARCHAR(50) NULL DEFAULT NULL,
  PRIMARY KEY (`cod_publicidad`)
);

-- ---
-- Table 'dm_turismo'
-- 
-- ---

DROP TABLE IF EXISTS `dm_turismo`;
    
CREATE TABLE `dm_turismo` (
  `cod_turismo` INTEGER NULL AUTO_INCREMENT DEFAULT NULL,
  `cod_md_servicio` INTEGER NULL DEFAULT NULL,
  `fp_maq_cantidad_maquinaria_equipos_utilizados_servicio` VARCHAR(500) NULL DEFAULT NULL,
  `fp_maq_cantidad_detalle_herramientas` VARCHAR(500) NULL DEFAULT NULL,
  `fp_maq_cantidad_detalle_maquinaria` VARCHAR(500) NULL DEFAULT NULL,
  `fp_valor_agregado` VARCHAR(200) NULL DEFAULT NULL,
  `fp_dsp_servicio_constumbres_tradiciones_antepasadas` CHAR(7) NULL DEFAULT NULL,
  `fp_dsp_actividades_turisticas_servicio_prestado` VARCHAR(500) NULL DEFAULT NULL,
  `fp_dsp_atractivos_turisticos_identificados` VARCHAR(500) NULL DEFAULT NULL,
  `fp_dsp_frecuencia_recorridos` VARCHAR(100) NULL DEFAULT NULL,
  `fp_per_cantidad_personal_disponible_servicio` INTEGER NULL DEFAULT NULL,
  `fp_per_cantidad_personal_capacitada_turismo` INTEGER NULL DEFAULT NULL,
  `fp_per_detalle_formacion_profesional` VARCHAR(500) NULL DEFAULT NULL,
  `fp_sin_cuenta_reglamento_seguridad_industrial` CHAR(7) NULL DEFAULT NULL,
  `fp_sin_realiza_mantenimientos_maq_prestacion_servicios` CHAR(7) NULL DEFAULT NULL,
  `fp_sin_frecuencia_mantenimientos_maq_prestacion_servicios` VARCHAR(100) NULL DEFAULT NULL,
  `fp_mar_pregunta` CHAR(7) NULL DEFAULT NULL,
  `fp_mar_registrado_iepi` CHAR(7) NULL DEFAULT NULL,
  `fp_mar_nombre_marca` VARCHAR(200) NULL DEFAULT NULL,
  `fp_logo_pregunta` CHAR(7) NULL DEFAULT NULL,
  `fp_logo_registrado_iepi` CHAR(7) NULL DEFAULT NULL,
  `fp_logo_imagen` VARCHAR(200) NULL DEFAULT NULL,
  `fp_slo_pregunta` CHAR(7) NULL DEFAULT NULL,
  `fp_slo_slogan` VARCHAR(200) NULL DEFAULT NULL,
  `fp_pps_unitario_sin_iva_x_persona` DOUBLE(10,2) NULL DEFAULT NULL,
  `fp_pps_x_mayor` DOUBLE(10,2) NULL DEFAULT NULL,
  `fp_pps_x_mayor_a_partir_de` INTEGER NULL DEFAULT NULL,
  `fp_cantidad_servicio_prestado` INTEGER NULL DEFAULT NULL,
  `fp_numero_personas_visitantes` INTEGER NULL DEFAULT NULL,
  `fp_monto_ventas` DOUBLE(10,2) NULL DEFAULT NULL,
  `fp_logi_cobertura_prestacion_servicio` VARCHAR(200) NULL DEFAULT NULL,
  `fp_logi_a_que_ciudades` VARCHAR(200) NULL DEFAULT NULL,
  `fp_ecs_entidad_contratante` VARCHAR(100) NULL DEFAULT NULL,
  `fp_ecs_nombre_entidad_contratante` VARCHAR(200) NULL DEFAULT NULL,
  `fp_pro_actividad_medios_promocionar_servicios` VARCHAR(200) NULL DEFAULT NULL,
  `fp_pfu_pregunta` CHAR(7) NULL DEFAULT NULL,
  `fp_pfu_cual` VARCHAR(200) NULL DEFAULT NULL,
  `fp_cer_pregunta` CHAR(7) NULL DEFAULT NULL,
  `fp_cer_n/a` VARCHAR(200) NULL DEFAULT NULL,
  `fp_cer_detalle` CHAR(200) NULL DEFAULT NULL,
  `fp_peso` DOUBLE(10,2) NULL DEFAULT 0.00,
  `im_sumatoria_montos_ventas` DOUBLE(10,2) NULL DEFAULT NULL,
  `im_semaforizacion_ventas` DOUBLE(10,2) NULL DEFAULT NULL,
  `im_semaforizacion_ventas_acompanamiento` DOUBLE(10,2) NULL DEFAULT NULL,
  `im_promedio` DOUBLE(10,2) NULL DEFAULT NULL,
  `im_semaforizacion_producto` DOUBLE(10,2) NULL DEFAULT NULL,
  `im_semaforizacion_oeps` DOUBLE(10,2) NULL DEFAULT NULL,
  `im_medio_verificable` VARCHAR(255) NULL DEFAULT NULL,
  `fecha_registro` TIMESTAMP NULL DEFAULT CURRENT_TIMESTAMP,
  `user` VARCHAR(50) NULL DEFAULT NULL,
  PRIMARY KEY (`cod_turismo`)
);

-- ---
-- Table 'dm_construccion'
-- 
-- ---

DROP TABLE IF EXISTS `dm_construccion`;
    
CREATE TABLE `dm_construccion` (
  `cod_contruccion` INTEGER(2) NULL AUTO_INCREMENT DEFAULT NULL,
  `cod_md_servicio` INTEGER NULL DEFAULT NULL,
  `fp_valor_agregado` VARCHAR(200) NULL DEFAULT NULL,
  `fp_materiales_accesorios_prestacion_servicios_pregunta` CHAR(7) NULL DEFAULT NULL,
  `fp_materiales_accesorios_pretacion_servicios_detalle` VARCHAR(200) NULL DEFAULT NULL,
  `fp_emh_para_prestacion_servicios_pregunta` CHAR(7) NULL DEFAULT NULL,
  `fp_emh_para_prestacion_servicios_detalle` VARCHAR(200) NULL DEFAULT NULL,
  `fp_experiencia_organizacion` VARCHAR(200) NULL DEFAULT NULL,
  `fp_cantidad_personas_prestacion_servicio` INTEGER(2) NULL DEFAULT NULL,
  `fp_cantidad_personas_tienen_carnet_ministerio_trabajo` INTEGER(2) NULL DEFAULT NULL,
  `fp_manejo_residuos_pregunta` CHAR(7) NULL DEFAULT NULL,
  `fp_personal_posee_uniforme_identificacion_pregunta` CHAR(7) NULL DEFAULT NULL,
  `fp_personal_posee_uniforme_identificacion_detalle` VARCHAR(200) NULL DEFAULT NULL,
  `fp_implementos_salud_seguridad_pregunta` CHAR(7) NULL DEFAULT NULL,
  `fp_implementos_salud_seguridad_detalle` VARCHAR(200) NULL DEFAULT NULL,
  `fp_marca_comercial_pregunta` CHAR(7) NULL DEFAULT NULL,
  `fp_marca_registrado_iepi_pregunta` CHAR(7) NULL DEFAULT NULL,
  `fp_marca` VARCHAR(200) NULL DEFAULT NULL,
  `fp_logo_pregunta` CHAR(7) NULL DEFAULT NULL,
  `fp_logo_iepi_pregunta` CHAR(7) NULL DEFAULT NULL,
  `fp_logo_imagen` VARCHAR(500) NULL DEFAULT NULL,
  `fp_slogan_pregunta` CHAR(7) NULL DEFAULT NULL,
  `fp_slogan_nombre` VARCHAR(200) NULL DEFAULT NULL,
  `fp_ventas_capacidad_productiva` VARCHAR(200) NULL DEFAULT NULL,
  `fp_ventas_precio_prestacion_servicios` DECIMAL(2) NULL DEFAULT NULL,
  `fp_ventas_precio-incluye_transporte_materiales_pregunta` CHAR(7) NULL DEFAULT NULL,
  `fp_ventas_lugar_servicio` VARCHAR(200) NULL DEFAULT NULL,
  `fp_ventas_facturacion_mensual` DECIMAL(2) NULL DEFAULT NULL,
  `fp_ventas_frecuencia_renovacion_contratos` VARCHAR(200) NULL DEFAULT NULL,
  `fp_transporte_propio_pregunta` CHAR(7) NULL DEFAULT NULL,
  `fp_transporte_propio_detalle` VARCHAR(200) NULL DEFAULT NULL,
  `fp_logistica_cobertura` VARCHAR(200) NULL DEFAULT NULL,
  `fp_logistica_ciudad` VARCHAR(200) NULL DEFAULT NULL,
  `fp_institucion_presta_servicios` VARCHAR(2) NULL DEFAULT NULL,
  `fp_actualmente_presta_servicios` VARCHAR(200) NULL DEFAULT NULL,
  `fp_numero_horas_por_empresa` VARCHAR(200) NULL DEFAULT NULL,
  `fp_presta_servicios_detalle` VARCHAR(200) NULL DEFAULT NULL,
  `fp_promocion_ventas` VARCHAR(200) NULL DEFAULT NULL,
  `fp_peso` DOUBLE(10,2) NULL DEFAULT 0.00,
  `im_sumatoria_montos_ventas` DOUBLE(10,2) NULL DEFAULT NULL,
  `im_semaforizacion_ventas` DOUBLE(10,2) NULL DEFAULT NULL,
  `im_semaforizacion_ventas_acompanamiento` DOUBLE(10,2) NULL DEFAULT NULL,
  `im_promedio` DOUBLE(10,2) NULL DEFAULT NULL,
  `im_semaforizacion_producto` DOUBLE(10,2) NULL DEFAULT NULL,
  `im_semaforizacion_oeps` DOUBLE(10,2) NULL DEFAULT NULL,
  `im_medio_verificable` VARCHAR(255) NULL DEFAULT NULL,
  `fecha_registro` TIMESTAMP NULL DEFAULT CURRENT_TIMESTAMP,
  `user` VARCHAR(50) NULL DEFAULT NULL,
  PRIMARY KEY (`cod_contruccion`)
);

-- ---
-- Table 'dm_reciclaje'
-- 
-- ---

DROP TABLE IF EXISTS `dm_reciclaje`;
    
CREATE TABLE `dm_reciclaje` (
  `cod_reciclaje` INTEGER NULL AUTO_INCREMENT DEFAULT NULL,
  `cod_md_servicio` INTEGER(11) NULL DEFAULT NULL,
  `fp_maq_utiliza_maquina_equipos` CHAR(7) NULL DEFAULT NULL,
  `fp_maq_cantidad_detalle_herramientas` VARCHAR(200) NULL DEFAULT NULL,
  `fp_maq_cantidad_detalle_maquinaria` VARCHAR(200) NULL DEFAULT NULL,
  `fp_lugar_recoleccion` VARCHAR(200) NULL DEFAULT NULL,
  `fp_sso_cuenta_reglamento_seguridad_ocupacional` CHAR(7) NULL DEFAULT NULL,
  `fp_sso_detalle_implementos_salud_seguridad_ocupacional` VARCHAR(200) NULL DEFAULT NULL,
  `fp_mrso_recicla_solidos_organicos` CHAR(7) NULL DEFAULT NULL,
  `fp_mrso_detalle` VARCHAR(200) NULL DEFAULT NULL,
  `fp_mrso_lugar` VARCHAR(200) NULL DEFAULT NULL,
  `fp_mrso_proceso` VARCHAR(200) NULL DEFAULT NULL,
  `fp_mrsi_recicla_solidos_inorganicos` CHAR(7) NULL DEFAULT NULL,
  `fp_mrsi_detalle` VARCHAR(200) NULL DEFAULT NULL,
  `fp_mrsi_lugar` VARCHAR(200) NULL DEFAULT NULL,
  `fp_mrsi_proceso` VARCHAR(200) NULL DEFAULT NULL,
  `fp_mar_pregunta` CHAR(7) NULL DEFAULT NULL,
  `fp_mar_registrada_iepi` CHAR(7) NULL DEFAULT NULL,
  `fp_mar_nombre_marca` VARCHAR(200) NULL DEFAULT NULL,
  `fp_logo_pregunta` CHAR(7) NULL DEFAULT NULL,
  `fp_logo_registrado_iepi` CHAR(7) NULL DEFAULT NULL,
  `fp_logo_imagen` VARCHAR(200) NULL DEFAULT NULL,
  `fp_slo_pregunta` CHAR(7) NULL DEFAULT NULL,
  `fp_slo_slogan` VARCHAR(200) NULL DEFAULT NULL,
  `fp_pvk_unitario` DOUBLE(10,2) NULL DEFAULT NULL,
  `fp_pvk_x_mayor` DOUBLE(10,2) NULL DEFAULT NULL,
  `fp_pvk_x_mayor_a_partir_de` DOUBLE(10,2) NULL DEFAULT NULL,
  `fp_utiliza_transporte` CHAR(7) NULL DEFAULT NULL,
  `fp_detalle_rutas` VARCHAR(500) NULL DEFAULT NULL,
  `fp_recoleccion_mensual_kilogramos` DOUBLE(10,2) NULL DEFAULT NULL,
  `fp_cantidad_producto_vendido` INTEGER NULL DEFAULT NULL,
  `fp_monto_ventas` DOUBLE(10,2) NULL DEFAULT NULL,
  `fp_frecuencia_entrega_cliente` VARCHAR(200) NULL DEFAULT NULL,
  `fp_logi_cobertura_entrega_producto` VARCHAR(100) NULL DEFAULT NULL,
  `fp_logi_a_que_ciudades` VARCHAR(200) NULL DEFAULT NULL,
  `fp_lss_institucion` VARCHAR(100) NULL DEFAULT NULL,
  `fp_lss_detalle` VARCHAR(200) NULL DEFAULT NULL,
  `fp_sri_pregunta` CHAR(7) NULL DEFAULT NULL,
  `fp_sri_detalle` VARCHAR(200) NULL DEFAULT NULL,
  `fp_experiencia_en_meses` INTEGER NULL DEFAULT NULL,
  `fp_peso` DOUBLE(10,2) NULL DEFAULT 0.00,
  `im_sumatoria_montos_ventas` DOUBLE(10,2) NULL DEFAULT NULL,
  `im_semaforizacion_ventas` DOUBLE(10,2) NULL DEFAULT NULL,
  `im_semaforizacion_ventas_acompanamiento` DOUBLE(10,2) NULL DEFAULT NULL,
  `im_promedio` DOUBLE(10,2) NULL DEFAULT NULL,
  `im_semaforizacion_producto` DOUBLE(10,2) NULL DEFAULT NULL,
  `im_semaforizacion_oeps` DOUBLE(10,2) NULL DEFAULT NULL,
  `im_medio_verificable` VARCHAR(255) NULL DEFAULT NULL,
  `fecha_registro` TIMESTAMP NULL DEFAULT CURRENT_TIMESTAMP,
  `user` VARCHAR(50) NULL DEFAULT NULL,
  PRIMARY KEY (`cod_reciclaje`)
);

-- ---
-- Table 'dm_limpieza'
-- 
-- ---

DROP TABLE IF EXISTS `dm_limpieza`;
    
CREATE TABLE `dm_limpieza` (
  `cod_limpieza` INTEGER NULL AUTO_INCREMENT DEFAULT NULL,
  `cod_md_servicio` INTEGER(11) NULL DEFAULT NULL,
  `fp_valor_agregado` VARCHAR(200) NULL DEFAULT NULL,
  `fp_mas_cuenta_material_accesorio` CHAR(7) NULL DEFAULT NULL,
  `fp_mas_detalle` VARCHAR(200) NULL DEFAULT NULL,
  `fp_ems_cuenta_con_equipos` CHAR(7) NULL DEFAULT NULL,
  `fp_ems_detalle` VARCHAR(200) NULL DEFAULT NULL,
  `fp_per_cuantas_personas_servicio` INTEGER NULL DEFAULT NULL,
  `fp_per_cuentas_personas_preparadas` INTEGER NULL DEFAULT NULL,
  `fp_per_manejo_residuo` CHAR(7) NULL DEFAULT NULL,
  `fp_sso_personal_posee_uniforme_carnet` CHAR(7) NULL DEFAULT NULL,
  `fp_sso_detalle_uniforme_carnet` VARCHAR(200) NULL DEFAULT NULL,
  `fp_sso_impelementos_salud_seguridad_ocupacional` CHAR(7) NULL DEFAULT NULL,
  `fp_sso_detalle_implementos` CHAR(7) NULL DEFAULT NULL,
  `fp_mar_pregunta` CHAR(7) NULL DEFAULT NULL,
  `fp_mar_registrada_iepi` CHAR(7) NULL DEFAULT NULL,
  `fp_mar_nombre_marca` VARCHAR(200) NULL DEFAULT NULL,
  `fp_logo_pregunta` CHAR(7) NULL DEFAULT NULL,
  `fp_logo_registrado_iepi` CHAR(7) NULL DEFAULT NULL,
  `fp_logo_imagen` VARCHAR(200) NULL DEFAULT NULL,
  `fp_slo_pregunta` CHAR(7) NULL DEFAULT NULL,
  `fp_slo_slogan` VARCHAR(200) NULL DEFAULT NULL,
  `fp_ven_capacidad_productiva` DOUBLE(10,2) NULL DEFAULT NULL,
  `fp_ven_precio` DOUBLE(10,2) NULL DEFAULT NULL,
  `fp_ven_precio_transporte` DOUBLE(10,2) NULL DEFAULT NULL,
  `fp_ven_precio_insumos` DOUBLE(10,2) NULL DEFAULT NULL,
  `fp_ven_facturacion_mensual` DOUBLE(10,2) NULL DEFAULT NULL,
  `fp_ven_frecuencia` VARCHAR(100) NULL DEFAULT NULL,
  `fp_tra_pregunta` CHAR(7) NULL DEFAULT NULL,
  `fp_tra_detalle` VARCHAR(200) NULL DEFAULT NULL,
  `fp_logi_cobertura_servicios` VARCHAR(200) NULL DEFAULT NULL,
  `fp_logi_a_que_ciudades` VARCHAR(200) NULL DEFAULT NULL,
  `fp_pds_institucion` VARCHAR(100) NULL DEFAULT NULL,
  `fp_pds_cuantas_instituciones_actualmente` INTEGER NULL DEFAULT NULL,
  `fp_pds_numero_horas` INTEGER NULL DEFAULT NULL,
  `fp_pds_detalle` VARCHAR(200) NULL DEFAULT NULL,
  `fp_promocion_ventas` VARCHAR(200) NULL DEFAULT NULL,
  `fp_peso` DOUBLE(10,2) NULL DEFAULT 0.00,
  `im_sumatoria_montos_ventas` DOUBLE(10,2) NULL DEFAULT NULL,
  `im_semaforizacion_ventas` DOUBLE(10,2) NULL DEFAULT NULL,
  `im_semaforizacion_ventas_acompanamiento` DOUBLE(10,2) NULL DEFAULT NULL,
  `im_promedio` DOUBLE(10,2) NULL DEFAULT NULL,
  `im_semaforizacion_producto` DOUBLE(10,2) NULL DEFAULT NULL,
  `im_semaforizacion_oeps` DOUBLE(10,2) NULL DEFAULT NULL,
  `im_medio_verificable` VARCHAR(255) NULL DEFAULT NULL,
  `fecha_registro` TIMESTAMP NULL DEFAULT CURRENT_TIMESTAMP,
  `user` VARCHAR(50) NULL DEFAULT NULL,
  PRIMARY KEY (`cod_limpieza`)
);

-- ---
-- Table 'md_producto'
-- 
-- ---

DROP TABLE IF EXISTS `md_producto`;
    
CREATE TABLE `md_producto` (
  `cod_md_producto` INTEGER NULL AUTO_INCREMENT DEFAULT NULL,
  `cod_u_organizacionex` INTEGER NULL DEFAULT NULL,
  `nombre` VARCHAR(150) NULL DEFAULT NULL,
  `caracteristicas` VARCHAR(500) NULL DEFAULT NULL,
  `sector` VARCHAR(50) NULL DEFAULT NULL,
  `fecha_registro` TIMESTAMP NULL DEFAULT CURRENT_TIMESTAMP,
  `user` VARCHAR(50) NULL DEFAULT NULL,
  PRIMARY KEY (`cod_md_producto`)
);

-- ---
-- Table 'md_servicio'
-- 
-- ---

DROP TABLE IF EXISTS `md_servicio`;
    
CREATE TABLE `md_servicio` (
  `cod_md_servicio` INTEGER NULL AUTO_INCREMENT DEFAULT NULL,
  `nombre` VARCHAR(200) NULL DEFAULT NULL,
  `caracteristica_detalle` VARCHAR(200) NULL DEFAULT NULL,
  `cod_u_organizaciones` INTEGER(11) NULL DEFAULT NULL,
  `sector` VARCHAR(100) NULL DEFAULT NULL,
  `fecha_registro` TIMESTAMP NULL DEFAULT CURRENT_TIMESTAMP,
  `user` VARCHAR(50) NULL DEFAULT NULL,
  PRIMARY KEY (`cod_md_servicio`)
);

-- ---
-- Foreign Keys 
-- ---


-- ---
-- Table Properties
-- ---

-- ALTER TABLE `dm_capacitaciones` ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
-- ALTER TABLE `dm_requisitos` ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
-- ALTER TABLE `dm_criterios_especificos` ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
-- ALTER TABLE `dm_criterio_general` ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
-- ALTER TABLE `dm_producto_servicio` ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
-- ALTER TABLE `dm_cofinanciamiento` ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
-- ALTER TABLE `dm_agrolimentario` ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
-- ALTER TABLE `dm_metalmecanica` ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
-- ALTER TABLE `dm_articulacion_mercados` ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
-- ALTER TABLE `dm_textiil` ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
-- ALTER TABLE `dm_artesanias` ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
-- ALTER TABLE `dm_alimentacion` ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
-- ALTER TABLE `dm_publicidad` ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
-- ALTER TABLE `dm_turismo` ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
-- ALTER TABLE `dm_construccion` ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
-- ALTER TABLE `dm_reciclaje` ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
-- ALTER TABLE `dm_limpieza` ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
-- ALTER TABLE `md_producto` ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
-- ALTER TABLE `md_servicio` ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ---
-- Test Data
-- ---

-- INSERT INTO `dm_capacitaciones` (`cod_capacitaciones`,`cod_criterio_especifico`,`nombre_taller`,`duracion`,`cumplimiento`,`porcentaje_cumplimiento`,`fecha_registro`,`user`,`luga_capacitacion`) VALUES
-- ('','','','','','','','','');
-- INSERT INTO `dm_requisitos` (`cod_requisitos`,`cod_criterio_especifico`,`cod_criterio_general`,`nombre_requisito`,`pregunta`,`porcentaje_cumplimiento`,`medio_verificable`,`observacion`,`fecha_registro`,`user`) VALUES
-- ('','','','','','','','','','');
-- INSERT INTO `dm_criterios_especificos` (`cod_criterio_especifico`,`cod_criterio_general`,`nombre_criterio`,`pregunta`,`peso_criterio`,`porcentaje_cumplimiento`,`medio_verificable`,`observacion`,`fecha_registro`,`user`) VALUES
-- ('','','','','','','','','','');
-- INSERT INTO `dm_criterio_general` (`cod_criterio_general`,`nombre_criterio`,`departamento`) VALUES
-- ('','','');
-- INSERT INTO `dm_producto_servicio` (`cod_producto_servicio`,`cod_criterio_general`,`nombre_criterio`,`tipo_criterio`,`detalle`,`tipo`) VALUES
-- ('','','','','','');
-- INSERT INTO `dm_cofinanciamiento` (`cod_cofinanciamiento`,`cod_producto_servicio`,`nombre_parametro`,`valor`,`observacion`,`fecha_registro`,`user`) VALUES
-- ('','','','','','','');
-- INSERT INTO `dm_agrolimentario` (`cod_agro_fomento_intercambio`,`cod_md_producto`,`cod_u_organizaciones`,`cod_sector_departamento`,`fp_nombre_producto`,`fp_caracteristicas`,`fp_maq_usa_maquinaria`,`fp_maq_cantidad_herramienta`,`fp_maq_detalle_herramienta`,`fp_valor_agregado`,`fp_pre_contenido`,`fp_pre_unidad_medida`,`fp_env_tipo`,`fp_env_tipo_otro`,`fp_env_material`,`fp_env_material_otro`,`fp_emp_tipo`,`fp_emp_tipo_otro`,`fp_emp_material`,`fp_emp_material_otro`,`fp_emb_tipo`,`fp_emb_tipo_otro`,`fp_emb_material`,`fp_emb_material_otro`,`fp_marca`,`fp_mar_registrada_iepi`,`fp_mar_nombre`,`fp_logotipo`,`fp_logo_registrada_iepi`,`fp_logo_imagen`,`fp_slogan`,`fp_slogan_nombre`,`fp_preven_unitario`,`fp_preven_al_por_mayor`,`fp_preven_consideracion_al_por_mayor`,`fp_saberes_ancestrales`,`fp_tecnica_ancestral`,`fp_tiempo_caducidad_meses`,`fp_capacidad_mensual`,`fp_cantidad_productos_vendidos_mensual`,`fp_monto_ventas_mensual`,`fp_frecuencia_entrega_cliente`,`fp_frecuencia_entrega_cliente_otro`,`fp_log_cobertura_entrega_productos`,`fp_log_ciudades`,`fp_lugcom_establecimientos`,`fp_lugcom_entidad_contratante`,`fp_promventas_actividad_medios`,`fp_parsup_actualmente`,`fp_parsup_interesado_comercializar_supermercados`,`fp_parsup_supermercados`,`fp_parsup_anteriormente`,`fp_parsup_anteriormente_supermercados`,`fp_parsup_motivos_no_comercializa`,`fp_eti_producto`,`fp_eti_cumple_inen`,`fp_cumple_otra_norma`,`fp_cumple_otra_norma_nombre`,`fp_cumple_otra_norma_peso`,`fp_cumple_codigo_barras`,`fp_tiene_registro_sanitario`,`fp_registro_sanitario_na`,`fp_registro_sanitario_numero`,`fp_registro_sanitario_peso`,`fp_peso`,`im_sumatoria_montos_ventas`,`im_semaforizacion_ventas`,`im_semaforizacion_ventas_acompanamiento`,`im_promedio`,`im_semaforizacion_producto`,`im_semaforizacion_oeps`,`im_medio_verificable`,`fecha_registro`,`user`) VALUES
-- ('','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','');
-- INSERT INTO `dm_metalmecanica` (`cod_metalmecanica`,`cod_md_producto`,`fp_caracteristicas`,`fp_maq_usa_maquinaria`,`fp_maq_cantidad_detalle_herramienta`,`fp_maq_cantidad_detalle_maquinaria`,`fp_valor_agregado`,`fp_per_cuantos_socios`,`fp_per_cuantos_socios_secap`,`fp_per_experiencia_producto_meses`,`fp_sso_uniforme_identificacion`,`fp_sso_detalle_uniforme_identificacion`,`fp_sso_implementos_salud_seguridad`,`fp_sso_detalle_implementos_salud_seguridad`,`fp_emb_tipo`,`fp_emb_material`,`fp_mar_pregunta`,`fp_mar_registrada_iepi`,`fp_mar_nombre_marca`,`fp_logo_pregunta`,`fp_logo_registrada_iepi`,`fp_logo_imagen`,`fp_slo_pregunta`,`fp_slo_slogan`,`fp_pdv_unitario`,`fp_pdv_x_mayor`,`fp_pdv_consideracion_x_mayor`,`fp_pdv_costos_transporte`,`fp_saberes_ancestrales`,`fp_tecnica_ancenstral`,`fp_capacidad_prod_mensual`,`fp_productos_vendidos`,`fp_monto_ventas`,`fp_frecuencia_entrega`,`fp_logi_cobertura_entrega_productos`,`fp_logi_a_que_ciudades`,`fp_prv_actividad_medios_promocionar_productos`,`fp_eti_incluye_etiqueta`,`fp_eti_normas_inen`,`fp_ont_pregunta`,`fp_ont_cual`,`fp_cod_barras_pregunta`,`fp_peso`,`im_sumatoria_montos_ventas`,`im_semaforizacion_ventas`,`im_semaforizacion_ventas_acompanamiento`,`im_promedio`,`im_semaforizacion_producto`,`im_semaforizacion_oeps`,`im_medio_verificable`,`fecha_registro`,`user`) VALUES
-- ('','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','');
-- INSERT INTO `dm_articulacion_mercados` (`cod_articulacion_mercados`,`cod_agro_fomento_intercambio`,`tipo_articulacion_mercados`,`tipo_entidad_contrante`,`nombre_entidad_contratante`,`especifique_nombre`,`ventas_ieps_mensual`) VALUES
-- ('','','','','','','');
-- INSERT INTO `dm_textiil` (`cod_textil`,`cod_md_producto`,`fp_car_tipo_tela`,`fp_valor_agregado`,`fp_pre_talla_tamano`,`fp_pre_colores`,`fp_emp_tipo`,`fp_emp_material`,`fp_emb_tipo`,`fp_emb_material`,`fp_mar_pregunta`,`fp_mar_registrado_iepi`,`fp_mar_marca`,`fp_logo_pregunta`,`fp_logo_registrado_iepi`,`fp_logo_imagen`,`fp_slo_pregunta`,`fp_slo_slogan`,`fp_pre_ven_unitario`,`fp_pre_ven_por_mayor`,`fp_pre_ven_por_mayor_partir_de`,`fp_meh_utiliza_para_proceso_productivo`,`fp_maq_equ_her_cantidad_detalle_herramienta`,`fp_maq_equ_cantidad_detalle_maquinaria`,`fp_anc_pregunta`,`fp_anc_tecnica`,`fp_produccion_mensual_unidades`,`fp_produccion_mensual_vendido`,`fp_monto_venta_mensual`,`fp_frecuecia_entrega_cliente`,`fp_log_cobertura_entrega_productos`,`fp_ciudad`,`fp_com_establecimiento`,`fp_com_entidad_contratante`,`fp_pro_ventas_medios_promocionar_productos`,`fp_supermercados_actual_pregunta`,`fp_supermercado_actual_super_o_cadena`,`fp_supermercado_ anterior_pregunta`,`fp_supermercado_anterior_super_o_cadena`,`fp_supermercado_motivo_no_comercializa`,`fp_etiqueta_incluye_pregunta`,`fp_etiqueta_normas_inen_pregunta`,`fp_codigo_barras_pregunta`,`fp_peso`,`im_sumatoria_montos_ventas`,`im_semaforizacion_ventas`,`im_semaforizacion_ventas_acompanamiento`,`im_promedio`,`im_semaforizacion_producto`,`im_semaforizacion_oeps`,`im_medio_verificable`,`fecha_registro`,`user`) VALUES
-- ('','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','');
-- INSERT INTO `dm_artesanias` (`cod_artesanias`,`cod_md_producto`,`fp_caracteristica`,`fp_maq_usa_maquinaria`,`fp_maq_detalle_herramienta_usa`,`fp_maq_cantidad_detalle_maquinaria`,`fp_valor_agregado`,`fp_sal_seg_cuenta_reglamento_sanitario`,`fp_sal_seg_socios_uniformes`,`fp_sal_seg_detalle_implementos`,`fp_per_socios_dispone_elaboracion_artesania`,`fp_per_socios_titulo_artesanal`,`fp_emp_tipo`,`fp_emp_material`,`fp_emb_tipo`,`fp_emb_material`,`fp_marca_pregunta`,`fp_mar_registrada_iepi`,`fp_mar_nombre`,`fp_logo_pregunta`,`fp_logo_registrada_iepi`,`fp_logo_imagen`,`fp_slo_pregunta`,`fp_slo_nombre`,`fp_pre_ven_unitario`,`fp_pre_ven_por_mayor`,`fp_pre_ven_consideracion_partir`,`fp_usa_saberes_ancestrales`,`fp_saberes_ancestrales_detalle`,`fp_tiempo_caducidad_meses`,`fp_capacidad_produccion_mensual_unidades`,`fp_capacidad_produccion_mensual`,`fp_monto_ventas_mensual`,`fp_frecuencia_entrega_cliente`,`fp_log_cobertura_entrega_productos`,`fp_log_ciudades`,`fp_lug_com_establecimientos`,`fp_lug_com_entidad_contratante`,`fp_pro_ven_actividades`,`fp_participa_supermercados_pregunta`,`fp_par_sup_comercializar_supermercados`,`fp_par_sup_supermercados`,`fp_par_sup_anteriormente`,`fp_par_sup_supermercados_anteriormente`,`fp_par_sup_motivos_no_participa`,`fp_eti_incluyen_etiqueta`,`fp_eti_cumple_normas_inen`,`fp_cumple_otra_norma`,`fp_conoce_manejo_residuos`,`fp_peso`,`im_semaforizacion_monto_ventas`,`im_semaforizacion_monto_ventas_ieps`,`im_promedio`,`im_semaforizacion_producto`,`im_semaforizacion_oeps`,`im_medio_verificable`,`fecha_registro`,`user`) VALUES
-- ('','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','');
-- INSERT INTO `dm_alimentacion` (`cod_producto`,`cod_md_servicio`,`fp_tipo_comida`,`fp_especialidad`,`fp_menaje_pregunta`,`fp_menaje_detalle`,`fp_diferencia_producto_con_competencia`,`fp_proceso_productivo_con_cultura_ancestral`,`fp_maquinaria_equipos_herramientas_pregunta`,`fp_maquinaria_equipos_herramientas_detalle`,`fp_numero_personas`,`fp_cuenta_certificaciones_pregunta`,`fp_cuenta_certificaciones_detalle`,`fp_formacion_experiencia_brindar_servicio_pregunta`,`fp_formacion_experincia_brindar_servicio_detalle`,`fp_conoce_manejo_residuo_pregunta`,`fp_posee_uniforme_adecuado_pregunta`,`fp_personal_posee_uniforme_identificacion_pregunta`,`fp_personal_posee_implementos_pregunta`,`fp_personal_salud_seguridad_ocupacional_detalle`,`fp_marca_pregunta`,`fp_marca_registrado_iepi_pregunta`,`fp_marca`,`fp_logo_pregunta`,`fp_logo_iepi_pregunta`,`fp_logo_imagen`,`fp_slogan`,`fp_slogan_nombre`,`fp_ventas_frecuencia_renovacion_contratos`,`fp_ventas_capacidad_productiva`,`fp_ventas_precio_por_porcion_sin_iva`,`fp_ventas_monto_mensual_sin_iva`,`fp_ventas_precio_incluye_transporte`,`fp_ventas_precio_equipamiento_adicional`,`fp_transporte_pregunta`,`fp_instrumenteria_para_transportar_pregunta`,`fp_transporte_detalle`,`fp_logistica_cobertura`,`fp_logistica_ciudad`,`fp_establecimiento`,`fp_entidad_contratante`,`fp_promocion_ventas`,`fp_peso`,`im_sumatoria_montos_ventas`,`im_semaforizacion_ventas`,`im_semaforizacion_ventas_acompanamiento`,`im_promedio`,`im_semaforizacion_producto`,`im_semaforizacion_oeps`,`im_medio_verificable`,`fecha_registro`,`user`) VALUES
-- ('','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','');
-- INSERT INTO `dm_publicidad` (`cod_publicidad`,`cod_md_servicio`,`fp_valor_agregado`,`fp_pdg_cuenta_con_programas_diseño_grafico`,`fp_pdg_detalle`,`fp_emh_cuenta_con_equipos_insumos_servicio`,`fp_emh_detalle`,`fp_per_cantidad_personal_prestacion_servicio`,`fp_per_cantidad_personal_formacion_academica_tercer_nivel`,`fp_manejo_residuo`,`fp_mar_marca_comercial`,`fp_mar_registrado_iepi`,`fp_mar_nombre`,`fp_logo_pregunta`,`fp_logo_registrado_iepi`,`fp_logo_imagen`,`new field`,`fp_slo_pregunta`,`fp_slo_slogan`,`fp_ven_cantidad_capacidad_productiva`,`fp_ven_precio_producto_publicitario`,`fp_ven_facturacion_mensual_servicio_publicitario`,`fp_logi_cobertura_servicios`,`fp_logi_a_que_ciudades`,`fp_pds_institucion_presta_servicio`,`fp_pds_detalle`,`fp_promocion_ventas`,`fp_peso`,`im_sumatoria_montos_ventas`,`im_semaforizacion_ventas`,`im_semaforizacion_ventas_acompanamiento`,`im_promedio`,`im_semaforizacion_producto`,`im_semaforizacion_oeps`,`im_medio_verificable`,`fecha_registro`,`user`) VALUES
-- ('','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','');
-- INSERT INTO `dm_turismo` (`cod_turismo`,`cod_md_servicio`,`fp_maq_cantidad_maquinaria_equipos_utilizados_servicio`,`fp_maq_cantidad_detalle_herramientas`,`fp_maq_cantidad_detalle_maquinaria`,`fp_valor_agregado`,`fp_dsp_servicio_constumbres_tradiciones_antepasadas`,`fp_dsp_actividades_turisticas_servicio_prestado`,`fp_dsp_atractivos_turisticos_identificados`,`fp_dsp_frecuencia_recorridos`,`fp_per_cantidad_personal_disponible_servicio`,`fp_per_cantidad_personal_capacitada_turismo`,`fp_per_detalle_formacion_profesional`,`fp_sin_cuenta_reglamento_seguridad_industrial`,`fp_sin_realiza_mantenimientos_maq_prestacion_servicios`,`fp_sin_frecuencia_mantenimientos_maq_prestacion_servicios`,`fp_mar_pregunta`,`fp_mar_registrado_iepi`,`fp_mar_nombre_marca`,`fp_logo_pregunta`,`fp_logo_registrado_iepi`,`fp_logo_imagen`,`fp_slo_pregunta`,`fp_slo_slogan`,`fp_pps_unitario_sin_iva_x_persona`,`fp_pps_x_mayor`,`fp_pps_x_mayor_a_partir_de`,`fp_cantidad_servicio_prestado`,`fp_numero_personas_visitantes`,`fp_monto_ventas`,`fp_logi_cobertura_prestacion_servicio`,`fp_logi_a_que_ciudades`,`fp_ecs_entidad_contratante`,`fp_ecs_nombre_entidad_contratante`,`fp_pro_actividad_medios_promocionar_servicios`,`fp_pfu_pregunta`,`fp_pfu_cual`,`fp_cer_pregunta`,`fp_cer_n/a`,`fp_cer_detalle`,`fp_peso`,`im_sumatoria_montos_ventas`,`im_semaforizacion_ventas`,`im_semaforizacion_ventas_acompanamiento`,`im_promedio`,`im_semaforizacion_producto`,`im_semaforizacion_oeps`,`im_medio_verificable`,`fecha_registro`,`user`) VALUES
-- ('','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','');
-- INSERT INTO `dm_construccion` (`cod_contruccion`,`cod_md_servicio`,`fp_valor_agregado`,`fp_materiales_accesorios_prestacion_servicios_pregunta`,`fp_materiales_accesorios_pretacion_servicios_detalle`,`fp_emh_para_prestacion_servicios_pregunta`,`fp_emh_para_prestacion_servicios_detalle`,`fp_experiencia_organizacion`,`fp_cantidad_personas_prestacion_servicio`,`fp_cantidad_personas_tienen_carnet_ministerio_trabajo`,`fp_manejo_residuos_pregunta`,`fp_personal_posee_uniforme_identificacion_pregunta`,`fp_personal_posee_uniforme_identificacion_detalle`,`fp_implementos_salud_seguridad_pregunta`,`fp_implementos_salud_seguridad_detalle`,`fp_marca_comercial_pregunta`,`fp_marca_registrado_iepi_pregunta`,`fp_marca`,`fp_logo_pregunta`,`fp_logo_iepi_pregunta`,`fp_logo_imagen`,`fp_slogan_pregunta`,`fp_slogan_nombre`,`fp_ventas_capacidad_productiva`,`fp_ventas_precio_prestacion_servicios`,`fp_ventas_precio-incluye_transporte_materiales_pregunta`,`fp_ventas_lugar_servicio`,`fp_ventas_facturacion_mensual`,`fp_ventas_frecuencia_renovacion_contratos`,`fp_transporte_propio_pregunta`,`fp_transporte_propio_detalle`,`fp_logistica_cobertura`,`fp_logistica_ciudad`,`fp_institucion_presta_servicios`,`fp_actualmente_presta_servicios`,`fp_numero_horas_por_empresa`,`fp_presta_servicios_detalle`,`fp_promocion_ventas`,`fp_peso`,`im_sumatoria_montos_ventas`,`im_semaforizacion_ventas`,`im_semaforizacion_ventas_acompanamiento`,`im_promedio`,`im_semaforizacion_producto`,`im_semaforizacion_oeps`,`im_medio_verificable`,`fecha_registro`,`user`) VALUES
-- ('','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','');
-- INSERT INTO `dm_reciclaje` (`cod_reciclaje`,`cod_md_servicio`,`fp_maq_utiliza_maquina_equipos`,`fp_maq_cantidad_detalle_herramientas`,`fp_maq_cantidad_detalle_maquinaria`,`fp_lugar_recoleccion`,`fp_sso_cuenta_reglamento_seguridad_ocupacional`,`fp_sso_detalle_implementos_salud_seguridad_ocupacional`,`fp_mrso_recicla_solidos_organicos`,`fp_mrso_detalle`,`fp_mrso_lugar`,`fp_mrso_proceso`,`fp_mrsi_recicla_solidos_inorganicos`,`fp_mrsi_detalle`,`fp_mrsi_lugar`,`fp_mrsi_proceso`,`fp_mar_pregunta`,`fp_mar_registrada_iepi`,`fp_mar_nombre_marca`,`fp_logo_pregunta`,`fp_logo_registrado_iepi`,`fp_logo_imagen`,`fp_slo_pregunta`,`fp_slo_slogan`,`fp_pvk_unitario`,`fp_pvk_x_mayor`,`fp_pvk_x_mayor_a_partir_de`,`fp_utiliza_transporte`,`fp_detalle_rutas`,`fp_recoleccion_mensual_kilogramos`,`fp_cantidad_producto_vendido`,`fp_monto_ventas`,`fp_frecuencia_entrega_cliente`,`fp_logi_cobertura_entrega_producto`,`fp_logi_a_que_ciudades`,`fp_lss_institucion`,`fp_lss_detalle`,`fp_sri_pregunta`,`fp_sri_detalle`,`fp_experiencia_en_meses`,`fp_peso`,`im_sumatoria_montos_ventas`,`im_semaforizacion_ventas`,`im_semaforizacion_ventas_acompanamiento`,`im_promedio`,`im_semaforizacion_producto`,`im_semaforizacion_oeps`,`im_medio_verificable`,`fecha_registro`,`user`) VALUES
-- ('','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','');
-- INSERT INTO `dm_limpieza` (`cod_limpieza`,`cod_md_servicio`,`fp_valor_agregado`,`fp_mas_cuenta_material_accesorio`,`fp_mas_detalle`,`fp_ems_cuenta_con_equipos`,`fp_ems_detalle`,`fp_per_cuantas_personas_servicio`,`fp_per_cuentas_personas_preparadas`,`fp_per_manejo_residuo`,`fp_sso_personal_posee_uniforme_carnet`,`fp_sso_detalle_uniforme_carnet`,`fp_sso_impelementos_salud_seguridad_ocupacional`,`fp_sso_detalle_implementos`,`fp_mar_pregunta`,`fp_mar_registrada_iepi`,`fp_mar_nombre_marca`,`fp_logo_pregunta`,`fp_logo_registrado_iepi`,`fp_logo_imagen`,`fp_slo_pregunta`,`fp_slo_slogan`,`fp_ven_capacidad_productiva`,`fp_ven_precio`,`fp_ven_precio_transporte`,`fp_ven_precio_insumos`,`fp_ven_facturacion_mensual`,`fp_ven_frecuencia`,`fp_tra_pregunta`,`fp_tra_detalle`,`fp_logi_cobertura_servicios`,`fp_logi_a_que_ciudades`,`fp_pds_institucion`,`fp_pds_cuantas_instituciones_actualmente`,`fp_pds_numero_horas`,`fp_pds_detalle`,`fp_promocion_ventas`,`fp_peso`,`im_sumatoria_montos_ventas`,`im_semaforizacion_ventas`,`im_semaforizacion_ventas_acompanamiento`,`im_promedio`,`im_semaforizacion_producto`,`im_semaforizacion_oeps`,`im_medio_verificable`,`fecha_registro`,`user`) VALUES
-- ('','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','');
-- INSERT INTO `md_producto` (`cod_md_producto`,`cod_u_organizacionex`,`nombre`,`caracteristicas`,`sector`,`fecha_registro`,`user`) VALUES
-- ('','','','','','','');
-- INSERT INTO `md_servicio` (`cod_md_servicio`,`nombre`,`caracteristica_detalle`,`cod_u_organizaciones`,`sector`,`fecha_registro`,`user`) VALUES
-- ('','','','','','','');