var join = {
	common: {
		empty: { code: 'empty', desc: '입력하세요' },
		space: { code: 'space', desc: '공백없이 입력하세요' },
		min: { code: 'min', desc: '최소 5자이상 입력하세요' },
		max: { code: 'max', desc: '최대 10자이하 입력하세요' }
	},
	userid: {
		valid: { code: 'valid', desc: '아이디 중복여부를 확인하세요' },
		invalid: { code: 'invalid', desc: '아이디는 영문소문자,숫자만 입력하세요'},
		usable: { code: 'usable', desc: '사용가능한 아이디입니다' },
		unusable: { code: 'unusable', desc: '이미 사용중인 아이디입니다' }
	},
	userid_status: function(id){
		var space = /\s/g;
		var reg = /[^a-z0-9]/g;
		if( id=='' )	return this.common.empty;
		else if( id.match(space) ) return this.common.space;
		else if( reg.test(id) ) return this.userid.invalid;
		else if( id.length<5 ) return this.common.min;
		else if( id.length>10 ) return this.common.max;
		else			return this.userid.valid;
	},
	userid_usable: function(data){
		if( data==0 )	return this.userid.usable;
		else			return this.userid.unusable;
	},
	userpwd:{
		valid: { code: 'valid', desc: '사용가능한 비밀번호입니다'	},
		invalid: { code: 'invalid', 
			desc: '비밀번호는 영문 대소문자,숫자만 입력합니다'},
		lack: { code: 'lack', 
			desc: '비밀번호는 영문 대소문자,숫자를 모두 포함해야합니다'}	,
		equal: { code: 'valid', desc: '비밀번호가 일치합니다'	},
		notequal: { code: 'invalid', desc: '비밀번호가 일치하지 않습니다' }
	},
	userpwd_status: function(pwd){
		var space = /\s/g;
		var reg = /[^a-zA-Z0-9]/g;
		var upper = /[A-Z]/g;
		var lower = /[a-z]/g;
		var digit = /[0-9]/g;
		if( pwd=='' )	return this.common.empty;
		else if( pwd.match(space) ) return this.common.space;
		else if( reg.test(pwd) ) return this.userpwd.invalid;
		else if( !upper.test(pwd) | !lower.test(pwd) | !digit.test(pwd) ) 
				return this.userpwd.lack;
		else if( pwd.length<5 ) return this.common.min;
		else if( pwd.length>10 ) return this.common.max;
		else			return this.userpwd.valid;
	},
	userpwd_ck_status: function(pwd_ck, pwd){
		if( pwd_ck=='')	return this.common.empty;
		else if( pwd_ck==pwd ) return this.userpwd.equal;
		else return this.userpwd.notequal;
	},
	email:{
		valid: {code:'valid', desc:'유효한 이메일입니다'},
		invalid: {code:'invalid', desc:'유효하지 않은 이메일입니다'}		
	},
	email_status: function(email){
		var reg = /^[0-9a-zA-Z]([-_\.]?[0-9a-zA-Z])*@[0-9a-zA-Z]([-_\.]?[0-9a-zA-Z])*\.[a-zA-Z]{2,3}$/;
		if( email=='' )	return this.common.empty;
		else if( reg.test(email) ) 	return this.email.valid;
		else	return this.email.invalid;
			
	}
}