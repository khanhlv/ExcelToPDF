<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:output encoding="UTF-8" omit-xml-declaration="yes" indent="yes" />
	<xsl:strip-space elements="*"/>
	
	<xsl:template match="/">
		<html xmlns="http://www.w3.org/1999/xhtml"> 
			<head>
				<title>HTML to PDF</title>
				<meta charset="utf-8" />
				<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
				<link href="style.css" rel="stylesheet" type="text/css" />
			</head>
			<body>
				<table class="header">
					<tbody>
						<tr>
							<td style="text-align: center; vertical-align: top;">FUSHAN TECHNOLOGY <br/>(VIETNAM)</td>
							<td style="text-align: center; vertical-align: top;">MONTHLY INDIVIDUAL PAYSLIP/BẢNG THANH TOÁN LƯƠNG HÀNG THÁNG</td>
						</tr>
					</tbody>
				</table>
				<table>
					<tbody>
						<tr>
							<td style="width: 50%"></td>
							<td style="width: 50%" class="txt-bold">Pay period/Tháng</td>
						</tr>
					</tbody>
				</table>
				<table>
					<tbody>
							<tr>
									<td style="vertical-align: top;">
										<table style="vertical-align: top;">
												<tbody>
														<xsl:if test="root/data/G != 0">
														<tr>
															<td>Department/Phòng ban</td>
															<td><xsl:value-of select="root/data/G" /></td>
														</tr>
														</xsl:if>
														<xsl:if test="root/data/C != 0">
														<tr>
															<td>Employee Code/Mã nhân viên</td>
															<td><xsl:value-of select="root/data/C" /></td>
														</tr>
														</xsl:if>
														<xsl:if test="root/data/D != 0">
														<tr>
															<td>Name/Tên</td>
															<td><xsl:value-of select="root/data/D" /></td>
														</tr>
														</xsl:if>
														<xsl:if test="root/data/EC != 0">
														<tr>
															<td>Tax code/Mã số thuế</td>
															<td><xsl:value-of select="root/data/EC" /></td>
														</tr>
														</xsl:if>
														<xsl:if test="root/data/E != 0">
														<tr>
															<td>Job title/Chức danh</td>
															<td><xsl:value-of select="root/data/E" /></td>
														</tr>
														</xsl:if>
														<xsl:if test="root/data/H != 0">
														<tr>
															<td>Join date/Ngày vào làm</td>
															<td><xsl:value-of select="root/data/H" /></td>
														</tr>
														</xsl:if>
												</tbody>
										</table>
									</td>
									<td style="vertical-align: top;">
										<table style="vertical-align: top;">
												<tbody>
														<xsl:if test="root/data/V != 0">
														<tr>
															<td>Standard working hours/Giờ công tiêu chuẩn</td>
															<td><xsl:value-of select="root/data/V" /></td>
														</tr>
														</xsl:if>
														<xsl:if test="root/data/Y != 0">
														<tr>
															<td>Actual day WK hours/Giờ công thực tế (ngày)</td>
															<td><xsl:value-of select="root/data/Y" /></td>
														</tr>
														</xsl:if>
														<xsl:if test="root/data/Z != 0">
														<tr>
															<td>Actual night WK hours/Giờ công thực tế (đêm)</td>
															<td><xsl:value-of select="root/data/Z" /></td>
														</tr>
														</xsl:if>
														<xsl:if test="root/data/AA != 0">
														<tr>
															<td>Annual leave/Nghỉ phép năm</td>
															<td><xsl:value-of select="root/data/AA" /></td>
														</tr>
														</xsl:if>
														<xsl:if test="root/data/AB != 0">
														<tr>
															<td>PHL &amp; LSX/Nghỉ lễ &amp; nghỉ sản xuất</td>
															<td><xsl:value-of select="root/data/AB" /></td>
														</tr>
														</xsl:if>
														<xsl:if test="root/data/AC != 0">
														<tr>
															<td>Paid sick leave/Nghỉ ốm đơn lẻ</td>
															<td><xsl:value-of select="root/data/AC" /></td>
														</tr>
														</xsl:if>
														<xsl:if test="root/data/AC != 0">
														<tr>
															<td>Paid sick leave/Nghỉ ốm đơn lẻ</td>
															<td><xsl:value-of select="root/data/AC" /></td>
														</tr>
														</xsl:if>
														<xsl:variable name="tempAD" select="root/data/AD"/>
														<xsl:variable name="tempAE" select="root/data/AE"/>
														<xsl:if test="($tempAD + $tempAE) != 0">
														<tr>
															<td>Paid leave/Nghỉ hưởng lương</td>
															<td>
																<xsl:value-of select="$tempAD + $tempAE" />
															</td>
														</tr>
														</xsl:if>
														<xsl:if test="root/data/AF != 0">
														<tr>
															<td>UL/Nghỉ không lương</td>
															<td><xsl:value-of select="root/data/AF" /></td>
														</tr>
														</xsl:if>
														<xsl:if test="root/data/AG != 0">
														<tr>
															<td>UAL/Nghỉ không  xin phép</td>
															<td><xsl:value-of select="root/data/AG" /></td>
														</tr>
														</xsl:if>
														<xsl:if test="root/data/AH != 0">
														<tr>
															<td>SL/Nghỉ ốm hưởng BHXH</td>
															<td><xsl:value-of select="root/data/AH" /></td>
														</tr>
														</xsl:if>
												</tbody>
										</table>
									</td>
							</tr>
					</tbody>
				</table>
				<p style="margin: 5px 0px;text-align: center;font-size: 12px;font-weight: bold;">SALARY DESCRIPTION/DIỄN GIẢI</p>
				<table class="description">
					<tbody>
						<tr class="txt-center">
							<td style="width: 70%;"></td>
							<td style="width: 10%;">Current month<br/>Tháng này</td>
							<td style="width: 20%;">Yeah total income<br/>Tổng thu nhập từ đầu năm</td>
						</tr>
						<tr>
							<td colspan="3">&#x00A0;</td>
						</tr>
						<tr class="txt-bold txt-center">
							<td class="txt-left">(A) Gross Salary/Lương gộp</td>
							<td><xsl:value-of select="root/data/K" /></td>
							<td></td>
						</tr>
						<tr class="txt-center txt-bold">
							<td class="txt-left">(B) Total Income/Tổng thu nhập</td>
							<td><xsl:value-of select="root/data/DA" /></td>
							<td></td>
						</tr>
						<tr>
							<td colspan="2">
								<table>
									<tbody>
										<tr>
											<td style="width: 65%;font-weight: bold;text-align: left;font-style: italic;">Actual Salary/Lương thực tế</td>
											<td class="txt-center" style="width: 15%;"></td>
											<td class="txt-center" style="width: 12%;"></td>
										</tr>
										<tr>
											<td class="p-l-30">Actual WK day Salary/Lương thực tế (ngày)</td>
											<td class="txt-center"></td>
											<td class="txt-center"><xsl:value-of select="root/data/AP" /></td>
										</tr>
										<xsl:variable name="tempY" select="root/data/Y"/>
										<xsl:variable name="tempZ" select="root/data/Z"/>
										<xsl:if test="($tempY + $tempZ) != 0">
										<tr>
											<td class="p-l-30">Actual WH hours/Giờ công thực tế</td>
											<td class="txt-center"><xsl:value-of select="$tempY + $tempZ" /> hrs/giờ</td>
											<td class="txt-center">AM4</td>
										</tr>
										</xsl:if>
										<tr>
											<td class="p-l-30">Annual leave/Nghỉ phép năm</td>
											<td class="txt-center"><xsl:value-of select="root/data/AA" /> hrs/giờ</td>
											<td class="txt-center">AM4</td>
										</tr>
										<tr>
											<td class="p-l-30">PHL &amp; LSX/Nghỉ lễ &amp; nghỉ sản xuất</td>
											<td class="txt-center"><xsl:value-of select="root/data/AB" /> hrs/giờ</td>
											<td class="txt-center">AM4</td>
										</tr>
										<tr>
											<td class="p-l-30">Paid sick leave/Nghỉ ốm đơn lẻ</td>
											<td class="txt-center"><xsl:value-of select="root/data/AC" /> hrs/giờ</td>
											<td class="txt-center">AM4</td>
										</tr>
										<xsl:variable name="tempAD" select="root/data/AD"/>
										<xsl:variable name="tempAE" select="root/data/AE"/>
										<xsl:if test="($tempAD + $tempAE) != 0">
										<tr>
											<td class="p-l-30">Paid leave/Nghỉ hưởng lương</td>
											<td class="txt-center"><xsl:value-of select="$tempAD + $tempAE" /> hrs/giờ</td>
											<td class="txt-center">AM4</td>
										</tr>
										</xsl:if>
										<xsl:if test="root/data/AQ != 0">
										<tr>
											<td class="p-l-30">Nightshift Salary/Lương làm đêm</td>
											<td class="txt-center"><xsl:value-of select="root/data/Z" /> hrs/giờ</td>
											<td class="txt-center"><xsl:value-of select="root/data/AQ" /></td>
										</tr>
										</xsl:if>
										<tr>
											<td class="p-l-30">Overtime Salary/Lương làm thêm</td>
											<td class="txt-center"></td>
											<td class="txt-center"></td>
										</tr>
										<xsl:if test="root/data/BA != 0">
										<tr>
											<td class="p-l-50">OT 150</td>
											<td class="txt-center"><xsl:value-of select="root/data/AJ" /> hrs/giờ</td>
											<td class="txt-center"><xsl:value-of select="root/data/BA" /></td>
										</tr>
										</xsl:if>
										<xsl:if test="root/data/BB != 0">
										<tr>
											<td class="p-l-50">OT 200</td>
											<td class="txt-center"><xsl:value-of select="root/data/AK" /> hrs/giờ</td>
											<td class="txt-center"><xsl:value-of select="root/data/BB" /></td>
										</tr>
										</xsl:if>
										<xsl:if test="root/data/BC != 0">
										<tr>
											<td class="p-l-50">OT 210</td>
											<td class="txt-center"><xsl:value-of select="root/data/AL" /> hrs/giờ</td>
											<td class="txt-center"><xsl:value-of select="root/data/BC" /></td>
										</tr>
										</xsl:if>
										<xsl:if test="root/data/BD != 0">
										<tr>
											<td class="p-l-50">OT 270</td>
											<td class="txt-center"><xsl:value-of select="root/data/AM" /> hrs/giờ</td>
											<td class="txt-center"><xsl:value-of select="root/data/BD" /></td>
										</tr></xsl:if>
										<xsl:if test="root/data/BE != 0">
										<tr>
											<td class="p-l-50">OT 300</td>
											<td class="txt-center"><xsl:value-of select="root/data/AN" /> hrs/giờ</td>
											<td class="txt-center"><xsl:value-of select="root/data/BE" /></td>
										</tr></xsl:if>
										<xsl:if test="root/data/BF != 0">
										<tr>
											<td class="p-l-50">OT 390</td>
											<td class="txt-center"><xsl:value-of select="root/data/AO" /> hrs/giờ</td>
											<td class="txt-center"><xsl:value-of select="root/data/BF" /></td>
										</tr>
										</xsl:if>
										<xsl:if test="root/data/BZ != 0">
										<tr>
											<td class="p-l-30">13th month Salary 2017/Tháng lương thứ 13 năm 2017</td>
											<td class="txt-center"></td>
											<td class="txt-center"><xsl:value-of select="root/data/BZ" /></td>
										</tr>
										</xsl:if>
									</tbody>
								</table>
							</td>
						</tr>

						<tr>
							<td colspan="2">
								<table>
									<tbody>
										<tr>
											<td style="width: 65%;font-weight: bold;text-align: left;font-style: italic;">Allowances/Các khoản phụ cấp, trợ cấp</td>
											<td style="width: 15%;"></td>
											<td style="width: 12%;"></td>
										</tr>
										<xsl:if test="root/data/AT != 0">
										<tr>
											<td class="p-l-30">Housing Allowance/Phụ cấp nhà ở</td>
											<td class="txt-center"></td>
											<td class="txt-center"><xsl:value-of select="root/data/AT" /></td>
										</tr>
										</xsl:if>
										<xsl:if test="root/data/AU != 0">
										<tr>
											<td class="p-l-30">Assignment Allowance/Trợ cấp điều chuyển công việc</td>
											<td class="txt-center"></td>
											<td class="txt-center"><xsl:value-of select="root/data/AU" /></td>
										</tr>
										</xsl:if>
										<xsl:if test="root/data/AS != 0">
										<tr>
											<td class="p-l-30">Transportation Allowance/Phụ cấp đi lại</td>
											<td class="txt-center"></td>
											<td class="txt-center"><xsl:value-of select="root/data/AS" /></td>
										</tr>
										</xsl:if>
										<xsl:if test="root/data/AW != 0">
										<tr>
											<td class="p-l-30">Network Allowance/Trợ cấp Internet</td>
											<td class="txt-center"></td>
											<td class="txt-center"><xsl:value-of select="root/data/AW" /></td>
										</tr>
										</xsl:if>
										<xsl:if test="root/data/BP != 0">
										<tr>
											<td class="p-l-30">On call duty/Trợ cấp trực điện thoại</td>
											<td class="txt-center"></td>
											<td class="txt-center"><xsl:value-of select="root/data/BP" /></td>
										</tr>
										</xsl:if>
										<xsl:if test="root/data/AV != 0">
										<tr>
											<td class="p-l-30">Emergency Responsible Team (ERT allowance)/Trợ cấp phòng cháy </td>
											<td class="txt-center"></td>
											<td class="txt-center"><xsl:value-of select="root/data/AV" /></td>
										</tr>
										</xsl:if>
										<xsl:if test="root/data/AX != 0">
										<tr>
											<td class="p-l-30">Safe &amp; Sanitation allowance/Trợ cấp an toàn và vệ sinh</td>
											<td class="txt-center"></td>
											<td class="txt-center"><xsl:value-of select="root/data/AX" /></td>
										</tr>
										</xsl:if>
										<xsl:variable name="tempBX" select="root/data/BX"/>
										<xsl:variable name="tempBY" select="root/data/BY"/>
										<xsl:if test="($tempBX + $tempBY) != 0">
										<tr>
											<td class="p-l-30">Relocation allowance/Trợ cấp chuyển vùng từ nước ngoài</td>
											<td class="txt-center"></td>
											<td class="txt-center"><xsl:value-of select="($tempBX + $tempBY)" /></td>
										</tr>
										</xsl:if>
										<xsl:if test="root/data/CC != 0">
										<tr>
											<td class="p-l-30">Severance Allowance/Trợ cấp thôi việc</td>
											<td class="txt-center"></td>
											<td class="txt-center"><xsl:value-of select="root/data/CC" /></td>
										</tr>
										</xsl:if>
										<xsl:if test="root/data/BU != 0">
										<tr>
											<td class="p-l-30">Fire fighting training allowance/Trợ cấp đào tạo phòng cháy chữa cháy</td>
											<td class="txt-center"></td>
											<td class="txt-center"><xsl:value-of select="root/data/BU" /></td>
										</tr>
										</xsl:if>
										<tr>
											<td class="p-l-30">Other allowance/Trợ cấp khác</td>
											<td class="txt-center"></td>
											<td class="txt-center">N/A</td>
										</tr>
									</tbody>
								</table>
							</td>
						</tr>
		
						<tr>
							<td colspan="2">
								<table>
									<tbody>
										<tr>
											<td style="width: 65%;font-weight: bold;text-align: left;font-style: italic;">Bonus/Thưởng</td>
											<td class="txt-center" style="width: 15%;"></td>
											<td class="txt-center" style="width: 12%;"></td>
										</tr>
										<xsl:if test="root/data/BR != 0">
										<tr>
											<td class="p-l-30">Retention Bonus/Thưởng gắn bó</td>
											<td class="txt-center"></td>
											<td class="txt-center"><xsl:value-of select="root/data/BR" /></td>
										</tr>
										</xsl:if>
										<xsl:if test="root/data/BQ != 0">
										<tr>
											<td class="p-l-30">Production Incentive/Thưởng quý</td>
											<td class="txt-center"></td>
											<td class="txt-center"><xsl:value-of select="root/data/BQ" /></td>
										</tr>
										</xsl:if>
										<xsl:if test="root/data/BS != 0">
										<tr>
											<td class="p-l-30">Sign-on Bonus/Thưởng ký HĐLĐ</td>
											<td class="txt-center"></td>
											<td class="txt-center"><xsl:value-of select="root/data/BS" /></td>
										</tr>
										</xsl:if>
										<xsl:if test="root/data/BT != 0">
										<tr>
											<td class="p-l-30">Other bonus/Thưởng khác</td>
											<td class="txt-center"></td>
											<td class="txt-center"><xsl:value-of select="root/data/BT" /></td>
										</tr>
										</xsl:if>
									</tbody>
								</table>
							</td>
						</tr>
		
						<tr>
							<td colspan="2">
								<table>
									<tbody>
										<tr>
											<td style="width: 65%;font-weight: bold;text-align: left;font-style: italic;">Other income/Thu nhập khác</td>
											<td class="txt-center" style="width: 15%;"></td>
											<td class="txt-center" style="width: 12%;"></td>
										</tr>
										<xsl:if test="root/data/CA != 0">>
										<tr>
											<td class="p-l-30">Remaining annual leave/Thanh toán phép tồn khi nghỉ việc</td>
											<td class="txt-center"></td>
											<td class="txt-center"><xsl:value-of select="root/data/CA" /></td>
										</tr>
										</xsl:if>
										<xsl:if test="root/data/CH != 0">
										<tr>
											<td class="p-l-30">Payment towards contract end date/Thanh toán đến hết hạn HĐ</td>
											<td class="txt-center"></td>
											<td class="txt-center"><xsl:value-of select="root/data/CH" /></td>
										</tr>
										</xsl:if>
										<xsl:if test="root/data/BW != 0">
										<tr>
											<td class="p-l-30">SI allowance (by Social Insurance)/Trợ cấp BHXH </td>
											<td class="txt-center"></td>
											<td class="txt-center"><xsl:value-of select="root/data/BW" /></td>
										</tr>
										</xsl:if>
										<xsl:if test="root/data/BV != 0">
										<tr>
											<td class="p-l-30">Top up SL/ML allowance for IDL/Trợ cấp ốm đau/thai sản cho IDL</td>
											<td class="txt-center"></td>
											<td class="txt-center"><xsl:value-of select="root/data/BV" /></td>
										</tr>
										</xsl:if>
										<xsl:if test="root/data/DJ != 0">
										<tr>
											<td class="p-l-30">Returned PIT/Hoàn thuế PIT</td>
											<td class="txt-center"></td>
											<td class="txt-center"><xsl:value-of select="root/data/DJ" /></td>
										</tr>
										</xsl:if>
									</tbody>
								</table>
							</td>
						</tr>
		
						<tr>
							<td colspan="2">
								<table>
									<tbody>
										<tr>
											<td style="width: 65%;font-weight: bold;text-align: left;font-style: italic;">Other adjustment/Điều chỉnh khác</td>
											<td class="txt-center" style="width: 15%;"></td>
											<td class="txt-center" style="width: 12%;"></td>
										</tr>
										<xsl:variable name="tempBJ" select="root/data/BJ"/>
										<xsl:variable name="tempBN" select="root/data/BN"/>
										<xsl:variable name="tempCD" select="root/data/CD"/>
										<xsl:if test="($tempBJ + $tempBN + $tempCD) != 0">
										<tr>
											<td class="p-l-30">Salary adjustment/Điều chỉnh lương và phụ cấp</td>
											<td class="txt-center"></td>
											<td class="txt-center"><xsl:value-of select="($tempBJ + $tempBN + $tempCD) " /></td>
										</tr>
										</xsl:if>
										<xsl:variable name="tempBK" select="root/data/BK"/>
										<xsl:variable name="tempCE" select="root/data/CE"/>
										<xsl:if test="($tempBK + $tempCE) != 0">
										<tr>
											<td class="p-l-30">Additional salary for Nightshift adjustment/Điều chỉnh ca đêm</td>
											<td class="txt-center"></td>
											<td class="txt-center"><xsl:value-of select="($tempBK + $tempCE)" /></td>
										</tr>
										</xsl:if>
										<xsl:variable name="tempBL" select="root/data/BL"/>
										<xsl:variable name="tempCF" select="root/data/CF"/>
										<xsl:if test="($tempBL + $tempCF) != 0">
										<tr>
											<td class="p-l-30">OT adjustment/Điều chỉnh OT</td>
											<td class="txt-center"></td>
											<td class="txt-center"><xsl:value-of select="($tempBL + $tempCF)" /></td>
										</tr>
										</xsl:if>
										<xsl:if test="root/data/DE != 0">
										<tr>
											<td class="p-l-30">Property Deduction/Khấu trừ bàn giao tài sản</td>
											<td class="txt-center"></td>
											<td class="txt-center"><xsl:value-of select="root/data/DE" /></td>
										</tr>
										</xsl:if>
										<xsl:if test="root/data/BO != 0">
										<tr>
											<td class="p-l-30">Other adjustment/Điều chỉnh khác</td>
											<td class="txt-center"></td>
											<td class="txt-center"><xsl:value-of select="root/data/BO" /></td>
										</tr>
										</xsl:if>
									</tbody>
								</table>
							</td>
						</tr>
		
						<tr class="txt-center txt-bold">
							<td class="txt-left">(C) Total Income/Tổng thu nhập</td>
							<td><xsl:value-of select="root/data/DA" /></td>
							<td></td>
						</tr>
		
						<tr>
							<td colspan="2">
								<table>
									<tbody>
										<xsl:if test="root/data/CJ != 0">
										<tr>
											<td class="p-l-30" style="width: 65%;">Marsh premium for dependant/BH Marsh cho người phụ thuộc</td>
											<td class="txt-center" style="width: 15%;"></td>
											<td class="txt-center" style="width: 12%;"><xsl:value-of select="root/data/CJ" /></td>
										</tr>
										</xsl:if>
									</tbody>
								</table>
							</td>
						</tr>
						<xsl:if test="root/data/DB != 0">
						<tr class="txt-center txt-bold">
							<td class="txt-left">(D) TAX INCOME/THU NHẬP CHỊU THUẾ</td>
							<td><xsl:value-of select="root/data/DB" /></td>
							<td></td>
						</tr>
						</xsl:if>
						<tr class="txt-center txt-bold">
							<td class="txt-left">(E) TAX DEDUCTION/GIẢM TRỪ TRƯỚC THUẾ</td>
							<td><xsl:value-of select="root/data/CZ" /></td>
							<td></td>
						</tr>

						<tr>
							<td colspan="2">
								<table>
									<tbody>
										<tr>
											<td class="p-l-30" style="width: 65%;">1. Personal deduction/Giảm trừ cho bản thân</td>
											<td class="txt-center" style="width: 15%;"></td>
											<td class="txt-center" style="width: 12%;"><xsl:value-of select="root/data/CT" /></td>
										</tr>
										<tr>
											<td class="p-l-30">2. Dependants deduction/Giảm trừ cho người phụ thuộc</td>
											<td class="txt-center"></td>
											<td class="txt-center"><xsl:value-of select="root/data/CU" /></td>
										</tr>
										<xsl:variable name="tempCV" select="root/data/CV"/>
										<xsl:variable name="tempCW" select="root/data/CW"/>
										<xsl:variable name="tempCX" select="root/data/CX"/>
										<xsl:variable name="tempCY" select="root/data/CY"/>
										<tr>
											<td class="p-l-30">3. Social, Health and Unemployment Insurance 10,5% paid by employee/10% BHXH,BHYT,BHTN chi trả bởi nhân viên</td>
											<td class="txt-center"></td>
											<td class="txt-center"><xsl:value-of select="($tempCV + $tempCW + $tempCX + $tempCY)" /></td>
										</tr>
									</tbody>
								</table>
							</td>
						</tr>
		
						<tr class="txt-center txt-bold">
							<td class="txt-left">(F) ASSESSABLE INCOME/THU NHẬP TÍNH THUẾ</td>
							<td><xsl:value-of select="root/data/DC" /></td>
							<td></td>
						</tr>
		
						<tr class="txt-center txt-bold">
							<td class="txt-left">(G) PIT MONTHLY/THUẾ THU NHẬP</td>
							<td><xsl:value-of select="root/data/DD" /></td>
							<td></td>
						</tr>
		
						<tr class="txt-center txt-bold">
							<td class="txt-left">(H) TRADE UNION (TU) FEE PAID BY EMPLOYEE/ĐOÀN PHÍ </td>
							<td><xsl:value-of select="root/data/DG" /></td>
							<td></td>
						</tr>
		
						<tr class="txt-center txt-bold">
							<td class="txt-left">(I) NET SALARY/THỰC LĨNH</td>
							<td><xsl:value-of select="root/data/DL" /></td>
							<td></td>
						</tr>
					</tbody>
				</table>
		
				<p>Note: Mọi thắc mắc về lương tháng 08/2017, vui lòng liên hệ bộ phận hỗ trợ theo số điện thoại 0191919282 chậm nhất 17:00 ngày 20 tháng 09 năm 2017 kể từ ngày nhận được phiếu lương chính thức. Sau thời gian này mọi thắc mắc sẽ không được tiếp nhận và giải quyết. Cảm ơn!</p>
				<p class="m-0">For any Aug 2017's salary query, please contact the payroll support at 0191919282 by latest 17:00 on 20th Sep 2017 since receipt date of your payslip. Any salary queries raised afterwards will be not addressed and or resolved. Thank you!</p>
			</body>
		</html>
	</xsl:template>
</xsl:stylesheet>

