USE [master]
GO
/****** Object:  Database [webapp]    Script Date: 09/19/19 11:42:21 ******/
CREATE DATABASE [webapp]
GO

USE [webapp]
GO
/****** Object:  Table [dbo].[Ghe]    Script Date: 09/19/19 11:42:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Ghe](
	[SoPhong] [varchar](30) NOT NULL,
	[SoGhe] [varchar](30) NOT NULL,
	[MoTa] [nvarchar](10) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[SoGhe] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[LichChieu]    Script Date: 09/19/19 11:42:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[LichChieu](
	[MaLichChieu] [varchar](30) NOT NULL,
	[NgayChieu] [datetime] NOT NULL,
	[ThoiGianChieu] [datetime] NOT NULL,
	[MaPhim] [varchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[MaLichChieu] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Phim]    Script Date: 09/19/19 11:42:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Phim](
	[MaPhim] [varchar](50) NOT NULL,
	[TenPhim] [nvarchar](100) NOT NULL,
	[TheLoai] [nvarchar](20) NOT NULL,
	[GioiThieu] [ntext] NULL,
	[DaoDien] [nvarchar](60) NULL,
	[DienVien] [nvarchar](65) NULL,
	[NgonNgu] [nvarchar](20) NULL,
	[ThoiLuong] [nvarchar](10) NOT NULL,
	[NgayKhoiChieu] [datetime] NOT NULL,
	[Image] [char](250) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[MaPhim] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Phong]    Script Date: 09/19/19 11:42:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Phong](
	[SoPhong] [varchar](30) NOT NULL,
	[ViTri] [nvarchar](20) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[SoPhong] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ThanhVien]    Script Date: 09/19/19 11:42:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ThanhVien](
	[MaTV] [varchar](30) NOT NULL,
	[MatKhau] [nvarchar](20) NOT NULL,
	[TenTV] [nvarchar](50) NOT NULL,
	[Email] [nvarchar](50) NULL,
	[Sdt] [nvarchar](10) NULL,
	[Cmnd] [int] NULL,
	[NgaySinh] [datetime] NULL,
	[GioiTinh] [bit] NULL,
	[DiaChi] [ntext] NULL,
	[LoaiTK] [bit] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[MaTV] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Ve]    Script Date: 09/19/19 11:42:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Ve](
	[SoGhe] [varchar](30) NOT NULL,
	[MaTV] [varchar](30) NOT NULL,
	[MaLichChieu] [varchar](30) NOT NULL,
	[TrangThai] [bit] NOT NULL,
	[GiaTien] [money] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[SoGhe] ASC,
	[MaLichChieu] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[Ghe] ([SoPhong], [SoGhe], [MoTa]) VALUES (N'R01', N'01', N'0')
INSERT [dbo].[Ghe] ([SoPhong], [SoGhe], [MoTa]) VALUES (N'R01', N'02', N'0')
INSERT [dbo].[Ghe] ([SoPhong], [SoGhe], [MoTa]) VALUES (N'R01', N'03', N'0')
INSERT [dbo].[Ghe] ([SoPhong], [SoGhe], [MoTa]) VALUES (N'R01', N'04', N'0')
INSERT [dbo].[Ghe] ([SoPhong], [SoGhe], [MoTa]) VALUES (N'R01', N'05', N'0')
INSERT [dbo].[Ghe] ([SoPhong], [SoGhe], [MoTa]) VALUES (N'R01', N'06', N'0')
INSERT [dbo].[Ghe] ([SoPhong], [SoGhe], [MoTa]) VALUES (N'R01', N'07', N'0')
INSERT [dbo].[Ghe] ([SoPhong], [SoGhe], [MoTa]) VALUES (N'R01', N'08', N'0')
INSERT [dbo].[Ghe] ([SoPhong], [SoGhe], [MoTa]) VALUES (N'R01', N'09', N'0')
INSERT [dbo].[Ghe] ([SoPhong], [SoGhe], [MoTa]) VALUES (N'R01', N'10', N'0')
INSERT [dbo].[Ghe] ([SoPhong], [SoGhe], [MoTa]) VALUES (N'R01', N'11', N'0')
INSERT [dbo].[Ghe] ([SoPhong], [SoGhe], [MoTa]) VALUES (N'R01', N'12', N'0')
INSERT [dbo].[Ghe] ([SoPhong], [SoGhe], [MoTa]) VALUES (N'R01', N'13', N'0')
INSERT [dbo].[Ghe] ([SoPhong], [SoGhe], [MoTa]) VALUES (N'R01', N'14', N'0')
INSERT [dbo].[Ghe] ([SoPhong], [SoGhe], [MoTa]) VALUES (N'R01', N'15', N'0')
INSERT [dbo].[Ghe] ([SoPhong], [SoGhe], [MoTa]) VALUES (N'R01', N'16', N'0')
INSERT [dbo].[Ghe] ([SoPhong], [SoGhe], [MoTa]) VALUES (N'R01', N'17', N'0')
INSERT [dbo].[Ghe] ([SoPhong], [SoGhe], [MoTa]) VALUES (N'R01', N'18', N'0')
INSERT [dbo].[Ghe] ([SoPhong], [SoGhe], [MoTa]) VALUES (N'R01', N'19', N'0')
INSERT [dbo].[Ghe] ([SoPhong], [SoGhe], [MoTa]) VALUES (N'R01', N'20', N'0')
INSERT [dbo].[Ghe] ([SoPhong], [SoGhe], [MoTa]) VALUES (N'R02', N'a1', N'1')
INSERT [dbo].[Phim] ([MaPhim], [TenPhim], [TheLoai], [GioiThieu], [DaoDien], [DienVien], [NgonNgu], [ThoiLuong], [NgayKhoiChieu], [Image]) VALUES (N'P001', N'Sát Thủ Anna', N'Hành động', N'Với một cuộc đời bế tắc, Anna Poliatova (Sasha Luss) miễn cưỡng nhận lời đề nghị từ Alex (Luke Evans) gia nhập vào KGB ( Ủy ban An Ninh Quốc Gia Xô Viết). Tại đây, Anna được đào tạo để trở thành một sát thủ cho tổ chức, và cô được trực tiếp huấn luyện bởi Olga (Helen Mirren). Cô được hứa hẹn sẽ giải ngũ sau 5 năm phục vụ cho KGB. Thế nhưng, tổ chức KGB quay lưng lại với cô. Sau đó, mỉa mai như một trò đùa số phận, cô được CIA thuê ám sát Vassiliev – tay cầm đầu của KGB. Liệu con đường nào là đúng đắn cho Anna? Cô có thể thoát khỏi vòng quay tội lỗi này để trở về với cuộc sống bình thường?', N'Luc Besson', N'Sasha Luss, Helen Mirren, Luke Evans', N'', N'119 phút', CAST(0x0000AACE00000000 AS DateTime), N'anna                                                                                                                                                                                                                                                      ')
INSERT [dbo].[Phim] ([MaPhim], [TenPhim], [TheLoai], [GioiThieu], [DaoDien], [DienVien], [NgonNgu], [ThoiLuong], [NgayKhoiChieu], [Image]) VALUES (N'P002', N'Người Bạn Ngoài Hành tinh', N'Hoạt hình, Phiêu lưu', N'Shaun the Sheep Movie: Người Bạn Ngoài Hành Tinh trong lần trở lại này, bên cạnh Shaun, đàn cừu và những nhân vật quen thuộc, bộ phim sẽ có sự xuất hiện của một nhân vật mới thú vị mang tên Lu-la, một cô bé ngoài hành tinh hết sức đáng yêu rơi từ chiếc phi thuyền không gian xuống trang trại Mossy Bottom. Thế là chú cừu thông minh Shaun cùng những người bạn bắt tay vào công cuộc giúp đỡ Lu-la về với quê hương', N'Will Becher, Richard Phelan', N'Justin Fletcher, John Sparkes, Kate Harbour', N'Tiếng Anh', N'86 phút', CAST(0x0000AAD500000000 AS DateTime), N'nguoibanngoaihanhtinh                                                                                                                                                                                                                                     ')
INSERT [dbo].[Phim] ([MaPhim], [TenPhim], [TheLoai], [GioiThieu], [DaoDien], [DienVien], [NgonNgu], [ThoiLuong], [NgayKhoiChieu], [Image]) VALUES (N'P003', N'Gã Hề Ma Quái 2 ', N'Kinh dị', N'Lấy bối cảnh 27 năm sau sự kiện It, It: Chapter Two vẫn là câu chuyện về những cô cậu bé của nhóm “The Losers Club”, lúc này đã trưởng thành và đối mặt với vô số vấn đề trong cuộc sống. Chưa dừng lại ở đó, ám ảnh ma hề Pennywise cứ 27 năm lại xuất hiện một lần tại thị trấn Derry buộc 7 cô cậu bé ngày nào phải tiếp tục cuốn vào cuộc chạm trán tiếp theo giữa hai bên thiện và ác. Mặc dù có thể cả nhóm đã trưởng thành và khôn ngoan hơn, nhưng cuộc chiến của họ với Pennywise vẫn còn đó những hậu quả bất ngờ, thậm chí khiến một số thành viên phải trải qua đau đớn đến tột cùng.', N'Andrés Muschietti', N'James McAvoy, Javier Botet, Jessica Chastain', N'Tiếng Anh', N'172 phút', CAST(0x0000AAC000000000 AS DateTime), N'gahemaquai2                                                                                                                                                                                                                                               ')
INSERT [dbo].[Phim] ([MaPhim], [TenPhim], [TheLoai], [GioiThieu], [DaoDien], [DienVien], [NgonNgu], [ThoiLuong], [NgayKhoiChieu], [Image]) VALUES (N'P004', N'Người Lạ Ơi', N'Hài hước, Tình cảm', N'Bộ phim xoay quanh anh chàng “bad boy” Đăng DJ (Karik) – một anh chàng nghệ sĩ tài hoa, đa tình và không tin vào sự tồn tại của tình yêu. Với Đăng tình yêu đôi khi chỉ là tình cảm thoáng qua hoặc thậm chí chỉ là tình một đêm. Ngày nọ, một cô gái xinh đẹp nhưng có vẻ bất bình thường đột nhiên xuất hiện trước mặt anh và đòi “động phòng”. Cô gái này toát lên một khí chất khác thường khiến cho Đăng không thể giữ được sự tự tin cũng như khí chất phong lưu nổi tiếng của mình. Cô gái này là ai? Cô ấy có khả năng đặc biệt gì mà có thể khiến một tay chơi khét tiếng phải trốn chạy trối chết theo nghĩa đen', N'Trương Chí Bình', N'Karik, Thuỳ Anh, Trịnh Thảo, Trương Thế Vinh, Mỹ Duyên', N'Tiếng Việt', N'89 phút', CAST(0x0000AAC700000000 AS DateTime), N'nguoilaoi                                                                                                                                                                                                                                                 ')
INSERT [dbo].[Phim] ([MaPhim], [TenPhim], [TheLoai], [GioiThieu], [DaoDien], [DienVien], [NgonNgu], [ThoiLuong], [NgayKhoiChieu], [Image]) VALUES (N'P005', N'Thách Yêu 2 Năm', N'Hài hước, Tình cảm', N'Than là một nhân viên phân tích bảo hiểm, chỉ tin vào con số và thống kê, Than đưa sản phẩm bảo hiểm tình yêu 2 năm lên đỉnh cao cho công ty. Tuy nhiên, Jeed nữ đồng nghiệp của anh lại không nghĩ vậy, cô bằng mọi cách phá đám anh để công ty hủy bỏ sản phẩm bảo hiểm đó. Tưởng chừng là hai địch thủ trái ngược nhau, cả hai dần khám phá ra tình yêu là cân bằng của lý trí và con tim. Sau Friendzone, Love Battle đã tạo nên một cơn sóng mùa hè tại các rạp chiếu phim Thái Lan.', N'Wirat Hengkongdee', N'Esther Supreeleela, Prama Imanotai', N'Tiếng Thái', N'130 phút', CAST(0x0000AAC700000000 AS DateTime), N'thachyeu2nam                                                                                                                                                                                                                                              ')
INSERT [dbo].[Phim] ([MaPhim], [TenPhim], [TheLoai], [GioiThieu], [DaoDien], [DienVien], [NgonNgu], [ThoiLuong], [NgayKhoiChieu], [Image]) VALUES (N'P006', N'The Angry Birds Movie 2 ', N'Hoạt hình', N'Sau 4 năm vắng bóng, chú chim giận dữ Red cùng những người bạn tinh quái và dễ thương đã quay trở lại và lần đầu tiên trong lịch sử Angry Birds, hai kẻ thù "không đội trời chung" Chim và Heo quyết định bắt tay họp tác với nhau để chống lại kẻ thù chung là nữ hoàng băng giá Zeta.', N'Thurop Van Orman', N'Jason Sudeikis, Josh Gad,', N'Tiếng Anh', N'96 phút', CAST(0x0000AAB200000000 AS DateTime), N'angry                                                                                                                                                                                                                                                     ')
INSERT [dbo].[Phim] ([MaPhim], [TenPhim], [TheLoai], [GioiThieu], [DaoDien], [DienVien], [NgonNgu], [ThoiLuong], [NgayKhoiChieu], [Image]) VALUES (N'P007', N'Anh Thầy Ngôi Sao', N'Hài hước', N'Hoàng là một chàng trai trẻ ôm mộng thành ngôi sao ca nhạc, vì chưa gặp thời nên tạm kiếm sống bằng công việc làm thầy giáo dạy nhạc. Sau biến cố, Hoàng buộc phải chuyển công tác ra một hòn đảo cách xa đất liền và tiếp quản một lớp học đặc biệt với vỏn vẹn 5 học trò. Cảm thấy cuộc sống mới chỉ mang lại phiền toái, Hoàng nhiều lần bỏ về nhưng không thành vì đám trẻ và người dân đảo luôn tìm cách giữ chân thầy giáo. Đến khi anh dần thích nghi với hòn đảo này cũng là lúc cơ hội trở thành ca sĩ tìm đến, buộc Hoàng phải đưa ra lựa chọn.', N'Đỗ Đức Thịnh', N'uyme, Miu Lê, Xuân Nghị, Gil Lê', N'Tiếng Việt', N'104 phút', CAST(0x0000AAB900000000 AS DateTime), N'anhthayngoisao                                                                                                                                                                                                                                            ')
INSERT [dbo].[Phim] ([MaPhim], [TenPhim], [TheLoai], [GioiThieu], [DaoDien], [DienVien], [NgonNgu], [ThoiLuong], [NgayKhoiChieu], [Image]) VALUES (N'P008', N'Cuộc Đời Phi Thường Của Chú Chó Enzo', N'Hài hước, Lãng mạn', N'Dựa trên tiểu thuyết ăn khách của Garth Stein, bộ phim đặt người xem vào góc nhìn và lời kể của chú chó Golden Retriever tên Enzo ( Kevin Costner lồng tiếng ). Enzo được Denny Swift ( Milo Ventimiglia ) nhận nuôi từ khi còn rất nhỏ và cả hai như một đôi bạn thân cùng nhau lớn lên. Denny là một tay đua thể thức một dày dạn kinh nghiệm, đây cũng chính duyên cơ đưa cuộc đời Enzo đi theo hướng một cách rất phi thường, khi niềm đam mê môn thể thao tốc độ trong chú chó này được khai phá…', N'Simon Curtis', N'Milo Ventimiglia, Amanda Seyfried, Kevin Costner', N'Tiếng Anh', N'113 phút', CAST(0x0000AAC700000000 AS DateTime), N'concho                                                                                                                                                                                                                                                    ')
INSERT [dbo].[Phim] ([MaPhim], [TenPhim], [TheLoai], [GioiThieu], [DaoDien], [DienVien], [NgonNgu], [ThoiLuong], [NgayKhoiChieu], [Image]) VALUES (N'P009', N'Đứa Con Của Thời Tiết', N'Hoạt hình', N'Bộ phim xoay quanh hai nhân vật: Hodaka và Hina. Hodaka là cậu thiếu niên sống trên một hòn đảo nhỏ, đã rời khỏi quê hương để đến Tokyo sầm uất. Tại đây, cậu quen biết với Hina – một cô gái kì lạ có năng lực thanh lọc bầu trời mỗi khi “cầu nguyện”. Cô có khả năng chặn đứng cơn mưa và xua tan mây đen theo ý muốn.', N'Makoto Shinkai', NULL, N'Tiếng Nhật', N'112 phút', CAST(0x0000AAB900000000 AS DateTime), N'duaconcuathoitiet                                                                                                                                                                                                                                         ')
INSERT [dbo].[Phim] ([MaPhim], [TenPhim], [TheLoai], [GioiThieu], [DaoDien], [DienVien], [NgonNgu], [ThoiLuong], [NgayKhoiChieu], [Image]) VALUES (N'P010', N'Lạc Hồn', N'Hồi hộp, Ly kì', N'Lạc Hồn là chuyến hành trình đi ngược quá khứ của "hồn ma" Hye-jung - cô gái trẻ chết một cách bí ẩn. Từng sống một cuộc đời cô độc và tẻ nhạt, Hye-jung cắt đứt liên lạc với gia đình, từ chối tình cảm từ anh chàng đồng nghiệp, và lặp lại công việc thường ngày tại một nhà máy mà không có mục đích sống nào. Mọi chuyện đảo lộn khi Hye-jung bị giết hại và trở thành hồn ma lang thang ở nơi cô từng sinh sống. Trong những ngày cuối đời, cô nhận ra rằng những thay đổi trong suy nghĩ của mình sẽ có thể tạo ra những đổi thay trong cuộc đời của những người khác.', N'Yu Eun-jeong', N'Han Hae-in, Jeon So-nee, Gam So-hyun', N'Tiếng Hàn', N'85 phút', CAST(0x0000AAC700000000 AS DateTime), N'lachon                                                                                                                                                                                                                                                    ')
INSERT [dbo].[Phim] ([MaPhim], [TenPhim], [TheLoai], [GioiThieu], [DaoDien], [DienVien], [NgonNgu], [ThoiLuong], [NgayKhoiChieu], [Image]) VALUES (N'P011', N'Lời Nguyền 8 Chân', N'Kinh dị', N'Dựa trên bài thơ cổ từ nhiều thế kỷ trước, LỜI NGUYỀN 8 CHÂN xoay quanh một gia đình chuyển đến căn biệt thự hẻo lánh và bị tấn công bởi con quái vật nhện khổng lồ. Trỗi dậy từ màn đêm, nó lao vào cuộc cuồng sát khốc liệt. Liệu ba mẹ con xấu số có thoát khỏi nanh vuốt của con nhện quỷ tàn ác?', N'Micah Gallo', N'Bruca Davision', NULL, N'90 phút', CAST(0x0000AAC700000000 AS DateTime), N'loinguyen8chan                                                                                                                                                                                                                                            ')
INSERT [dbo].[Phim] ([MaPhim], [TenPhim], [TheLoai], [GioiThieu], [DaoDien], [DienVien], [NgonNgu], [ThoiLuong], [NgayKhoiChieu], [Image]) VALUES (N'P012', N'Sứ Mệnh Nội Gián 2', N'Hành động, Tâm lý', N'Bộ ba lão đại tiếp tục bước vào một tình huống vô cùng đặc biệt: nội gián trong nội gián. Một thương vụ giữa thiện ác và sáng tối, giữa kẻ thi hành chính nghĩa và những tên cớm bẩn.', N'Jazz Boon', N'Cổ Thiên Lạc, Mã Đức Chung, Trương Gia Huy', N'Tiếng Trung', N'100 phút', CAST(0x0000AAC000000000 AS DateTime), N'sumenhnoigian                                                                                                                                                                                                                                             ')
INSERT [dbo].[Phim] ([MaPhim], [TenPhim], [TheLoai], [GioiThieu], [DaoDien], [DienVien], [NgonNgu], [ThoiLuong], [NgayKhoiChieu], [Image]) VALUES (N'P013', N'Trò Đùa Tử Thần ', N'Hài hước, Kinh dị', N'DEADTECTIVES sẽ theo chân một nhóm chuyên gia hay tìm hiểu những hiện tượng siêu nhiên và phát sóng trên các chương trình thực tế TV. Lần này, cả nhóm lên đường đến Mexico và khám phá căn nhà bí ẩn nhất quốc gia này, hòng tăng lượt xem cho chương trình của họ. Tuy nhiên, khi những bí mật đen tối nhất của căn nhà dần dần lộ rõ, các chuyên gia nhanh chóng nhận ra rằng …đây là chuyện hệ trọng chứ chẳng phải đùa bỡn như bao lần. Kỹ năng săn ma chưa có, một tí kiến thức thực tế lại càng không, cả nhóm phải chật vật tìm cách thoát khỏi căn nhà quỷ quái này.', N'Tony West', N'Martha Higareda, Chris Geere, Tina Ivlev', N'Tiếng Anh', N'92 phút', CAST(0x0000AAC700000000 AS DateTime), N'troduatuthan                                                                                                                                                                                                                                              ')
INSERT [dbo].[Phim] ([MaPhim], [TenPhim], [TheLoai], [GioiThieu], [DaoDien], [DienVien], [NgonNgu], [ThoiLuong], [NgayKhoiChieu], [Image]) VALUES (N'P014', N'Tươi Lên Đi, Mr.Lee', N'Gia đình, Tình cảm', N'Chul-soo là một người đàn ông đặc biệt. Mọi chuyện bất ngờ bắt đầu xảy đến với anh khi con gái anh- Saet-byeol xuất hiện. Saet-byeol đang bị ốm và phải nằm viện. Từng chuyện trong quá khứ và mối quan hệ cha con của Chul-soo bắt đầu được hé mở.', N'Lee Gye - Byeok', N'Cha Seung Won, Park Hae Joon', N'Tiếng Hàn', N'111 phút', CAST(0x0000AAC700000000 AS DateTime), N'tuoilendi                                                                                                                                                                                                                                                 ')
INSERT [dbo].[Phim] ([MaPhim], [TenPhim], [TheLoai], [GioiThieu], [DaoDien], [DienVien], [NgonNgu], [ThoiLuong], [NgayKhoiChieu], [Image]) VALUES (N'P015', N'Đảo Săn MồiKinh dị', N'Kinh dị', N'Tony- một thanh niên 17 tuổi phải trải qua thử thách trong một chương trình khám phá thiên nhiên: Ở một mình 3 đêm trên một hòn đảo hoang. Nhưng ngay lập tức cậu cảm nhận được mình đang phải đối mặt với một trong những bí mật khiếp đảm nhất của hòn đảo.', N'Franck Khalfoun', N'Jolene Anderson, Vela Cluff, Phodiso Dintwe', N'Tiếng Anh', N'85 phút', CAST(0x0000AACE00000000 AS DateTime), N'daosanmoi                                                                                                                                                                                                                                                 ')
INSERT [dbo].[Phong] ([SoPhong], [ViTri]) VALUES (N'R01', N'Tầng 1')
INSERT [dbo].[Phong] ([SoPhong], [ViTri]) VALUES (N'R02', N'Tầng 1')
INSERT [dbo].[Phong] ([SoPhong], [ViTri]) VALUES (N'R03', N'Tầng 2')
INSERT [dbo].[ThanhVien] ([MaTV], [MatKhau], [TenTV], [Email], [Sdt], [Cmnd], [NgaySinh], [GioiTinh], [DiaChi], [LoaiTK]) VALUES (N'TV0001', N'admin', N'Nguyễn Tuấn ANh', N'ad@gmail.com', N'012345678', 111111111, CAST(0x00008C5C00000000 AS DateTime), 1, N'Hà Nội', 1)
INSERT [dbo].[ThanhVien] ([MaTV], [MatKhau], [TenTV], [Email], [Sdt], [Cmnd], [NgaySinh], [GioiTinh], [DiaChi], [LoaiTK]) VALUES (N'TV0002', N'123456', N'Phạm Hồng Phi', N'adc@gmail.com', N'012334444', 222222222, CAST(0x00008CCD00000000 AS DateTime), 0, N'Hà Nội', 0)
INSERT [dbo].[ThanhVien] ([MaTV], [MatKhau], [TenTV], [Email], [Sdt], [Cmnd], [NgaySinh], [GioiTinh], [DiaChi], [LoaiTK]) VALUES (N'TV0003', N'123456', N'Ngô Tiến Mạnh', N'asd@gmail.com', N'012333333', 333333333, CAST(0x00008CCD00000000 AS DateTime), 1, N'Hà Nội', 0)
INSERT [dbo].[ThanhVien] ([MaTV], [MatKhau], [TenTV], [Email], [Sdt], [Cmnd], [NgaySinh], [GioiTinh], [DiaChi], [LoaiTK]) VALUES (N'TV0004', N'12345', N'God Ken', N'asdf@gmail.com', N'012444444', 444444444, CAST(0x00008CCD00000000 AS DateTime), 1, N'Hà Nội', 0)
INSERT [dbo].[ThanhVien] ([MaTV], [MatKhau], [TenTV], [Email], [Sdt], [Cmnd], [NgaySinh], [GioiTinh], [DiaChi], [LoaiTK]) VALUES (N'TV0005', N'123456', N'Oh yeah', N'azxcv@gmail.com', N'012555555', 555555555, CAST(0x00008CCD00000000 AS DateTime), 0, N'Hà Nội', 0)
INSERT [dbo].[ThanhVien] ([MaTV], [MatKhau], [TenTV], [Email], [Sdt], [Cmnd], [NgaySinh], [GioiTinh], [DiaChi], [LoaiTK]) VALUES (N'TV0006', N'123456', N'Best ys', N'qwety@gmail.com', N'034444444', 666666666, CAST(0x00008CCD00000000 AS DateTime), 1, N'Hà Nội', 0)
INSERT [dbo].[ThanhVien] ([MaTV], [MatKhau], [TenTV], [Email], [Sdt], [Cmnd], [NgaySinh], [GioiTinh], [DiaChi], [LoaiTK]) VALUES (N'TV0007', N'123456', N'Mật vụ susan', N'lol@gmail.com', N'035555555', 777777777, CAST(0x00008CCD00000000 AS DateTime), 1, N'Hà Nội', 0)
INSERT [dbo].[ThanhVien] ([MaTV], [MatKhau], [TenTV], [Email], [Sdt], [Cmnd], [NgaySinh], [GioiTinh], [DiaChi], [LoaiTK]) VALUES (N'TV0008', N'123456', N'Lee No1', N'ace@gmail.com', N'024444444', 888888888, CAST(0x00008CCD00000000 AS DateTime), 1, N'Hà Nội', 0)
INSERT [dbo].[ThanhVien] ([MaTV], [MatKhau], [TenTV], [Email], [Sdt], [Cmnd], [NgaySinh], [GioiTinh], [DiaChi], [LoaiTK]) VALUES (N'TV0009', N'123456', N'Bogia', N'lode@gmail.com', N'012399999', 999999999, CAST(0x00008CCD00000000 AS DateTime), 1, N'Hà Nội', 0)
INSERT [dbo].[ThanhVien] ([MaTV], [MatKhau], [TenTV], [Email], [Sdt], [Cmnd], [NgaySinh], [GioiTinh], [DiaChi], [LoaiTK]) VALUES (N'TV0010', N'123456', N'thanhso', N'thanhso@gmail.com', N'088888888', 100000000, CAST(0x00008CCD00000000 AS DateTime), 0, N'Hà Nội', 0)
ALTER TABLE [dbo].[Ghe]  WITH CHECK ADD FOREIGN KEY([SoPhong])
REFERENCES [dbo].[Phong] ([SoPhong])
GO
ALTER TABLE [dbo].[LichChieu]  WITH CHECK ADD FOREIGN KEY([MaPhim])
REFERENCES [dbo].[Phim] ([MaPhim])
GO
ALTER TABLE [dbo].[Ve]  WITH CHECK ADD FOREIGN KEY([MaLichChieu])
REFERENCES [dbo].[LichChieu] ([MaLichChieu])
GO
ALTER TABLE [dbo].[Ve]  WITH CHECK ADD FOREIGN KEY([MaTV])
REFERENCES [dbo].[ThanhVien] ([MaTV])
GO
ALTER TABLE [dbo].[Ve]  WITH CHECK ADD FOREIGN KEY([SoGhe])
REFERENCES [dbo].[Ghe] ([SoGhe])
GO
USE [master]
GO
ALTER DATABASE [webapp] SET  READ_WRITE 
GO
