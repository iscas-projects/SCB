(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1237 0)
(declare-sort var541 0)
(declare-sort var1049 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String_toString/-1426662429 (String) String)
(declare-fun var1049_write/165508493 (String var1237 var541) void)
(declare-const null-String String)
(declare-const null-var1237 var1237)
(declare-const null-var541 var541)
(declare-const var3074 String) ; Statement: r0 := @parameter0: java.lang.CharSequence 
(assert (not (= var3074 null-String)))
(declare-const var2579 var1237) ; Statement: r1 := @parameter1: java.io.OutputStream 
(assert (not (= var2579 null-var1237)))
(declare-const var3608 var541) ; Statement: r2 := @parameter2: java.nio.charset.Charset 
(assert (not (= var3608 null-var541)))
 ; Statement: if r0 == null goto return 
(assert (not (= var3074 null-String))) ; Negate: Cond: r0 == null  
(define-const var2757 String (String_toString/-1426662429 var3074)) ; Statement: $r3 = interfaceinvoke r0.<java.lang.CharSequence: java.lang.String toString()>() 
;(assert (var1049_write/165508493 var2757 var2579 var3608)) ; Statement: staticinvoke <org.apache.commons.io.IOUtils: void write(java.lang.String,java.io.OutputStream,java.nio.charset.Charset)>($r3, r1, r2) 

(declare-const var2757!1 String)
(declare-const var2579!1 var1237)
(declare-const var3608!1 var541)
(assert true) ; Non Conditional
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {String_toString/-1426662429=([java.lang.CharSequence], java.lang.String), var1049_write/165508493=([java.lang.String, java.io.OutputStream, java.nio.charset.Charset], void)}
; {var3074=r0, var1237=java.io.OutputStream, var2579=r1, var541=java.nio.charset.Charset, var3608=r2, var2757=$r3, var1049=org.apache.commons.io.IOUtils}
; {r0=var3074, java.io.OutputStream=var1237, r1=var2579, java.nio.charset.Charset=var541, r2=var3608, $r3=var2757, org.apache.commons.io.IOUtils=var1049}
;seq <java.lang.CharSequence: java.lang.String toString()>
;cnt {"<java.lang.CharSequence: java.lang.String toString()>": 1}
;stmts r0 := @parameter0: java.lang.CharSequence;	r1 := @parameter1: java.io.OutputStream;	r2 := @parameter2: java.nio.charset.Charset;	if r0 == null goto return;	$r3 = interfaceinvoke r0.<java.lang.CharSequence: java.lang.String toString()>();	staticinvoke <org.apache.commons.io.IOUtils: void write(java.lang.String,java.io.OutputStream,java.nio.charset.Charset)>($r3, r1, r2);	return
;block_num 3