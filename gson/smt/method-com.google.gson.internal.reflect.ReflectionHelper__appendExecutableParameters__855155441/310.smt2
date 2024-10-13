(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1024 0)
(declare-sort var1825 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun append/-1166366385 (String Int) String)
(declare-fun cast-from-var1024-to-var1825 (var1024) var1825)
(declare-fun getParameterTypes/938597008 (var1825) (Array Int ClassObject))
(declare-fun getLength-Arr-ClassObject-1 ((Array Int ClassObject)) Int)
(declare-const null-var1024 var1024)
(declare-const null-String String)
(declare-const var3533 var1024) ; Statement: r1 := @parameter0: java.lang.reflect.AccessibleObject 
(assert (not (= var3533 null-var1024)))
(declare-const var1255 String) ; Statement: r0 := @parameter1: java.lang.StringBuilder 
(assert (not (= var1255 null-String)))
(assert true)
;(assert (append/-1166366385 var1255 40)) ; Statement: virtualinvoke r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(40) 
(declare-const var1255!1 String)
(assert (str.prefixof var1255 var1255!1))
(define-const var2858 Bool false) ; Statement: $z0 = r1 instanceof java.lang.reflect.Method 
 ; Statement: if $z0 == 0 goto $r2 = (java.lang.reflect.Constructor) r1 
(assert (= (ite var2858 1 0) 0)) ; Cond: $z0 == 0 
(define-const var254 var1825 (cast-from-var1024-to-var1825 var3533)) ; Statement: $r2 = (java.lang.reflect.Constructor) r1 
(assert true)
(define-const var2096 (Array Int ClassObject) (getParameterTypes/938597008 var254)) ; Statement: $r7 = virtualinvoke $r2.<java.lang.reflect.Constructor: java.lang.Class[] getParameterTypes()>() 
(assert true) ; Non Conditional
(define-const var3186 (Array Int ClassObject) var2096) ; Statement: r3 = $r7 
(define-const var1451 Int 0) ; Statement: i0 = 0 
(assert true) ; Non Conditional
(define-const var1997 Int (getLength-Arr-ClassObject-1 var3186)) ; Statement: $i1 = lengthof r3 
 ; Statement: if i0 >= $i1 goto virtualinvoke r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(41) 
(assert (>= var1451 var1997)) ; Cond: i0 >= $i1 
(assert true)
;(assert (append/-1166366385 var1255!1 41)) ; Statement: virtualinvoke r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(41) 
(declare-const var1255!2 String)
(assert (str.prefixof var1255!1 var1255!2))
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {append/-1166366385=([java.lang.StringBuilder, char], java.lang.StringBuilder), cast-from-var1024-to-var1825=([java.lang.reflect.AccessibleObject], java.lang.reflect.Constructor), getParameterTypes/938597008=([java.lang.reflect.Constructor], java.lang.Class[]), getLength-Arr-ClassObject-1=([java.lang.Class[]], int)}
; {var1024=java.lang.reflect.AccessibleObject, var3533=r1, var1255=r0, var2858=$z0, var1825=java.lang.reflect.Constructor, var254=$r2, var2096=$r7, var3186=r3, var1451=i0, var1997=$i1}
; {java.lang.reflect.AccessibleObject=var1024, r1=var3533, r0=var1255, $z0=var2858, java.lang.reflect.Constructor=var1825, $r2=var254, $r7=var2096, r3=var3186, i0=var1451, $i1=var1997}
;seq <java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>
;cnt {"<java.lang.StringBuilder: java.lang.StringBuilder append(char)>": 2}
;stmts r1 := @parameter0: java.lang.reflect.AccessibleObject;	r0 := @parameter1: java.lang.StringBuilder;	virtualinvoke r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(40);	$z0 = r1 instanceof java.lang.reflect.Method;	if $z0 == 0 goto $r2 = (java.lang.reflect.Constructor) r1;	$r2 = (java.lang.reflect.Constructor) r1;	$r7 = virtualinvoke $r2.<java.lang.reflect.Constructor: java.lang.Class[] getParameterTypes()>();	r3 = $r7;	i0 = 0;	$i1 = lengthof r3;	if i0 >= $i1 goto virtualinvoke r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(41);	virtualinvoke r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(41);	return
;block_num 5