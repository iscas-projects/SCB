(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1217 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String_toString/-1426662429 (String) String)
(declare-fun getBytes/-163691139 (String var1217) (Array Int Int))
(declare-fun getLength-Arr-Int-1 ((Array Int Int)) Int)
(declare-const null-String String)
(declare-const null-var1217 var1217)
(declare-const var2942 String) ; Statement: r0 := @parameter0: java.lang.CharSequence 
(assert (not (= var2942 null-String)))
(declare-const var2433 var1217) ; Statement: r1 := @parameter1: java.nio.charset.Charset 
(assert (not (= var2433 null-var1217)))
 ; Statement: if r0 != null goto $r2 = interfaceinvoke r0.<java.lang.CharSequence: java.lang.String toString()>() 
(assert (not (= var2942 null-String))) ; Cond: r0 != null 
(define-const var931 String (String_toString/-1426662429 var2942)) ; Statement: $r2 = interfaceinvoke r0.<java.lang.CharSequence: java.lang.String toString()>() 
(assert true)
(define-const var408 (Array Int Int) (getBytes/-163691139 var931 var2433)) ; Statement: $r3 = virtualinvoke $r2.<java.lang.String: byte[] getBytes(java.nio.charset.Charset)>(r1) 
(define-const var1761 Int (getLength-Arr-Int-1 var408)) ; Statement: $i0 = lengthof $r3 
(assert true) ; Non Conditional
 ; Statement: return $i0 
(check-sat)
(get-model)
(get-unsat-core)
; {String_toString/-1426662429=([java.lang.CharSequence], java.lang.String), getBytes/-163691139=([java.lang.String, java.nio.charset.Charset], byte[]), getLength-Arr-Int-1=([byte[]], int)}
; {var2942=r0, var1217=java.nio.charset.Charset, var2433=r1, var931=$r2, var408=$r3, var1761=$i0}
; {r0=var2942, java.nio.charset.Charset=var1217, r1=var2433, $r2=var931, $r3=var408, $i0=var1761}
;seq <java.lang.CharSequence: java.lang.String toString()>;	<java.lang.String: byte[] getBytes(java.nio.charset.Charset)>
;cnt {"<java.lang.CharSequence: java.lang.String toString()>": 1,"<java.lang.String: byte[] getBytes(java.nio.charset.Charset)>": 1}
;stmts r0 := @parameter0: java.lang.CharSequence;	r1 := @parameter1: java.nio.charset.Charset;	if r0 != null goto $r2 = interfaceinvoke r0.<java.lang.CharSequence: java.lang.String toString()>();	$r2 = interfaceinvoke r0.<java.lang.CharSequence: java.lang.String toString()>();	$r3 = virtualinvoke $r2.<java.lang.String: byte[] getBytes(java.nio.charset.Charset)>(r1);	$i0 = lengthof $r3;	return $i0
;block_num 3