(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1093 0)
(declare-sort var3168 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun is-whitespace ((char String)) Bool (< (str.to_code char) 33))
(define-fun-rec trim-left ((s String)) String (ite (= s "") "" (ite (is-whitespace (str.substr s 0 1)) (trim-left (str.substr s 1 (- (str.len s) 1))) s)))
(define-fun-rec trim-right ((s String)) String (ite (= s "") "" (ite (is-whitespace (str.substr s (- (str.len s) 1) 1)) (trim-right (str.substr s 0 (- (str.len s) 1))) s)))
(define-fun trim/-847153721 ((s String)) String (trim-right (trim-left s)))
(declare-fun replaceFirst/750800361 (String String String) String)
(declare-const null-var1093 var1093)
(declare-const null-String String)
(declare-const var1655 var1093) ; Statement: r5 := @this: org.hibernate.dialect.pagination.SQLServer2005LimitHandler 
(assert (not (= var1655 null-var1093)))
(declare-const var244 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var244 null-String)))
(assert true)
(define-const var1954 String (trim/-847153721 var244)) ; Statement: $r1 = virtualinvoke r0.<java.lang.String: java.lang.String trim()>() 
(assert true)
(define-const var3605 String (replaceFirst/750800361 var1954 "(?i)(.)*\u005cs" "")) ; Statement: $r2 = virtualinvoke $r1.<java.lang.String: java.lang.String replaceFirst(java.lang.String,java.lang.String)>("(?i)(.)*\\s", "") 
(assert (= (replaceFirst/750800361 var1954 "(?i)(.)*\u005cs" "") (str.replace_re var1954 (re.++ (str.to_re "?i") (re.* re.allchar) (re.union (str.to_re "\u{005c}u{0009}") (str.to_re "\u{005c}u{000a}") (str.to_re "\u{005c}u{000d}") (str.to_re " "))) "")))
(assert true)
(define-const var2549 String (trim/-847153721 var3605)) ; Statement: r3 = virtualinvoke $r2.<java.lang.String: java.lang.String trim()>() 
(define-const var2050 String "*") ; Statement: $r4 = "*" 
(assert true)
(define-const var1700 Bool (= var2050 var2549)) ; Statement: $z0 = virtualinvoke $r4.<java.lang.String: boolean equals(java.lang.Object)>(r3) 
 ; Statement: if $z0 != 0 goto $z2 = 1 
(assert (not (= (ite var1700 1 0) 0))) ; Cond: $z0 != 0 
(define-const var2471 Bool (ite (= 1 1) true false)) ; Statement: $z2 = 1 
 ; Statement: goto [?= return $z2] 
(assert true) ; Non Conditional
 ; Statement: return $z2 
(check-sat)
(get-model)
(get-unsat-core)
; {trim/-847153721=([java.lang.String], java.lang.String), replaceFirst/750800361=([java.lang.String, java.lang.String, java.lang.String], java.lang.String)}
; {var1093=org.hibernate.dialect.pagination.SQLServer2005LimitHandler, var1655=r5, var244=r0, var3168=null_type, var1954=$r1, var3605=$r2, var2549=r3, var2050=$r4, var1700=$z0, var2471=$z2}
; {org.hibernate.dialect.pagination.SQLServer2005LimitHandler=var1093, r5=var1655, r0=var244, null_type=var3168, $r1=var1954, $r2=var3605, r3=var2549, $r4=var2050, $z0=var1700, $z2=var2471}
;seq <java.lang.String: java.lang.String trim()>;	<java.lang.String: java.lang.String replaceFirst(java.lang.String,java.lang.String)>;	<java.lang.String: java.lang.String trim()>;	<java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: java.lang.String trim()>": 2,"<java.lang.String: java.lang.String replaceFirst(java.lang.String,java.lang.String)>": 1,"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r5 := @this: org.hibernate.dialect.pagination.SQLServer2005LimitHandler;	r0 := @parameter0: java.lang.String;	$r1 = virtualinvoke r0.<java.lang.String: java.lang.String trim()>();	$r2 = virtualinvoke $r1.<java.lang.String: java.lang.String replaceFirst(java.lang.String,java.lang.String)>("(?i)(.)*\\s", "");	r3 = virtualinvoke $r2.<java.lang.String: java.lang.String trim()>();	$r4 = "*";	$z0 = virtualinvoke $r4.<java.lang.String: boolean equals(java.lang.Object)>(r3);	if $z0 != 0 goto $z2 = 1;	$z2 = 1;	goto [?= return $z2];	return $z2
;block_num 3