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
														<tr>
															<td>Department/Phòng ban</td>
															<td><xsl:value-of select="root/data/H4" /></td>
														</tr>
														<tr>
															<td>Employee Code/Mã nhân viên</td>
															<td>MANNHAN</td>
														</tr>
														<xsl:if test="root/data/H5 != 0">
														<tr>
															<td>Name/Tên</td>
															<td><xsl:value-of select="root/data/D" /></td>
														</tr>
														</xsl:if>
														<tr>
															<td>Tax code/Mã số thuế</td>
															<td>1123-123-123</td>
														</tr>
														<tr>
															<td>Job title/Chức danh</td>
															<td>Accounting staff</td>
														</tr>
														<tr>
															<td>Join date/Ngày vào làm</td>
															<td>01/08/2017</td>
														</tr>
												</tbody>
										</table>
									</td>
									<td style="vertical-align: top;">
										<table style="vertical-align: top;">
												<tbody>
														<tr>
															<td>Standard working hours/Giờ công chuẩn</td>
															<td>AB4</td>
														</tr>
														<tr>
															<td>Actual day WK hours/Giờ công thực tế (ngày)</td>
															<td>AB4</td>
														</tr>
														<tr>
															<td>Actual night WK hours/Giờ công thực tế (đêm)</td>
															<td>AB4</td>
														</tr>
														<tr>
															<td>Paid leave/Nghỉ hưởng lương</td>
															<td>AB4</td>
														</tr>
														<tr>
															<td>Unpaid leave/Nghỉ không hưởng lương</td>
															<td>AB4</td>
														</tr>
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
							<td></td>
							<td></td>
							<td></td>
						</tr>
						<tr class="txt-bold txt-center">
							<td class="txt-left">(A) Gross Salary/Lương gộp</td>
							<td>28,000,000</td>
							<td></td>
						</tr>
						<tr class="txt-center txt-bold">
							<td class="txt-left">(B) Total Income/Tổng thu nhập</td>
							<td></td>
							<td></td>
						</tr>
						<tr>
							<td colspan="2">
								<table>
									<tbody>
										<tr>
											<td colspan="3" style="font-weight: bold;text-align: left;font-style: italic;">Actual Salary/Lương thực tế</td>
										</tr>
										<tr>
											<td class="p-l-30" style="width: 65%;">Actual WK day Salary/Lương thực tế (ngày)</td>
											<td class="txt-center" style="width: 15%;">AC4 (Hours)</td>
											<td class="txt-center" style="width: 12%;">AM4</td>
										</tr>
										<tr>
											<td class="p-l-30">Nightshift Salary/Lương làm đêm</td>
											<td class="txt-center">AC4 (Hours)</td>
											<td class="txt-center">AM4</td>
										</tr>
										<tr>
											<td class="p-l-30">Paid leave</td>
											<td class="txt-center">AC4 (Hours)</td>
											<td class="txt-center">AM4</td>
										</tr>
										<tr>
											<td class="p-l-30">Overtime Salary/Lương làm thêm</td>
											<td class="txt-center">AC4 (Hours)</td>
											<td class="txt-center">AM4</td>
										</tr>
										<tr>
											<td class="p-l-50">OT 150</td>
											<td class="txt-center">AC4 (Hours)</td>
											<td class="txt-center">AM4</td>
										</tr>
										<tr>
											<td class="p-l-50">OT 200</td>
											<td class="txt-center">AC4 (Hours)</td>
											<td class="txt-center">AM4</td>
										</tr>
										<tr>
											<td class="p-l-50">OT 210</td>
											<td class="txt-center">AC4 (Hours)</td>
											<td class="txt-center">AM4</td>
										</tr>
										<tr>
											<td class="p-l-50">OT 270</td>
											<td class="txt-center">AC4 (Hours)</td>
											<td class="txt-center">AM4</td>
										</tr>
										<tr>
											<td class="p-l-50">OT 300</td>
											<td class="txt-center">AC4 (Hours)</td>
											<td class="txt-center">AM4</td>
										</tr>
										<tr>
											<td class="p-l-50">OT 390</td>
											<td class="txt-center">AC4 (Hours)</td>
											<td class="txt-center">AM4</td>
										</tr>
										<tr>
											<td class="p-l-30">Overtime Salary/Lương làm thêm</td>
											<td class="txt-center"></td>
											<td class="txt-center">BH4+ BI4</td>
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
											<td colspan="3" style="font-weight: bold;text-align: left;font-style: italic;">Allowances/Các khoản phụ cấp, trợ cấp</td>
										</tr>
										<tr>
											<td class="p-l-30" style="width: 65%;">Housing Allowance/Phụ cấp nhà ở</td>
											<td class="txt-center" style="width: 15%;"></td>
											<td class="txt-center" style="width: 12%;">AM4</td>
										</tr>
										<tr>
											<td class="p-l-30">Assignment Allowance/Trợ cấp điều chuyển công việc</td>
											<td class="txt-center"></td>
											<td class="txt-center">AM4</td>
										</tr>
										<tr>
											<td class="p-l-30">Transportation Allowance/Phụ cấp đi lại</td>
											<td class="txt-center"></td>
											<td class="txt-center">AM4</td>
										</tr>
										<tr>
											<td class="p-l-30">On call duty/Trợ cấp trực điện thoại</td>
											<td class="txt-center"></td>
											<td class="txt-center">AM4</td>
										</tr>
										<tr>
											<td class="p-l-30">Emergency Responsible Team (ERT allowance)/Trợ cấp phòng cháy </td>
											<td class="txt-center"></td>
											<td class="txt-center">AM4</td>
										</tr>
										<tr>
											<td class="p-l-30">Safe &amp; Sanitation allowance/Trợ cấp an toàn và vệ sinh</td>
											<td class="txt-center"></td>
											<td class="txt-center">AM4</td>
										</tr>
										<tr>
											<td class="p-l-30">Relocation allowance/Trợ cấp chuyển vùng từ nước ngoài</td>
											<td class="txt-center"></td>
											<td class="txt-center">AM4</td>
										</tr>
										<tr>
											<td class="p-l-30">Severance Allowance/Trợ cấp thôi việc</td>
											<td class="txt-center"></td>
											<td class="txt-center">AM4</td>
										</tr>
										<tr>
											<td class="p-l-30">Other allowance/Trợ cấp khác</td>
											<td class="txt-center"></td>
											<td class="txt-center">AM4</td>
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
											<td colspan="3" style="font-weight: bold;text-align: left;font-style: italic;">Bonus/Thưởng</td>
										</tr>
										<tr>
											<td class="p-l-30" style="width: 65%;">Retention Bonus/Thưởng gắn bó</td>
											<td class="txt-center" style="width: 15%;"></td>
											<td class="txt-center" style="width: 12%;">AM4</td>
										</tr>
										<tr>
											<td class="p-l-30">Production Incentive/Thưởng quý</td>
											<td class="txt-center"></td>
											<td class="txt-center">AM4</td>
										</tr>
										<tr>
											<td class="p-l-30">Sign-on Bonus/Thưởng ký HĐLĐ</td>
											<td class="txt-center"></td>
											<td class="txt-center">AM4</td>
										</tr>
										<tr>
											<td class="p-l-30">Other bonus/Thưởng khác</td>
											<td class="txt-center"></td>
											<td class="txt-center">AM4</td>
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
											<td colspan="3" style="font-weight: bold;text-align: left;font-style: italic;">Other income/Thu nhập khác</td>
										</tr>
										<tr>
											<td class="p-l-30" style="width: 65%;">Remaining annual leave/Thanh toán phép tồn khi nghỉ việc</td>
											<td class="txt-center" style="width: 15%;"></td>
											<td class="txt-center" style="width: 12%;">AM4</td>
										</tr>
										<tr>
											<td class="p-l-30">Payment towards contract end date/Thanh toán đến hết hạn HĐ</td>
											<td class="txt-center"></td>
											<td class="txt-center">AM4</td>
										</tr>
										<tr>
											<td class="p-l-30">SI allowance (by Social Insurance)/Trợ cấp BHXH </td>
											<td class="txt-center"></td>
											<td class="txt-center">AM4</td>
										</tr>
										<tr>
											<td class="p-l-30">Top up SL/ML allowance for IDL/Trợ cấp ốm đau/thai sản cho IDL</td>
											<td class="txt-center"></td>
											<td class="txt-center">AM4</td>
										</tr>
										<tr>
											<td class="p-l-30">Returned PIT/Hoàn thuế PIT</td>
											<td class="txt-center"></td>
											<td class="txt-center">AM4</td>
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
											<td colspan="3" style="font-weight: bold;text-align: left;font-style: italic;">Other adjustment/Điều chỉnh khác</td>
										</tr>
										<tr>
											<td class="p-l-30" style="width: 65%;">Salary adjustment/Điều chỉnh lương và phụ cấp</td>
											<td class="txt-center" style="width: 15%;"></td>
											<td class="txt-center" style="width: 12%;">AM4</td>
										</tr>
										<tr>
											<td class="p-l-30">Additional salary for Nightshift adjustment/Điều chỉnh ca đêm</td>
											<td class="txt-center"></td>
											<td class="txt-center">AM4</td>
										</tr>
										<tr>
											<td class="p-l-30">OT adjustment/Điều chỉnh OT</td>
											<td class="txt-center"></td>
											<td class="txt-center">AM4</td>
										</tr>
										<tr>
											<td class="p-l-30">Property Deduction/Khấu trừ bàn giao tài sản</td>
											<td class="txt-center"></td>
											<td class="txt-center">AM4</td>
										</tr>
										<tr>
											<td class="p-l-30">Other adjustment/Điều chỉnh khác</td>
											<td class="txt-center"></td>
											<td class="txt-center">AM4</td>
										</tr>
									</tbody>
								</table>
							</td>
						</tr>
		
						<tr class="txt-center txt-bold">
							<td class="txt-left">(B) Total Income/Tổng thu nhập</td>
							<td></td>
							<td></td>
						</tr>
		
						<tr>
							<td colspan="2">
								<table>
									<tbody>
										<tr>
											<td class="p-l-30" style="width: 65%;">Marsh premium for dependant/BH Marsh cho người phụ thuộc</td>
											<td class="txt-center" style="width: 15%;"></td>
											<td class="txt-center" style="width: 12%;">AM4</td>
										</tr>
									</tbody>
								</table>
							</td>
						</tr>
		
						<tr class="txt-center txt-bold">
							<td class="txt-left">(D) TAX INCOME/THU NHẬP CHỊU THUẾ</td>
							<td>CE4</td>
							<td></td>
						</tr>
		
						<tr class="txt-center txt-bold">
							<td class="txt-left">(E) TAX DEDUCTION/GIẢM TRỪ TRƯỚC THUẾ</td>
							<td></td>
							<td></td>
						</tr>
						<tr>
							<td colspan="2">
								<table>
									<tbody>
										<tr>
											<td class="p-l-30" style="width: 65%;">1. Personal deduction/Giảm trừ cho bản thân</td>
											<td class="txt-center" style="width: 15%;"></td>
											<td class="txt-center" style="width: 12%;">AM4</td>
										</tr>
										<tr>
											<td class="p-l-30">2. Dependants deduction/Giảm trừ cho người phụ thuộc</td>
											<td class="txt-center"></td>
											<td class="txt-center">AM4</td>
										</tr>
										<tr>
											<td class="p-l-30">3. Social, Health and Unemployment Insurance 10,5% paid by employee/10% BHXH,BHYT,BHTN chi trả bởi nhân viên</td>
											<td class="txt-center"></td>
											<td class="txt-center">AM4</td>
										</tr>
									</tbody>
								</table>
							</td>
						</tr>
		
						<tr class="txt-center txt-bold">
							<td class="txt-left">(F) ASSESSABLE INCOME/THU NHẬP TÍNH THUẾ</td>
							<td>AM4</td>
							<td></td>
						</tr>
		
						<tr class="txt-center txt-bold">
							<td class="txt-left">(G) PIT MONTHLY/THUẾ THU NHẬP</td>
							<td>AM4</td>
							<td></td>
						</tr>
		
						<tr class="txt-center txt-bold">
							<td class="txt-left">(H) TRADE UNION (TU) FEE PAID BY EMPLOYEE/ĐOÀN PHÍ </td>
							<td>AM4</td>
							<td></td>
						</tr>
		
						<tr class="txt-center txt-bold">
							<td class="txt-left">(I) NET SALARY/THỰC LĨNH</td>
							<td>AM4</td>
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

