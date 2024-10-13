(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var751 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun getLength-Arr-ClassObject-1 ((Array Int ClassObject)) Int)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var751 var751)
(declare-const null-__Array__Int__ClassObject__ (Array Int ClassObject))
(declare-const var2511 var751) ; Statement: r5 := @this: org.junit.internal.runners.ErrorReportingRunner 
(assert (not (= var2511 null-var751)))
(declare-const var2950 (Array Int ClassObject)) ; Statement: r1 := @parameter0: java.lang.Class[] 
(assert (not (= var2950 null-__Array__Int__ClassObject__)))
(define-const var1608 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1608)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1608!1 String)
(assert (= var1608!1 ""))
(define-const var1060 Int (getLength-Arr-ClassObject-1 var2950)) ; Statement: i0 = lengthof r1 
(define-const var3262 Int 0) ; Statement: i2 = 0 
(assert true) ; Non Conditional
 ; Statement: if i2 >= i0 goto $r2 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert (>= var3262 var1060)) ; Cond: i2 >= i0 
(assert true)
(define-const var3746 String (toString/-2075883882 var1608!1)) ; Statement: $r2 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r2 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), getLength-Arr-ClassObject-1=([java.lang.Class[]], int), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var751=org.junit.internal.runners.ErrorReportingRunner, var2511=r5, var2950=r1, var1608=$r0, var1060=i0, var3262=i2, var3746=$r2}
; {org.junit.internal.runners.ErrorReportingRunner=var751, r5=var2511, r1=var2950, $r0=var1608, i0=var1060, i2=var3262, $r2=var3746}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r5 := @this: org.junit.internal.runners.ErrorReportingRunner;	r1 := @parameter0: java.lang.Class[];	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	i0 = lengthof r1;	i2 = 0;	if i2 >= i0 goto $r2 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>();	$r2 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>();	return $r2
;block_num 3