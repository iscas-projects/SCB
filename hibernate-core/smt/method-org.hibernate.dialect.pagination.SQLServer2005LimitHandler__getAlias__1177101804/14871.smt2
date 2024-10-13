(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2404 0)
(declare-sort var3858 0)
(declare-sort var965 0)
(declare-sort var3276 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun replaceFirst/750800361 (String String String) String)
(define-fun is-whitespace ((char String)) Bool (< (str.to_code char) 33))
(define-fun-rec trim-left ((s String)) String (ite (= s "") "" (ite (is-whitespace (str.substr s 0 1)) (trim-left (str.substr s 1 (- (str.len s) 1))) s)))
(define-fun-rec trim-right ((s String)) String (ite (= s "") "" (ite (is-whitespace (str.substr s (- (str.len s) 1) 1)) (trim-right (str.substr s 0 (- (str.len s) 1))) s)))
(define-fun trim/-847153721 ((s String)) String (trim-right (trim-left s)))
(declare-fun matcher/468719934 (var965 String) var3276)
(define-fun cast-from-String-to-String ((arg String)) String arg)
(declare-fun find/1809080823 (var3276) Bool)
(declare-const null-var2404 var2404)
(declare-const null-String String)
(declare-const var2404-ALIAS_PATTERN var965)
(declare-const var2449 var2404) ; Statement: r3 := @this: org.hibernate.dialect.pagination.SQLServer2005LimitHandler 
(assert (not (= var2449 null-var2404)))
(declare-const var1057 String) ; Statement: r4 := @parameter0: java.lang.String 
(assert (not (= var1057 null-String)))
(assert true)
(define-const var1472 String (replaceFirst/750800361 var1057 "(\u005c((.)*\u005c))" "")) ; Statement: $r0 = virtualinvoke r4.<java.lang.String: java.lang.String replaceFirst(java.lang.String,java.lang.String)>("(\\((.)*\\))", "") 
(assert (= (replaceFirst/750800361 var1057 "(\u005c((.)*\u005c))" "") (str.replace_re var1057 (re.++ (str.to_re "(") (re.* re.allchar) (str.to_re ")")) "")))
(assert true)
(define-const var3682 String (trim/-847153721 var1472)) ; Statement: r5 = virtualinvoke $r0.<java.lang.String: java.lang.String trim()>() 
(define-const var3245 var965 var2404-ALIAS_PATTERN) ; Statement: $r1 = <org.hibernate.dialect.pagination.SQLServer2005LimitHandler: java.util.regex.Pattern ALIAS_PATTERN> 
(assert true)
(define-const var516 var3276 (matcher/468719934 var3245 (cast-from-String-to-String var3682))) ; Statement: r2 = virtualinvoke $r1.<java.util.regex.Pattern: java.util.regex.Matcher matcher(java.lang.CharSequence)>(r5) 
(define-const var2215 String null-String) ; Statement: r6 = null 
(assert true)
(define-const var2773 Bool (find/1809080823 var516)) ; Statement: $z0 = virtualinvoke r2.<java.util.regex.Matcher: boolean find()>() 
 ; Statement: if $z0 == 0 goto (branch) 
(assert (= (ite var2773 1 0) 0)) ; Cond: $z0 == 0 
 ; Statement: if r6 == null goto $r7 = null 
(assert (= var2215 null-String)) ; Cond: r6 == null 
(define-const var918 String null-String) ; Statement: $r7 = null 
(assert true) ; Non Conditional
 ; Statement: return $r7 
(check-sat)
(get-model)
(get-unsat-core)
; {replaceFirst/750800361=([java.lang.String, java.lang.String, java.lang.String], java.lang.String), trim/-847153721=([java.lang.String], java.lang.String), matcher/468719934=([java.util.regex.Pattern, java.lang.CharSequence], java.util.regex.Matcher), cast-from-String-to-String=([java.lang.String], java.lang.CharSequence), find/1809080823=([java.util.regex.Matcher], boolean)}
; {var2404=org.hibernate.dialect.pagination.SQLServer2005LimitHandler, var2449=r3, var1057=r4, var3858=null_type, var1472=$r0, var3682=r5, var965=java.util.regex.Pattern, var3245=$r1, var3276=java.util.regex.Matcher, var516=r2, var2215=r6, var2773=$z0, var918=$r7}
; {org.hibernate.dialect.pagination.SQLServer2005LimitHandler=var2404, r3=var2449, r4=var1057, null_type=var3858, $r0=var1472, r5=var3682, java.util.regex.Pattern=var965, $r1=var3245, java.util.regex.Matcher=var3276, r2=var516, r6=var2215, $z0=var2773, $r7=var918}
;seq <java.lang.String: java.lang.String replaceFirst(java.lang.String,java.lang.String)>;	<java.lang.String: java.lang.String trim()>
;cnt {"<java.lang.String: java.lang.String replaceFirst(java.lang.String,java.lang.String)>": 1,"<java.lang.String: java.lang.String trim()>": 1}
;stmts r3 := @this: org.hibernate.dialect.pagination.SQLServer2005LimitHandler;	r4 := @parameter0: java.lang.String;	$r0 = virtualinvoke r4.<java.lang.String: java.lang.String replaceFirst(java.lang.String,java.lang.String)>("(\\((.)*\\))", "");	r5 = virtualinvoke $r0.<java.lang.String: java.lang.String trim()>();	$r1 = <org.hibernate.dialect.pagination.SQLServer2005LimitHandler: java.util.regex.Pattern ALIAS_PATTERN>;	r2 = virtualinvoke $r1.<java.util.regex.Pattern: java.util.regex.Matcher matcher(java.lang.CharSequence)>(r5);	r6 = null;	$z0 = virtualinvoke r2.<java.util.regex.Matcher: boolean find()>();	if $z0 == 0 goto (branch);	if r6 == null goto $r7 = null;	$r7 = null;	return $r7
;block_num 4