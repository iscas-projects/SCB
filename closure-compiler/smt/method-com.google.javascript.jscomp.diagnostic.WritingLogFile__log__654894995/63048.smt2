(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2482 0)
(declare-sort var1061 0)
(declare-sort var1905 0)
(declare-sort var2361 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String_format/1339386452 (String (Array Int var1905)) String)
(declare-fun logInternal/-1957974245 (var2482 String) var2361)
(declare-const null-var2482 var2482)
(declare-const null-String String)
(declare-const null-__Array__Int__var1905__ (Array Int var1905))
(declare-const var224 var2482) ; Statement: r0 := @this: com.google.javascript.jscomp.diagnostic.WritingLogFile 
(assert (not (= var224 null-var2482)))
(declare-const var1077 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var1077 null-String)))
(declare-const var1213 (Array Int var1905)) ; Statement: r2 := @parameter1: java.lang.Object[] 
(assert (not (= var1213 null-__Array__Int__var1905__)))
(define-const var2327 String (String_format/1339386452 var1077 var1213)) ; Statement: $r3 = staticinvoke <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>(r1, r2) 
(assert true)
(define-const var1507 var2361 (logInternal/-1957974245 var224 var2327)) ; Statement: $r4 = virtualinvoke r0.<com.google.javascript.jscomp.diagnostic.WritingLogFile: com.google.javascript.jscomp.diagnostic.LogFile logInternal(java.lang.String)>($r3) 
 ; Statement: return $r4 
(check-sat)
(get-model)
(get-unsat-core)
; {String_format/1339386452=([java.lang.String, java.lang.Object[]], java.lang.String), logInternal/-1957974245=([com.google.javascript.jscomp.diagnostic.WritingLogFile, java.lang.String], com.google.javascript.jscomp.diagnostic.LogFile)}
; {var2482=com.google.javascript.jscomp.diagnostic.WritingLogFile, var224=r0, var1077=r1, var1061=null_type, var1905=java.lang.Object, var1213=r2, var2327=$r3, var2361=com.google.javascript.jscomp.diagnostic.LogFile, var1507=$r4}
; {com.google.javascript.jscomp.diagnostic.WritingLogFile=var2482, r0=var224, r1=var1077, null_type=var1061, java.lang.Object=var1905, r2=var1213, $r3=var2327, com.google.javascript.jscomp.diagnostic.LogFile=var2361, $r4=var1507}
;seq <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>
;cnt {"<java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.diagnostic.WritingLogFile;	r1 := @parameter0: java.lang.String;	r2 := @parameter1: java.lang.Object[];	$r3 = staticinvoke <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>(r1, r2);	$r4 = virtualinvoke r0.<com.google.javascript.jscomp.diagnostic.WritingLogFile: com.google.javascript.jscomp.diagnostic.LogFile logInternal(java.lang.String)>($r3);	return $r4
;block_num 1