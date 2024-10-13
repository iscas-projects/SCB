(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2289 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun toString/-896486300 (var2289 String) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var2289 var2289)
(declare-const var58 var2289) ; Statement: r0 := @this: jdk.nashorn.internal.ir.LocalVariableConversion 
(assert (not (= var58 null-var2289)))
(define-const var3498 String String-init) ; Statement: $r1 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3498)) ; Statement: specialinvoke $r1.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3498!1 String)
(assert (= var3498!1 ""))
(assert true)
(define-const var2937 String (toString/-896486300 var58 var3498!1)) ; Statement: $r2 = virtualinvoke r0.<jdk.nashorn.internal.ir.LocalVariableConversion: java.lang.StringBuilder toString(java.lang.StringBuilder)>($r1) 
(assert true)
(define-const var3429 String (toString/-2075883882 var2937)) ; Statement: $r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r3 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), toString/-896486300=([jdk.nashorn.internal.ir.LocalVariableConversion, java.lang.StringBuilder], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var2289=jdk.nashorn.internal.ir.LocalVariableConversion, var58=r0, var3498=$r1, var2937=$r2, var3429=$r3}
; {jdk.nashorn.internal.ir.LocalVariableConversion=var2289, r0=var58, $r1=var3498, $r2=var2937, $r3=var3429}
;seq <java.lang.StringBuilder: void <init>()>;	<jdk.nashorn.internal.ir.LocalVariableConversion: java.lang.StringBuilder toString(java.lang.StringBuilder)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: jdk.nashorn.internal.ir.LocalVariableConversion;	$r1 = new java.lang.StringBuilder;	specialinvoke $r1.<java.lang.StringBuilder: void <init>()>();	$r2 = virtualinvoke r0.<jdk.nashorn.internal.ir.LocalVariableConversion: java.lang.StringBuilder toString(java.lang.StringBuilder)>($r1);	$r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.String toString()>();	return $r3
;block_num 1