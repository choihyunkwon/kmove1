<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>

	
			<h3>�⺻����</h3>
		<form action="/mybook/mBookUser.nhn" method="post" id="saveMBookUser">
			<input type="hidden" name="method" value="saveMBookUser">
			<input type="hidden" name="ret_url" value="">
			<input type="hidden" name="mobileInitPageType" value="SMRY">
			<fieldset>
			<legend>�⺻���� �����ϱ�</legend>
			<table class="setting_info" cellpadding="0" cellspacing="0" summary="�⺻���� �Դϴ�">
				<caption>�⺻����</caption>
				<colgroup>
					<col width="124">
					<col width="112">
					<col>
				</colgroup>
				<tbody>
					<tr>
						<th scope="row" class="info_title"><strong>����� ����</strong></th>
						<th> ��������</th>
						
						
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
								
						     	<option value="32">����</option>
							<!-- </��������> -->
						</select>
						

						
					</tr>
					<tr>
					<th scope="row" class="info_title"><strong>�Ҽ��� ǥ��</strong></th>
					<td colspan="2">
						<div class="opt_decimal">
							<ul>
								<li><input type="radio" id="deciaml_no" name="isDecimalEnable" value="false" checked="" onclick="nclk_v2(this,'set.nopoint','','1',event)">
								<label for="deciaml_no">�Ҽ��� ǥ�� �� ��</label></li>
								<li><input type="radio" id="deciaml" name="isDecimalEnable" value="true" onclick="nclk_v2(this,'set.point','','1',event)"><label for="deciaml">�Ҽ��� ǥ��</label></li>
							</ul>
							<p class="guide">�Ҽ����� ����Ͽ� �پ��� ȭ�� ������ �Է��� �� �ֽ��ϴ�. 
							<span>(�޷� $, ���� ��, ��ȭ �� �� )</span>
							</p>
						</div>
					</td>
					</tr>
					<tr>
					<th scope="row" class="info_title"><strong>ù ȭ�� ����</strong></th>
					<td colspan="2">
						<ul class="opt_main">
							<li><input type="radio" id="list" name="initPageType" value="OUTGO" 
							checked="" onclick="nclk_v2(this,'set.listview','','1',event)">
								<label for="list">
								<img src="https://moneybook.naver.com/imgmoneybook/img/mybook/img_set_ex1.gif" 
								width="59" height="44" alt="�����"></label>
								<dl>
								<dt>�����</dt>
								<dd>�� ���� ��ü ������ ���� <br>�Է°� �帧 �ľ��� ������ ����</dd>
								</dl>
							</li>
							<li><input type="radio" id="grid" name="initPageType" value="CALENDAR" onclick="nclk_v2(this,'set.calendarview','','1',event)">
								<label for="grid"><img src="https://moneybook.naver.com/imgmoneybook/img/mybook/img_set_ex2.gif" width="58" height="44" alt="�޷���"></label>
								<dl>
								<dt>�޷���</dt>
								<dd>�޷��� ������� �� ���� �Է°� <br>�޸�/���� �Է��� ������ ȭ�� ����</dd>
								</dl>
							</li>
						</ul>
					</td>
					</tr>
					
					<tr> 
					<th scope="row" class="info_title"><strong>�������</strong></th>
					<td colspan="2"> 
						<div class="opt_decimal"> 
							<ul> 
								<li><input type="radio" id="account_on" name="isAccountEnable" value="true" 
								onclick="nclk_v2(this,'set.account','','1',event)">
								<label for="account_on">���� ���� ����</label>
							
								
								</li> 
								<li><input type="radio" id="account" name="isAccountEnable" value="false" checked="
													  " onclick="alertNotUseAccount(); nclk_v2(this,'set.noaccount','','1',event);">
													  <label for="account">���� ���� ��� ����</label></li>
							</ul>
							<p class="guide">������� ����� �̿��Ͻø� ��������� ����, ������, �ֽ� �� �����Ͻ� �پ��� �ڻ���  ������ �� �ֽ��ϴ�.</p> 
						</div> 
					</td> 
					</tr>
					<tr>
						<th scope="row" class="info_title"><strong>ī���� ����</strong><!-- <a href="#" class="ico_new"><img src="https://ssl.pstatic.net/static/pwe/moneybook/ico_new.gif" width="24" height="13" alt="NEW"></a> --></th>
						<td colspan="2">
							<div class="opt_decimal">
								<ul>
									<li><input type="radio" id="card_on" name="isIncludeCardPayment" value="true" checked=""><label for="card_on">�������� �ݾ׿� ����</label></li>
									<li><input type="radio" id="card" name="isIncludeCardPayment" value="false"><label for="card">�������� �ݾ׿��� ����</label></li>
								</ul>
								<p class="guide">���ʸ޴� ���̴��� ���袥���� �����Ǵ� ���������⢥�ݾ׿� ī������ �����Ͽ� ��������� ������ �� �ֽ��ϴ�.</p>
							</div>
						</td>
					</tr> 
				</tbody>
			</table>
			<div class="btn bc2"><a href="#" onclick="checkUserPreferenceSubmit(); nclk_v2(this,'set.save','','1',event); return false;"><img src="https://moneybook.naver.com/imgmoneybook/img/mybook/btn_ok5.gif" 
			width="56" height="29" alt="Ȯ��"></a></div>
			<!-- �Ҽ��� ��� ���� ���̾��˾� -->
			<div class="set_lpop" style="display:none; left:280px; top:303px;" id="decimalHelp">
				<div class="lpop_cont">
					<dl>
					<dt>�Ҽ��� ��� ����</dt>
					<dd>�Ҽ����� ����Ͽ� <em>�پ��� ������ ȭ�� ������ �Է�</em>�� �� �ֽ��ϴ�. (�޷� $, ���� ��, ��ȭ �� �� ��, ������ ��ȭ ��ȣ�� ǥ���� ������ �ʽ��ϴ�.)<br>
						�Ҽ��� ���� �� ���� �� �Ҽ��� �Ʒ��� �ݾ��� �հ迡 ���Ե��� �ʾ� �հ� �ݾ׿� ���̰� ���� �� �ֽ��ϴ�.<br>
						* �Ҽ��� ��� �� ���� �� ȭ�� ���� ȯ���� �������� ������, �̹� �Էµ� ������ ������� �ʽ��ϴ�.</dd>
					</dl>
					<p><a href="#" onclick="$('decimalHelp').style.display='none';"><img src="/imgmoneybook/img/mybook/btn_del5.gif" width="7" height="6" alt="�ݱ�"></a></p>
				</div>
				<span class="shadow shadow2"></span>
			</div>
			<!-- //�Ҽ��� ��� ���� ���̾��˾� -->
			</fieldset>
			</form>
		
		</div>

</body>
</html>