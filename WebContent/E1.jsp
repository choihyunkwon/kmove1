<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>

	
			<h3>기본정보</h3>
		<form action="/mybook/mBookUser.nhn" method="post" id="saveMBookUser">
			<input type="hidden" name="method" value="saveMBookUser">
			<input type="hidden" name="ret_url" value="">
			<input type="hidden" name="mobileInitPageType" value="SMRY">
			<fieldset>
			<legend>기본정보 설정하기</legend>
			<table class="setting_info" cellpadding="0" cellspacing="0" summary="기본정보 입니다">
				<caption>기본정보</caption>
				<colgroup>
					<col width="124">
					<col width="112">
					<col>
				</colgroup>
				<tbody>
					<tr>
						<th scope="row" class="info_title"><strong>가계부 정보</strong></th>
						<th> 월시작일</th>
						
						
						<td><select>
						
							
								<option value="1" selected="">1</option>
							
								<option value="2">1</option>
							
								<option value="3">3</option>
							
								<option value="4">4</option>
							
								<option value="5">5</option>
							
								<option value="6">6</option>
							
								<option value="7">7</option>
							
								<option value="8">8</option>
							
								<option value="9">9</option>
							
								<option value="10">10</option>
							
								<option value="11">11</option>
							
								<option value="12">12</option>
							
								<option value="13">13</option>
							
								<option value="14">14</option>
							
								<option value="15">15</option>
							
								<option value="16">16</option>
							
								<option value="17">17</option>
							
								<option value="18">18</option>
							
								<option value="19">19</option>
							
								<option value="20">20</option>
							
								<option value="21">21</option>
							
								<option value="22">22</option>
							
								<option value="23">23</option>
							
								<option value="24">24</option>
							
								<option value="25">25</option>
							
								<option value="26">26</option>
							
								<option value="27">27</option>
							
								<option value="28">28</option>
								
								<option value="29">29</option>
								
								<option value="30">30</option>
								
						     	<option value="32">말일</option>
							<!-- </월시작일> -->
						</select>
						

						
					</tr>
					<tr>
					<th scope="row" class="info_title"><strong>소수점 표시</strong></th>
					<td colspan="2">
						<div class="opt_decimal">
							<ul>
								<li><input type="radio" id="deciaml_no" name="isDecimalEnable" value="false" checked="" onclick="nclk_v2(this,'set.nopoint','','1',event)">
								<label for="deciaml_no">소수점 표시 안 함</label></li>
								<li><input type="radio" id="deciaml" name="isDecimalEnable" value="true" onclick="nclk_v2(this,'set.point','','1',event)"><label for="deciaml">소수점 표시</label></li>
							</ul>
							<p class="guide">소수점을 사용하여 다양한 화폐 단위를 입력할 수 있습니다. 
							<span>(달러 $, 유로 €, 엔화 ￥ 등 )</span>
							</p>
						</div>
					</td>
					</tr>
					<tr>
					<th scope="row" class="info_title"><strong>첫 화면 선택</strong></th>
					<td colspan="2">
						<ul class="opt_main">
							<li><input type="radio" id="list" name="initPageType" value="OUTGO" 
							checked="" onclick="nclk_v2(this,'set.listview','','1',event)">
								<label for="list">
								<img src="https://moneybook.naver.com/imgmoneybook/img/mybook/img_set_ex1.gif" 
								width="59" height="44" alt="목록형"></label>
								<dl>
								<dt>목록형</dt>
								<dd>한 달의 전체 내역을 펼쳐 <br>입력과 흐름 파악이 용이한 구성</dd>
								</dl>
							</li>
							<li><input type="radio" id="grid" name="initPageType" value="CALENDAR" onclick="nclk_v2(this,'set.calendarview','','1',event)">
								<label for="grid"><img src="https://moneybook.naver.com/imgmoneybook/img/mybook/img_set_ex2.gif" width="58" height="44" alt="달력형"></label>
								<dl>
								<dt>달력형</dt>
								<dd>달력을 기반으로 일 단위 입력과 <br>메모/일정 입력이 가능한 화면 구성</dd>
								</dl>
							</li>
						</ul>
					</td>
					</tr>
					
					<tr> 
					<th scope="row" class="info_title"><strong>통장관리</strong></th>
					<td colspan="2"> 
						<div class="opt_decimal"> 
							<ul> 
								<li><input type="radio" id="account_on" name="isAccountEnable" value="true" 
								onclick="nclk_v2(this,'set.account','','1',event)">
								<label for="account_on">통장 관리 설정</label>
							
								
								</li> 
								<li><input type="radio" id="account" name="isAccountEnable" value="false" checked="
													  " onclick="alertNotUseAccount(); nclk_v2(this,'set.noaccount','','1',event);">
													  <label for="account">통장 관리 사용 안함</label></li>
							</ul>
							<p class="guide">통장관리 기능을 이용하시면 자유입출금 통장, 예적금, 주식 등 보유하신 다양한 자산을  관리할 수 있습니다.</p> 
						</div> 
					</td> 
					</tr>
					<tr>
						<th scope="row" class="info_title"><strong>카드대금 설정</strong><!-- <a href="#" class="ico_new"><img src="https://ssl.pstatic.net/static/pwe/moneybook/ico_new.gif" width="24" height="13" alt="NEW"></a> --></th>
						<td colspan="2">
							<div class="opt_decimal">
								<ul>
									<li><input type="radio" id="card_on" name="isIncludeCardPayment" value="true" checked=""><label for="card_on">현금지출 금액에 포함</label></li>
									<li><input type="radio" id="card" name="isIncludeCardPayment" value="false"><label for="card">현금지출 금액에서 제외</label></li>
								</ul>
								<p class="guide">왼쪽메뉴 ´이달의 가계´에서 제공되는 ´현금지출´금액에 카드대금을 포함하여 계산할지를 선택할 수 있습니다.</p>
							</div>
						</td>
					</tr> 
				</tbody>
			</table>
			<div class="btn bc2"><a href="#" onclick="checkUserPreferenceSubmit(); nclk_v2(this,'set.save','','1',event); return false;"><img src="https://moneybook.naver.com/imgmoneybook/img/mybook/btn_ok5.gif" 
			width="56" height="29" alt="확인"></a></div>
			<!-- 소수점 사용 설명 레이어팝업 -->
			<div class="set_lpop" style="display:none; left:280px; top:303px;" id="decimalHelp">
				<div class="lpop_cont">
					<dl>
					<dt>소수점 사용 설명</dt>
					<dd>소수점을 사용하여 <em>다양한 국가의 화폐 단위를 입력</em>할 수 있습니다. (달러 $, 유로 €, 엔화 ￥ 등 단, 별도의 통화 기호는 표현해 주지는 않습니다.)<br>
						소수점 설정 후 해제 시 소수점 아래의 금액은 합계에 포함되지 않아 합계 금액에 차이가 있을 수 있습니다.<br>
						* 소수점 사용 및 해제 시 화폐에 따른 환산은 지원하지 않으며, 이미 입력된 내역은 변경되지 않습니다.</dd>
					</dl>
					<p><a href="#" onclick="$('decimalHelp').style.display='none';"><img src="/imgmoneybook/img/mybook/btn_del5.gif" width="7" height="6" alt="닫기"></a></p>
				</div>
				<span class="shadow shadow2"></span>
			</div>
			<!-- //소수점 사용 설명 레이어팝업 -->
			</fieldset>
			</form>
		
		</div>

</body>
</html>