(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var566 0)
(declare-sort var314 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String_toString/-1426662429 (String) String)
(declare-fun var314_write/-1569256897 (String var566) void)
(declare-const null-String String)
(declare-const null-var566 var566)
(declare-const var3750 String) ; Statement: r0 := @parameter0: java.lang.CharSequence 
(assert (not (= var3750 null-String)))
(declare-const var2142 var566) ; Statement: r1 := @parameter1: java.io.Writer 
(assert (not (= var2142 null-var566)))
 ; Statement: if r0 == null goto return 
(assert (not (= var3750 null-String))) ; Negate: Cond: r0 == null  
(define-const var2015 String (String_toString/-1426662429 var3750)) ; Statement: $r2 = interfaceinvoke r0.<java.lang.CharSequence: java.lang.String toString()>() 
;(assert (var314_write/-1569256897 var2015 var2142)) ; Statement: staticinvoke <org.apache.commons.io.IOUtils: void write(java.lang.String,java.io.Writer)>($r2, r1) 

(declare-const var2015!1 String)
(declare-const var2142!1 var566)
(assert true) ; Non Conditional
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {String_toString/-1426662429=([java.lang.CharSequence], java.lang.String), var314_write/-1569256897=([java.lang.String, java.io.Writer], void)}
; {var3750=r0, var566=java.io.Writer, var2142=r1, var2015=$r2, var314=org.apache.commons.io.IOUtils}
; {r0=var3750, java.io.Writer=var566, r1=var2142, $r2=var2015, org.apache.commons.io.IOUtils=var314}
;seq <java.lang.CharSequence: java.lang.String toString()>
;cnt {"<java.lang.CharSequence: java.lang.String toString()>": 1}
;stmts r0 := @parameter0: java.lang.CharSequence;	r1 := @parameter1: java.io.Writer;	if r0 == null goto return;	$r2 = interfaceinvoke r0.<java.lang.CharSequence: java.lang.String toString()>();	staticinvoke <org.apache.commons.io.IOUtils: void write(java.lang.String,java.io.Writer)>($r2, r1);	return
;block_num 3