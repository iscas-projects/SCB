(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3999 0)
(declare-sort var1747 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun append/-1166366385 (String Int) String)
(declare-fun cast-from-var3999-to-var1747 (var3999) var1747)
(declare-fun getParameterTypes/827748249 (var1747) (Array Int ClassObject))
(declare-fun getLength-Arr-ClassObject-1 ((Array Int ClassObject)) Int)
(declare-const null-var3999 var3999)
(declare-const null-String String)
(declare-const var448 var3999) ; Statement: r1 := @parameter0: java.lang.reflect.AccessibleObject 
(assert (not (= var448 null-var3999)))
(declare-const var2068 String) ; Statement: r0 := @parameter1: java.lang.StringBuilder 
(assert (not (= var2068 null-String)))
(assert true)
;(assert (append/-1166366385 var2068 40)) ; Statement: virtualinvoke r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(40) 
(declare-const var2068!1 String)
(assert (str.prefixof var2068 var2068!1))
(define-const var2905 Bool false) ; Statement: $z0 = r1 instanceof java.lang.reflect.Method 
 ; Statement: if $z0 == 0 goto $r2 = (java.lang.reflect.Constructor) r1 
(assert (not (= (ite var2905 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var2839 var1747 (cast-from-var3999-to-var1747 var448)) ; Statement: $r6 = (java.lang.reflect.Method) r1 
(assert true)
(define-const var1835 (Array Int ClassObject) (getParameterTypes/827748249 var2839)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.reflect.Method: java.lang.Class[] getParameterTypes()>() 
 ; Statement: goto [?= r3 = $r7] 
(assert true) ; Non Conditional
(define-const var629 (Array Int ClassObject) var1835) ; Statement: r3 = $r7 
(define-const var1836 Int 0) ; Statement: i0 = 0 
(assert true) ; Non Conditional
(define-const var2714 Int (getLength-Arr-ClassObject-1 var629)) ; Statement: $i1 = lengthof r3 
 ; Statement: if i0 >= $i1 goto virtualinvoke r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(41) 
(assert (>= var1836 var2714)) ; Cond: i0 >= $i1 
(assert true)
;(assert (append/-1166366385 var2068!1 41)) ; Statement: virtualinvoke r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(41) 
(declare-const var2068!2 String)
(assert (str.prefixof var2068!1 var2068!2))
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {append/-1166366385=([java.lang.StringBuilder, char], java.lang.StringBuilder), cast-from-var3999-to-var1747=([java.lang.reflect.AccessibleObject], java.lang.reflect.Method), getParameterTypes/827748249=([java.lang.reflect.Method], java.lang.Class[]), getLength-Arr-ClassObject-1=([java.lang.Class[]], int)}
; {var3999=java.lang.reflect.AccessibleObject, var448=r1, var2068=r0, var2905=$z0, var1747=java.lang.reflect.Method, var2839=$r6, var1835=$r7, var629=r3, var1836=i0, var2714=$i1}
; {java.lang.reflect.AccessibleObject=var3999, r1=var448, r0=var2068, $z0=var2905, java.lang.reflect.Method=var1747, $r6=var2839, $r7=var1835, r3=var629, i0=var1836, $i1=var2714}
;seq <java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>
;cnt {"<java.lang.StringBuilder: java.lang.StringBuilder append(char)>": 2}
;stmts r1 := @parameter0: java.lang.reflect.AccessibleObject;	r0 := @parameter1: java.lang.StringBuilder;	virtualinvoke r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(40);	$z0 = r1 instanceof java.lang.reflect.Method;	if $z0 == 0 goto $r2 = (java.lang.reflect.Constructor) r1;	$r6 = (java.lang.reflect.Method) r1;	$r7 = virtualinvoke $r6.<java.lang.reflect.Method: java.lang.Class[] getParameterTypes()>();	goto [?= r3 = $r7];	r3 = $r7;	i0 = 0;	$i1 = lengthof r3;	if i0 >= $i1 goto virtualinvoke r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(41);	virtualinvoke r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(41);	return
;block_num 5