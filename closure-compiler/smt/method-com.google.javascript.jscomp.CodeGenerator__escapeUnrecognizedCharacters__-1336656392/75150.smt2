(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1140 0)
(declare-sort var750 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun length/-134980193 ((s String)) Int (str.len s))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var1140 var1140)
(declare-const null-String String)
(declare-const var2562 var1140) ; Statement: r3 := @this: com.google.javascript.jscomp.CodeGenerator 
(assert (not (= var2562 null-var1140)))
(declare-const var2448 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var2448 null-String)))
(define-const var1261 String String-init) ; Statement: $r6 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1261)) ; Statement: specialinvoke $r6.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1261!1 String)
(assert (= var1261!1 ""))
(define-const var3508 Int 0) ; Statement: i2 = 0 
(assert true) ; Non Conditional
(assert true)
(define-const var3311 Int (length/-134980193 var2448)) ; Statement: $i0 = virtualinvoke r1.<java.lang.String: int length()>() 
 ; Statement: if i2 >= $i0 goto $r2 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert (>= var3508 var3311)) ; Cond: i2 >= $i0 
(assert true)
(define-const var3320 String (toString/-2075883882 var1261!1)) ; Statement: $r2 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r2 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), length/-134980193=([java.lang.String], int), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var1140=com.google.javascript.jscomp.CodeGenerator, var2562=r3, var2448=r1, var750=null_type, var1261=$r6, var3508=i2, var3311=$i0, var3320=$r2}
; {com.google.javascript.jscomp.CodeGenerator=var1140, r3=var2562, r1=var2448, null_type=var750, $r6=var1261, i2=var3508, $i0=var3311, $r2=var3320}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.String: int length()>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.String: int length()>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r3 := @this: com.google.javascript.jscomp.CodeGenerator;	r1 := @parameter0: java.lang.String;	$r6 = new java.lang.StringBuilder;	specialinvoke $r6.<java.lang.StringBuilder: void <init>()>();	i2 = 0;	$i0 = virtualinvoke r1.<java.lang.String: int length()>();	if i2 >= $i0 goto $r2 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>();	$r2 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>();	return $r2
;block_num 3