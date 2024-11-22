/****** Object:  Table [dbo].[TemperatureRecords]    Script Date: 20/11/2024 19:17:53 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[TemperatureRecords](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[DeviceId] [int] NOT NULL,
	[InternalTemperature] [float] NOT NULL,
	[ExternalTemperature] [float] NOT NULL,
	[MeasurementTime] [datetime2](7) NOT NULL,
	[DevicePeriodActiveId] [int] NOT NULL,
 CONSTRAINT [PK_TemperatureRecords] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[TemperatureRecords]  WITH CHECK ADD  CONSTRAINT [FK_TemperatureRecords_PeriodActive_DevicePeriodActiveId] FOREIGN KEY([DevicePeriodActiveId])
REFERENCES [dbo].[PeriodActive] ([Id])
ON DELETE CASCADE
GO

ALTER TABLE [dbo].[TemperatureRecords] CHECK CONSTRAINT [FK_TemperatureRecords_PeriodActive_DevicePeriodActiveId]
GO


