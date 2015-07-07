/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50532
Source Host           : localhost:3306
Source Database       : dictionaries01

Target Server Type    : MYSQL
Target Server Version : 50532
File Encoding         : 65001

Date: 2014-05-22 17:24:29
*/

SET FOREIGN_KEY_CHECKS=0;
-- ----------------------------
-- Table structure for `examples`
-- ----------------------------
DROP TABLE IF EXISTS `examples`;
CREATE TABLE `examples` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ex_japanese` varchar(255) DEFAULT NULL,
  `ex_vietnamese` varchar(255) DEFAULT NULL,
  `deleted` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of examples
-- ----------------------------
INSERT INTO examples VALUES ('1', '靴がすっかり擦り減った。', 'Đôi giày đã sờn cũ.', '0', null, null);
INSERT INTO examples VALUES ('2', 'ドリルを深く掘り下げ', 'Bạn tôi, Lonnie Thompson, cắm ống khoan tròn xuống băng', '0', null, null);
INSERT INTO examples VALUES ('3', '誰しも、夢はかなうと信じたいものだ。', 'Mọi người cũng muốn tin rằng giấc mơ có thể thành thiệt.', '0', null, null);
INSERT INTO examples VALUES ('4', '昨夜恐ろしい夢を見ました。', 'Đêm qua tôi có một giấc mơ kinh khủng.', '0', null, null);
INSERT INTO examples VALUES ('5', 'おやすみなさい、良い夢を!', 'Ngủ ngon. Chúc bạn nhiều giấc mơ đẹp', '0', null, null);
INSERT INTO examples VALUES ('6', '誰しも、夢はかなうと信じたいものだ。', 'Tất cả mọi người đều muốn tin rằng những giấc mơ có thể trở thành hiện thực', '0', null, null);
INSERT INTO examples VALUES ('13', '中島さんは英語に加えて、ドイツ語も流暢に話せる。', 'Ngoài tiếng Anh, ông Nakajima có thể nói thông thạo tiếng Đức.', '0', null, null);
INSERT INTO examples VALUES ('14', '私達は先生です。', 'chúng tôi là giáo viên.', '0', null, null);
INSERT INTO examples VALUES ('15', 'あれらは私達の先生の車です。', 'Mấy chiếc xe đó là xe của thầy cô chúng ta đó', '0', null, null);
INSERT INTO examples VALUES ('16', 'ボブは先生にいくつか質問をした。', 'Bob hỏi giáo viên một vài câu hỏi.', '0', null, null);
INSERT INTO examples VALUES ('17', '私の物理の先生は授業をサボっても気にしない。', 'Thầy vật lý học tôi khong chăm chú tôi xem lớp.', '0', null, null);
INSERT INTO examples VALUES ('18', 'あんた、駅からずっとついてきたでしょ？なんなのよ！', 'anh đã theo tôi suốt cả quãng đường từ nhà ga, vậy anh muốn gì?', '0', null, null);
INSERT INTO examples VALUES ('19', '名前を付ける', 'đặt tên', '0', null, null);
INSERT INTO examples VALUES ('20', '航空会社の渾名', 'tên hãng hàng không', '0', null, null);
INSERT INTO examples VALUES ('21', 'お笑いコメディアンとしてのキャリアを築き始める', 'bắt đầu sự nghiệp với một vai diễn hài', '0', null, null);
INSERT INTO examples VALUES ('22', 'お笑い番組', 'chương trình hài kịch', '0', null, null);
INSERT INTO examples VALUES ('23', '彼の話すのを見たら、彼のことを女の子と思うかもしれません。', 'Nhìn anh ta nói chuyện, bạn có thể tưởng anh ta là con gái.', '0', null, null);
INSERT INTO examples VALUES ('24', 'サッカーはとてもいいスポーツだと思います', 'Theo ý tôi, đá banh là môn thể thao tuyệt vời', '0', null, null);
INSERT INTO examples VALUES ('25', '明けましておめでとう; よいお年を; 明けましておめでとうございます', 'chúc mừng năm mới', '0', null, null);
INSERT INTO examples VALUES ('26', 'わたし達はたくさん歩きました。', 'Chúng mình đi bộ nhiều.', '0', null, null);
INSERT INTO examples VALUES ('27', '彼女は赤ん坊を起こさないように静かに座っていた。', 'Ông tôi thức dậy sớm.', '0', null, null);
INSERT INTO examples VALUES ('28', '「もし疲れているなら寝たらどう?」 「僕が今寝たらあまりに早く目覚めてしまうから。」', '\"Nếu bạn buồn ngủ thì sao không ngủ đi?\" \"Tại vì nêu tôi ngủ bây giờ thì tôi sẽ thức dậy sớm quá.', '0', null, null);
INSERT INTO examples VALUES ('29', '我々は17番カナル通り問題 の重要性を話した', 'Chuyện đó diễn ra ngay khi chúng tôi nói chuyện', '0', null, null);
INSERT INTO examples VALUES ('30', '彼はラケットでボールを打った。', 'Anh ấy đánh quả bóng bằng chiếc vợt của mình.', '0', null, null);

-- ----------------------------
-- Table structure for `japaneses`
-- ----------------------------
DROP TABLE IF EXISTS `japaneses`;
CREATE TABLE `japaneses` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `word_japanese` varchar(255) DEFAULT NULL,
  `word_vietnamese` varchar(1024) DEFAULT NULL,
  `sound_word` varchar(255) DEFAULT NULL,
  `deleted` int(11) DEFAULT NULL,
  `note` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=306 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of japaneses
-- ----------------------------
INSERT INTO japaneses VALUES ('2', 'あだな', 'tên', 'ja_2.MP3', '0', null, null, null);
INSERT INTO japaneses VALUES ('3', 'おわらい', 'hài', 'ja_3.MP3', '0', null, null, null);
INSERT INTO japaneses VALUES ('4', 'さん', 'ông', 'ja_4.MP3', '0', null, null, null);
INSERT INTO japaneses VALUES ('5', '先生', 'giáo viên; giảng viên; thầy', 'ja_5.MP3', '0', null, null, null);
INSERT INTO japaneses VALUES ('6', 'アーカイバ ', 'Lưu trữ', 'ja_6.MP3', '0', null, null, null);
INSERT INTO japaneses VALUES ('7', 'ああ', 'Xem', 'ja_7.MP3', '0', null, null, null);
INSERT INTO japaneses VALUES ('8', 'アーカイブ', 'tài liệu, tài liệu lưu trữ; lưu trữ ', 'ja_8.MP3', '0', null, null, null);
INSERT INTO japaneses VALUES ('9', 'アーガイル', '{argyle}', 'ja_9.MP3', '0', null, null, null);
INSERT INTO japaneses VALUES ('10', 'アーガルチェック', '{argyle check}', 'ja_10.MP3', '0', null, null, null);
INSERT INTO japaneses VALUES ('11', 'アーキテクチャ', 'thuật kiến trúc, khoa kiến trúc, khoa xây dựng; công trình kiến trúc, công trình xây dựng; cấu trúc, kiểu kiến trúc, sự xây dựng\r\n', 'ja_11.MP3', '0', null, null, null);
INSERT INTO japaneses VALUES ('12', 'アーギュメント', 'lý lẽ, sự tranh cãi, sự tranh luận, tóm tắt (một vấn đề trình bày trong một cuốn sách), (toán học) Argumen\r\n', 'ja_12.MP3', '0', null, null, null);
INSERT INTO japaneses VALUES ('13', 'アーク', 'hình cung, (toán học) cung, cầu võng, (điện học) cung lửa; hồ quang', 'ja_13.MP3', '0', null, null, null);
INSERT INTO japaneses VALUES ('14', 'アークせつだん ', '{arc cutting}', 'ja_14.MP3', '0', null, null, null);
INSERT INTO japaneses VALUES ('15', 'アークとう ', 'arc light', 'ja_15.MP3', '0', null, null, null);
INSERT INTO japaneses VALUES ('16', 'アークほうでん', 'lamp đèn phóng hồ quang', 'ja_16.MP3', '0', null, null, null);
INSERT INTO japaneses VALUES ('17', 'アークようせつ', 'hàn hồ quang', 'ja_17.MP3', '0', null, null, null);
INSERT INTO japaneses VALUES ('18', 'アークろ', 'lò hồ quang', 'ja_18.MP3', '0', null, null, null);
INSERT INTO japaneses VALUES ('19', 'アーク放電', 'đèn phóng hồ quang', 'ja_19.MP3', '0', null, null, null);
INSERT INTO japaneses VALUES ('20', 'アーケード ', 'đường có mái vòm, (kiến trúc) dãy cuốn', 'ja_20.MP3', '0', null, null, null);
INSERT INTO japaneses VALUES ('21', 'アーゴノミックス', 'môn tối ưu nhân tố', 'ja_21.MP3', '0', null, null, null);
INSERT INTO japaneses VALUES ('22', 'アース', 'đất, đất liền, mặt đất;dây tiếp đất', 'ja_22.MP3', '0', null, null, null);
INSERT INTO japaneses VALUES ('23', 'アースクェイク', 'sự động đất, (nghĩa bóng) sự chấn động (xã hội...)', 'ja_23.MP3', '0', null, null, null);
INSERT INTO japaneses VALUES ('24', 'アーチ', 'khung tò vò, cửa tò vò, hình cung, vòm; nhịp cuốn (cầu...), xây khung vòm ở trên;xây cuốn vòng cung, uốn cong, cong lại, uốn vòng cung, tinh nghịch, tinh quái, hóm, láu', 'ja_24.MP3', '0', null, null, null);
INSERT INTO japaneses VALUES ('25', 'アーチェリー', 'sự bắn cung; thuật bắn cung, cung tên (của người bắn cung), những người bắn cung (nói chung)', 'ja_25.MP3', '0', null, null, null);
INSERT INTO japaneses VALUES ('26', 'アーチザン', 'thợ thủ công', 'ja_26.MP3', '0', null, null, null);
INSERT INTO japaneses VALUES ('27', 'アーチスト', 'nghệ sĩ, hoạ sĩ', 'ja_27.MP3', '0', null, null, null);
INSERT INTO japaneses VALUES ('28', 'アーチファクト', 'sự giả tạo, giả tượng, đồ tạo tác (do người tiền sử tạo ra, để phân biệt với những đồ vật lấy sẵn trong thiên nhiên)', 'ja_28.MP3', '0', null, null, null);
INSERT INTO japaneses VALUES ('29', 'アーティクル', ' bài báo, điều khoản, mục, đồ, thức, vật phẩm; hàng, (ngôn ngữ học) mạo từ, lúc chết, lúc tắt thở, đặt thành điều khoản, đặt thành mục, cho học việc theo những điều khoản trong giao kèo, (pháp lý) buộc tội; tố cáo', 'ja_29.MP3', '0', null, null, null);
INSERT INTO japaneses VALUES ('30', 'アーティスト', 'nghệ sĩ, hoạ sĩ', 'ja_30.MP3', '0', null, null, null);
INSERT INTO japaneses VALUES ('31', 'アーティフィシャル', 'nhân tạo, không tự nhiên, giả tạo; giả', 'ja_31.MP3', '0', null, null, null);
INSERT INTO japaneses VALUES ('32', 'アーデント', 'cháy, nóng rực, hăng hái, sôi nổi, mãnh liệt, nồng nhiệt, nồng nàn, nồng cháy, rượu mạnh', 'ja_32.MP3', '0', null, null, null);
INSERT INTO japaneses VALUES ('33', 'アート', 'tài khéo léo, kỹ xảo, nghệ thuật; mỹ thuật, mỹ nghệ; nghề đòi hỏi sự khéo léo, thuật, kế, mưu kế, đời người thì ngắn ngủi, nhưng công trình nghệ thuật thì tồn tại mãi mãi, đồng mưu và có nhúng tay vào tội ác, ma thuật, yêu thuật, quyền thuật, quyền Anh', 'ja_33.MP3', '0', null, null, null);
INSERT INTO japaneses VALUES ('34', 'アーバニティー', 'phong cách lịch sự, phong cách tao nh , (số nhiều) cử chỉ tao nhã', 'ja_34.MP3', '0', null, null, null);
INSERT INTO japaneses VALUES ('35', 'アーバン', '(thuộc) thành phố, (thuộc) thành thị; ở thành phố, ở thành thị', 'ja_35.MP3', '0', null, null, null);
INSERT INTO japaneses VALUES ('36', 'アービタ', 'người phân xử; trọng tài, quan toà, thẩm phán, người nắm toàn quyền', 'ja_36.MP3', '0', null, null, null);
INSERT INTO japaneses VALUES ('37', 'アービトレーション ', 'sự phân xử, sự làm trọng tài phân xử, sự quyết định giá hối đoái', 'ja_37.MP3', '0', null, null, null);
INSERT INTO japaneses VALUES ('38', 'アーミー', 'quân đội, đoàn, đám đông, nhiều vô số', 'ja_38.MP3', '0', null, null, null);
INSERT INTO japaneses VALUES ('39', 'アームチェア', 'ghế bành, nhà chiến lược trong phòng (xa rời thực tế)', 'ja_39.MP3', '0', null, null, null);
INSERT INTO japaneses VALUES ('40', 'アームレット', 'băng tay, vịnh nhỏ, nhánh sông nhỏ', 'ja_40.MP3', '0', null, null, null);
INSERT INTO japaneses VALUES ('41', 'アーモンド', 'quả hạnh, (giải phẫu) hạch hạnh, vật hình quả hạnh', 'ja_41.MP3', '0', null, null, null);
INSERT INTO japaneses VALUES ('42', 'ああ言えばこう言う', 'hợp lý hoá (một ngành sản xuất), giải thích duy lý (tín ngưỡng...) làm cho (hành vi tư tưởng...) phù hợp với lẽ phải, (toán học) hữu tỷ hoá, theo chủ nghĩa duy lý, hành động suy nghĩ theo chủ nghĩa duy lý', 'ja_42.MP3', '0', null, null, null);
INSERT INTO japaneses VALUES ('43', '愛育', 'Nuôi dưỡng một cách yêu thương, nuôi dạy chu đáo, nuôi dạy cẩn thận', 'ja_43.MP3', '0', null, null, null);
INSERT INTO japaneses VALUES ('44', '相容れない', 'không hợp với, không thích hợp với, không tương hợp với, kỵ nhau, xung khắc, không hợp nhau', 'ja_44.MP3', '0', null, null, null);
INSERT INTO japaneses VALUES ('45', 'あいいろ', 'màu xanh chàm', 'ja_45.MP3', '0', null, null, null);
INSERT INTO japaneses VALUES ('46', 'あいえき', 'tinh dịch, với, kể cả', 'ja_46.MP3', '0', null, null, null);
INSERT INTO japaneses VALUES ('47', 'あいか', 'khúc bi thương;bài hát (trong lễ) mai táng, bài hát truy điệu, bài hát buồn', 'ja_47.MP3', '0', null, null, null);
INSERT INTO japaneses VALUES ('48', 'あいかん', 'tính chất cảm động, cảm xúc cao; cảm hứng chủ đạo, thể văn thống thiết; sự năn nỉ; lời khẩn khoản, đơn thỉnh cầu', 'ja_48.MP3', '0', null, null, null);
INSERT INTO japaneses VALUES ('49', 'アイキュー', 'hệ số thông minh (so với một người bình (thường)) (Intelligence Quotient), viết tắt, hệ số thông minh (so với một người bình (thường)) (Intelligence Quotient)', 'ja_49.MP3', '0', null, null, null);
INSERT INTO japaneses VALUES ('50', 'あいきょう', 'sức mê hoặc, bùa mê, bùa yêu, ngải; phép yêu ma, nhan sắc, sắc đẹp, duyên, sức hấp dẫn, sức quyến rũ, bị mê hoặc; bị bỏ bùa, làm mê hoặc, dụ, bỏ bùa, phù phép, quyến rũ, làm say mê; làm vui thích, làm vui sướng, sống dường như có phép màu phù hộ', 'ja_50.MP3', '0', null, null, null);
INSERT INTO japaneses VALUES ('51', 'あいぎょう', 'thương mến, thương yêu, âu yếm; có tình', 'ja_51.MP3', '0', null, null, null);
INSERT INTO japaneses VALUES ('52', 'あいきょうのある', 'đẹp, duyên dáng, yêu kiều; có sức quyến rũ, làm say mê, làm mê mẩn', 'ja_52.MP3', '0', null, null, null);
INSERT INTO japaneses VALUES ('53', 'あいくち', 'dao găm, (ngành in) dấu chữ thập, hục hặc với nhau; sẵn sàng choảng nhau, nhìn giận dữ, nhìn hầm hầm; nhìn trừng trừng, nói cay độc với ai; nói nóng nảy với ai, gắt gỏng với ai', 'ja_53.MP3', '0', null, null, null);
INSERT INTO japaneses VALUES ('54', 'あいくるしい', 'đẹp đẽ, xinh, đáng yêu, dễ thương, có duyên, yêu kiều, (thông tục) thú vị, vui thú, thích thú, (từ Mỹ,nghĩa Mỹ) đẹp (về mặt đạo đức), (từ Mỹ,nghĩa Mỹ), (từ lóng) người đàn bà trẻ đẹp', 'ja_54.MP3', '0', null, null, null);
INSERT INTO japaneses VALUES ('55', 'あいごう', 'tiếng than van, tiếng kêu van, tiếng rền rĩ, than van, kêu van, rền rĩ', 'ja_55.MP3', '0', null, null, null);
INSERT INTO japaneses VALUES ('56', 'あいこうか', 'người yêu, người ham thích, người ham chuộng, người hâm mộ, người yêu, người tình', 'ja_56.MP3', '0', null, null, null);
INSERT INTO japaneses VALUES ('57', 'あいこうしゃ', 'người hăng hái, người có nhiệt tình; người say mê', 'ja_57.MP3', '0', null, null, null);
INSERT INTO japaneses VALUES ('58', 'あいこく', 'nỗi đau buồn, nỗi sầu khổ, nỗi thương tiếc, gặp tai hoạ; thất bại;sự đau buồn, sự buồn rầu, tang; đồ tang, (thông tục) mắt sưng húp, mắt thâm tím, (thông tục) móng tay bẩn, đau buồn, buồn rầu, (thuộc) tang, tang tóc', 'ja_58.MP3', '0', null, null, null);
INSERT INTO japaneses VALUES ('59', 'あいことば ', 'khẩu lệnh, khẩu hiệu (của đảng phái chính trị...)', 'ja_59.MP3', '0', null, null, null);
INSERT INTO japaneses VALUES ('61', 'あいじゃく', 'sự gắn, sự dán; sự buộc, sự cột (vật gì với vật khác), cái dùng để buộc, vật bị buộc (vào vật khác), lòng quyến luyến, sự gắn bó, (pháp lý) sự bắt (người); sự tịch biên, sự tịch thu (tài sản, hàng hoá), (kỹ thuật) đồ gá lắp, phụ tùng', 'ja_61.MP3', '0', null, null, null);
INSERT INTO japaneses VALUES ('62', 'あいしゅう', 'sự gắn, sự dán; sự buộc, sự cột (vật gì với vật khác), cái dùng để buộc, vật bị buộc (vào vật khác), lòng quyến luyến, sự gắn bó, (pháp lý) sự bắt (người); sự tịch biên, sự tịch thu (tài sản, hàng hoá), (kỹ thuật) đồ gá lắp, phụ tùng', 'ja_62.MP3', '0', null, null, null);
INSERT INTO japaneses VALUES ('63', 'あいしょう', 'nỗi đau đớn; sự buồn rầu, sự buồn phiền, sự kêu than, sự than van, Chúa Giê,xu, buồn rầu, buồn phiền, đau xót, thương tiếc (ai);nỗi đau buồn, nỗi sầu khổ, nỗi thương tiếc, gặp tai hoạ; thất bại', 'ja_63.MP3', '0', null, null, null);
INSERT INTO japaneses VALUES ('64', 'あいじょう', 'lòng yêu, tình thương, tình yêu, mối tình, ái tình, người yêu, người tình, thần ái tình, (thông tục) người đáng yêu; vật đáng yêu, (thể dục,thể thao) điểm không, không (quần vợt), ái tình và nước lã, không có cách gì lấy được cái đó, chơi vì thích không phải vì tiền, chúng nó ghét nhau như đào đất đổ đi, yêu, thương, yêu mến, thích, ưa thích', 'ja_64.MP3', '0', null, null, null);
INSERT INTO japaneses VALUES ('65', 'あいじん', 'người yêu, người ham thích, người ham chuộng, người hâm mộ, người yêu, người tình;bà chủ nhà, bà chủ (người đàn bà có quyền kiểm soát hoặc định đoạt), người đàn bà am hiểu (một vấn đề), bà giáo, cô giáo, tình nhân, mèo, (thường), (viết tắt) Bà (trước tên một người đàn bà đã có chồng)', 'ja_65.MP3', '0', null, null, null);
INSERT INTO japaneses VALUES ('66', 'アイシング', 'sự đóng băng, sự ướp nước đá, sự ướp lạnh, kem lòng trắng trứng; đường cô (để phủ trên mặt bánh ngọt), (hàng không) sự đóng băng trên máy bay; lớp băng phủ trên máy bay', 'ja_66.MP3', '0', null, null, null);
INSERT INTO japaneses VALUES ('67', 'アイス', 'băng nước đá, kem, (từ Mỹ,nghĩa Mỹ), (từ lóng) kim cương, (từ Mỹ,nghĩa Mỹ) thái độ trịnh trọng lạnh lùng, (từ Mỹ,nghĩa Mỹ), (từ lóng) tiền đấm mõm cho cảnh sát (của bọn buôn lậu); tiền đút lót cho chủ rạp hát (để được phân phối nhiều vé hơn), làm tan băng; (nghĩa bóng) bắt đầu làm quen với nhau; phá bỏ cái không khí ngượng ngập dè dặt ban đầu, (xem) cut, có khả năng thành công, xếp lại, tạm gác lại, tạm ngừng hoạt động', 'ja_67.MP3', '0', null, null, null);
INSERT INTO japaneses VALUES ('68', 'あいず', 'dấu, dấu hiệu, ký hiệu; mật hiệu, dấu hiệu biểu hiện, biểu hiện, tượng trưng, điểm, (y học) triệu chứng, dấu vết (thú săn...), biển hàng, ước hiệu, gọi gió làm mưa, hô phong hoán vũ, đường như là chết, không phản ứng gì, đánh dấu; (tôn giáo) làm dấu, ký tên, viết ký hiệu, viết dấu hiệu, ra hiệu, làm hiệu, nhường (tài sản cho ai) bằng chứng thư, ký giao kỳ làm gì (cho ai); đưa giao kèo cho (ai) ký nhận làm gì cho mình, ngừng (phát thanh), (thông tục) ngừng nói, thoi nói chuyện, (như) to sign on, đăng tên nhập ngũ', 'ja_68.MP3', '0', null, null, null);
INSERT INTO japaneses VALUES ('69', 'あいする', 'lòng yêu, tình thương, tình yêu, mối tình, ái tình, người yêu, người tình, thần ái tình, (thông tục) người đáng yêu; vật đáng yêu, (thể dục,thể thao) điểm không, không (quần vợt), ái tình và nước lã, không có cách gì lấy được cái đó, chơi vì thích không phải vì tiền, chúng nó ghét nhau như đào đất đổ đi, yêu, thương, yêu mến, thích, ưa thích', 'ja_69.MP3', '0', null, null, null);
INSERT INTO japaneses VALUES ('70', 'あいせき', 'nỗi đau buồn, nỗi sầu khổ, nỗi thương tiếc, gặp tai hoạ; thất bại;nỗi đau đớn; sự buồn rầu, sự buồn phiền, sự kêu than, sự than van, Chúa Giê,xu, buồn rầu, buồn phiền, đau xót, thương tiếc (ai)', 'ja_70.MP3', '0', null, null, null);
INSERT INTO japaneses VALUES ('71', 'あいせつ ', 'cảm động, lâm ly, thống thiết;than vãn, buồn bã, rầu rĩ, não nùng', 'ja_71.mp3', '0', null, null, null);
INSERT INTO japaneses VALUES ('72', 'あいそ', 'sự kêu gọi; lời kêu gọi, lời thỉnh cầu, sự cầu khẩn, (pháp lý) sự chống án; quyền chống án, toà thượng thẩm, sức lôi cuốn, sức quyến rũ, (xem) country;lời than phiền, lời phàn nàn, lời oán trách, lời than thở; điều đáng phàn nàn, điều đáng than phiền, bệnh, sự đau, (từ Mỹ,nghĩa Mỹ), (pháp lý) sự kêu nài; đơn kiện;sự lễ độ, phép lịch sự', 'ja_72.mp3', '0', null, null, null);
INSERT INTO japaneses VALUES ('73', 'あいそう', 'sự lễ độ, phép lịch sự;sự lịch sự, sự nhã nhặn, tác phong lịch sự, tác phong nhã nhặn, do ưu đãi mà được, nhờ ơn riêng; do sự giúp đỡ, đến thăm xã giao người nào', 'ja_73.mp3', '0', null, null, null);
INSERT INTO japaneses VALUES ('74', 'あいそのいい', ' lịch sự, nhã nhặn, hoà nhã; niềm nở, ân cần;tử tế, tốt bụng, nhã nhặn, hoà nhã, dễ thương, đáng yêu', 'ja_74.mp3', '0', null, null, null);
INSERT INTO japaneses VALUES ('75', 'アイソレーション', 'sự cô lập, (y học) sự cách ly, (điện học) sự cách, (hoá học) sự tách ra', 'ja_75.mp3', '0', null, null, null);
INSERT INTO japaneses VALUES ('76', 'あいだ', 'không gian, không trung, khoảng không, khoảng, chỗ, khoảng cách, (ngành in) khoảng cách chữ; phiến cách chữ, đặt cách nhau, để cách nhau, dàn theo từng chặng, để cách (ở máy chữ), để cách nhiều hơn; để cách rộng hơn', 'ja_76.mp3', '0', null, null, null);
INSERT INTO japaneses VALUES ('77', 'あいたい', 'sự chạm trán, sự đương đầu, sự đối chất, sự đối chiếu;sự đương đầu (với một tình thế), sự lật (quân bài), sự quay (về một hướng), (số nhiều) cổ áo màu; cửa tay màu (của quân phục), sự phủ lên mặt ngoài, sự tráng lên mặt ngoài, khả năng; sự thông thạo, (quân sự), (số nhiều) động tác quay', 'ja_77.mp3', '0', null, null, null);
INSERT INTO japaneses VALUES ('78', 'あいたしゅぎ', 'chủ nghĩa vị tha, lòng vị tha, hành động vị tha', 'ja_78.mp3', '0', null, null, null);
INSERT INTO japaneses VALUES ('79', 'あいだに', 'lúc, chốc, lát, bõ công, đáng làm, to while away l ng phí, làm mất, để trôi qua; giết (thì giờ), trong lúc, trong khi, đang khi, đang lúc, chừng nào còn, còn, còn, trong khi mà, mà', 'ja_79.mp3', '0', null, null, null);
INSERT INTO japaneses VALUES ('80', 'あいちゃく', 'sự gắn, sự dán; sự buộc, sự cột (vật gì với vật khác), cái dùng để buộc, vật bị buộc (vào vật khác), lòng quyến luyến, sự gắn bó, (pháp lý) sự bắt (người); sự tịch biên, sự tịch thu (tài sản, hàng hoá), (kỹ thuật) đồ gá lắp, phụ tùng', 'ja_80.mp3', '0', null, null, null);
INSERT INTO japaneses VALUES ('81', 'あいちょう', 'than vãn, buồn bã, rầu rĩ, não nùng', 'ja_81.mp3', '0', null, null, null);
INSERT INTO japaneses VALUES ('82', 'あいつ', 'nó, anh ấy, ông ấy... (chỉ người và động vật giống đực), đàn ông; con đực, (định ngữ) đực (động vật);nó, bà ấy, chị ấy, cô ấy..., nó (chỉ tàu, xe... đã được nhân cách hoá), tàu ấy, xe ấy, người đàn bà, chị, đàn bà, con gái, con cái, (trong từ ghép chỉ động vật) cái', 'ja_82.mp3', '0', null, null, null);
INSERT INTO japaneses VALUES ('83', 'あいつら', 'chúng nó, chúng, họ, người ta', 'ja_83.mp3', '0', null, null, null);
INSERT INTO japaneses VALUES ('84', 'あいて', 'bạn, bầu bạn, người bạn gái (được thuê để cùng chung sống làm bầu bạn với một người phụ nữ khác) ((cũng) companion lady companion), sổ tay, sách hướng dẫn, vật cùng đôi, (+ with) làm bạn với;người cùng chung phần; người cùng canh ty, hội viên (của một công ty, một minh ước quốc tế), bạn cùng phe (trong một trò chơi), bạn cùng nhảy (vũ quốc tế), vợ; chồng, (số nhiều) khung lỗ (ở sàn tàu để cột buồm và trục lái... đi qua), thành viên lớn nhất của nước Anh (tức Inh,len), hội viên hùn vốn (không có tiếng nói trong công việc quản trị công ty), hội viên hùn vốn kín (không tham gia công việc quản trị công ty và ít người biết đến) ((cũng) secret partner; dormant partner), chung phần với, công ty với (ai), cho (ai) nhập hội; kết (ai với ai) thành một phe, là người cùng chung phần với (ai); là người cùng canh ty với (ai); là bạn cùng phe với (ai)', 'ja_84.mp3', '0', null, null, null);
INSERT INTO japaneses VALUES ('85', 'アイデア', 'quan niệm, tư tưởng, ý tưởng, ý nghĩ, ý kiến, ý niệm, khái niệm, sự hiểu biết qua, sự hình dung, sự tưởng tượng; điều tưởng tượng, ý định, kế hoạch hành động, ý đồ, (triết học) mẫu mực lý tưởng (theo Pla,ton); ý niệm của lý trí (theo Căng); đối tượng trực tiếp của nhận thức (theo Đề,các,tơ, Lốc)', 'ja_85.mp3', '0', null, null, null);
INSERT INTO japaneses VALUES ('86', 'アイディア', ' lịch sự, nhã nhặn, hoà nhã; niềm nở, ân cần;tử tế, tốt bụng, nhã nhặn, hoà nhã, dễ thương, đáng yêu', 'ja_86.mp3', '0', null, null, null);
INSERT INTO japaneses VALUES ('87', 'アイディアル', '(thuộc) quan niệm, (thuộc) tư tưởng, chỉ có trong ý nghĩ, chỉ có trong trí tưởng tượng, tưởng tượng, lý tưởng, (triết học) (thuộc) mẫu mực lý tưởng (theo Pla,ton), (từ Mỹ,nghĩa Mỹ), (triết học) duy tâm, lý tưởng, người lý tưởng; vật lý tưởng, cái tinh thần; điều chỉ có trong tâm trí', 'ja_87.mp3', '0', null, null, null);
INSERT INTO japaneses VALUES ('88', 'あいてどる', '(quân sự) tiếng hô \"đứng lại\" (của lính đứng gác), sự thách thức, (pháp lý) sự không thừa nhận, hiệu lệnh (cho tàu thuỷ, máy bay) bắt trưng bày dấu hiệu, (quân sự) hô \"đứng lại\" (lính đứng gác), thách, thách thức, không thừa nhận, đòi hỏi, yêu cầu', 'ja_88.mp3', '0', null, null, null);
INSERT INTO japaneses VALUES ('89', 'アイテム', 'khoản (ghi số...), món (ghi trong đơn hàng...); tiết mục, tin tức; (từ lóng) món tin (có thể đăng báo...)', 'ja_89.mp3', '0', null, null, null);
INSERT INTO japaneses VALUES ('90', 'あいてやく ', 'người cùng chung phần; người cùng canh ty, hội viên (của một công ty, một minh ước quốc tế), bạn cùng phe (trong một trò chơi), bạn cùng nhảy (vũ quốc tế), vợ; chồng, (số nhiều) khung lỗ (ở sàn tàu để cột buồm và trục lái... đi qua), thành viên lớn nhất của nước Anh (tức Inh,len), hội viên hùn vốn (không có tiếng nói trong công việc quản trị công ty), hội viên hùn vốn kín (không tham gia công việc quản trị công ty và ít người biết đến) ((cũng) secret partner; dormant partner), chung phần với, công ty với (ai), cho (ai) nhập hội; kết (ai với ai) thành một phe, là người cùng chung phần với (ai); là người cùng canh ty với (ai); là bạn cùng phe với (ai)', 'ja_90.mp3', '0', null, null, null);
INSERT INTO japaneses VALUES ('91', 'アイデンティティ', 'tính đồng nhất; sự giống hệt, cá tính, đặc tính; nét để nhận biết; nét để nhận dạng, nét để nhận diện (của người nào, vật gì...), (toán học) đồng nhất thức', 'ja_91.mp3', '0', null, null, null);
INSERT INTO japaneses VALUES ('92', 'アイデンティファイ', 'đồng nhất hoá, coi như nhau, nhận ra, làm cho nhận ra, nhận biết; nhận diện, nhận dạng, đồng nhất với, đồng cảm với', 'ja_92.mp3', '0', null, null, null);
INSERT INTO japaneses VALUES ('93', 'アイデンティフィケーション', 'sự đồng nhất hoá, sự làm thành đồng nhất, sự nhận ra, sự nhận biết sự nhận diện; sự nhận dạng; nét để nhận ra, nét để nhận biết, nét để nhận diện, nét để nhận dạng (người nào, vật gì), sự phát hiện ra, sự nhận diện ra, sự gắn bó chặt chẽ với; sự gia nhập, sự dự vào', 'ja_93.mp3', '0', null, null, null);
INSERT INTO japaneses VALUES ('94', 'あいとう', 'lời chia buồn;lòng thương tiếc, sự hối tiếc; sự ân hận, rất lấy làm tiếc, thương tiếc, hối tiếc, tiếc; sự buồn rầu, sự buồn phiền, sự kêu than, sự than van, Chúa Giê,xu, buồn rầu, buồn phiền, đau xót, thương tiếc (ai)', 'ja_94.mp3', '0', null, null, null);
INSERT INTO japaneses VALUES ('95', 'あいどくしゃ', 'người góp (tiền), người mua (báo) dài hạn; người đặt mua, (the subscriber) những người ký tên dưới đây;người đọc, độc giả, người mê đọc sách, phó giáo sư (trường đại học), (ngành in) người đọc và sửa bản in thử ((cũng) proot reader), (tôn giáo) người đọc kinh (trong nhà thờ) ((cũng) lay reader), người đọc bản thảo (ở nhà xuất bản) ((cũng) publisher\'s reader), tập văn tuyển, (từ lóng) sổ tay', 'ja_95.mp3', '0', null, null, null);
INSERT INTO japaneses VALUES ('96', 'あいともなう', 'đi theo, đi cùng, đi kèm, hộ tống, phụ thêm, kèm theo, (âm nhạc) đệm (đàn, nhạc)', 'ja_96.mp3', '0', null, null, null);
INSERT INTO japaneses VALUES ('97', 'アイドル', 'tượng thần, thần tượng, (nghĩa bóng) thần tượng, người được sùng bái, vật được tôn sùng, ma quỷ, (triết học) quan niệm sai lầm ((cũng) idolum)', 'ja_97.mp3', '0', null, null, null);
INSERT INTO japaneses VALUES ('98', 'あいにく', 'không may mắn là ...;xui xẻo là ...', 'ja_98.mp3', '0', null, null, null);
INSERT INTO japaneses VALUES ('99', 'あいのけっしょう  ', 'đứa bé, đứa trẻ, đứa con, (nghĩa bóng) kết quả, hậu quả, sản phẩm, người lớn mà tính như trẻ con, có mang sắp đến tháng đẻ, (xem) fire, (từ lóng) bõ già này, từ lúc còn thơ', 'ja_99.mp3', '0', null, null, null);
INSERT INTO japaneses VALUES ('100', 'あいのて ', '(sân khấu) tiết mục chuyển tiếp, thời gian ở giữa (hai sự việc khác nhau, quãng giữa; sự việc xảy ra trong thời gian ở giữa), (âm nhạc) dạo giữa, (sử học) màn chen (màn kịch ngắn, xen vào giữa hai màn, trong vở kịch tôn giáo...)', 'ja_100.mp3', '0', null, null, null);
INSERT INTO japaneses VALUES ('101', 'あいはん', 'sự khác nhau, sự không giống nhau, sự không hợp, sự không thích hợp, sự bất đồng, sự không đồng ý kiến, sự bất hoà', null, '0', null, null, null);
INSERT INTO japaneses VALUES ('102', 'あいびき', ' sự ấn định, sự hẹn (ngày, giờ, nơi hội họp...), sự chia phần, (pháp lý) sự nhượng lại, (từ Mỹ,nghĩa Mỹ) sự gặp gỡ yêu đương bất chính; sự hẹn hò bí mật', null, '0', null, null, null);
INSERT INTO japaneses VALUES ('103', 'あいびん', 'lòng thương hại, lòng thương xót, lòng trắc ẩn, điều đáng thương hại, điều đáng tiếc, thương hại, thương xót, động lòng trắc ẩn đối với', null, '0', null, null, null);
INSERT INTO japaneses VALUES ('104', 'あいふだ', '(từ Mỹ,nghĩa Mỹ) (như) cheque, sự cản trở, sự ngăn cản; sự kìm hãm; sự hạn chế; sự chặn lại; người chống cự, người ngăn cản, vật cản, (săn bắn) sự mất vết, sự mất hơi, sự dừng lại, sự ngừng lại, (quân sự) sự thua nhẹ, sự kiểm tra, sự kiểm soát, sự kiểm lại; dấu ghi đã kiểm tra (đã kiểm soát), hoá đơn, giấy ghi tiền (khách hàng phải trả ở khách sạn), (từ Mỹ,nghĩa Mỹ), (đánh bài) thẻ, kiểu kẻ ô vuông, kiểu ca rô; vải kẻ ô vuông, vải ca rô, (đánh cờ) sự chiếu tướng, chết, cản, cản trở; chăn, ngăn chặn; kìm, kiềm chế, nén, dằn (lòng), kiểm tra, kiểm soát; kiểm lại; đánh dấu đã kiểm soát, quở trách, trách mắng, (từ Mỹ,nghĩa Mỹ) gửi, ký gửi, (đánh cờ) chiếu (tướng), ngập ngừng, do dự, dừng lại, đứng lại (chó săn; vì lạc vết, hoặc để đánh hơi), ghi tên khi đến, (từ Mỹ,nghĩa Mỹ) ghi tên lấy phòng ở khách sạn, ghi tên khi ra về (sau ngày làm việc), (từ Mỹ,nghĩa Mỹ) trả buồng khách sạn, (từ Mỹ,nghĩa Mỹ), (từ lóng) chết ngoẻo, kiểm tra, soát lại; chữa (bài)', null, '0', null, null, null);
INSERT INTO japaneses VALUES ('105', 'あいぼ', 'lòng yêu, tình thương, tình yêu, mối tình, ái tình, người yêu, người tình, thần ái tình, (thông tục) người đáng yêu; vật đáng yêu, (thể dục,thể thao) điểm không, không (quần vợt), ái tình và nước lã, không có cách gì lấy được cái đó, chơi vì thích không phải vì tiền, chúng nó ghét nhau như đào đất đổ đi, yêu, thương, yêu mến, thích, ưa thích', null, '0', null, null, null);
INSERT INTO japaneses VALUES ('106', 'あいぼう ', 'bạn, bầu bạn, người bạn gái (được thuê để cùng chung sống làm bầu bạn với một người phụ nữ khác) ((cũng) companion lady companion), sổ tay, sách hướng dẫn, vật cùng đôi, (+ with) làm bạn với', null, '0', null, null, null);
INSERT INTO japaneses VALUES ('107', 'アイボリ', 'ngà (voi...), màu ngà, (số nhiều) đồ bằng ngà, (từ lóng) (cũng) số nhiều, răng, (số nhiều) (từ lóng) phím đàn pianô; con súc sắc, quả bi,a, (sử học) những người nô lệ da đen, bằng ngà, màu ngà', null, '0', null, null, null);
INSERT INTO japaneses VALUES ('108', 'あいま', 'khoảng (thời gian, không gian), khoảng cách, lúc nghỉ, lúc ngớt, lúc ngừng, (quân sự) khoảng cách, cự ly, (âm nhạc) quãng, (toán học) khoảng', null, '0', null, null, null);
INSERT INTO japaneses VALUES ('109', 'あいまい', 'mơ hồ, lờ mờ, mập mờ, lơ đãng (cái nhìn...);tối nghĩa, không rõ ràng, mơ hồ; nước đôi, nhập nhằng', null, '0', null, null, null);
INSERT INTO japaneses VALUES ('110', 'あいまいさ', 'sự tối nghĩa, sự không rõ nghĩa, sự không rõ ràng, sự mơ hồ, sự nhập nhằng', null, '0', null, null, null);
INSERT INTO japaneses VALUES ('111', 'あいまいもこ', 'tối, tối tăm, mờ, mờ mịt, không rõ nghĩa, tối nghĩa, không có tiếng tăm, ít người biết đến, làm tối, làm mờ, làm không rõ, làm khó hiểu, làm mờ (tên tuổi), che khuất', null, '0', null, null, null);
INSERT INTO japaneses VALUES ('112', 'あいまって', 'cùng, cùng với, cùng nhau, cùng một lúc, đồng thời, liền, liên tục', null, '0', null, null, null);
INSERT INTO japaneses VALUES ('113', 'あいよう', 'được mến chuộng, được ưa thích, người được ưa chuộng; vật được ưa thích, (thể dục,thể thao) (the favourite) người dự cuộc ai cũng chắc sẽ thắng; con vật (ngựa, chó...) dự cuộc ai cũng chắc sẽ thắng, sủng thần; ái thiếp, quý phi', null, '0', null, null, null);
INSERT INTO japaneses VALUES ('114', 'あいよく ', 'cảm xúc mạnh mẽ, tình cảm nồng nàn, sự giận dữ, tình dục, tình yêu, sự say mê, (tôn giáo) (the passion) những nỗi khổ hình của Chúa Giê,xu; bài ca thuật lại những nỗi khổ hình của Chúa Giê,xu, (thơ ca) say mê, yêu tha thiết, yêu nồng nàn', null, '0', null, null, null);
INSERT INTO japaneses VALUES ('115', 'あいらしい', 'xinh, xinh xinh, xinh xắn, xinh đẹp, hay hay, thú vị, đẹp mắt, đẹp, hay, cừ, tốt...,(mỉa mai) hay gớm, hay ho gớm, (từ cổ,nghĩa cổ) lớn, kha khá, (từ cổ,nghĩa cổ) dũng cảm, gan dạ; cường tráng, mạnh mẽ, my pretty con nhỏ của tôi, bé xinh của mẹ, (số nhiều) đồ xinh xắn, đồ trang hoàng xinh xinh, khá, kha khá, hầu như, gần như', null, '0', null, null, null);
INSERT INTO japaneses VALUES ('116', 'アイランド', 'hòn đảo, (nghĩa bóng) cái đứng tách riêng, cái đứng tách biệt; miền đồng rừng giữa thảo nguyên; chỗ đứng tránh (cho người đi bộ ở ngã ba đường), (giải phẫu) đảo, biến thành hòn đảo, làm thành những hòn đảo ở, đưa ra một hòn đảo; cô lập (như ở trên một hòn đảo)', null, '0', null, null, null);
INSERT INTO japaneses VALUES ('117', 'アイリス ', '(giải phẫu) mống mắt, tròng đen, (thực vật học) cây irit, (khoáng chất) đá ngũ sắc, cầu vòng', null, '0', null, null, null);
INSERT INTO japaneses VALUES ('118', 'アイル', 'cánh, gian bên (trong giáo đường), lối đi giữa các dãy ghế (trong nhà thờ, ở rạp hát, xe lửa, xe buýt)', null, '0', null, null, null);
INSERT INTO japaneses VALUES ('119', 'あいれん', 'sự thông cảm; sự đồng tình, sự thương cảm; mối thương cảm, sự đồng ý;lòng thương hại, lòng thương xót, lòng trắc ẩn, điều đáng thương hại, điều đáng tiếc, thương hại, thương xót, động lòng trắc ẩn đối với', null, '0', null, null, null);
INSERT INTO japaneses VALUES ('120', 'あいろ  ', 'hẽm núi, đi thành hàng dọc, làm nhơ bẩn, làm vẩn đục, làm ô uế ((nghĩa đen) & (nghĩa bóng)), (từ Mỹ,nghĩa Mỹ) phá trinh, hãm hiếp, cưỡng dâm, làm mất tính chất thiêng liêng', null, '0', null, null, null);
INSERT INTO japaneses VALUES ('121', 'アイロニー', 'giống thép, giống gang, sự mỉa, sự mỉa mai, sự châm biếm, Socratic', null, '0', null, null, null);
INSERT INTO japaneses VALUES ('122', 'あう  ', 'cuộc gặp gỡ (của những người đi săn ở một nơi đã hẹn trước, của những nhà thể thao để thi đấu), gặp, gặp gỡ, đi đón, (từ Mỹ,nghĩa Mỹ) xin giới thiệu, làm quen (với người nào), gặp, vấp phải, đương đầu, đáp ứng, thoả mãn, làm vừa lòng, nhận, tiếp nhận; chịu đựng, cam chịu, thanh toán (hoá đơn...), gặp nhau, gặp gỡ, tụ họp, họp, gặp nhau, nối nhau, tiếp vào nhau, gắn vào nhau, tình cờ gặp, gặp phải, vấp phải (khó khăn...), được nghe thấy, được trông thấy, nhìn thấy (bắt gặp) ai đang nhìn mình; nhìn trả lại, thu vén tằn tiện để cuối tháng khỏi thiếu tiền, (từ cổ,nghĩa cổ) đúng, thích hợp', null, '0', null, null, null);
INSERT INTO japaneses VALUES ('123', 'アウター', 'ở phía ngoài, ở xa hơn, vòng ngoài cùng (mục tiêu), phát bắn vào vòng ngoài cùng (của mục tiêu)', null, '0', null, null, null);
INSERT INTO japaneses VALUES ('124', 'アウト  ', 'ngoài, ở ngoài, ra ngoài, ra, hẳn, hoàn toàn hết, không nắm chính quyền, đang bãi công, tắt, không cháy, không còn là mốt nữa, to thẳng, rõ ra, sai khớp, trật khớp, trẹo xương, gục, bất tỉnh, sai, lầm, không như bình thường, bối rối, luống cuống, lúng túng, đã xuất bản (sách); đã nở (gà con); đã được cho ra giao du (con gái mới lớn lên); đã truyền đi (bức điện), (thông tục) hoàn toàn, hết sức, hết lực; toàn tâm toàn ý, đã dậy ra ngoài được (sau khi ốm khỏi), bỏ xa, không thể so sánh được với, đang đi tìm cái gì', null, '0', null, null, null);
INSERT INTO japaneses VALUES ('125', 'アウトサイダー  ', 'người ngoài cuộc; người không thể cho nhập bọn, người không cùng nghề; người không chuyên môn, đấu thủ ít có khả năng thắng; ngựa đua ít có khả năng thắng', null, '0', null, null, null);
INSERT INTO japaneses VALUES ('126', 'アウトスタンディング', 'nổi bật, đáng chú ý; nổi tiếng, còn tồn tại, chưa giải quyết xong (vấn đề...); chưa trả (nợ...)', null, '0', null, null, null);
INSERT INTO japaneses VALUES ('127', 'アウトプット', 'sự sản xuất, sản phẩm, khả năng sản xuất, sảm lượng, (kỹ thuật) hiệu suất', null, '0', null, null, null);
INSERT INTO japaneses VALUES ('128', 'あうやくそく  ', 'chỗ hẹn, nơi hẹn gặp, (quân sự) nơi quy định gặp nhau theo kế hoạch, cuộc gặp gỡ hẹn hò, gặp nhau ở nơi hẹn', null, '0', null, null, null);
INSERT INTO japaneses VALUES ('129', 'あえぐ  ', 'sự thở hổn hển, đến lúc sắp thở hắt ra, đến lúc sắp chết, há hốc miệng ra (vì kinh ngạc), thở hổn hển, há hốc miệng vì kinh ngạc, khao khát, ước ao, nói hổn hển, thở hắt ra, chết', null, '0', null, null, null);
INSERT INTO japaneses VALUES ('130', 'あえて', 'một cách táo bạo;cả gan', null, '0', null, null, null);
INSERT INTO japaneses VALUES ('131', 'あえてする', 'dám, khùng;liều, mạo hiểm', null, '0', null, null, null);
INSERT INTO japaneses VALUES ('132', 'あえない', '(thuộc) bi kịch, (nghĩa bóng) bi thảm, thảm thương', null, '0', null, null, null);
INSERT INTO japaneses VALUES ('133', 'あお', 'xanh, mặc quần áo xanh, (thông tục) chán nản, thất vọng, hay chữ (đàn bà), tục tĩu (câu chuyện), (chính trị) (thuộc) đảng Tô rõi rệu 1 chĩu phĩu uống say mèm, uống say bí tỉ, chửi tục, (xem) moon, màu xanh, phẩm xanh, thuốc xanh, (the blue) bầu trời, (the blue) biển cả, vận động viên điền kinh (trường đại học Ôc,phớt và Căm,brít); huy hiệu vận động điền kinh (trường đại học Ôc,phớt và Căm,brít), nữ học giả, nữ sĩ ((cũng) blue stocking), (số nhiều) sự buồn chán, (xem) bolt, hoàn toàn bất ngờ, làm xanh, nhuộm xanh, hồ lơ (quần áo), (từ lóng) xài phí, phung phí (tiền bạc)', null, '0', null, null, null);
INSERT INTO japaneses VALUES ('134', 'あおあお ', 'xanh lá cây, xanh tươi, phủ đầy cỏ xanh, (nghĩa bóng) ngây thơ, thiếu kinh nghiệm;tươi tốt, sum sê, căng nhựa (cỏ cây), (từ lóng) rượu, (từ lóng) mời rượu, đổ rượu, chuốc rượu, (từ lóng) uống rượu, nốc rượu, chè chén', null, '0', null, null, null);
INSERT INTO japaneses VALUES ('135', 'あおあざ', 'vết thâm tím (trên người), vết thâm (trên hoa quả), làm thâm tím (mình mẩy); làm cho thâm lại (hoa quả), làm méo mó (đồ đồng...); làm sứt sẹo (gỗ), tán, giã (vật gì), thâm tím lại; thâm lại, chạy thục mạng', null, '0', null, null, null);
INSERT INTO japaneses VALUES ('136', 'あおい', 'xanh, mặc quần áo xanh, (thông tục) chán nản, thất vọng, hay chữ (đàn bà), tục tĩu (câu chuyện), (chính trị) (thuộc) đảng Tô rõi rệu 1 chĩu phĩu uống say mèm, uống say bí tỉ, chửi tục, (xem) moon, màu xanh, phẩm xanh, thuốc xanh, (the blue) bầu trời, (the blue) biển cả, vận động viên điền kinh (trường đại học Ôc,phớt và Căm,brít); huy hiệu vận động điền kinh (trường đại học Ôc,phớt và Căm,brít), nữ học giả, nữ sĩ ((cũng) blue stocking), (số nhiều) sự buồn chán, (xem) bolt, hoàn toàn bất ngờ, làm xanh, nhuộm xanh, hồ lơ (quần áo), (từ lóng) xài phí, phung phí (tiền bạc)', null, '0', null, null, null);
INSERT INTO japaneses VALUES ('137', 'あおいろ', 'xanh, mặc quần áo xanh, (thông tục) chán nản, thất vọng, hay chữ (đàn bà), tục tĩu (câu chuyện), (chính trị) (thuộc) đảng Tô rõi rệu 1 chĩu phĩu uống say mèm, uống say bí tỉ, chửi tục, (xem) moon, màu xanh, phẩm xanh, thuốc xanh, (the blue) bầu trời, (the blue) biển cả, vận động viên điền kinh (trường đại học Ôc,phớt và Căm,brít); huy hiệu vận động điền kinh (trường đại học Ôc,phớt và Căm,brít), nữ học giả, nữ sĩ ((cũng) blue stocking), (số nhiều) sự buồn chán, (xem) bolt, hoàn toàn bất ngờ, làm xanh, nhuộm xanh, hồ lơ (quần áo), (từ lóng) xài phí, phung phí (tiền bạc)', null, '0', null, null, null);
INSERT INTO japaneses VALUES ('138', 'あおぎたてる', 'lay động, rung động, làm rung chuyển, khích động, làm xúc động, làm bối rối, suy đi tính lại, suy nghĩ lung; thảo luận, agitate for, against xúi giục, khích động (để làm gì, chống lại cái gì...)', null, '0', null, null, null);
INSERT INTO japaneses VALUES ('139', 'あおぎのぞみ', 'sự tôn kính; lòng sùng kính, lòng kính trọng, tôn kính; sùng kính, kính trọng', null, '0', null, null, null);
INSERT INTO japaneses VALUES ('140', 'あおくさい', 'thiếu kinh nghiệm;non nớt, chưa chín chắn, chưa chín muồi', null, '0', null, null, null);
INSERT INTO japaneses VALUES ('141', 'あおじゃしん', 'thiết kế, lên kế hoạch;sơ đồ, đồ án (nhà...), bản đồ thành phố, bản đồ, mặt phẳng (luật xa gần), dàn bài, dàn ý (bài luận văn...), kế hoạch; dự kiến, dự định, cách tiến hành, cách làm, vẻ bản đồ của, vẽ sơ đồ của (một toà nhà...), làm dàn bài, làm dàn ý (bản luận văn...), đặt kế hoạch, trù tính, dự tính, dự kiến, đặt kế hoạch, trù tính, dự tính, dự kiến', null, '0', null, null, null);
INSERT INTO japaneses VALUES ('142', 'あおじろい ', 'làm rào bao quanh, quây rào, làm tái đi, làm nhợt nhạt, làm xanh xám, tái đi, nhợt nhạt, xanh xám, (nghĩa bóng) lu mờ đi, tái, nhợt nhạt, xanh xám, nhợt (màu); lờ mờ, yếu ớt (ánh sáng)', null, '0', null, null, null);
INSERT INTO japaneses VALUES ('143', 'あおにさい ', 'người tập việc; người mới học, người chưa có kinh nghiệm, (tôn giáo) tín đồ mới, người mới tu', null, '0', null, null, null);
INSERT INTO japaneses VALUES ('144', 'あおみ ', 'màu lục, màu xanh tươi) của cây cỏ, trạng thái còn xanh, sự non nớt, sự thiếu kinh nghiệm, sự khờ dại, vẻ tráng kiện quắc thước (của một ông già)', null, '0', null, null, null);
INSERT INTO japaneses VALUES ('145', 'あおむし', 'sâu bướm, (kỹ thuật) dây xích; xe dây xích, (nghĩa bóng) người tham tàn; quân hút máu hút mủ', null, '0', null, null, null);
INSERT INTO japaneses VALUES ('146', 'あおやぎ', 'người gạn kem (trong sữa), người đọc lướt một quyển sách, thìa hớt kem (trong sữa); thìa hớt bọt, thuyền máy nhẹ và nhanh, (động vật học) nhạn biển mỏ giẹp (hay bay là là trên mặt nước để kiếm mồi)', null, '0', null, null, null);
INSERT INTO japaneses VALUES ('147', 'あおり', 'ảnh hưởng, tác dụng, uy thế, thế lực, người có ảnh hưởng; điều có ảnh hưởng; điều có tác dụng, người có thế lực', null, '0', null, null, null);
INSERT INTO japaneses VALUES ('148', 'あおる', 'tiếng uống xì xụp, tiếng nhai nhóp nhép, tiếng soàm soạp (khi ăn uống), nhai nhóp nhép; húp sùm sụp, ăn uống soàm soạp', null, '0', null, null, null);
INSERT INTO japaneses VALUES ('149', 'あか', 'đâm bằng dao găm, đồ bẩn thỉu, đồ dơ bẩn, đồ dơ dáy, bùn nhão; ghét, đất, vật rác rưởi, vật vô giá trị, lời nói tục tĩu, lời thô bỉ, lời thô tục, nuốt nhục, chửi rủa ai, bôi nhọ ai, bôi xấu ai, gièm pha ai, vàng', null, '0', null, null, null);
INSERT INTO japaneses VALUES ('150', 'あかあか', 'sáng, sáng chói, tươi, sáng sủa; rạng rỡ, sáng ngời; rực rỡ, (thường), (mỉa mai) sáng dạ, thông minh, nhanh trí, vui tươi, lanh lợi, hoạt bát, nhanh nhẹn, (xem) side, sáng chói, sáng ngời', null, '0', null, null, null);
INSERT INTO japaneses VALUES ('151', 'あかい ', 'đỏ, hung hung đỏ, đỏ hoe, đẫm máu, ác liệt, cách mạng, cộng sản; cực tả, bừng bừng nổi giận, nổi xung, màu đỏ, (the reds) (từ Mỹ,nghĩa Mỹ), (số nhiều) những người da đỏ, hòn bi a đỏ, ô đỏ (bàn rulet đánh bạc), quần áo màu đỏ, ((thường) the Reds) những người cách mạng, những người cộng sản, (từ lóng) vàng, (kế toán) bên nợ, mắc nợ, (từ Mỹ,nghĩa Mỹ) bị hụt tiền', null, '0', null, null, null);
INSERT INTO japaneses VALUES ('152', 'あかいろ', 'đỏ, hung hung đỏ, đỏ hoe, đẫm máu, ác liệt, cách mạng, cộng sản; cực tả, bừng bừng nổi giận, nổi xung, màu đỏ, (the reds) (từ Mỹ,nghĩa Mỹ), (số nhiều) những người da đỏ, hòn bi a đỏ, ô đỏ (bàn rulet đánh bạc), quần áo màu đỏ, ((thường) the Reds) những người cách mạng, những người cộng sản, (từ lóng) vàng, (kế toán) bên nợ, mắc nợ, (từ Mỹ,nghĩa Mỹ) bị hụt tiền', null, '0', null, null, null);
INSERT INTO japaneses VALUES ('153', 'アカウント', 'sự tính toán, sự kế toán; sổ sách, kế toán, bản kê khai; bản thanh toán tiền, bản ghi những món tiền phải trả, sự thanh toán, sự trả dần, sự trả làm nhiều kỳ, tài khoản, số tiền gửi, lợi, lợi ích, lý do, nguyên nhân, sự giải thích, báo cáo, bài tường thuật; sự tường thuật, sự miêu tả, sự đánh giá, sự chú ý, sự lưu tâm, tầm quan trọng, giá trị, theo sự đánh giá chung, theo ý kiến chung', null, '0', null, null, null);
INSERT INTO japaneses VALUES ('154', 'あかがね ', ' (từ lóng) cảnh sát, mật thám, cớm, đồng (đỏ), đồng xu đồng, thùng nấu quần áo bằng đồng; chảo nấu đồng, (thông tục) mồm, miệng, cổ họng, giải khát, uống cho mát họng, bọc đồng (đáy tàu); mạ đồng, bằng đồng, có màu đồng, bọc đồng (đáy tàu)', null, '0', null, null, null);
INSERT INTO japaneses VALUES ('155', 'あがく', '(động vật học) cá bơn, sự lúng túng; sự nhầm lẫn (trong việc làm, trong khi nói...), sự đi loạng choạng; sự loạng choạng cố tiến lên, lúng tung, nhầm lẫn, loạng choạng, thì thụp', null, '0', null, null, null);
INSERT INTO japaneses VALUES ('156', 'あかご', 'đứa bé mới sinh; trẻ thơ, người tính trẻ con, (định ngữ) nhỏ; xinh xinh, (từ Mỹ,nghĩa Mỹ), (từ lóng) người yêu; con gái, phải gánh một trách nhiệm không thích thú gì, bó chân bó tay ai, bắt ai phải gánh một trách nhiệm không thích thú gì, nghịch cái kiểu trẻ con; làm ra vẻ trẻ con, trốn trách nhiệm lấy cớ là không có kinh nghiệm, có vẻ trẻ con; có tính trẻ con, (từ Mỹ,nghĩa Mỹ), (từ lóng) người yêu', null, '0', null, null, null);
INSERT INTO japaneses VALUES ('157', 'あかさび', 'gỉ (sắt, kim loại), (nghĩa bóng) sự cùn trí nhớ, sự kém trí nhớ, (thực vật học) bệnh gỉ sắt, gỉ, làm gỉ, thà rằng hoạt động mà suy nhược còn hơn là để chết dần chết mòn', null, '0', null, null, null);
INSERT INTO japaneses VALUES ('158', 'あかし', 'chứng, chứng cớ, bằng chứng, sự chứng minh, sự thử, sự thử thách, sự thử súng, sự thử chất nổ; nơi thử súng, nơi thử chất nổ, ống thử, bản in thử, tiêu chuẩn, nồng độ của rượu cất, (Ê,cốt) (pháp lý) sự xét sử (của quan toà), (từ cổ,nghĩa cổ) tính không xuyên qua được, tính chịu đựng, (tục ngữ) có qua thử thách mới biết dở hay, không xuyên qua, không ngấm; chịu đựng được, chống được, tránh được, làm cho không xuyên qua được; làm cho (vải...) không thấm nước', null, '0', null, null, null);
INSERT INTO japaneses VALUES ('159', 'あかす', 'đi, đi lên; đi qua, đi ngang qua, (nghĩa bóng) trải qua, chuyển qua, truyền, trao, đưa, (+ into) chuyển qua, chuyển sang, biến thành, trở thành, đổi thành, qua đi, biến đi, mất đi; chết, trôi đi, trôi qua, được thông qua, được chấp nhận, thi đỗ, xảy ra, được làm, được nói đến, bị bỏ qua, bị lờ đi; qua đi không ai hay biết, (+ over, by) bỏ qua, lờ đi, (đánh bài) bỏ lượt, bỏ bài, (pháp lý) được tuyên án, (+ upon) xét xử, tuyên án, lưu hành, tiêu được (tiền), (thể dục,thể thao) đâm, tấn công (đấu kiếm), (từ Mỹ,nghĩa Mỹ) đi ngoài, đi tiêu, qua, đi qua, đi ngang qua, vượt qua, quá, vượt quá, hơn hẳn, thông qua, được đem qua thông qua, qua được, đạt tiêu chuẩn qua (kỳ thi, cuộc thử thách...), duyệt, đưa qua, chuyển qua, truyền tay, trao, (thể dục,thể thao) chuyền (bóng...), cho lưu hành, đem tiêu (tiền giả...)', null, '0', null, null, null);
INSERT INTO japaneses VALUES ('160', 'あかちゃん', 'đứa bé mới sinh; trẻ thơ, người tính trẻ con, (định ngữ) nhỏ; xinh xinh, (từ Mỹ,nghĩa Mỹ), (từ lóng) người yêu; con gái, phải gánh một trách nhiệm không thích thú gì, bó chân bó tay ai, bắt ai phải gánh một trách nhiệm không thích thú gì, nghịch cái kiểu trẻ con; làm ra vẻ trẻ con, trốn trách nhiệm lấy cớ là không có kinh nghiệm, có vẻ trẻ con; có tính trẻ con, (từ Mỹ,nghĩa Mỹ), (từ lóng) người yêu', null, '0', null, null, null);
INSERT INTO japaneses VALUES ('161', 'あかつき', 'bình minh, rạng đông, lúc sáng tinh mơ, (nghĩa bóng) buổi đầu; sự hé rạng; tia sáng đầu tiên (của hy vọng...), bắt đầu rạng, bắt đầu lộ ra, bắt đầu nở ra, hé nở, bắt đầu hiện ra trong trí, loé ra trong trí, trở nên rõ ràng', null, '0', null, null, null);
INSERT INTO japaneses VALUES ('162', 'アカデミー', 'học viện, viện hàn lâm, trường chuyên nghiệp, trường tư thục (dành cho trẻ em nhà giàu), vườn A,ca,đê,mi (khu vườn gần A,ten nơi Pla,ton giảng triết học); trường phái triết học Pla,ton; môn đệ của Pla,ton', null, '0', null, null, null);
INSERT INTO japaneses VALUES ('163', 'アカデミック', '(thuộc) học viện; (thuộc) trường đại học, (thuộc) viện hàn lâm, có tính chất học thuật, lý thuyết suông, trừu tượng, không thực tế, (văn nghệ) kinh viện, (thuộc) trường phái triết học Pla,ton, hội viên học viện, viện sĩ, người quá nệ kinh viện, (số nhiều) lập luận hoàn toàn lý thuyết, (số nhiều) mũ áo đại học (của giáo sư và học sinh đại học ở Anh)', null, '0', null, null, null);
INSERT INTO japaneses VALUES ('164', 'あかにく', 'thịt tươi còn máu, thịt đỏ (thịt bò, cừu, đối lại với thịt trắng như thịt gà)', null, '0', null, null, null);
INSERT INTO japaneses VALUES ('165', 'あかぬけ', 'sự lọc; sự tinh chế (dầu, đường); sự luyện tinh (kim loại), sự tinh tế, sự tế nhị, sự tao nhã, sự lịch sự, sự sành sỏi, cái hay, cái đẹp, cái tinh tuý, cái tao nhã, thủ đoạn tinh vi, phương pháp tinh vi, lập luận tế nhị, sự phân biệt tinh vi', null, '0', null, null, null);
INSERT INTO japaneses VALUES ('166', 'あかぬける', 'lọc, lọc trong, luyện tinh, tinh chế, làm cho tinh tế hơn, làm cho lịch sự hơn, làm cho tao nhã hơn, làm cho sành sõi hơn (sở thích, ngôn ngữ, tác phong...), trở nên tinh tế hơn, trở nên lịch sự hơn, trở nên tao nhã hơn, trở nên sành sõi hơn (sở thích, ngôn ngữ, tác phong...), (+ on, upon) tinh tế, tế nhị (trong cách suy nghĩ, ăn nói...), (+ on, upon) làm tăng thêm phần tinh tế, làm tăng thêm phần tế nhị', null, '0', null, null, null);
INSERT INTO japaneses VALUES ('167', 'あかはじ', 'sự thẹn, sự ngượng; sự hổ thẹn, sự tủi thẹn, điều xấu hổ, mối nhục, làm tủi thẹn, làm xấu hổ, làm nhục nhã; là mối nhục cho, (từ cổ,nghĩa cổ) xấu hổ, từ chối vì xấu hổ', null, '0', null, null, null);
INSERT INTO japaneses VALUES ('168', 'あかはた', 'cờ đỏ dùng làm biểu trưng cho sự nguy hiểm (trên đường bộ ), cờ đỏ (biểu trưng của cách mạng, chủ nghĩa cộng sản)', null, '0', null, null, null);
INSERT INTO japaneses VALUES ('169', 'あかはだか', 'sự trần truồng, sự trơ trụi, sự loã lồ, trạng thái không che đậy, trạng thái không giấu giếm, trạng thái rõ rành rành', null, '0', null, null, null);
INSERT INTO japaneses VALUES ('170', 'あかぼう ', '(quân sự) hiến binh, (từ Mỹ,nghĩa Mỹ), (ngành đường sắt) công nhân khuân vác, (động vật học) chim sẻ cánh vàng', null, '0', null, null, null);
INSERT INTO japaneses VALUES ('171', 'あかむし', 'con sâu có đốt màu đỏ làm mồi câu, bọ chỉ đào; bọ gậy; cung quăng', null, '0', null, null, null);
INSERT INTO japaneses VALUES ('172', 'あがめる', 'sự tôn trọng, sự kính trọng, (số nhiều) lời kính thăm, sự lưu tâm, sự chú ý, mối quan hệ, mối liên quan, điểm; phương diện, tôn trọng, kính trọng, lưu tâm, chú ý', null, '0', null, null, null);
INSERT INTO japaneses VALUES ('173', 'あからさま', 'rõ ràng, rành mạch, hiển nhiên;công khai, không úp mở;rõ ràng, giản dị, đơn giản, mộc mạc, chất phác, thẳng thắn, không quanh co, không úp mở', null, '0', null, null, null);
INSERT INTO japaneses VALUES ('174', 'あからめる', 'sự đỏ mặt (vì thẹn), ánh hồng, nét ửng đỏ, cái nhìn, cái liếc mắt, làm cho ai thẹn đỏ mặt, đỏ mặt (vì thẹn), thẹn, ửng đỏ, ửng hồng', null, '0', null, null, null);
INSERT INTO japaneses VALUES ('175', 'あからんだ', 'đỏ ửng, hồng hào (da), sặc sỡ, nhiều màu sắc, bóng bảy, hào nhoáng, cầu kỳ, hoa mỹ', null, '0', null, null, null);
INSERT INTO japaneses VALUES ('176', 'あかり', 'ánh sáng, ánh sáng mặt trời, ánh sáng ban ngày, nguồn ánh sáng, đèn đuốc, lửa, tia lửa; diêm, đóm, (số nhiều) sự hiểu biết, trí thức, trí tuệ, chân lý, trạng thái, phương diện, quan niệm, sự soi sáng, sự làm sáng tỏ; (số nhiều) những sự kiện làm sáng tỏ, những phát minh làm sáng tỏ, (tôn giáo) ánh sáng của thượng đế, sinh khí, sự tinh anh; ánh (mắt); (thơ ca) sự nhìn, (số nhiều) (từ lóng) đôi mắt, cửa, lỗ sáng, (số nhiều) khả năng, (nghệ thuật) chỗ sáng (trong bức tranh), sáng sủa, sáng, nhạt (màu sắc), đốt, thắp, châm, nhóm, soi sáng, chiếu sáng, soi đường', null, '0', null, null, null);
INSERT INTO japaneses VALUES ('177', 'あがり', 'sự trèo lên, sự đi lên, sự lên, sự đi ngược lên (dòng sông...), con đường đi lên, đường dốc; bậc cầu thang đi lên;sự lên, sự đưa lên, sự kéo lên, sự dâng; lên, sự tăng lên, sự tăng lương, sự thăng (cấp bậc), sự tiến lên (địa vị xã hội...), sự nổi lên để đớp mồi (cá), sự trèo lên, sự leo lên (núi...), đường dốc, chỗ dốc, gò cao, chiều cao đứng thẳng, độ cao (của bậc cầu thang, vòm...), nguồn gốc, căn nguyên, nguyên do; sự gây ra, làm cho ai phát khùng lên, phỉnh ai, dậy, trở dậy, đứng dậy, đứng lên, mọc (mặt trời, mặt trăng...)', null, '0', null, null, null);
INSERT INTO japaneses VALUES ('178', 'あがりくち', 'sự đi vào, (sân khấu) sự ra (của diễn viên), sự nhậm (chức...), quyền vào, quyền gia nhập, tiền vào, tiền gia nhập ((cũng) entrance_fee), cổng vào, lối vào, làm xuất thần, làm mê li, mê hoặc (ai đén chỗ...)', null, '0', null, null, null);
INSERT INTO japaneses VALUES ('179', 'あがりこむ', 'đi vào, (sân khấu) ra, tuyên bố tham dự (cuộc thi), đi vào (một nơi nào...); đâm (vào thịt...), gia nhập (quân đội...), bắt đầu luyện (chó ngựa), ghi (tên vào sổ, cuộc thi...), kết nạp, lấy vào, đi vào (nơi nào), tiến hành (cuộc nói chuyện, cuộc điều tra); thiết lập (quan hệ...); ký kết (hiệp nghị...), thông cảm với (ý nghĩ, tình cảm của ai), tự ràng buộc mình vào, tham dự (hợp đồng, hiệp ước...), nằm trong (kế hoạch, sự tính toán), bắt đầu (một quá trình gì...); bắt đầu bàn về (một vấn đề...), (pháp lý) tiếp nhận, tiếp thu (tài sản), có ý đến dự (cuộc họp...); nhất định có mặt (ở cuộc mít tinh...), phản kháng; đề nghị ghi lời phản kháng của mình (vào văn bản...), kết toán sổ sách', null, '0', null, null, null);
INSERT INTO japaneses VALUES ('180', 'あがりだか', 'thu nhập (quốc gia), ((thường) số nhiều) lợi tức, hoa lợi (của cá nhân), ngân khố quốc gia; sở thu thuế, (định ngữ) (thuộc) hải quan', null, '0', null, null, null);
INSERT INTO japaneses VALUES ('181', 'あかりとり', 'cửa sổ ở trần nhà, cửa sổ ở mái nhà;(kiến trúc) đố cửa trên (cửa, cửa sổ), (từ Mỹ,nghĩa Mỹ) cửa sổ con (ở trên cửa lớn) ((cũng) transom,window)', null, '0', null, null, null);
INSERT INTO japaneses VALUES ('182', 'あがりはな', 'sự đi vào, (sân khấu) sự ra (của diễn viên), sự nhậm (chức...), quyền vào, quyền gia nhập, tiền vào, tiền gia nhập ((cũng) entrance_fee), cổng vào, lối vào, làm xuất thần, làm mê li, mê hoặc (ai đén chỗ...)', null, '0', null, null, null);
INSERT INTO japaneses VALUES ('183', 'あがりもの', 'sản lượng, hoa lợi (thửa ruộng); hiệu suất (máy...), (tài chính) lợi nhuận, lợi tức, (kỹ thuật) sự cong, sự oằn, (nông nghiệp) sản xuất, sản ra, mang lại, (tài chính) sinh lợi, chịu thua, chịu nhường, (quân sự) giao, chuyển giao, (nông nghiệp); (tài chính) sinh lợi, đầu hàng, quy phục, hàng phục, khuất phục, chịu thua, chịu lép, nhường, cong, oằn, bỏ, chết', null, '0', null, null, null);
INSERT INTO japaneses VALUES ('184', 'あがる', 'đi vào, (sân khấu) ra, tuyên bố tham dự (cuộc thi), đi vào (một nơi nào...); đâm (vào thịt...), gia nhập (quân đội...), bắt đầu luyện (chó ngựa), ghi (tên vào sổ, cuộc thi...), kết nạp, lấy vào, đi vào (nơi nào), tiến hành (cuộc nói chuyện, cuộc điều tra); thiết lập (quan hệ...); ký kết (hiệp nghị...), thông cảm với (ý nghĩ, tình cảm của ai), tự ràng buộc mình vào, tham dự (hợp đồng, hiệp ước...), nằm trong (kế hoạch, sự tính toán), bắt đầu (một quá trình gì...); bắt đầu bàn về (một vấn đề...), (pháp lý) tiếp nhận, tiếp thu (tài sản), có ý đến dự (cuộc họp...); nhất định có mặt (ở cuộc mít tinh...), phản kháng; đề nghị ghi lời phản kháng của mình (vào văn bản...), kết toán sổ sách', null, '0', null, null, null);
INSERT INTO japaneses VALUES ('185', 'あかるい', 'sáng, sáng chói, tươi, sáng sủa; rạng rỡ, sáng ngời; rực rỡ, (thường), (mỉa mai) sáng dạ, thông minh, nhanh trí, vui tươi, lanh lợi, hoạt bát, nhanh nhẹn, (xem) side, sáng chói, sáng ngời', null, '0', null, null, null);
INSERT INTO japaneses VALUES ('186', 'あかるさ', 'sự sáng ngời; sự rực rỡ, sự sáng dạ, sự thông minh, sự nhanh trí', null, '0', null, null, null);
INSERT INTO japaneses VALUES ('187', 'あかるむ', 'làm sáng sủa, làm tươi sáng, làm rạng rỡ, làm tươi tỉnh, làm sung sướng, làm vui tươi, đánh bóng (đồ đồng), bừng lên, hửng lên, rạng lên, sáng lên, vui tươi lên, tươi tỉnh lên (người...)', null, '0', null, null, null);
INSERT INTO japaneses VALUES ('188', 'あかん', 'vô ích, vô dụng; không dùng được, (từ lóng) không khoẻ; không phấn khởi; vứt đi', null, '0', null, null, null);
INSERT INTO japaneses VALUES ('189', 'あかんぼう', 'đứa bé mới sinh; trẻ thơ, người tính trẻ con, (định ngữ) nhỏ; xinh xinh, (từ Mỹ,nghĩa Mỹ), (từ lóng) người yêu; con gái, phải gánh một trách nhiệm không thích thú gì, bó chân bó tay ai, bắt ai phải gánh một trách nhiệm không thích thú gì, nghịch cái kiểu trẻ con; làm ra vẻ trẻ con, trốn trách nhiệm lấy cớ là không có kinh nghiệm, có vẻ trẻ con; có tính trẻ con, (từ Mỹ,nghĩa Mỹ), (từ lóng) người yêu', null, '0', null, null, null);
INSERT INTO japaneses VALUES ('190', 'あか抜ける  ', 'lọc, lọc trong, luyện tinh, tinh chế, làm cho tinh tế hơn, làm cho lịch sự hơn, làm cho tao nhã hơn, làm cho sành sõi hơn (sở thích, ngôn ngữ, tác phong...), trở nên tinh tế hơn, trở nên lịch sự hơn, trở nên tao nhã hơn, trở nên sành sõi hơn (sở thích, ngôn ngữ, tác phong...), (+ on, upon) tinh tế, tế nhị (trong cách suy nghĩ, ăn nói...), (+ on, upon) làm tăng thêm phần tinh tế, làm tăng thêm phần tế nhị', null, '0', null, null, null);
INSERT INTO japaneses VALUES ('191', 'あき', 'buồng, phòng, cả phòng (những người ngồi trong phòng), (số nhiều) căn nhà ở (có nhiều phòng), chỗ, cơ hội, khả năng; duyên cớ, lý do, thay thế vào, ở vào địa vị..., hẹp bằng cái lỗ mũi; không có chỗ nào mà xoay trở, thích không phải trông thấy ai; muốn cho ai đi khuất đi, tôi muốn hắn ta đi cho khuất mắt; tôi muốn không phải trông thấy hắn ta, (từ Mỹ,nghĩa Mỹ) có phòng, ở phòng cho thuê (có đủ đồ đạc), ở chung phòng (với ai)', null, '0', null, null, null);
INSERT INTO japaneses VALUES ('192', 'あきない', 'nghề, nghề nghiệp, thương nghiệp, thương mại, sự buôn bán, mậu dịch, ngành buôn bán; những người trong ngành buôn bán, (hàng hải), (từ lóng) (the trade) ngành tàu ngầm (trong hải quân), (số nhiều) (như) trade,wind, có cửa hiệu (buôn bán), buôn bán, trao đổi mậu dịch, (từ Mỹ,nghĩa Mỹ) đổi (cái cũ lấy cái mới) có các thêm, lợi dụng', null, '0', null, null, null);
INSERT INTO japaneses VALUES ('193', 'あきま', 'tình trạng trống rỗng, khoảng không, khoảng trống, tình trạng bỏ không (nhà ở), chỗ khuyết; chỗ trống, sự nhàn rỗi, sự rãnh rỗi, sự trống rỗng tâm hồn; tình trạng lơ đãng, tình trạng ngây dại', null, '0', null, null, null);
INSERT INTO japaneses VALUES ('194', 'あきらか', 'rõ ràng, rành mạch, hiển nhiên;trong, trong trẻo, trong sạch, sáng sủa, dễ hiểu, thông trống, không có trở ngại (đường xá), thoát khỏi, giũ sạch, trang trải hết, trọn vẹn, toàn bộ, đủ, tròn, trọn, chắc, chắc chắn, rõ như ban ngày, rõ như hai với hai là bốn, (nghĩa bóng) không có khó khăn trở ngại gì; không có gì đáng sợ; không có gì cản trở, (nghĩa bóng) không có khó khăn trở ngại gì; không có gì đáng sợ', null, '0', null, null, null);
INSERT INTO japaneses VALUES ('195', 'あきらかにする', 'lọc, gạn, làm cho sáng sủa dễ hiểu, trong ra, sạch ra, trở thành sáng sủa dễ hiểu (văn)', null, '0', null, null, null);
INSERT INTO japaneses VALUES ('196', 'あきらめ', 'sự từ chức; đơn xin từ chức, sự từ bỏ, sự trao, sự nhường (quyền lợi, hy vọng...), sự cam chịu; sự nhẫn nhục;sự nhận, sự chấp nhận, sự chấp thuận, sự thừa nhận, sự công nhận, sự hoan nghênh, sự tán thưởng, sự tán thành; sự tin, (thương nghiệp) sự nhận thanh toán (hoá đơn); hoá đơn được nhận thanh toán, sự thiên vị', null, '0', null, null, null);
INSERT INTO japaneses VALUES ('197', 'あきれる', 'kinh ngạc, sửng sốt, bàng hoàng, ngỡ ngàng', null, '0', null, null, null);
INSERT INTO japaneses VALUES ('198', 'あく', 'xấu, ác, có hại, (xem) one, cái xấu, điều ác; tội lỗi; cái (có) hại; điều tai hại, tai hoạ, (từ cổ,nghĩa cổ) bệnh tràng nhạc', null, '0', null, null, null);
INSERT INTO japaneses VALUES ('199', 'あくあらい', 'sự lau chùi, sự cọ, sự xối nước sục sạch bùn (ở lòng sông...), thuốc tẩy vải, bệnh ỉa chảy (của động vật), lau, chùi cọ, xối nước sục sạch bùn (ở lòng sông, ống dẫn nước...), tẩy, gột (quần áo), tẩy (ruột), sục vội sục vàng, sục tìm, đi lướt qua, đi lướt qua', null, '0', null, null, null);
INSERT INTO japaneses VALUES ('200', 'アクアルング', 'thiết bị được thợ lặn mang theo để thở dưới nước, Đồ lặn', null, '0', null, null, null);
INSERT INTO japaneses VALUES ('201', 'あくい', 'ác ý, ác tâm;sự giận, sự không bằng lòng, sự thù oán; mối hận thù, mặc dầu, làm khó chịu, làm phiền, trêu tức, (xem) nose', null, '0', null, null, null);
INSERT INTO japaneses VALUES ('202', 'あくかんじょう', 'ác cảm, mối hận thù, nỗi oán hậnãm tài, sự khó chịu;sự thù oán, hận thù; tình trạng thù địch', null, '0', null, null, null);
INSERT INTO japaneses VALUES ('203', 'あくぎ', 'chòng ghẹo, trêu tức, trêu chọc, chòng, quấy rầy, tháo, rút sợi (sợi vải); gỡ rối (chỉ), chải (len, dạ), người chòng ghẹo, người hay trêu chòng, sự chòng ghẹo, sự trêu chòng', null, '0', null, null, null);
INSERT INTO japaneses VALUES ('204', 'あくぎゃく', 'sự phản bội, sự phụ bạc, sự bội bạc, (số nhiều) hành động phản bội, hành động bội bạc, hành động dối trá, hành động lừa lọc', null, '0', null, null, null);
INSERT INTO japaneses VALUES ('205', 'あくぎゃくむどう', 'phản bội, phụ bạc, bội bạc, không tin được, dối trá, xảo trá', null, '0', null, null, null);
INSERT INTO japaneses VALUES ('206', 'あくぎょう', 'hành động xấu; việc làm có hại, tội ác;sự làm điều trái; điều trái, điều sai lầm, việc xấu, (pháp lý) điều phạm pháp', null, '0', null, null, null);
INSERT INTO japaneses VALUES ('207', 'あくけい', 'mảnh đất nhỏ, miếng đất, tình tiết, cốt truyện (kịch, tiểu thuyết...), (từ Mỹ,nghĩa Mỹ) sơ đồ, đồ thị, biểu đồ, đồ án, âm mưu, mưu đồ, vẽ sơ đồ, vẽ đồ thị, vẽ biểu đồ, dựng đồ án (một công trình xây dựng...), đánh dấu trên cơ sở, đánh dấu trên đồ án, âm mưu, mưu tính, bày mưu, âm mưu, bày mưu', null, '0', null, null, null);
INSERT INTO japaneses VALUES ('208', 'あくげん', 'sự vu cáo, sự vu khống; lời vu oan; sự nói xấu, (pháp lý) lời phỉ báng; lời nói xấu, vu cáo, vu khống, vu oan; nói xấu; phỉ báng', null, '0', null, null, null);
INSERT INTO japaneses VALUES ('209', 'あくじ', 'tội ác, tội lỗi, (quân sự) sự vi phạm qui chế, (quân sự) buộc tội, xử phạt', null, '0', null, null, null);
INSERT INTO japaneses VALUES ('210', 'アクシデント', 'sự rủi ro, tai nạn, tai biến, sự tình cờ, sự ngẫu nhiên, cái phụ, cái không chủ yếu, sự gồ ghề, sự khấp khểnh, (âm nhạc) dấu thăng giáng bất thường', null, '0', null, null, null);
INSERT INTO japaneses VALUES ('211', 'あくしゃ', 'lều vải, rạp, đinh, tạ (ở cạnh lâu đài, sân thể thao, nơi giải trí...), (kiến trúc) phần nhà nhô ra, che bằng lều; dựng lều, dựng rạp', null, '0', null, null, null);
INSERT INTO japaneses VALUES ('212', 'あくしゅう', 'thói xấu, nết xấu, thói hư tật xấu, sự truỵ lạc, sự đồi bại, chứng, tật (ngựa), thiếu sót, tật, (thông tục) (viết tắt) của vice,president, vice,chancellor..., (kỹ thuật) mỏ cặp, êtô, (kỹ thuật) kẹp bằng êtô[\'vaisi], thay cho, thế cho', null, '0', null, null, null);
INSERT INTO japaneses VALUES ('213', 'アクション ', 'hành động, hành vi; hoạt động; công việc, việc làm, tác động, tác dụng, ảnh hưởng, sự chiến đấu, trận đánh, việc kiện, sự tố tụng, sự diễn biến, quá trình diễn biến (của vở kịch), động tác, dáng điệu, bộ điệu, bộ tịch, bộ máy, cơ cấu (đàn pianô, máy...); sự hoạt động của bộ máy, uỷ ban hành động, (quân sự) vị trí của quân đội trước khi bước vào chiến đấu, (xem) speak, kiện, thưa kiện\r\n', null, '0', null, null, null);
INSERT INTO japaneses VALUES ('214', 'あくせい', 'sự cai trị tồi, sự quản lý nhà nước tồi;tính ác, tính thâm hiểm; ác tâm, ác ý, tính ác, tính độc hại, (y học) ác tính', null, '0', null, null, null);
INSERT INTO japaneses VALUES ('215', 'あくせいど', 'tính ác, tính thâm hiểm; ác tâm, ác ý, tính ác, tính độc hại, (y học) ác tính', null, '0', null, null, null);
INSERT INTO japaneses VALUES ('216', 'アクセサリ', 'đồ phụ tùng; vật phụ thuộc; đồ thêm vào, (pháp lý) kẻ tòng phạm, kẻ a tòng, kẻ đồng loã, phụ, phụ vào, thêm vào, (pháp lý) a tòng, đồng loã', null, '0', null, null, null);
INSERT INTO japaneses VALUES ('217', 'アクセシビリティ', 'tính có thể tới được, tính có thể đến gần được, sự dễ bị ảnh hưởng', null, '0', null, null, null);
INSERT INTO japaneses VALUES ('218', 'アクセス', 'lối vào, cửa vào, đường vào, sự đến gần, sự cho vào, sự lui tới; quyền đến gần, quyền lui tới, sự dâng lên (nước triều), cơn, sự thêm vào, sự tăng lên', null, '0', null, null, null);
INSERT INTO japaneses VALUES ('219', 'アクセプト', 'nhận, chấp nhận, chấp thuận, thừa nhận, đảm nhận (công việc...), (thương nghiệp) chịu trách nhiệm về; nhận thanh toán (hoá đơn, hối phiếu...)', null, '0', null, null, null);
INSERT INTO japaneses VALUES ('220', 'アクセル', 'người làm tăng tốc độ, máy gia tốc; chân ga (xe ôtô), (hoá học) chất gia tốc, (sinh vật học) dây thần kinh gia tốc', null, '0', null, null, null);
INSERT INTO japaneses VALUES ('221', 'アクター', 'diễn viên (kịch, tuồng, chèo, điện ảnh...); kép, kép hát, (từ hiếm,nghĩa hiếm) người làm (một việc gì)', null, '0', null, null, null);
INSERT INTO japaneses VALUES ('222', 'あくたいをつく', 'sự nguyền rủa, sự chửi rủa, tai ương, tai hoạ; vật ghê tở, vật đáng nguyền rủa, lời thề độc, (tôn giáo) sự trục xuất ra khỏi giáo hội, (từ lóng) cái của nợ (sự thấy kinh...) ((thường) the curse), ác giả ác báo, không cần, bất chấp, không thèm đếm xỉa đến, không đáng giá một trinh, đáng bỏ đi, bị nguyền; bị bùa, bị chài, nguyền rủa, chửi rủa, báng bổ, ((thường) động tính từ quá khứ) làm khổ sở, làm đau đớn, (tôn giáo) trục xuất ra khỏi giáo hội, (xem) dale', null, '0', null, null, null);
INSERT INTO japaneses VALUES ('223', 'あくたま', 'côn đồ; kẻ hung ác,(đùa cợt) thằng bé tinh quái; thằng quỷ sứ con, (từ cổ,nghĩa cổ) người quê mùa thô kệch', null, '0', null, null, null);
INSERT INTO japaneses VALUES ('224', 'あくたれ', 'tính du côn; hành vi làm rối trật tự, gây ầm ự', null, '0', null, null, null);
INSERT INTO japaneses VALUES ('225', 'あくたれぐち', 'sự lạm dụng, sự lộng hành, thói xấu, hủ tục, sự lăng mạ, sự sỉ nhục, sự chửi rủa, sự xỉ vả, sự nói xấu, sự gièm pha, (từ Mỹ,nghĩa Mỹ), (từ cổ,nghĩa cổ) sự ngược đãi, sự hành hạ, lạm dụng (quyền hành...), lăng mạ, sỉ nhục, chửi rủa, nói xấu, gièm pha, (từ cổ,nghĩa cổ) lừa dối, lừa gạt, (từ Mỹ,nghĩa Mỹ), (từ cổ,nghĩa cổ) ngược đãi, hành hạ', null, '0', null, null, null);
INSERT INTO japaneses VALUES ('226', 'アクチュアル', 'thật sự, thật, thực tế, có thật, hiện tại, hiện thời; hiện nay', null, '0', null, null, null);
INSERT INTO japaneses VALUES ('227', 'アクティヴ', 'tích cực, hoạt động; nhanh nhẹn, linh lợi, thiết thực, thực sự; có hiệu lực, công hiệu, (ngôn ngữ học) chủ động, (quân sự) tại ngũ, (vật lý) hoạt động; phóng xạ, hoá hoạt động; có hiệu lực', null, '0', null, null, null);
INSERT INTO japaneses VALUES ('228', 'あくと', 'kẻ,(đùa cợt) thằng ranh con, nhãi ranh, chà, cậu thật số đỏ, (từ cổ,nghĩa cổ) ;tên vô lại, tên du thủ du thực', null, '0', null, null, null);
INSERT INTO japaneses VALUES ('229', 'あくにん', 'côn đồ; kẻ hung ác,(đùa cợt) thằng bé tinh quái; thằng quỷ sứ con, (từ cổ,nghĩa cổ) người quê mùa thô kệch, (sử học) (như) villein', null, '0', null, null, null);
INSERT INTO japaneses VALUES ('230', 'あくば', 'sự nguyền rủa, sự chửi rủa, tai ương, tai hoạ; vật ghê tở, vật đáng nguyền rủa, lời thề độc, (tôn giáo) sự trục xuất ra khỏi giáo hội, (từ lóng) cái của nợ (sự thấy kinh...) ((thường) the curse), ác giả ác báo, không cần, bất chấp, không thèm đếm xỉa đến, không đáng giá một trinh, đáng bỏ đi, bị nguyền; bị bùa, bị chài, nguyền rủa, chửi rủa, báng bổ, ((thường) động tính từ quá khứ) làm khổ sở, làm đau đớn, (tôn giáo) trục xuất ra khỏi giáo hội, (xem) dale', null, '0', null, null, null);
INSERT INTO japaneses VALUES ('231', 'あくふう', 'thói xấu, nết xấu, thói hư tật xấu, sự truỵ lạc, sự đồi bại, chứng, tật (ngựa), thiếu sót, tật, (thông tục) (viết tắt) của vice,president, vice,chancellor..., (kỹ thuật) mỏ cặp, êtô, (kỹ thuật) kẹp bằng êtô[\'vaisi], thay cho, thế cho', null, '0', null, null, null);
INSERT INTO japaneses VALUES ('232', 'あくへい', 'thói xấu, nết xấu, thói hư tật xấu, sự truỵ lạc, sự đồi bại, chứng, tật (ngựa), thiếu sót, tật, (thông tục) (viết tắt) của vice,president, vice,chancellor..., (kỹ thuật) mỏ cặp, êtô, (kỹ thuật) kẹp bằng êtô[\'vaisi], thay cho, thế cho', null, '0', null, null, null);
INSERT INTO japaneses VALUES ('233', 'あくま', 'ma, quỷ, điều quái gỡ, điều ghê gớm, điều khủng khiếp, sự giận dữ, sự tức giận, người hung ác, người nanh ác, người ác độc, người quỷ quyệt, người xảo quyệt, người khốn khổ; người bất hạnh, người vô phúc, thư ký riêng (của luật sư, của nhà văn); người học việc (ở xưởng in), thịt nướng tẩm nhiều tiêu ớt, lò than, lò nung, máy xé (vải vụn, giẻ rách), thằng quỷ ranh (hoặc tỏ ý chê là khó ưa, khó chịu, hoặc tỏ ý khen ai là đáng chú ý, vui tính...), sự cãi lộn; sự lộn xộn', null, '0', null, null, null);
INSERT INTO japaneses VALUES ('234', 'あくまで', 'bướng bỉnh, ương ngạnh, ngoan cố, ngoan cường; cứng cỏi; kiên quyết không chịu nhượng bộ, khó di chuyển, khó cất bỏ, khó chữa', null, '0', null, null, null);
INSERT INTO japaneses VALUES ('235', 'あくまでも', 'tính kiên gan, tính bền bỉ, tính cố chấp; tính ngoan cố, tính dai dẳng', null, '0', null, null, null);
INSERT INTO japaneses VALUES ('236', 'あくみょうたかい', 'ô nhục, bỉ ổi, (pháp lý) bị tước quyền công dân', null, '0', null, null, null);
INSERT INTO japaneses VALUES ('237', 'あくよう', 'sự lạm dụng, sự lộng hành, thói xấu, hủ tục, sự lăng mạ, sự sỉ nhục, sự chửi rủa, sự xỉ vả, sự nói xấu, sự gièm pha, (từ Mỹ,nghĩa Mỹ), (từ cổ,nghĩa cổ) sự ngược đãi, sự hành hạ, lạm dụng (quyền hành...), lăng mạ, sỉ nhục, chửi rủa, nói xấu, gièm pha, (từ cổ,nghĩa cổ) lừa dối, lừa gạt, (từ Mỹ,nghĩa Mỹ), (từ cổ,nghĩa cổ) ngược đãi, hành hạ', null, '0', null, null, null);
INSERT INTO japaneses VALUES ('238', 'アグリーメント', 'hiệp định, hiệp nghị, hợp đồng, giao kèo, sự bằng lòng, sự tán thành, sự đồng ý, sự thoả thuận, sự phù hợp, sự hoà hợp, (ngôn ngữ học) sự hợp (cách, giống, số...), ký kết một hợp đồng với ai, (từ Mỹ,nghĩa Mỹ) bản hiệp định ký kết giữa tổng thống (Mỹ) với chính phủ một nước khác không cần thông qua thượng nghị viện, thoả thuận với; ký kết một hợp đồng với', null, '0', null, null, null);
INSERT INTO japaneses VALUES ('239', 'あくる', 'sát, gần, ngay bên, bên cạnh, sau, ngay sau, tiếp sau, hầu như không, sau, lần sau, tiếp sau, nữa, ngay, gần bên, bên cạnh, sát nách, người tiếp sau; cái tiếp sau, số (báo) sau...', null, '0', null, null, null);
INSERT INTO japaneses VALUES ('240', 'アグレッシブ', 'xâm lược, xâm lăng, công kích, hay gây sự, gây gỗ, gây hấn, hung hăng, hùng hổ, (từ Mỹ,nghĩa Mỹ) tháo vát, xông xáo, năng nổ, sự xâm lược, sự công kích, sự gây sự, sự gây hấn', null, '0', null, null, null);
INSERT INTO japaneses VALUES ('241', 'アグレマン', 'hiệp định, hiệp nghị, hợp đồng, giao kèo, sự bằng lòng, sự tán thành, sự đồng ý, sự thoả thuận, sự phù hợp, sự hoà hợp, (ngôn ngữ học) sự hợp (cách, giống, số...), ký kết một hợp đồng với ai, (từ Mỹ,nghĩa Mỹ) bản hiệp định ký kết giữa tổng thống (Mỹ) với chính phủ một nước khác không cần thông qua thượng nghị viện, thoả thuận với', null, '0', null, null, null);
INSERT INTO japaneses VALUES ('242', 'アクロバット', 'người biểu diễn leo dây, người biểu diễn nhào lộn, nhà chính trị nghiêng ngả (dễ dàng thay đổi lập trường); nhà biện luận nghiêng ngả (dễ dàng thay đổi lập luận)', null, '0', null, null, null);
INSERT INTO japaneses VALUES ('243', 'あけ', 'đỏ tươi, màu đỏ tươi, quần áo màu đỏ tươi;đỏ, hung hung đỏ, đỏ hoe, đẫm máu, ác liệt, cách mạng, cộng sản; cực tả, bừng bừng nổi giận, nổi xung, màu đỏ, (the reds) (từ Mỹ,nghĩa Mỹ), (số nhiều) những người da đỏ, hòn bi a đỏ, ô đỏ (bàn rulet đánh bạc), quần áo màu đỏ, ((thường) the Reds) những người cách mạng, những người cộng sản, (từ lóng) vàng, (kế toán) bên nợ, mắc nợ, (từ Mỹ,nghĩa Mỹ) bị hụt tiền', null, '0', null, null, null);
INSERT INTO japaneses VALUES ('244', 'ワーカー', 'người lao động, người làm việc, thợ, công nhân, (số nhiều) giai cấp công nhân, nhân dân lao động, (động vật học) ong thợ', null, '0', null, null, null);
INSERT INTO japaneses VALUES ('245', 'ワーカホリック', 'người tham công tiếc việc (người mê mải làm việc khó dừng lại được)', null, '0', null, null, null);
INSERT INTO japaneses VALUES ('246', 'ワーキング', 'sự làm việc, sự làm, sự lên men, sự để lên men (rượu, bia), (kỹ thuật) sự hoạt động, sự chuyển vận, sự vận hành, sự dùng (máy móc), sự khai thác (mỏ), (số nhiều) công trường, xưởng, (y học) tác dụng, công dụng (của thuốc), sự nhăn nhó (mặt), lao động, công nhân, vô sản, dùng để làm việc, công, làm việc, (kỹ thuật) chạy, hoạt động, (tài chính) luân chuyển; kinh doanh, đủ, vừa đủ; có hiệu lực, có giá trị, có thể chấp nhận, thừa nhận được', null, '0', null, null, null);
INSERT INTO japaneses VALUES ('247', 'ワーク', 'sự làm việc; việc, công việc, công tác, việc làm; nghề nghiệp, đồ làm ra, sản phẩm, tác phẩm, công trình xây dựng, công việc xây dựng, dụng cụ, đồ dùng, vật liệu, kiểu trang trí, cách trang trí (đồ thêu, may, đan, đồ da...), (kỹ thuật) máy, cơ cấu, (số nhiều) xưởng, nhà máy, lao động, nhân công', null, '0', null, null, null);
INSERT INTO japaneses VALUES ('248', 'ワークシェリング', '(Econ) Chia sẻ công việc.+ Là vệc duy trì tỷ lệ có việc làm bằng cách cắt giảm giờ lao động của mỗi công nhân.', null, '0', null, null, null);
INSERT INTO japaneses VALUES ('249', 'ワークステーション', 'trạm làm việc', null, '0', null, null, null);
INSERT INTO japaneses VALUES ('250', 'ワースト', 'xấu nhất, tồi nhất, tệ nhất, độc ác nhất, nghiêm trọng nhất, (y học) ốm yếu nhất, xấu nhất, tồi nhất, tệ nhất, cái xấu nhất, cái tồi nhất, cái tệ nhất, thời kỳ xấu nhất, thời kỳ dữ dội nhất, thời kỳ găng nhất, sự thua kém, trong tình hình xấu nhất, thì mày cứ thử làm đi (ý thách thức), đánh bại, hơn', null, '0', null, null, null);
INSERT INTO japaneses VALUES ('251', 'ワード', 'từ, lời nói, lời, lời báo tin, tin tức, lời nhắn, lời hứa, lời, lệnh, khẩu hiệu, (số nhiều) sự cãi nhau, lời qua tiếng lại, lập tức, giới thiệu ai (làm công tác gì...), lời nói không ăn thua gì (so với hành động), (xem) dog, kiểu mới nhất về (cái gì); thành tựu mới nhất về (cái gì), vừa nói (là làm ngay), bào chữa, nói hộ, khen ngợi, thực hiện ngay lời doạ dẫm; thực hiện ngay lời hứa, lời nói đúng (không đúng) lúc, đối với một người khôn một lời cũng đủ, (tôn giáo) sách Phúc âm, phát biểu, nói lên, bày tỏ, diễn tả', null, '0', null, null, null);
INSERT INTO japaneses VALUES ('252', 'ワードローブ', 'tủ quần áo, quần áo', null, '0', null, null, null);
INSERT INTO japaneses VALUES ('253', 'ワーニング', 'sự báo trước; lời báo trước; dấu hiệu báo trước, lời cảnh cáo, lời răn, sự báo cho thôi việc; sự báo nghỉ việc, đề phòng, dè chừng, cảnh giác, lấy làm bài học, lấy làm điều răn, làm theo lời răn, làm theo lời cảnh cáo', null, '0', null, null, null);
INSERT INTO japaneses VALUES ('254', 'ワープ', '(nghành dệt) sợi dọc, (hàng hải) dây kéo thuyền, đất bồi, đất phù sa, (kỹ thuật) trạng thái oằn, trạng thái vênh (của thanh sắt, tấm ván...), (nghĩa bóng) sự sai lạc, sự suy đốn, sự sa đoạ tinh thần, (kỹ thuật) làm cong, làm oằn (thanh sắt, tấm ván), làm vênh (bánh xe), (hàng hải) kéo (thuyền), bồi đất phù sa (cho ruộng), làm sai lạc, làm thiên lệch, làm sa đoạ, làm suy đốn (tinh thần), cong, oằn, vênh, (hàng hải) được kéo', null, '0', null, null, null);
INSERT INTO japaneses VALUES ('255', 'ワープロ', '(viết tắt: WP) máy xử lý văn bản, trình xử lý văn bản', null, '0', null, null, null);
INSERT INTO japaneses VALUES ('256', 'ワーム', '(động vật học) giun; sâu, trùng, (kỹ thuật) đường ren (của vít), (nghĩa bóng) người không đáng kể, người đáng khinh, đồ giun dế, hôm nay tôi không được khoẻ, con giun xéo lắm cũng quằn, sự cắn rứt của lương tâm, bò, (nghĩa bóng) chui vào, luồn vào, lẻn vào, tẩy giun sán cho, bắt sâu, trừ sâu (ở luống rau...), bò vào; lần vào, chui vào, luồn qua ((nghĩa đen) & (nghĩa bóng)), (kỹ thuật) ren (một vít), (nghĩa bóng) moi', null, '0', null, null, null);
INSERT INTO japaneses VALUES ('257', 'ワールド', 'thế giới, hoàn cầu, địa cầu, vũ trụ, vạn vật, thế gian, trần tục, cõi trần gian, thế giới, thiên hạ, nhân loại, mọi người, cuộc đời, việc đời; xã hội, cuộc sống xã hội, giới, nhiều, một số lớn ((thường) a world of), là tất cả, thành công hoàn toàn và nhanh chóng, (xem) for, không vì bất cứ lý do gì, không đời nào, (từ lóng) hết sức, rất mực, đời thế nào thì phải theo thế, (từ lóng) không chê vào đâu được, tuyệt diệu, vĩnh viễn, mọi cái cám dỗ con người, (xem) give', null, '0', null, null, null);
INSERT INTO japaneses VALUES ('258', 'ワイア', 'dây (kim loại), bức điện báo, (xem) live, bọc bằng dây sắt, buộc bằng dây sắt, chăng lưới thép (cửa sổ), xỏ vào dây thép, bẫy (thỏ, chim...) bằng dây thép, đánh điện, (điện học) mắc (dây) điện, bắt điện, đánh điện, (từ lóng) rán hết sức làm (một việc gì), rào dây thép để tách ra, đấm ai một cú thật mạnh, dùng hết sức giáng cho ai một đòn', null, '0', null, null, null);
INSERT INTO japaneses VALUES ('259', 'わいきょく', 'sự tra tấn, sự tra khảo, cách tra tấn, (nghĩa bóng) nỗi giày vò, nỗi thống khổ, tra tấn, tra khảo, (nghĩa bóng) hành hạ, làm khổ sở, làm biến chất, làm biến dạng; làm sai lạc ý nghĩa, xuyên tạc', null, '0', null, null, null);
INSERT INTO japaneses VALUES ('260', 'わいざつ', 'sự lộn xôn, sự hỗn độn, sự rối loạn, sự hỗn loạn, sự mơ hồ, sự mập mờ, sự rối rắm (ý nghĩa), sự lẫn lộn, sự nhầm lẫn, sự bối rối, sự ngượng ngập, sự xấu hổ, nhuộng confusion, tình trạng đã hỗn loạn lại càng hỗn loạn hơn, vừa uống rượu vừa chửi đổng ai', null, '0', null, null, null);
INSERT INTO japaneses VALUES ('261', 'わいしょう', '(ngôn ngữ học) giảm nhẹ nghĩa (từ), nhỏ xíu, bé tị, từ giảm nhẹ', null, '0', null, null, null);
INSERT INTO japaneses VALUES ('262', 'わいじん', ' lùn, lùn tịt; nhỏ xíu; còi cọc, người lùn, con vật lùn, cây lùn, (thần thoại,thần học) chú lùn (trong thần thoại các nước Bắc,âu), làm lùn tịt; làm cọc lại, làm còi cọc, làm có vẻ nhỏ lại', null, '0', null, null, null);
INSERT INTO japaneses VALUES ('263', 'ワイズ', 'khôn, khôn ngoan, có kinh nghiệm, từng tri, hiểu biết, lịch duyệt, thông thạo, uyên bác, (từ Mỹ,nghĩa Mỹ), (từ lóng) láu, ma lanh, tài xoay, (xem) put, (xem) ignorance, khôn ra thì chậm mất rồi, (+ up) (từ Mỹ,nghĩa Mỹ), (từ lóng) bạo dạn hn, mạnh dạn hn, tỉnh ngộ, biết lầm, khôn ra hn, (từ cổ,nghĩa cổ) cách, lối', null, '0', null, null, null);
INSERT INTO japaneses VALUES ('264', 'ワイド', 'rộng, rộng lớn, mở rộng, mở to, (nghĩa bóng) rộng, uyên bác (học vấn)', null, '0', null, null, null);
INSERT INTO japaneses VALUES ('265', 'ワイナリー', 'nhà máy rượu vang', null, '0', null, null, null);
INSERT INTO japaneses VALUES ('266', 'ワイフ', 'vợ, (từ cổ,nghĩa cổ) người đàn bà; bà già', null, '0', null, null, null);
INSERT INTO japaneses VALUES ('267', 'ワイプ', 'sự lau, sự chùi, (từ lóng) cái tát, cái quật, (từ lóng) khăn tay, lau, chùi, (từ lóng) quật, tống cho một qu; giáng cho một đòn, tẩy (vết bẩn); lau sạch (nước mắt), lau đi, lau sạch, tẩy đi, làm tắt (một nụ cười), thanh toán, tr hết, giũ sạch (nợ cũ), quên đi, xoá sạch (mối bất hoà cũ...), lau chùi, lau sạch, chùi, tẩy (vết bẩn), tiêu diệt (quân đội); triệt hạ (thành phố), thanh toán, tr hết (nợ); rửa (nhục), lau sạch, chùi sạch, (từ lóng) phỗng tay trên ai, đi nước trước ai, (từ lóng) đánh bại ai hoàn toàn (trong cuộc tranh luận), (từ lóng) hạ ai đo ván (trong cuộc đấu võ); đánh bại nhục', null, '0', null, null, null);
INSERT INTO japaneses VALUES ('268', 'ワイヤ', 'dây (kim loại), bức điện báo, (xem) live, bọc bằng dây sắt, buộc bằng dây sắt, chăng lưới thép (cửa sổ), xỏ vào dây thép, bẫy (thỏ, chim...) bằng dây thép, đánh điện, (điện học) mắc (dây) điện, bắt điện, đánh điện, (từ lóng) rán hết sức làm (một việc gì), rào dây thép để tách ra, đấm ai một cú thật mạnh, dùng hết sức giáng cho ai một đòn', null, '0', null, null, null);
INSERT INTO japaneses VALUES ('269', 'わいりょく', 'sự nhấn mạnh, (ngôn ngữ học) trọng âm; âm nhấn, sự cố gắng, sự đòi hỏi bỏ nhiều sức lự, sự bắt buộc, (kỹ thuật) ứng suất, những lúc dềnh dang và những lúc khẩn trương, nhấn mạnh (một âm, một điểm...), (kỹ thuật) cho tác dụng ứng suất', null, '0', null, null, null);
INSERT INTO japaneses VALUES ('270', 'ワイルド', 'dại, hoang (ở) rừng, chưa thuần; chưa dạn người (thú, chim), man rợ, man di, chưa văn minh, hoang vu, không người ở, dữ dội, b o táp, rối, lộn xộn, lung tung, điên, điên cuồng, nhiệt liệt, ngông cuồng, rồ dại, liều mạng, thiếu đắn đo suy nghĩ, bừa bãi, tự do, bừa b i, phóng túng, lêu lổng, vu v, bừa b i, lung tung, vùng hoang vu', null, '0', null, null, null);
INSERT INTO japaneses VALUES ('271', 'わいろ', 'của đút lót, vật đút lót, vật hối lộ, đút lót, hối lộ, mua chuộc', null, '0', null, null, null);
INSERT INTO japaneses VALUES ('272', 'わいわい', 'ồn ào, huyên náo', null, '0', null, null, null);
INSERT INTO japaneses VALUES ('273', 'ワイン', 'rượu vang; rượu, rượu thuốc, tiệc rượu sau bữa ăn (ở các trường đại học), màu rượu vang, màu đỏ sẫm, (xem) bush, bình cũ rượu mới, uống rượu, đ i rượu (ai)', null, '0', null, null, null);
INSERT INTO japaneses VALUES ('274', 'ワウ', 'thành công ly kỳ, thành tựu không chê được, (từ Mỹ,nghĩa Mỹ) ôi chao', null, '0', null, null, null);
INSERT INTO japaneses VALUES ('275', 'わが', 'của tôi, oh, my{our} , của chúng ta, của chúng tôi, của chúng mình, của trẫm (vua chúa...), thượng đế, Đức Chúa Giê,xu (đối với người theo đạo Thiên chúa), Đức Mẹ đồng trinh (đối với người theo đạo Thiên chúa)', null, '0', null, null, null);
INSERT INTO japaneses VALUES ('276', 'わかい', 'trẻ, trẻ tuổi, thiếu niên, thanh niên, non, (nghĩa bóng) non trẻ, trẻ tuổi, (nghĩa bóng) non nớt, mới mẻ, chưa có kinh nghiệm, (nghĩa bóng) còn sớm, còn ở lúc ban đầu, chưa muộn, chưa quá, chưa già, của tuổi trẻ, của thời thanh niên, của thời niên thiếu, (thuộc) thế hệ trẻ, (thông tục) con, nhỏ, thú con, chim con (mới đẻ)', null, '0', null, null, null);
INSERT INTO japaneses VALUES ('277', 'わかえだ', 'cành con; chồi, cành thoa, đinh nhỏ không đầu, nẹp ba góc (để lồng kính), (thông tục) cậu ấm, anh chàng chưa ráo máu đầu, tỉa cành con (ở cây), trang trí bằng cành cây nhỏ, thêu cành lá (trên vải, lụa...), đóng bằng đinh không đầu', null, '0', null, null, null);
INSERT INTO japaneses VALUES ('278', 'わかがえり', 'sự làm trẻ lại; sự trẻ lại', null, '0', null, null, null);
INSERT INTO japaneses VALUES ('279', 'わかぎ', 'cây nhỏ, (nghĩa bóng) người thanh niên, chó săn con', null, '0', null, null, null);
INSERT INTO japaneses VALUES ('280', 'わかさ', 'tuổi trẻ, tuổi xuân, tuổi thanh niên, tuổi niên thiếu, (nghĩa bóng) buổi ban đầu; thời non trẻ, thanh niên; tầng lớp thanh niên, lứa tuổi thanh niên', null, '0', null, null, null);
INSERT INTO japaneses VALUES ('281', 'わかす', 'nhọt, đinh, sự sôi; điểm sôi, sôi, đun sôi, nấu sôi; luộc, (nghĩa bóng) sục sôi, tiếp tục sôi, sôi cạn; nấu đặc lại, nấu đặc lại; cô đặc lại, tóm tắt lại, rút lại, sôi tràn ra, sơ mi là cứng ngực, (xem) pot', null, '0', null, null, null);
INSERT INTO japaneses VALUES ('282', 'わかぞう', 'người mới vào nghề, lính mới; người chưa có kinh nghiệm, người ngu ngốc, người khờ dại, người dễ bị bịp, (từ Mỹ,nghĩa Mỹ), (thông tục) người mới nhập cư{youngster} , người thanh niên; đứa bé con; đứa con trai', null, '0', null, null, null);
INSERT INTO japaneses VALUES ('283', 'わかち', 'sự phân biệt; điều phân biệt, điều khác nhau, nét đặc biệt, màu sắc riêng, tính độc đáo (văn), dấu hiệu đặc biệt; biểu hiện danh dự, tước hiệu, danh hiệu, sự biệt đãi, sự ưu đãi, sự trọng vọng, sự ưu tú, sự xuất chúng, sự lỗi lạc{differentiation} , sự phân biệt, (toán học) phép lấy vi phân', null, '0', null, null, null);
INSERT INTO japaneses VALUES ('284', 'わかちあう', 'lưỡi cày, lưỡi máy gieo, lưỡi máy cày, phần, phần đóng góp, sự chung vốn; cổ phần, chia đều; chịu đều, tranh, phần hơn, chia, phân chia, phân phối, phân cho, có phần, có dự phần; tham gia, chia, phân chia, phân phốilưỡi cày, lưỡi máy gieo, lưỡi máy cày, phần, phần đóng góp, sự chung vốn; cổ phần, chia đều; chịu đều, tranh, phần hơn, chia, phân chia, phân phối, phân cho, có phần, có dự phần; tham gia, chia, phân chia, phân phối', null, '0', null, null, null);
INSERT INTO japaneses VALUES ('285', 'わかちがたい', 'không thể tách rời được, không thể chia lìa được, những người (bạn...) không rời nhau, những vật không tách rời được', null, '0', null, null, null);
INSERT INTO japaneses VALUES ('286', 'わかつ', 'đường chia nước{separate} , riêng rẽ, rời, không dính với nhau, vặt rời, bản in rời (bài trích ở báo...), quần lẻ, áo lẻ (của đàn bà), làm rời ra, phân ra, chia ra, tách ra, gạn ra..., phân đôi, chia đôi, chia tay, rời, phân tán, đi mỗi người một ngả{distinguish} , phân biệt, nghe ra, nhận ra, (+ into) chia thành, xếp thành (loại...), (+ between phân biệt, nhận định sự khác nhau (giữa...)', null, '0', null, null, null);
INSERT INTO japaneses VALUES ('287', 'わかどり', 'gà con; chim con, trẻ nhỏ, (từ Mỹ,nghĩa Mỹ), (từ lóng) người đàn bà trẻ; cô gái, không có con', null, '0', null, null, null);
INSERT INTO japaneses VALUES ('288', 'わがほう', 'chúng tôi, chúng ta', null, '0', null, null, null);
INSERT INTO japaneses VALUES ('289', 'わがまま', 'tính ích kỷ', null, '0', null, null, null);
INSERT INTO japaneses VALUES ('290', 'わがみ', 'tự tôi, chính tôi, tôi không được khoẻ; tôi thấy trong người khó chịu, một mình tôi, mình tôi{oneself} , bản thân mình, tự mình, chính mình, tỉnh lại, hồi tỉnh, tỉnh trí lại', null, '0', null, null, null);
INSERT INTO japaneses VALUES ('291', 'わかもの', 'tuổi trẻ, tuổi xuân, tuổi thanh niên, tuổi niên thiếu, (nghĩa bóng) buổi ban đầu; thời non trẻ, thanh niên; tầng lớp thanh niên, lứa tuổi thanh niên{lad} , chàng trai, chú bé, chú coi chuồng ngựa', null, '0', null, null, null);
INSERT INTO japaneses VALUES ('292', 'わがよのはる', 'thời cực thịnh, thời hoàng kim, thời sung sức nhất, thời đang độ; tuổi thanh xuân', null, '0', null, null, null);
INSERT INTO japaneses VALUES ('293', 'わからずや', 'người ngu dốt, người đần độn', null, '0', null, null, null);
INSERT INTO japaneses VALUES ('294', 'わかり', 'sự hiểu biết, sự am hiểu, óc thông minh, óc suy xét, trí tuệ, quan niệm, sự thoả thuận; sự thông cảm, sự hiểu nhau, điều kiện, (số nhiều) (từ lóng) chân, cẳng; giày, dép, hiểu biết, thông minh, sáng ý, mau hiểu', null, '0', null, null, null);
INSERT INTO japaneses VALUES ('295', 'わかりきった', 'rõ ràng, rành mạch, hiển nhiên{undeniable} , không thể chối cãi được, không thể bác được, dứt khoát là tố', null, '0', null, null, null);
INSERT INTO japaneses VALUES ('296', 'わかりにくい', ' không thể hiểu nổi, khó hiểu{unintelligible} , khó hiểu, không thể hiểu được', null, '0', null, null, null);
INSERT INTO japaneses VALUES ('297', 'わかる', 'hiểu, nắm được ý, biết, hiểu ngầm (một từ không phát biểu trong câu)', null, '0', null, null, null);
INSERT INTO japaneses VALUES ('298', 'わかれ', 'sự chia ly, sự chia tay, sự từ biệt, đường ngôi (của tóc), chỗ rẽ, ngã ba', null, '0', null, null, null);
INSERT INTO japaneses VALUES ('299', 'わかれでる', 'phân kỳ, rẽ ra, trệch; đi trệch, khác nhau, bất đồng (ý kiến...), làm phân kỳ, làm rẽ ra, làm trệch đi{radiate} , toả ra, xoè ra, toả ra chiếu ra, phát ra (nhiệt, ánh sáng...), bắn tia, bức xạ, phát xạ, (nghĩa bóng) toả ra, lộ ra (vẻ hoan hỉ, niềm vui sướng, tình yêu, sức sống...), phát thanh', null, '0', null, null, null);
INSERT INTO japaneses VALUES ('300', 'わかれみち', 'cành cây, nhánh (sông); ngả (đường)..., chi (của một dòng họ...); chi nhánh (ngân hàng...); ngành (sản xuất; mậu dịch...), (xem) root, ((thường) + out, forth) đâm cành, đâm nhánh, phân cành, chia ngã, tách ra, phân nhánh, bỏ nhiều vốn ra kinh doanh; mở rộng các chi nhánh', null, '0', null, null, null);
INSERT INTO japaneses VALUES ('301', 'わかれめ', 'Điểm ngoặt+ Điểm trong chu kỳ kinh doanh khi TRẠNG THÁI MỞ RỘNG của chu kỳ được thay thế bằng trạng thái thu hẹp hoặc ngược lại. Điểm đỉnh và điểm đáy được goi là các bước ngoặt', null, '0', null, null, null);
INSERT INTO japaneses VALUES ('302', 'わかれる', 'cái nĩa (để xiên thức ăn), cái chĩa (dùng để gảy rơm...), chạc cây, chỗ ngã ba (đường, sông), (vật lý) thanh mẫu, âm thoa ((cũng) tuning fork), tia chớp chữ chi, tia chớp nhằng nhằng, đào bằng chĩa, gảy bằng chĩa (rơm, rạ...), phân nhánh, chia ngả, (từ lóng) trao; trả tiền, xuỳ ra', null, '0', null, null, null);
INSERT INTO japaneses VALUES ('303', 'わかれわかれに', 'không cùng nhau; thành người riêng, vật tách riêng ra', null, '0', null, null, null);
INSERT INTO japaneses VALUES ('304', 'わかわかしい', 'trẻ, trẻ tuổi, (thuộc) tuổi thanh niên, (thuộc) tuổi trẻ', null, '0', null, null, null);
INSERT INTO japaneses VALUES ('305', 'わき', ' mặt, bên, (toán học) bề, cạnh, triền núi; bìa rừng, sườn, lườn, phía, bên, phần bên cạnh, phần phụ, khía cạnh, phe, phái, phía, bên (nội, ngoại), (xem) blanket, dưới bốn mươi tuổi, trên bốn mươi tuổi, hãy còn sống, bị nhốt ở ngoài, lạc quan, lên mặt, làm bộ làm tịch, giá vẫn cao, cười vỡ bụng, (+ with) đứng về phe, đứng về phía; ủng hộ', null, '0', null, null, null);

-- ----------------------------
-- Table structure for `schema_migrations`
-- ----------------------------
DROP TABLE IF EXISTS `schema_migrations`;
CREATE TABLE `schema_migrations` (
  `version` varchar(255) NOT NULL,
  UNIQUE KEY `unique_schema_migrations` (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of schema_migrations
-- ----------------------------
INSERT INTO schema_migrations VALUES ('20140511144307');
INSERT INTO schema_migrations VALUES ('20140511144506');
INSERT INTO schema_migrations VALUES ('20140511144632');
INSERT INTO schema_migrations VALUES ('20140511144733');
INSERT INTO schema_migrations VALUES ('20140521082632');

-- ----------------------------
-- Table structure for `users`
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_name` varchar(255) DEFAULT NULL,
  `user_password` varchar(255) DEFAULT NULL,
  `user_email` varchar(255) DEFAULT NULL,
  `deleted` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO users VALUES ('1', 'quoc', 'e10adc3949ba59abbe56e057f20f883e', 'manh_quoc_c4@yahoo.commanh_quoc_c4@yahoo.com', '0', null, null);
INSERT INTO users VALUES ('2', 'quoc1', 'e10adc3949ba59abbe56e057f20f883e', 'manh_quoc_c4@yahoo.com', '1', null, null);

-- ----------------------------
-- Table structure for `vietnameses`
-- ----------------------------
DROP TABLE IF EXISTS `vietnameses`;
CREATE TABLE `vietnameses` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `word_vietnamese` varchar(255) DEFAULT NULL,
  `word_japanese` varchar(255) DEFAULT NULL,
  `sound_word` varchar(255) DEFAULT NULL,
  `deleted` int(11) DEFAULT NULL,
  `note` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `word_vietnamese_replace` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=44 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of vietnameses
-- ----------------------------
INSERT INTO vietnameses VALUES ('1', 'giày ống', 'ブーツ,長靴;ブーツ,長靴', null, '0', '', null, '2014-05-21 09:02:56', 'giay ong');
INSERT INTO vietnameses VALUES ('2', 'giấc mơ', '夢,ゆめ;ブーツ,長靴', null, '0', null, null, null, null);
INSERT INTO vietnameses VALUES ('3', 'ông', '夢,ゆめ;ブーツ,長靴', null, '0', null, null, null, null);
INSERT INTO vietnameses VALUES ('4', 'giày ống a', 'ブーツ,長靴', null, '0', null, null, null, null);
INSERT INTO vietnameses VALUES ('5', 'ông già', 'ブーツ,長靴;ブーツ,長靴', null, '0', null, null, null, null);
INSERT INTO vietnameses VALUES ('6', 'aa bb', 'ブーツ,長靴;ブーツ,長靴', null, '0', null, null, null, null);
INSERT INTO vietnameses VALUES ('7', 'bb aa', 'ブーツ,長;ブーツ,長靴;ブーツ,長靴', null, '0', null, null, null, null);
INSERT INTO vietnameses VALUES ('8', 'giày ống bb', 'ブーツ,長靴;ブーツ,長靴', null, '0', null, null, null, null);
INSERT INTO vietnameses VALUES ('22', 'một ngày đẹp trời', 'ブーツ,長靴;ブーツ,長靴', '', '0', '', '2014-05-21 09:02:22', '2014-05-21 09:02:22', 'mot ngay dep troi');
INSERT INTO vietnameses VALUES ('23', 'Giấc mộng đêm hè', '夏の夜の夢', '', '0', '', '2014-05-21 09:28:05', '2014-05-21 09:28:05', 'giac mong dem he');
INSERT INTO vietnameses VALUES ('24', 'hè', '舗装;歩道', '', '0', '', '2014-05-21 09:30:11', '2014-05-21 09:31:10', 'he');
INSERT INTO vietnameses VALUES ('25', 'anh', '家兄;兄貴', '1400722621394562.mp3', '0', '', '2014-05-22 01:37:01', '2014-05-22 01:37:01', 'anh');
INSERT INTO vietnameses VALUES ('26', 'âm nhạc', 'ミュージック, 音楽, 音譜, 管弦', '1400722882390034.mp3', '0', '', '2014-05-22 01:41:22', '2014-05-22 01:41:22', 'am nhac');
INSERT INTO vietnameses VALUES ('27', 'bước', '一切り, 一足, 一歩, 歩;ペース, 足, 足元, 足並み, 歩調', '1400722958346219.mp3', '0', '', '2014-05-22 01:42:38', '2014-05-22 01:42:44', 'buoc');
INSERT INTO vietnameses VALUES ('28', 'đi bộ', '歩く, 歩む, 逍遥, 逍遙', '1400723056592146.mp3', '0', '', '2014-05-22 01:44:16', '2014-05-22 01:44:16', 'di bo');
INSERT INTO vietnameses VALUES ('29', 'ăn', '喰らう, 口にする, 召, 召す, 上がる, 食べる, 食らう', '1400723277423230.mp3', '0', '', '2014-05-22 01:47:57', '2014-05-22 01:47:57', 'an');
INSERT INTO vietnameses VALUES ('30', 'cá biệt', '然る', '1400723869952932.mp3', '0', '', '2014-05-22 01:57:49', '2014-05-22 01:57:49', 'ca biet');
INSERT INTO vietnameses VALUES ('31', 'con gái', ' ガール, 乙女, 姉さん, 女の子; 御令嬢, 少女, 令嬢', 'vi_31.mp3', '0', null, null, null, 'con gai');
INSERT INTO vietnameses VALUES ('32', 'ngủ', ' 一眠り', 'vi_32.mp3', '0', null, null, null, 'ngu');
INSERT INTO vietnameses VALUES ('33', 'thức dậy', '覚める, 呼び覚ます, 寝覚める', null, '0', null, null, null, 'thuc day');
INSERT INTO vietnameses VALUES ('34', 'chào', ' 出迎える, 声をかける, 声を掛ける', null, '0', null, null, null, 'chao');
INSERT INTO vietnameses VALUES ('35', 'con trai', ' 伜; 一男;青春', 'vi_35.mp3', '0', null, null, null, 'con trai');
INSERT INTO vietnameses VALUES ('36', 'nói chuyện', '談話', 'vi_36.mp3', '0', null, null, null, 'noi chuyen');
INSERT INTO vietnameses VALUES ('37', 'trò chuyện', 'お喋り, しゃべり, チャット, 歓談, 世間話, 喋る, 漫談, 無駄話, 話, 話し', 'vi_37.mp3', '0', null, null, null, 'tro chuyen');
INSERT INTO vietnameses VALUES ('39', 'đi chơi', ' 出歩く, 消える', 'vi_39.mp3', '0', null, null, null, 'đi choi');
INSERT INTO vietnameses VALUES ('40', 'chúc', '傾ぐ, 傾ける, 傾げる;願い, 願い事, 願う, 願事, 願望, 希望, 祈る, 幸, 志望, 思い, 所望, 想い, 望み', 'vi_40.mp3', '0', null, null, null, 'chuc');
INSERT INTO vietnameses VALUES ('41', 'mừng', 'ハッピー, 嬉しい, 愉快', null, '0', null, null, null, 'mừng');
INSERT INTO vietnameses VALUES ('42', 'tuyệt vời', 'エクセレント, 偉い, 佳, 好個, 重畳, 優れた, 優良', 'vi_42.mp3', '0', null, null, null, 'tuyet voi');
