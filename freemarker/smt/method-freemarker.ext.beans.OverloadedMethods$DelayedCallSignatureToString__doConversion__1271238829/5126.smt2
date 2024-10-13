(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2314 0)
(declare-sort var1310 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun cast-from-var1310-to-__Array__Int__var1310__ (var1310) (Array Int var1310))
(define-fun cast-from-__Array__Int__var1310__-to-__Array__Int__var1310__ ((arg (Array Int var1310))) (Array Int var1310) arg)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun getLength-Arr-var1310-1 ((Array Int var1310)) Int)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var2314 var2314)
(declare-const null-var1310 var1310)
(declare-const var1716 var2314) ; Statement: r5 := @this: freemarker.ext.beans.OverloadedMethods$DelayedCallSignatureToString 
(assert (not (= var1716 null-var2314)))
(declare-const var1530 var1310) ; Statement: r0 := @parameter0: java.lang.Object 
(assert (not (= var1530 null-var1310)))
(define-const var3937 (Array Int var1310) (cast-from-var1310-to-__Array__Int__var1310__ var1530)) ; Statement: $r1 = (java.lang.Object[]) r0 
(define-const var2911 (Array Int var1310) (cast-from-__Array__Int__var1310__-to-__Array__Int__var1310__ var3937)) ; Statement: r2 = (java.lang.Object[]) $r1 
(define-const var1343 String String-init) ; Statement: $r3 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1343)) ; Statement: specialinvoke $r3.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1343!1 String)
(assert (= var1343!1 ""))
(define-const var1707 Int 0) ; Statement: i1 = 0 
(assert true) ; Non Conditional
(define-const var2278 Int (getLength-Arr-var1310-1 var2911)) ; Statement: $i0 = lengthof r2 
 ; Statement: if i1 >= $i0 goto $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert (>= var1707 var2278)) ; Cond: i1 >= $i0 
(assert true)
(define-const var2920 String (toString/-2075883882 var1343!1)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r4 
(check-sat)
(get-model)
(get-unsat-core)
; {cast-from-var1310-to-__Array__Int__var1310__=([java.lang.Object], java.lang.Object[]), cast-from-__Array__Int__var1310__-to-__Array__Int__var1310__=([java.lang.Object[]], java.lang.Object[]), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), getLength-Arr-var1310-1=([java.lang.Object[]], int), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var2314=freemarker.ext.beans.OverloadedMethods$DelayedCallSignatureToString, var1716=r5, var1310=java.lang.Object, var1530=r0, var3937=$r1, var2911=r2, var1343=$r3, var1707=i1, var2278=$i0, var2920=$r4}
; {freemarker.ext.beans.OverloadedMethods$DelayedCallSignatureToString=var2314, r5=var1716, java.lang.Object=var1310, r0=var1530, $r1=var3937, r2=var2911, $r3=var1343, i1=var1707, $i0=var2278, $r4=var2920}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r5 := @this: freemarker.ext.beans.OverloadedMethods$DelayedCallSignatureToString;	r0 := @parameter0: java.lang.Object;	$r1 = (java.lang.Object[]) r0;	r2 = (java.lang.Object[]) $r1;	$r3 = new java.lang.StringBuilder;	specialinvoke $r3.<java.lang.StringBuilder: void <init>()>();	i1 = 0;	$i0 = lengthof r2;	if i1 >= $i0 goto $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.String toString()>();	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.String toString()>();	return $r4
;block_num 3