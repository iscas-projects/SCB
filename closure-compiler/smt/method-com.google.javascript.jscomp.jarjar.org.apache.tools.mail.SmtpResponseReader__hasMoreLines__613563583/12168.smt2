(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2656 0)
(declare-sort var3644 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-const null-var2656 var2656)
(declare-const null-String String)
(declare-const var0 var2656) ; Statement: r1 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.mail.SmtpResponseReader 
(assert (not (= var0 null-var2656)))
(declare-const var2917 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var2917 null-String)))
(assert true)
(define-const var1179 Int (length/-134980193 var2917)) ; Statement: $i0 = virtualinvoke r0.<java.lang.String: int length()>() 
 ; Statement: if $i0 <= 3 goto $z0 = 0 
(assert (<= var1179 3)) ; Cond: $i0 <= 3 
(define-const var2109 Bool (ite (= 1 0) true false)) ; Statement: $z0 = 0 
(assert true) ; Non Conditional
 ; Statement: return $z0 
(check-sat)
(get-model)
(get-unsat-core)
; {length/-134980193=([java.lang.String], int)}
; {var2656=com.google.javascript.jscomp.jarjar.org.apache.tools.mail.SmtpResponseReader, var0=r1, var2917=r0, var3644=null_type, var1179=$i0, var2109=$z0}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.mail.SmtpResponseReader=var2656, r1=var0, r0=var2917, null_type=var3644, $i0=var1179, $z0=var2109}
;seq <java.lang.String: int length()>
;cnt {"<java.lang.String: int length()>": 1}
;stmts r1 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.mail.SmtpResponseReader;	r0 := @parameter0: java.lang.String;	$i0 = virtualinvoke r0.<java.lang.String: int length()>();	if $i0 <= 3 goto $z0 = 0;	$z0 = 0;	return $z0
;block_num 3