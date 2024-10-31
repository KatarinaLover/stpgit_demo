-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th10 26, 2024 lúc 08:31 AM
-- Phiên bản máy phục vụ: 10.4.32-MariaDB
-- Phiên bản PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `news`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `name` varchar(225) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(225) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `categories`
--

INSERT INTO `categories` (`id`, `name`, `slug`, `parent`) VALUES
(1, 'Thời sự', 'Thoi-su', 0),
(2, 'Thế giới', 'The-gioi', 0),
(3, 'Thể thao', 'The-thao', 0),
(4, 'Giáo dục', 'Giao-duc', 0),
(5, 'Văn hóa', 'Van-hoa', 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `items`
--

CREATE TABLE `items` (
  `id` int(11) NOT NULL,
  `title` varchar(225) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `excerpt` varchar(225) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(225) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `category` int(11) NOT NULL,
  `featured` int(11) NOT NULL,
  `views` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `author` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `items`
--

INSERT INTO `items` (`id`, `title`, `excerpt`, `content`, `image`, `category`, `featured`, `views`, `created_at`, `updated_at`, `author`) VALUES
(1, 'Lương ứng viên mảng Al cao hơn vị trí khác 10-50%', 'Báo cáo Thực trạng nhân sự và tuyển dụng ngành công nghệ thông tin (IT) trong làn sóng Trí tuệ nhân tạo (Al) giai đoạn 2024-2025 do VietnamWorks inTech thuộc Navigos Group', '<img src=\"https://i1-vnexpress.vnecdn.net/2024/10/12/8893-1664076128-2961-1728705857.jpg?w=0&h=0&q=100&dpr=2&fit=crop&s=Cc24bZXnGg2ZqyUqflITBQ\">\r\nGần nửa trong số 500 doanh nghiệp được khảo sát sẵn sàng trả lương nhân sự mảng Al cao hơn vị trí khác 10-20%; 18% công ty trả cao hơn 20-50%.\r\n\r\nBáo cáo Thực trạng nhân sự và tuyển dụng ngành công nghệ thông tin (IT) trong làn sóng Trí tuệ nhân tạo (Al) giai đoạn 2024-2025 do VietnamWorks inTech thuộc Navigos Group vừa công bố cung cấp thông tin tổng quan về tác động của Al đến thị trường lao động IT tại Việt Nam. Khảo sát thực hiện trên 1.500 ứng viên tại Hà Nội, Đà Nẵng, TP HCM và một số tỉnh thành cùng 500 doanh nghiệp trong tháng 7-8.\r\n\r\nKết quả cho thấy lương của nhân sự mảng Al cao hơn hẳn so với các vị trí khác. Cụ thể gần 44% doanh nghiệp trả hơn 10-20% và trên 18% đơn vị trả lương cao hơn 20-50%. Hơn một nửa doanh nghiệp ưu tiên tuyển nhân sự có kỹ năng dùng công cụ về AI bởi đã nhận ra tầm quan trọng của kỹ năng AI trong bối cảnh công nghệ phát triển.\r\n\r\nTình hình nhân sự IT tại Đà Nẵng ổn định nhất, trong khi TP HCM và Hà Nội có tỷ lệ cắt giảm cao, lần lượt gần 17,7% và 18,6%. So với năm ngoái, doanh nghiệp giảm tỷ lệ cắt giảm IT nhưng lại tăng quy mô nhân sự trong năm nay. Phần lớn doanh nghiệp cho biết tăng khoảng 5-30% nhân sự lĩnh vực này. Doanh nghiệp tuyển dụng IT chủ yếu từ ngành gia công phát triển phần mềm, kinh doanh thương mại, sản xuất kỹ thuật, tư vấn công nghệ...\r\nNhìn chung, nhân sự công nghệ thông tin vẫn chịu ảnh hưởng hậu làn sóng cắt giảm lao động diện rộng sau đại dịch. 60% được khảo sát cho biết bị thôi việc trong năm trước vẫn chưa tìm được việc mới trong năm nay, cao gấp rưỡi so với tỷ lệ tương tự ở nhóm nhân sự chủ động thôi việc. Trong khi đó, nhóm chủ động thường chuẩn bị kỹ lưỡng trước khi rời đi, có mối quan hệ nghề nghiệp nên ít đối mặt với thách thức hơn. Tỷ lệ tìm được việc mới phù hợp và hài lòng ở nhóm này chiếm trên 24% và 17,5%.\r\n\r\nNhiều nhân sự IT vì thế sẵn sàng đảm nhận thêm khối lượng công việc hoặc đa nhiệm hơn để có được việc mới. \"Con số tăng 10% so với năm trước, cho thấy sự cạnh tranh trên thị trường việc làm ngày càng gay gắt\", báo cáo nhận định.\r\n\r\nCạnh tranh gay gắt cùng tìm việc khó khăn khiến tỷ lệ nhảy việc thấp ở mức 32%. Song 65% được khảo sát cho biết đang hoặc có kế hoạch tìm việc mới trong 6-12 tháng tới, tạo nên triển vọng sôi động hơn trong ngành này. Ba yếu tố ứng viên quan tâm nhất là mức lương bằng hoặc cao hơn vị trí cũ, cơ hội thăng tiến và mức độ ổn định, nhất là mặt tài chính công ty.\r\n\r\nHình thức làm việc tại văn phòng vẫn chiếm 73% song xu hướng làm việc linh hoạt đang phổ biến hơn trong ngành này. Hơn 19% nhân sự chọn hình thức hybrid - tức kết hợp làm việc văn phòng với từ xa và gần 8% làm việc từ xa hoàn toàn.\r\n\r\nAI đã và đang trở thành trợ thủ đắc lực của nhân sự công nghệ thông tin khi hơn 80% khảo sát cho biết họ đang sử dụng AI hỗ trợ công việc và gần 60% trong số đó sử dụng mỗi ngày.\r\n\r\nCác trang tuyển dụng vẫn là nơi ứng viên tìm việc phổ biến, song báo cáo ghi nhận có sự dịch chuyển qua mạng xã hội. Khoảng 4,4% ứng viên và 2,4% doanh nghiệp được khảo sát cho biết dùng Threads để tiếp cận nhau. Quản lý sản phẩm và giám đốc sản phẩm là hai vị trí khó tuyển nhất khi các doanh nghiệp cho rằng ứng viên chưa đáp ứng yêu cầu.\r\n\r\nKhảo sát về xu hướng tuyển dụng nhân sự IT từ nay đến hết năm 2025 cho thấy doanh nghiệp ưu tiên kinh nghiệm làm việc và dự án đã thực hiện của ứng viên; chú trọng vào kỹ năng lập trình, sáng tạo; trong khi thiết kế CV độc đáo và hình ảnh cá nhân chuyên nghiệp là hai yếu tố người sử dụng lao động ít quan tâm hơn.', 'ungvienai.jpg', 1, 1, 265000, '2024-10-26 01:35:52', '2024-10-26 01:35:52', 1),
(2, 'Israel tập kích đáp trả Iran', 'Vnexpress', '<img src=\"https://i1-vnexpress.vnecdn.net/2024/10/26/vi-tri-israel-iran-9688-172828-9381-2011-1729902219.jpg?w=0&h=0&q=100&dpr=2&fit=crop&s=wOiMBPFKgXnRa9tX_aEmUw\">\r\nCư dân Tehran nói thủ đô vẫn yên bình\r\nFoad Izadi, phó giáo sư tại Đại học Tehran, cho biết mọi thứ ở thủ đô của Iran vẫn bình thường và rất yên tĩnh. \"Bây giờ là khoảng 4h sáng và chúng tôi không thấy điều gì khác lạ. Thành phố vẫn hoạt động bình thường. Nếu thực sự xảy ra một cuộc tấn công, tôi nghĩ quy mô của nó không lớn\", ông Izadi nói.\r\nIran đóng không phận\r\nCơ quan hàng không dân dụng Iran thông báo sẽ đóng không phận tới 9h hôm nay (12h30 giờ Hà Nội). Dữ liệu từ trang theo dõi hàng không dân dụng FlightRadar24 cho thấy 4 phi cơ dân sự đã bay khỏi thủ đô Tehran khi Israel bắt đầu cuộc tấn công.\r\n\r\nChia sẻ:\r\nFacebook\r\nTwitter\r\nSao chép liên kết\r\nCư dân Tehran giật mình tỉnh giấc vì tiếng nổ\r\nCNN dẫn lời một phụ nữ ở Tehran kể rằng bà đột ngột tỉnh giấc vì tiếng nổ ở xa, nhưng không thấy dấu hiệu gì khác thường khi ngó qua cửa sổ. Cư dân này đã thấy lực lượng IRGC xuất hiện rất đông trong thành phố vào đêm 25/10.\r\n\r\nChia sẻ:\r\nFacebook\r\nTwitter\r\nSao chép liên kết\r\nCăn cứ quân sự Iran bị nhắm mục tiêu\r\nFars News nói rằng một số căn cứ quân sự ở phía tây và tây nam Tehran đã bị nhắm mục tiêu, nhưng không cho biết có thiệt hại hay không.\r\n\r\nTasnim cho biết không có vụ nổ hay cháy nào được ghi nhận tại nhà máy lọc dầu chủ chốt ở phía nam thủ đô Tehran. Đài truyền hình nhà nước Iran cho biết hoạt động tại các sân bay ở thủ đô Tehran, trong đó có sân bay quốc tế Imam Khomeini và Mehrabad, \"vẫn diễn ra bình thường theo lịch trình\".\r\n\r\nHãng tin NBC News dẫn lời quan chức Israel giấu tên nói rằng Tel Aviv không tấn công các cơ sở hạt nhân hay dầu mỏ của Tehran. \"Chúng tôi chỉ nhắm vào những mục tiêu quân sự từng uy hiếp Israel trong quá khứ hoặc có thể đe dọa đất nước trong tương lai\", người này cho hay.\r\n\r\nChia sẻ:\r\nFacebook\r\nTwitter\r\nSao chép liên kết\r\nThủ tướng Israel và các quan chức quân đội xuống hầm ngầm\r\nTrong lúc Israel tập kích Iran, Văn phòng Thủ tướng Israel đã công bố ảnh ông Benjamin Netanyahu họp cùng Bộ trưởng Quốc phòng Yoav Gallant và các tướng lĩnh IDF trong hầm ngầm dưới căn cứ Kirya ở Tel Aviv.\r\n\r\nIsrael tin rằng Iran sẽ tấn công đáp trả sau đòn tập kích của họ.\r\nIsrael báo trước cho Mỹ\r\n\"Chúng tôi hiểu rằng Israel đang tiến hành những cuộc tập kích khoanh vùng nhằm vào các mục tiêu quân sự tại Iran. Đây là hành động thực thi quyền tự vệ, cũng như trả đũa đòn tấn công bằng tên lửa đạn đạo của Iran nhằm vào Israel ngày 1/10\", phát ngôn viên Hội đồng An ninh Quốc gia Mỹ Sean Savett cho hay.\r\n\r\nFox News đưa tin Tel Aviv đã thông báo cho Washington ngay trước khi bắt đầu tập kích.\r\n\r\nChia sẻ:\r\nFacebook\r\nTwitter\r\nSao chép liên kết\r\nNhiều tiếng nổ vang lên ở Iran\r\nHãng thông tấn Iran IRNA cho biết nhiều tiếng nổ lớn vang lên ở thủ đô Tehran lúc 2h15 hôm nay (5h45 giờ Hà Nội).\r\n\r\nĐài truyền hình nhà nước Iran đưa tin \"tiếng nổ lớn\" vang lên khắp Tehran và thành phố Karaj, nhưng chưa rõ nguyên nhân. Cơ quan này sau đó dẫn lời các quan chức tình báo Iran nói rằng các vụ nổ nhiều khả năng là do tên lửa phòng không Iran kích hoạt trên bầu trời khi đối phó vụ tập kích.\r\n\r\nHãng thông tấn bán chính thức Fars News của Vệ binh Cách mạng Hồi giáo Iran (IRGC) cho hay một số tiếng nổ đã vang lên gần hoặc tại sân bay quốc tế Imam Khomeini. Các nhân chứng kể rằng người dân xung quanh đã đổ ra đường. \"Tiếng nổ rất to và bầu trời chuyển sang màu đỏ\", một cư dân Tehran nói.\r\n\r\nChính phủ và quân đội Iran chưa bình luận về thông tin.\r\n\r\nIsrael xác nhận tập kích Iran\r\n\"Chúng tôi đang tiến hành các đòn tấn công chính xác vào mục tiêu quân sự ở Iran, nhằm đáp trả loạt vụ tấn công liên tiếp trong nhiều tháng từ nước này nhắm vào Israel\", Lực lượng Phòng vệ Israel (IDF) rạng sáng 26/10 ra tuyên bố.\r\n\r\n\"Iran và các lực lượng được họ hậu thuẫn trong khu vực đã liên tục tập kích Israel trên 7 mặt trận kể từ ngày 7/10/2023, trong đó có các cuộc tấn công trực tiếp từ lãnh thổ Iran. Giống như mọi quốc gia có chủ quyền trên thế giới, Israel có quyền và nghĩa vụ đáp trả\", IDF cho biết thêm.\r\n\r\nQuân đội Israel tuyên bố đã huy động toàn bộ năng lực phòng thủ và tấn công, khẳng định \"sẽ làm mọi điều cần thiết để bảo vệ nhà nước và người dân Israel\".', 'iran.jpg', 2, 2, 12300000, '2024-10-25 01:47:59', '2024-10-26 01:47:59', 2),
(3, '3.000 runner mua Bib giải chạy đêm TP HCM sau một ngày', 'Vnexpress', '<img src=\"https://i1-thethao.vnecdn.net/2024/10/25/2FOR01428-1709420382-8440-1729846765.jpg?w=0&h=0&q=100&dpr=2&fit=crop&s=9ARnR_L9vtW_JlvqHJsntw\">\r\nRunner đăng ký thành công trong ngày đầu mở bán VPBank VnExpress Marathon Ho Chi Minh City Midnight 2025 chủ yếu thuộc khu vực phía Nam.\r\n\r\nGiải chạy đêm TP HCM 2025 mở đăng ký từ 11h ngày 24/10. Sau 24h, hệ thống ghi nhận 3.000 đăng ký. Trong đó, cự ly 21km được nhiều runner quan tâm nhất với hơn 1.000 Bib có chủ. Tiếp đến là cự ly 42km gần 1.000 Bib.\r\n\r\nRunner đến từ TP HCM chiếm phần lớn danh sách với gần 1.500 người. Trong ngày đầu ban tổ chức mở cổng cũng có gần 300 runner nước ngoài ghi danh.\r\n\r\nAnh Hà Minh Hùng (quận 9, TP HCM) là một trong những VĐV đầu tiên sở hữu Bib 42km. Nam runner cho biết VPBank VnExpress Marathon Ho Chi Minh City Midnight diễn ra ngay sau Tết, ngay trên sân nhà nên đã chọn là giải đấu mở màn cho năm sau. \"Giải chạy đêm TP HCM diễn ra sau Tết nên tôi đăng ký cùng vợ và một số người bạn chạy khai xuân\", anh Hùng nói.\r\n\r\nVPBank VnExpress Marathon Ho Chi Minh City Midnight diễn ra ngày 23/2, là giải đấu mở màn năm 2025 của hệ thống VnExpress Marathon. Hiện ban tổ chức mở đăng ký sớm với mức giá ưu đãi nhất từ 24/10 đến 14/11. Theo đó, cự ly 5km là 469.000 đồng. Cự ly 10km là 679.000 đồng. Hai cự ly 21 và 42km lần lượt có giá 839.000 và 969.000 đồng. Giá Bib được xem là hấp dẫn bậc nhất trong hệ thống VnExpress Marathon. Giá vé sẽ chuyển sang giai đoạn tiếp theo sau ngày 14/11 và tăng dần khi sát ngày thi đấu chính thức.\r\n\r\nVĐV khi đăng ký theo nhóm sẽ được hưởng ưu đãi từ 5-25%. Cụ thể, với nhóm 20-50 VĐV sẽ được hưởng ưu đãi 5%, nhóm 51-100 người là 10%, nhóm 101-500 người ưu đãi 15%, nhóm 501 đến 1.000 người tương đương mức 20% và nhóm trên 1.000 người sẽ được ưu đãi 25%. Chương trình không áp dụng đồng thời với ưu đãi khác. Ban tổ chức sẽ đóng cổng đăng ký vào 23/1/2025 hoặc sớm hơn khi đủ số lượng, nhằm đảm bảo vật phẩm và an toàn chung cho VĐV. Trước đó vào ngày 1/2/2025 là thời gian đóng cổng chỉnh sửa thông tin. VĐV quan tâm đăng ký tại đây.\r\n\r\nTổ chức mùa thứ ba tại thành phố mang tên Bác, giải đấu sẽ có một số điều chỉnh, trong đó có sự thay đổi về cung đường để tối ưu trải nghiệm cho VĐV. Ngân hàng TMCP Việt Nam Thịnh Vượng - VPBank là đối tác chiến lược, đơn vị đồng tổ chức.\r\n\r\n', 'bibrunner.jpg', 3, 3, 50000, '2024-10-25 03:22:30', '2024-10-26 03:22:30', 3),
(4, 'Phát hiện trường tuyển \'chui\' sau ba tháng nhập học lớp 10', 'Vnexpress', '<img src=\"https://i1-vnexpress.vnecdn.net/2024/10/25/truong-1738-1729863075.jpg?w=0&h=0&q=100&dpr=2&fit=crop&s=PFV63hB0NvoxwJOEfYZH0A\">\r\nPhụ huynh 174 học sinh lớp 10 trường THPT Tô Hiến Thành sau ba tháng nhập học mới biết trường này tuyển chui, con không có tên trên hệ thống của Sở Giáo dục.\r\n\r\nMột tháng qua, chị Nguyễn Thị Mai cùng nhiều phụ huynh có con đang học lớp 10 tại trường THPT Tô Hiến Thành, phường Văn Quán, quận Hà Đông, như \"ngồi trên đống lửa\" khi học gần hết kỳ một nhưng con vẫn chưa có mã số học sinh trên hệ thống của Sở Giáo dục và Đào tạo Hà Nội.\r\n\r\n\"Tôi đang rất hoang mang. Không có tên trên hệ thống đồng nghĩa con không được công nhận là học sinh của trường\", chị Mai nói. Nữ phụ huynh cho hay nộp hồ sơ cho con từ tháng 4 bằng cách xét học bạ với điểm trung bình 6,5.\r\n\r\nChị Đặng Thanh Xuân, một phụ huynh khác, cho hay biết đến trường qua fanpage. Trường đăng tuyển sinh lớp 10 chất lượng cao, cơ bản với học phí lần lượt là 1,8 và 1,5 triệu đồng một tháng.\r\n\r\n\"Thấy địa chỉ rõ ràng, tôi yên tâm đến nộp, cán bộ tuyển sinh khẳng định là trường có chỉ tiêu\", chị Xuân nhớ lại.\r\n\r\nCác phụ huynh cho biết hôm 16/7, học sinh bắt đầu nhập học. Sự việc được phát hiện hai tháng sau đó khi họ đọc được thông báo của Sở về việc không giao chỉ tiêu cho trường Tô Hiến Thành.\r\n\r\nTìm kiếm thêm, phụ huynh mới biết trong quyết định giao chỉ tiêu tuyển sinh lớp 10 cho các trường THPT tư thục năm 2024-2025 hồi tháng 4 của Sở đã không có tên trường, do chưa đủ điều kiện pháp lý về địa điểm hoạt động.\r\n\r\nChiều 25/10, bà Nguyễn Thị Ánh Tuyết, Hiệu trưởng trường THPT Tô Hiến Thành, thừa nhận sự việc.\r\n\r\n\"Chúng tôi đã tuyển sinh khi chưa được phép\", bà Tuyết nói. Theo bà, Sở có nhiều đợt giao chỉ tiêu tuyển sinh. Trong các đợt đầu, trường chưa có tên trong danh sách nên vẫn cố bổ sung hồ sơ để được chấp nhận nhưng cuối cùng vẫn không được.\r\n\r\nNữ hiệu trưởng cho biết đã báo cáo và đề xuất với Sở Giáo dục và Đào tạo Hà Nội cho phép chuyển 174 học sinh lớp 10 về trường THPT Văn Lang ở quận Đống Đa. Trường này năm nay được giao chỉ tiêu 650 nhưng mới tuyển được hơn 400.\r\n\r\nTối qua, một cán bộ Sở Giáo dục và Đào tạo Hà Nội cho biết Sở đã nắm được sự việc. Tuần tới, đoàn thanh tra của Sở sẽ làm việc với các bên để kiểm tra, làm rõ.\r\n\r\nTrường THPT Tô Hiến Thành thành lập năm 1997, hiện có hơn 400 học sinh. Đây là năm thứ hai trường tuyển sinh, địa điểm thuê ở khu vực Văn Quán, quận Hà Đông.\r\n', 'giaoduchienthanh.jpg', 4, 4, 56000, '2024-10-25 03:27:22', '2024-10-26 03:27:22', 4),
(5, '5 tour ẩm thực Việt ba miền hút khách Tây edited', 'Vnexpress', '<img src=\"https://i1-dulich.vnecdn.net/2024/10/24/caption-7618-1729763617.jpg?w=0&h=0&q=100&dpr=2&fit=crop&s=Fn-u8zWTsBj9c9W27pwmYQ\">\r\nCác hành trình tham quan kết hợp khám phá ẩm thực ở Hà Nội, TP HCM hay Hội An giá từ 700.000 đến 2 triệu đồng thu hút khách nước ngoài trải nghiệm.\r\n\r\nẨm thực Việt được du khách nước ngoài ưa chuộng nhờ đa dạng nguyên liệu, hương vị, cách chế biến giữa các vùng miền. Food tour hiện là sản phẩm du lịch được nhiều công ty đón khách inbound (khách quốc tế đến) khai thác và dễ tiếp cận trên các kênh OTA (đại lý trực tuyến).\r\n\r\nVnExpress giới thiệu 5 food tour dọc ba miền Việt Nam được nhiều du khách để lại đánh giá tích cực sau khi trải nghiệm.\r\n\r\n1. Foodtour Hà Nội\r\n\r\nSmall Group Hanoi Street Food Tour with a Real Foodie - Tour ẩm thực đường phố Hà Nội theo nhóm nhỏ, do Ha Food Tours tổ chức, là một trong 10 tour ẩm thực tốt nhất Việt Nam được Tripadvisors giới thiệu. Có hơn 3.000 du khách để lại đánh giá tích cực về trải nghiệm này trên trang và 99% độc giả khuyên \"nên đặt\".\r\nTour có thời lượng ba tiếng, xuất phát tại phố cổ vào hai khung 6h và 11h30 với tối đa 6 khách. Du khách sẽ đi bộ quanh phố cổ khám phá lịch sử Hà Nội và ghé các hàng quán địa phương. Thực đơn thay đổi theo ngày, các món chính gồm phở bò, phở gà, thịt heo nướng, xôi cùng với nhiều loại bánh rán đường phố. Tour có giá 726.000 đồng. Du khách có thể đặt qua Tripadvisor hoặc liên hệ trực tiếp công ty tổ chức.\r\n\r\n2. Tour khám phá ẩm thực Hội An buổi tối\r\n\r\nDu khách có thể đặt Hoi An Evening Walking Food Tour trên nền tảng Klook. Trong tour kéo dài từ 17h đến 21h, du khách sẽ đi bộ quanh phố cổ Hội An, thử các món nổi tiếng như Cao Lầu, bánh mì, mì Quảng và bánh tráng nướng; khám phá chợ đêm và thưởng thức cà phê, ăn tối cùng người dân địa phương.\r\nSau bữa tối, du khách lên thuyền tham quan sông Hoài, trải nghiệm thả đèn hoa đăng và nghe lái đò kể chuyện về lịch sử dòng sông. Điểm cuối của tour, du khách sẽ chơi những trò truyền thống như bài chòi hay đập niêu. Tour có giá 900.000 đồng\r\n\r\n3. Tour khám phá ẩm thực Đà Nẵng bằng xe máy\r\n\r\nDa Nang Food Tour by Motorbike được phân phối trên nền tảng Viator thuộc Tripadvisor với hướng dẫn viên người Việt, giao tiếp bằng tiếng Anh hoặc tiếng Pháp. Lịch trình khởi hành hằng ngày lúc 17h, kéo dài 5 tiếng. Du khách được khám phá thành phố biển trên xe máy, tìm hiểu cuộc sống người dân địa phương. Tour dừng tại 6 địa điểm, cho thực khách thưởng thức 8-11 món đặc sản đường phố Đà Nẵng như bánh xèo, nem lụi và dùng bữa chính trong nhà hàng. Khách đặt lịch vào cuối tuần sẽ được dừng chân ở cầu Rồng xem trình diễn phun lửa. Tour có giá 45 USD (1,2 triệu đồng), giới hạn tối đa 8 khách.\r\n\r\n4. Tour khám phá ẩm thực TP HCM trên xe máy\r\n\r\nThe XO Foodie TP HCM được thực hiện bởi XO Tours, từng xuất hiện trong top 9 tour ẩm thực hàng đầu thế giới do Forbes bình chọn năm 2018. Điểm nhấn của tour là tài xế kiêm hướng dẫn viên đều là nữ, mặc đồng phục áo dài chạy xe máy.\r\nTour đưa du khách đến những địa điểm ăn uống ít khách du lịch, chỉ dân địa phương \"sành ăn\" mới biết. Thực đơn không tập trung vào những món quá phổ biến như bánh xèo, bánh mì, hay phở mà mở rộng hơn để thực khách có trải nghiệm phong phú về ẩm thực Việt. Thực khách được thưởng thức ít nhất 10 món, có phục vụ món chay. Các địa điểm ăn uống liên tục thay đổi để tạo trải nghiệm mới. Tour khởi hành hằng ngày từ 17h đến 22h, giá 82 USD (2 triệu đồng) mỗi người, giới hạn tối đa 16 khách.\r\n\r\n5. Tour ẩm thực Cần Thơ do đầu bếp địa phương thiết kế\r\n\r\nCan Tho Food tour designed by local Chef là hành trình khám phá ẩm thực Đồng bằng sông Cửu Long qua các món ăn địa phương, được tổ chức bởi Fabulous Mekong Eco Tours. Một số món nổi bật có thể kể đến bánh cống, ếch chiên, cà tím niêu đất, chuột đồng chiên. Tour có giá khoảng 39 USD (990.000 đồng) mỗi người, bao gồm hướng dẫn viên, chi phí ăn uống và dịch vụ đưa đón tại khách sạn. Tour giới hạn tối đa 15 khách và kéo dài trong khoảng 3 tiếng, khởi hành lúc 18h hằng ngày. Hướng dẫn viên có thể giao tiếp bằng tiếng Anh hoặc tiếng Pháp.', 'vanhoaamthuc.jpg', 5, 5, 60000, '2024-10-24 03:31:33', '2024-10-26 03:31:33', 5),
(6, 'Cars', 'From Cogn Nahp', 'About R35', 'R35.jpeg', 6, 6, 55000, '2024-10-26 06:28:08', '2024-10-26 06:28:08', 6);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(225) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`id`, `name`) VALUES
(1, 'Hồng Chiêu'),
(2, 'Cogn Nahp'),
(3, 'Lan Anh'),
(4, 'Bình Minh - Thanh Hằng'),
(5, 'Bích Phương');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `items`
--
ALTER TABLE `items`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `items`
--
ALTER TABLE `items`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
