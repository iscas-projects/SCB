(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3148 0)
(declare-sort var1519 0)
(declare-sort var893 0)
(declare-sort var1046 0)
(declare-sort var1937 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun is-whitespace ((char String)) Bool (< (str.to_code char) 33))
(define-fun-rec trim-left ((s String)) String (ite (= s "") "" (ite (is-whitespace (str.substr s 0 1)) (trim-left (str.substr s 1 (- (str.len s) 1))) s)))
(define-fun-rec trim-right ((s String)) String (ite (= s "") "" (ite (is-whitespace (str.substr s (- (str.len s) 1) 1)) (trim-right (str.substr s 0 (- (str.len s) 1))) s)))
(define-fun trim/-847153721 ((s String)) String (trim-right (trim-left s)))
(declare-fun lineIsComment/1063150063 (var3148 String) Bool)
(declare-fun matcher/468719934 (var893 String) var1046)
(define-fun cast-from-String-to-String ((arg String)) String arg)
(declare-fun find/1809080823 (var1046) Bool)
(declare-fun println/148980183 (var3148 var1937) void)
(declare-fun cast-from-String-to-var1937 (String) var1937)
(declare-const null-var3148 var3148)
(declare-const null-String String)
(declare-const var3148-DELIMITER_PATTERN var893)
(declare-const var2321 var3148) ; Statement: r2 := @this: org.apache.ibatis.jdbc.ScriptRunner 
(assert (not (= var2321 null-var3148)))
(declare-const var1680 String) ; Statement: r3 := @parameter0: java.lang.StringBuilder 
(assert (not (= var1680 null-String)))
(declare-const var2172 String) ; Statement: r0 := @parameter1: java.lang.String 
(assert (not (= var2172 null-String)))
(assert true)
(define-const var2724 String (trim/-847153721 var2172)) ; Statement: r1 = virtualinvoke r0.<java.lang.String: java.lang.String trim()>() 
(assert true)
(define-const var2511 Bool (lineIsComment/1063150063 var2321 var2724)) ; Statement: $z0 = specialinvoke r2.<org.apache.ibatis.jdbc.ScriptRunner: boolean lineIsComment(java.lang.String)>(r1) 
 ; Statement: if $z0 == 0 goto $z1 = specialinvoke r2.<org.apache.ibatis.jdbc.ScriptRunner: boolean commandReadyToExecute(java.lang.String)>(r1) 
(assert (not (= (ite var2511 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var1297 var893 var3148-DELIMITER_PATTERN) ; Statement: $r8 = <org.apache.ibatis.jdbc.ScriptRunner: java.util.regex.Pattern DELIMITER_PATTERN> 
(assert true)
(define-const var3816 var1046 (matcher/468719934 var1297 (cast-from-String-to-String var2724))) ; Statement: r9 = virtualinvoke $r8.<java.util.regex.Pattern: java.util.regex.Matcher matcher(java.lang.CharSequence)>(r1) 
(assert true)
(define-const var2560 Bool (find/1809080823 var3816)) ; Statement: $z2 = virtualinvoke r9.<java.util.regex.Matcher: boolean find()>() 
 ; Statement: if $z2 == 0 goto specialinvoke r2.<org.apache.ibatis.jdbc.ScriptRunner: void println(java.lang.Object)>(r1) 
(assert (= (ite var2560 1 0) 0)) ; Cond: $z2 == 0 
(assert true)
;(assert (println/148980183 var2321 (cast-from-String-to-var1937 var2724))) ; Statement: specialinvoke r2.<org.apache.ibatis.jdbc.ScriptRunner: void println(java.lang.Object)>(r1) 

(declare-const var2321!1 var3148)
(declare-const var2724!1 String)
 ; Statement: goto [?= return] 
(assert true) ; Non Conditional
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {trim/-847153721=([java.lang.String], java.lang.String), lineIsComment/1063150063=([org.apache.ibatis.jdbc.ScriptRunner, java.lang.String], boolean), matcher/468719934=([java.util.regex.Pattern, java.lang.CharSequence], java.util.regex.Matcher), cast-from-String-to-String=([java.lang.String], java.lang.CharSequence), find/1809080823=([java.util.regex.Matcher], boolean), println/148980183=([org.apache.ibatis.jdbc.ScriptRunner, java.lang.Object], void), cast-from-String-to-var1937=([java.lang.String], java.lang.Object)}
; {var3148=org.apache.ibatis.jdbc.ScriptRunner, var2321=r2, var1680=r3, var2172=r0, var1519=null_type, var2724=r1, var2511=$z0, var893=java.util.regex.Pattern, var1297=$r8, var1046=java.util.regex.Matcher, var3816=r9, var2560=$z2, var1937=java.lang.Object}
; {org.apache.ibatis.jdbc.ScriptRunner=var3148, r2=var2321, r3=var1680, r0=var2172, null_type=var1519, r1=var2724, $z0=var2511, java.util.regex.Pattern=var893, $r8=var1297, java.util.regex.Matcher=var1046, r9=var3816, $z2=var2560, java.lang.Object=var1937}
;seq <java.lang.String: java.lang.String trim()>
;cnt {"<java.lang.String: java.lang.String trim()>": 1}
;stmts r2 := @this: org.apache.ibatis.jdbc.ScriptRunner;	r3 := @parameter0: java.lang.StringBuilder;	r0 := @parameter1: java.lang.String;	r1 = virtualinvoke r0.<java.lang.String: java.lang.String trim()>();	$z0 = specialinvoke r2.<org.apache.ibatis.jdbc.ScriptRunner: boolean lineIsComment(java.lang.String)>(r1);	if $z0 == 0 goto $z1 = specialinvoke r2.<org.apache.ibatis.jdbc.ScriptRunner: boolean commandReadyToExecute(java.lang.String)>(r1);	$r8 = <org.apache.ibatis.jdbc.ScriptRunner: java.util.regex.Pattern DELIMITER_PATTERN>;	r9 = virtualinvoke $r8.<java.util.regex.Pattern: java.util.regex.Matcher matcher(java.lang.CharSequence)>(r1);	$z2 = virtualinvoke r9.<java.util.regex.Matcher: boolean find()>();	if $z2 == 0 goto specialinvoke r2.<org.apache.ibatis.jdbc.ScriptRunner: void println(java.lang.Object)>(r1);	specialinvoke r2.<org.apache.ibatis.jdbc.ScriptRunner: void println(java.lang.Object)>(r1);	goto [?= return];	return
;block_num 4