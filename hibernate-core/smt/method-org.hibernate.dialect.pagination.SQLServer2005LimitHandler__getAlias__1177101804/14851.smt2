(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var393 0)
(declare-sort var656 0)
(declare-sort var3861 0)
(declare-sort var1212 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun replaceFirst/750800361 (String String String) String)
(define-fun is-whitespace ((char String)) Bool (< (str.to_code char) 33))
(define-fun-rec trim-left ((s String)) String (ite (= s "") "" (ite (is-whitespace (str.substr s 0 1)) (trim-left (str.substr s 1 (- (str.len s) 1))) s)))
(define-fun-rec trim-right ((s String)) String (ite (= s "") "" (ite (is-whitespace (str.substr s (- (str.len s) 1) 1)) (trim-right (str.substr s 0 (- (str.len s) 1))) s)))
(define-fun trim/-847153721 ((s String)) String (trim-right (trim-left s)))
(declare-fun matcher/468719934 (var3861 String) var1212)
(define-fun cast-from-String-to-String ((arg String)) String arg)
(declare-fun find/1809080823 (var1212) Bool)
(declare-const null-var393 var393)
(declare-const null-String String)
(declare-const var393-ALIAS_PATTERN var3861)
(declare-const var1362 var393) ; Statement: r3 := @this: org.hibernate.dialect.pagination.SQLServer2005LimitHandler 
(assert (not (= var1362 null-var393)))
(declare-const var2713 String) ; Statement: r4 := @parameter0: java.lang.String 
(assert (not (= var2713 null-String)))
(assert true)
(define-const var1363 String (replaceFirst/750800361 var2713 "(\u005c((.)*\u005c))" "")) ; Statement: $r0 = virtualinvoke r4.<java.lang.String: java.lang.String replaceFirst(java.lang.String,java.lang.String)>("(\\((.)*\\))", "") 
(assert (= (replaceFirst/750800361 var2713 "(\u005c((.)*\u005c))" "") (str.replace_re var2713 (re.++ (str.to_re "(") (re.* re.allchar) (str.to_re ")")) "")))
(assert true)
(define-const var651 String (trim/-847153721 var1363)) ; Statement: r5 = virtualinvoke $r0.<java.lang.String: java.lang.String trim()>() 
(define-const var1057 var3861 var393-ALIAS_PATTERN) ; Statement: $r1 = <org.hibernate.dialect.pagination.SQLServer2005LimitHandler: java.util.regex.Pattern ALIAS_PATTERN> 
(assert true)
(define-const var2452 var1212 (matcher/468719934 var1057 (cast-from-String-to-String var651))) ; Statement: r2 = virtualinvoke $r1.<java.util.regex.Pattern: java.util.regex.Matcher matcher(java.lang.CharSequence)>(r5) 
(define-const var2038 String null-String) ; Statement: r6 = null 
(assert true)
(define-const var3499 Bool (find/1809080823 var2452)) ; Statement: $z0 = virtualinvoke r2.<java.util.regex.Matcher: boolean find()>() 
 ; Statement: if $z0 == 0 goto (branch) 
(assert (= (ite var3499 1 0) 0)) ; Cond: $z0 == 0 
 ; Statement: if r6 == null goto $r7 = null 
(assert (not (= var2038 null-String))) ; Negate: Cond: r6 == null  
(assert true)
(define-const var432 String (trim/-847153721 var2038)) ; Statement: $r7 = virtualinvoke r6.<java.lang.String: java.lang.String trim()>() 
 ; Statement: goto [?= return $r7] 
(assert true) ; Non Conditional
 ; Statement: return $r7 
(check-sat)
(get-model)
(get-unsat-core)
; {replaceFirst/750800361=([java.lang.String, java.lang.String, java.lang.String], java.lang.String), trim/-847153721=([java.lang.String], java.lang.String), matcher/468719934=([java.util.regex.Pattern, java.lang.CharSequence], java.util.regex.Matcher), cast-from-String-to-String=([java.lang.String], java.lang.CharSequence), find/1809080823=([java.util.regex.Matcher], boolean)}
; {var393=org.hibernate.dialect.pagination.SQLServer2005LimitHandler, var1362=r3, var2713=r4, var656=null_type, var1363=$r0, var651=r5, var3861=java.util.regex.Pattern, var1057=$r1, var1212=java.util.regex.Matcher, var2452=r2, var2038=r6, var3499=$z0, var432=$r7}
; {org.hibernate.dialect.pagination.SQLServer2005LimitHandler=var393, r3=var1362, r4=var2713, null_type=var656, $r0=var1363, r5=var651, java.util.regex.Pattern=var3861, $r1=var1057, java.util.regex.Matcher=var1212, r2=var2452, r6=var2038, $z0=var3499, $r7=var432}
;seq <java.lang.String: java.lang.String replaceFirst(java.lang.String,java.lang.String)>;	<java.lang.String: java.lang.String trim()>;	<java.lang.String: java.lang.String trim()>
;cnt {"<java.lang.String: java.lang.String replaceFirst(java.lang.String,java.lang.String)>": 1,"<java.lang.String: java.lang.String trim()>": 2}
;stmts r3 := @this: org.hibernate.dialect.pagination.SQLServer2005LimitHandler;	r4 := @parameter0: java.lang.String;	$r0 = virtualinvoke r4.<java.lang.String: java.lang.String replaceFirst(java.lang.String,java.lang.String)>("(\\((.)*\\))", "");	r5 = virtualinvoke $r0.<java.lang.String: java.lang.String trim()>();	$r1 = <org.hibernate.dialect.pagination.SQLServer2005LimitHandler: java.util.regex.Pattern ALIAS_PATTERN>;	r2 = virtualinvoke $r1.<java.util.regex.Pattern: java.util.regex.Matcher matcher(java.lang.CharSequence)>(r5);	r6 = null;	$z0 = virtualinvoke r2.<java.util.regex.Matcher: boolean find()>();	if $z0 == 0 goto (branch);	if r6 == null goto $r7 = null;	$r7 = virtualinvoke r6.<java.lang.String: java.lang.String trim()>();	goto [?= return $r7];	return $r7
;block_num 4