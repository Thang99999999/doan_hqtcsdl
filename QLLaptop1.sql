USE [QLlaptop2]
GO
/****** Object:  Table [dbo].[HoaDonBan]    Script Date: 11/1/2019 7:45:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HoaDonBan](
	[IDHoaDonBan] [nvarchar](50) NOT NULL,
	[IDLap] [nvarchar](50) NULL,
	[IDKhachHang] [nvarchar](50) NULL,
	[IDNhanVien] [nvarchar](50) NULL,
	[SoLuong] [int] NULL,
	[NgayBan] [date] NULL,
	[DonGia] [money] NULL,
	[Sdt] [nvarchar](50) NULL,
 CONSTRAINT [PK_HoaDonBan] PRIMARY KEY CLUSTERED 
(
	[IDHoaDonBan] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HoaDonNhap]    Script Date: 11/1/2019 7:45:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HoaDonNhap](
	[IDHoaDonNhap] [nvarchar](50) NOT NULL,
	[IDNhanVien] [nvarchar](50) NULL,
	[IDNhaCC] [nvarchar](50) NULL,
	[IDLap] [nvarchar](50) NULL,
	[SoLuong] [int] NULL,
	[NgayNhap] [date] NULL,
	[TongTien] [money] NULL,
 CONSTRAINT [PK_HoaDonNhap] PRIMARY KEY CLUSTERED 
(
	[IDHoaDonNhap] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[KhachHang]    Script Date: 11/1/2019 7:45:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KhachHang](
	[IDKhachHang] [nvarchar](50) NOT NULL,
	[TenKhachHang] [nvarchar](50) NULL,
	[GioiTinh] [bit] NULL,
	[DiaChi] [nvarchar](50) NULL,
	[Sdt] [nvarchar](50) NULL,
 CONSTRAINT [PK_KhachHang] PRIMARY KEY CLUSTERED 
(
	[IDKhachHang] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MyUser]    Script Date: 11/1/2019 7:45:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MyUser](
	[id] [nvarchar](50) NOT NULL,
	[password] [nvarchar](30) NULL,
	[PhanQuyen] [int] NULL,
 CONSTRAINT [PK_MyUser] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NhaCC]    Script Date: 11/1/2019 7:45:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NhaCC](
	[IDNhaCC] [nvarchar](50) NOT NULL,
	[TenNhaCC] [nvarchar](50) NULL,
	[DiaChi] [nvarchar](50) NULL,
	[Sdt] [nvarchar](50) NULL,
 CONSTRAINT [PK_NhaCC] PRIMARY KEY CLUSTERED 
(
	[IDNhaCC] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NhanVien]    Script Date: 11/1/2019 7:45:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NhanVien](
	[IDNhanVien] [nvarchar](50) NOT NULL,
	[TenNhanVien] [nvarchar](50) NULL,
	[GioiTinh] [bit] NULL,
	[NgaySinh] [date] NULL,
	[DiaChi] [nvarchar](50) NULL,
	[Sdt] [nvarchar](50) NULL,
 CONSTRAINT [PK_NhanVien] PRIMARY KEY CLUSTERED 
(
	[IDNhanVien] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ThongTinLap]    Script Date: 11/1/2019 7:45:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ThongTinLap](
	[IDLap] [nvarchar](50) NOT NULL,
	[TenLap] [nvarchar](50) NULL,
	[IDNhaCC] [nvarchar](50) NULL,
	[TenNhaCC] [nvarchar](50) NULL,
	[SoLuong] [int] NULL,
	[DonGia] [money] NULL,
	[ThongTin] [nvarchar](150) NULL,
 CONSTRAINT [PK_ThongTinLap] PRIMARY KEY CLUSTERED 
(
	[IDLap] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[HoaDonBan]  WITH CHECK ADD  CONSTRAINT [FK_HoaDonBan_KhachHang] FOREIGN KEY([IDKhachHang])
REFERENCES [dbo].[KhachHang] ([IDKhachHang])
GO
ALTER TABLE [dbo].[HoaDonBan] CHECK CONSTRAINT [FK_HoaDonBan_KhachHang]
GO
ALTER TABLE [dbo].[HoaDonBan]  WITH CHECK ADD  CONSTRAINT [FK_HoaDonBan_NhanVien] FOREIGN KEY([IDNhanVien])
REFERENCES [dbo].[NhanVien] ([IDNhanVien])
GO
ALTER TABLE [dbo].[HoaDonBan] CHECK CONSTRAINT [FK_HoaDonBan_NhanVien]
GO
ALTER TABLE [dbo].[HoaDonBan]  WITH CHECK ADD  CONSTRAINT [FK_HoaDonBan_ThongTinLap] FOREIGN KEY([IDLap])
REFERENCES [dbo].[ThongTinLap] ([IDLap])
GO
ALTER TABLE [dbo].[HoaDonBan] CHECK CONSTRAINT [FK_HoaDonBan_ThongTinLap]
GO
ALTER TABLE [dbo].[HoaDonNhap]  WITH CHECK ADD  CONSTRAINT [FK_HoaDonNhap_NhaCC] FOREIGN KEY([IDNhaCC])
REFERENCES [dbo].[NhaCC] ([IDNhaCC])
GO
ALTER TABLE [dbo].[HoaDonNhap] CHECK CONSTRAINT [FK_HoaDonNhap_NhaCC]
GO
ALTER TABLE [dbo].[HoaDonNhap]  WITH CHECK ADD  CONSTRAINT [FK_HoaDonNhap_NhanVien] FOREIGN KEY([IDNhanVien])
REFERENCES [dbo].[NhanVien] ([IDNhanVien])
GO
ALTER TABLE [dbo].[HoaDonNhap] CHECK CONSTRAINT [FK_HoaDonNhap_NhanVien]
GO
ALTER TABLE [dbo].[HoaDonNhap]  WITH CHECK ADD  CONSTRAINT [FK_HoaDonNhap_ThongTinLap] FOREIGN KEY([IDLap])
REFERENCES [dbo].[ThongTinLap] ([IDLap])
GO
ALTER TABLE [dbo].[HoaDonNhap] CHECK CONSTRAINT [FK_HoaDonNhap_ThongTinLap]
GO
ALTER TABLE [dbo].[ThongTinLap]  WITH CHECK ADD  CONSTRAINT [FK_ThongTinLap_NhaCC] FOREIGN KEY([IDNhaCC])
REFERENCES [dbo].[NhaCC] ([IDNhaCC])
GO
ALTER TABLE [dbo].[ThongTinLap] CHECK CONSTRAINT [FK_ThongTinLap_NhaCC]
GO
/****** Object:  StoredProcedure [dbo].[uspDeleteHoadon]    Script Date: 11/1/2019 7:45:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[uspDeleteHoadon]
	@IDHoaDonBan nvarchar(50)
AS
BEGIN
	BEGIN TRANSACTION
	BEGIN TRY
	DELETE FROM HoaDonBan WHERE IDHoaDonBan = @IDHoaDonBan;
	COMMIT
	END TRY
	BEGIN CATCH
		ROLLBACK TRANSACTION
		DECLARE @ErrorMessage NVARCHAR(2000)
		SELECT @ErrorMessage = 'Error: ' + ERROR_MESSAGE()
		RAISERROR(@ErrorMessage, 16, 1)
	END CATCH
END
GO
/****** Object:  StoredProcedure [dbo].[uspFixHoadon]    Script Date: 11/1/2019 7:45:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[uspFixHoadon]
	@IDHoaDonBan nvarchar(50),
	@IDLap nvarchar(50),
	@IDKhachHang nvarchar(50),
	@IDNhanVien nvarchar(50),
	@SoLuong int,
	@NgayBan date,
	@DonGia money,
	@Sdt nvarchar(50)
as
if not exists (select * from HoaDonBan where IDHoaDonBan=@IDHoaDonBan) throw 50001,'Mã hóa đơn đã tồn tại!',1;
IF	@IDHoaDonBan = '' THROW 50001, 'Mã hóa đơn không được để trống!', 1;
IF	@IDKhachHang IS NULL OR @IDKhachHang = '' THROW 50001, 'Mã khách hàng không được để trống!', 1;
IF	@IDNhanVien IS NULL OR @IDNhanVien='' THROW 50001, 'Mã nhân viên không được để trống!', 1;
IF	@IDNhanVien IS NULL OR @IDLap='' THROW 50001, 'Mã Laptop không được để trống!', 1;
BEGIN
		UPDATE	HoaDonBan
		SET			
				IDLap=@IDLap,
				IDKhachHang=@IDKhachHang, 
				IDNhanVien=@IDNhanVien, 
				SoLuong=@SoLuong,
				NgayBan=@NgayBan,
				DonGia=@DonGia,
				Sdt=@Sdt
		WHERE	IDHoaDonBan = @IDHoaDonBan
	END
GO
/****** Object:  StoredProcedure [dbo].[uspInserthoadon]    Script Date: 11/1/2019 7:45:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[uspInserthoadon]
@IDHoaDonBan nvarchar(50),@IDKachHang nvarchar(50)=null,@IDNhanVien nvarchar(50)=null,@IDLap nvarchar(50)=null
,@SoLuong int =null,@NgayBan date =null,@DonGia money =null,@Sdt nvarchar(50) =null
as
IF	EXISTS (SELECT * FROM HoaDonBan WHERE IDHoaDonBan = @IDHoaDonBan) THROW 50001, 'Mã hóa đơn đã tồn tại!', 1;
IF	@IDHoaDonBan = '' THROW 50001, 'Mã hóa đơn không được để trống!', 1;
IF	@IDKachHang IS NULL OR @IDKachHang = '' THROW 50001, 'Mã khách hàng không được để trống!', 1;
IF	@IDNhanVien IS NULL OR @IDNhanVien='' THROW 50001, 'Mã nhân viên không được để trống!', 1;
IF	@IDNhanVien IS NULL OR @IDLap='' THROW 50001, 'Mã Laptop không được để trống!', 1;
BEGIN
	BEGIN TRANSACTION
	BEGIN TRY
	INSERT HoaDonBan
	VALUES (@IDHoaDonBan, @IDLap ,@IDKachHang, @IDNhanVien, @SoLuong, @NgayBan, @DonGia, @Sdt);
	COMMIT
	END TRY
	BEGIN CATCH
		 ROLLBACK TRANSACTION
		 DECLARE @ErrorMessage NVARCHAR(2000)
		 SELECT @ErrorMessage = 'Error: ' + ERROR_MESSAGE()
		 RAISERROR(@ErrorMessage, 16, 1)
	END CATCH	
END
GO
