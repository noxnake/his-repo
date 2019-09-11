DROP DATABASE IF EXISTS HIS
GO
CREATE DATABASE HIS
GO
USE HIS
GO
/****** Object:  Table [dbo].[HIS_COMPACTO]    Script Date: 2/09/2019 11:54:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HIS_COMPACTO](
	[id] [numeric](10, 0) IDENTITY(1,1) NOT NULL,
	[año] [int] NULL,
	[mes] [int] NULL,
	[id_cita] [numeric](10, 0) NULL,
	[codigo_item] [varchar](9) NULL,
	[tipo_diagnostico] [varchar](1) NULL,
	[valor_lab] [varchar](4) NULL,
 CONSTRAINT [PK_HIS_COMPACTO] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HIS_CONSOLIDADO]    Script Date: 2/09/2019 11:54:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HIS_CONSOLIDADO](
	[id] [numeric](10, 0) IDENTITY(1,1) NOT NULL,
	[cod_estab] [varchar](8) NULL,
	[plaza] [varchar](20) NULL,
	[fecha] [date] NULL,
	[fichafam] [varchar](20) NULL,
	[dni] [varchar](20) NULL,
	[cod_dpto] [varchar](3) NULL,
	[cod_prov] [varchar](3) NULL,
	[cod_dist] [varchar](3) NULL,
	[sexo] [varchar](2) NULL,
	[edad] [int] NULL,
	[establec] [varchar](2) NULL,
	[servicio] [varchar](2) NULL,
	[diagnost1] [varchar](2) NULL,
	[codigo1] [varchar](9) NULL,
	[labconf1] [varchar](9) NULL,
	[diagnost2] [varchar](2) NULL,
	[codigo2] [varchar](9) NULL,
	[labconf2] [varchar](9) NULL,
	[diagnost3] [varchar](2) NULL,
	[codigo3] [varchar](9) NULL,
	[labconf3] [varchar](9) NULL,
	[diagnost4] [varchar](2) NULL,
	[codigo4] [varchar](9) NULL,
	[labconf4] [varchar](9) NULL,
	[diagnost5] [varchar](2) NULL,
	[codigo5] [varchar](9) NULL,
	[labconf5] [varchar](9) NULL,
	[diagnost6] [varchar](2) NULL,
	[codigo6] [varchar](9) NULL,
	[labconf6] [varchar](9) NULL,
	[cod_fina] [varchar](15) NULL,
	[cod_etni] [varchar](3) NULL,
	[cod_servsa] [varchar](15) NULL,
	[AÑO] [int] NULL,
	[MES] [int] NULL,
	[DIA] [int] NULL,
	[dni_procesado] [varchar](8) NULL,
	[dni_atiende] [varchar](8) NULL,
	[dni_registra] [varchar](8) NULL,
	[nom_lote] [varchar](5) NULL,
	[num_pag] [int] NULL,
	[num_reg] [int] NULL,
	[id_cita] [numeric](10, 0) NULL,
 CONSTRAINT [PK_HIS_CONSOLIDADO] PRIMARY KEY NONCLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HIS_MAESTRO_PERSONAL]    Script Date: 2/09/2019 11:54:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HIS_MAESTRO_PERSONAL](
	[codpsal] [varchar](11) NULL,
	[nombre] [varchar](40) NULL,
	[plaza] [decimal](6, 0) NULL,
	[cod_2000] [varchar](9) NULL,
	[cod_prof] [varchar](2) NULL,
	[cod_cond] [varchar](2) NULL,
	[fecha_ing] [date] NULL,
	[fecha_baja] [date] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HIS_PLANO]    Script Date: 2/09/2019 11:54:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HIS_PLANO](
	[id_cita] [varchar](10) NULL,
	[Año] [varchar](50) NULL,
	[Mes] [varchar](50) NULL,
	[Dia] [varchar](50) NULL,
	[Lote] [varchar](50) NULL,
	[Num_pag] [varchar](50) NULL,
	[Num_reg] [varchar](50) NULL,
	[Servicio] [varchar](50) NULL,
	[Disa] [varchar](50) NULL,
	[Red] [varchar](50) NULL,
	[MicroRed] [varchar](50) NULL,
	[RENAES] [varchar](8) NULL,
	[Establecimiento] [varchar](50) NULL,
	[Tipo_Doc] [varchar](50) NULL,
	[IDENTIFICADOR] [varchar](50) NULL,
	[Nro_Doc] [varchar](50) NULL,
	[Nombre] [varchar](50) NULL,
	[Paterno] [varchar](50) NULL,
	[Materno] [varchar](50) NULL,
	[FECHA_NAC] [varchar](50) NULL,
	[Nro de HCL] [varchar](50) NULL,
	[FichaFam] [varchar](50) NULL,
	[Financiador] [varchar](50) NULL,
	[Nro_Afiliacion] [varchar](50) NULL,
	[Cond EESS] [varchar](50) NULL,
	[Cond Serv] [varchar](50) NULL,
	[Tipo Edad] [varchar](50) NULL,
	[Edad Pac(Año)] [varchar](50) NULL,
	[Edad Pac (Mes)] [varchar](50) NULL,
	[Edad Pac (Día)] [varchar](50) NULL,
	[Ubigeo] [varchar](50) NULL,
	[Domicilio] [varchar](50) NULL,
	[Turno atención] [varchar](50) NULL,
	[Género] [varchar](50) NULL,
	[Etnia] [varchar](50) NULL,
	[id_ciex1] [varchar](50) NULL,
	[id_tipdiag1] [varchar](50) NULL,
	[valor_lab1] [varchar](50) NULL,
	[id_ciex2] [varchar](50) NULL,
	[id_tipdiag2] [varchar](50) NULL,
	[valor_lab2] [varchar](50) NULL,
	[id_ciex3] [varchar](50) NULL,
	[id_tipdiag3] [varchar](50) NULL,
	[valor_lab3] [varchar](50) NULL,
	[id_ciex4] [varchar](50) NULL,
	[id_tipdiag4] [varchar](50) NULL,
	[valor_lab4] [varchar](50) NULL,
	[id_ciex5] [varchar](50) NULL,
	[id_tipdiag5] [varchar](50) NULL,
	[valor_lab5] [varchar](50) NULL,
	[id_ciex6] [varchar](50) NULL,
	[id_tipdiag6] [varchar](50) NULL,
	[valor_lab6] [varchar](50) NULL,
	[FECHA_RESULTADO_H] [varchar](50) NULL,
	[FECHA_SOLICITUD_H] [varchar](50) NULL,
	[NUM_DOC_ATIENDE] [varchar](50) NULL,
	[ATIENDE] [varchar](50) NULL,
	[NUM_DOC_REGISTRA] [varchar](50) NULL,
	[REGISTRADOR] [varchar](50) NULL,
	[FECHA_REGISTRO] [varchar](50) NULL,
	[ULT_MODIFICACION] [varchar](50) NULL,
	[PESO] [varchar](50) NULL,
	[TALLA] [varchar](50) NULL,
	[HB] [varchar](50) NULL,
	[PAB] [varchar](50) NULL,
	[PC] [varchar](50) NULL,
	[ICM] [varchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HIS1]    Script Date: 2/09/2019 11:54:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HIS1](
	[cod_2000] [varchar](9) NULL,
	[ano] [numeric](4, 0) NULL,
	[mes] [numeric](2, 0) NULL,
	[nom_lote] [varchar](3) NULL,
	[num_pag] [numeric](3, 0) NULL,
	[codif] [varchar](11) NULL,
	[cod_servsa] [varchar](6) NULL,
	[plaza] [varchar](11) NULL,
	[esta_pag] [varchar](1) NULL,
	[tot_reg] [varchar](3) NULL,
	[flagenvio] [varchar](1) NULL,
	[mt] [varchar](1) NULL,
	[st] [varchar](1) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HISA]    Script Date: 2/09/2019 11:54:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HISA](
	[cod_2000] [varchar](9) NULL,
	[ano] [numeric](4, 0) NULL,
	[mes] [numeric](2, 0) NULL,
	[nom_lote] [varchar](4) NULL,
	[num_pag] [numeric](3, 0) NULL,
	[num_reg] [numeric](2, 0) NULL,
	[dia] [numeric](2, 0) NULL,
	[fichafam] [varchar](12) NULL,
	[cod_dpto] [varchar](2) NULL,
	[cod_prov] [varchar](2) NULL,
	[cod_dist] [varchar](2) NULL,
	[edad] [numeric](3, 0) NULL,
	[tip_edad] [varchar](1) NULL,
	[sexo] [varchar](1) NULL,
	[establec] [varchar](1) NULL,
	[servicio] [varchar](1) NULL,
	[diagnost1] [varchar](1) NULL,
	[labconf1] [varchar](5) NULL,
	[codigo1] [varchar](10) NULL,
	[diagnost2] [varchar](1) NULL,
	[labconf2] [varchar](5) NULL,
	[codigo2] [varchar](10) NULL,
	[diagnost3] [varchar](1) NULL,
	[labconf3] [varchar](5) NULL,
	[codigo3] [varchar](10) NULL,
	[diagnost4] [varchar](1) NULL,
	[labconf4] [varchar](5) NULL,
	[codigo4] [varchar](10) NULL,
	[diagnost5] [varchar](1) NULL,
	[labconf5] [varchar](5) NULL,
	[codigo5] [varchar](10) NULL,
	[diagnost6] [varchar](1) NULL,
	[labconf6] [varchar](5) NULL,
	[codigo6] [varchar](10) NULL,
	[esta_reg] [varchar](2) NULL,
	[mt] [varchar](1) NULL,
	[dni] [varchar](20) NULL,
	[fi] [varchar](2) NULL,
	[et] [varchar](3) NULL,
	[st] [varchar](1) NULL
) ON [PRIMARY]
GO
