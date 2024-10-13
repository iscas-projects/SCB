(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var92 0)
(declare-sort var2210 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun length/-134980193 ((s String)) Int (str.len s))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var92 var92)
(declare-const null-String String)
(declare-const var464 var92) ; Statement: r13 := @this: freemarker.core.ParseException 
(assert (not (= var464 null-var92)))
(declare-const var1735 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var1735 null-String)))
(define-const var1408 String String-init) ; Statement: $r14 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1408)) ; Statement: specialinvoke $r14.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1408!1 String)
(assert (= var1408!1 ""))
(define-const var3263 Int 0) ; Statement: i6 = 0 
(assert true) ; Non Conditional
(assert true)
(define-const var3904 Int (length/-134980193 var1735)) ; Statement: $i0 = virtualinvoke r1.<java.lang.String: int length()>() 
 ; Statement: if i6 >= $i0 goto $r2 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert (>= var3263 var3904)) ; Cond: i6 >= $i0 
(assert true)
(define-const var2816 String (toString/-2075883882 var1408!1)) ; Statement: $r2 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r2 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), length/-134980193=([java.lang.String], int), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var92=freemarker.core.ParseException, var464=r13, var1735=r1, var2210=null_type, var1408=$r14, var3263=i6, var3904=$i0, var2816=$r2}
; {freemarker.core.ParseException=var92, r13=var464, r1=var1735, null_type=var2210, $r14=var1408, i6=var3263, $i0=var3904, $r2=var2816}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.String: int length()>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.String: int length()>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r13 := @this: freemarker.core.ParseException;	r1 := @parameter0: java.lang.String;	$r14 = new java.lang.StringBuilder;	specialinvoke $r14.<java.lang.StringBuilder: void <init>()>();	i6 = 0;	$i0 = virtualinvoke r1.<java.lang.String: int length()>();	if i6 >= $i0 goto $r2 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.String toString()>();	$r2 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.String toString()>();	return $r2
;block_num 3