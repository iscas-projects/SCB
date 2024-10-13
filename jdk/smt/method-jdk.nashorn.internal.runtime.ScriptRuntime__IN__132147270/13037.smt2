(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var727 0)
(declare-sort var2806 0)
(declare-sort var1847 0)
(declare-sort var1147 0)
(declare-sort var2169 0)
(declare-sort var602 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var2806_ofNoFunction/-1091342154 (var727) var2806)
(declare-fun arr-String-init () (Array Int String))
(declare-fun toString/1761020461 (var1847) String)
(declare-fun cast-from-var2806-to-var1847 (var2806) var1847)
(declare-fun toLowerCase/1946809429 (String var1147) String)
(declare-fun var602_typeError/-1487832051 (String (Array Int String)) var2169)
(declare-const null-var727 var727)
(declare-const var2806-OBJECT var2806)
(declare-const var1147-ENGLISH var1147)
(declare-const null-__Array__Int__String__ (Array Int String))
(declare-const var255 var727) ; Statement: r8 := @parameter0: java.lang.Object 
(assert (not (= var255 null-var727)))
(declare-const var3034 var727) ; Statement: r0 := @parameter1: java.lang.Object 
(assert (not (= var3034 null-var727)))
(define-const var2040 var2806 (var2806_ofNoFunction/-1091342154 var3034)) ; Statement: r1 = staticinvoke <jdk.nashorn.internal.runtime.JSType: jdk.nashorn.internal.runtime.JSType ofNoFunction(java.lang.Object)>(r0) 
(define-const var2583 var2806 var2806-OBJECT) ; Statement: $r2 = <jdk.nashorn.internal.runtime.JSType: jdk.nashorn.internal.runtime.JSType OBJECT> 
 ; Statement: if r1 != $r2 goto $r3 = newarray (java.lang.String)[1] 
(assert (not (= var2040 var2583))) ; Cond: r1 != $r2 
(define-const var1573 (Array Int String) arr-String-init) ; Statement: $r3 = newarray (java.lang.String)[1] 
(assert true)
(define-const var3789 String (toString/1761020461 (cast-from-var2806-to-var1847 var2040))) ; Statement: $r5 = virtualinvoke r1.<jdk.nashorn.internal.runtime.JSType: java.lang.String toString()>() 
(define-const var3249 var1147 var1147-ENGLISH) ; Statement: $r4 = <java.util.Locale: java.util.Locale ENGLISH> 
(assert true)
(define-const var1988 String (toLowerCase/1946809429 var3789 var3249)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.String: java.lang.String toLowerCase(java.util.Locale)>($r4) 
(declare-const var1573!1 (Array Int String))
(assert (not (= var1573!1 null-__Array__Int__String__)))
(assert (= (select var1573!1 0) var1988)) ; Statement: $r3[0] = $r6 
(define-const var404 var2169 (var602_typeError/-1487832051 "in.with.non.object" var1573!1)) ; Statement: $r7 = staticinvoke <jdk.nashorn.internal.runtime.ECMAErrors: jdk.nashorn.internal.runtime.ECMAException typeError(java.lang.String,java.lang.String[])>("in.with.non.object", $r3) 
 ; Statement: throw $r7 
(check-sat)
(get-model)
(get-unsat-core)
; {var2806_ofNoFunction/-1091342154=([java.lang.Object], jdk.nashorn.internal.runtime.JSType), arr-String-init=([], java.lang.String[]), toString/1761020461=([java.lang.Enum], java.lang.String), cast-from-var2806-to-var1847=([jdk.nashorn.internal.runtime.JSType], java.lang.Enum), toLowerCase/1946809429=([java.lang.String, java.util.Locale], java.lang.String), var602_typeError/-1487832051=([java.lang.String, java.lang.String[]], jdk.nashorn.internal.runtime.ECMAException)}
; {var727=java.lang.Object, var255=r8, var3034=r0, var2806=jdk.nashorn.internal.runtime.JSType, var2040=r1, var2583=$r2, var1573=$r3, var1847=java.lang.Enum, var3789=$r5, var1147=java.util.Locale, var3249=$r4, var1988=$r6, var2169=jdk.nashorn.internal.runtime.ECMAException, var602=jdk.nashorn.internal.runtime.ECMAErrors, var404=$r7}
; {java.lang.Object=var727, r8=var255, r0=var3034, jdk.nashorn.internal.runtime.JSType=var2806, r1=var2040, $r2=var2583, $r3=var1573, java.lang.Enum=var1847, $r5=var3789, java.util.Locale=var1147, $r4=var3249, $r6=var1988, jdk.nashorn.internal.runtime.ECMAException=var2169, jdk.nashorn.internal.runtime.ECMAErrors=var602, $r7=var404}
;seq <java.lang.Enum: java.lang.String toString()>;	<java.lang.String: java.lang.String toLowerCase(java.util.Locale)>
;cnt {"<java.lang.String: java.lang.String toLowerCase(java.util.Locale)>": 1}
;stmts r8 := @parameter0: java.lang.Object;	r0 := @parameter1: java.lang.Object;	r1 = staticinvoke <jdk.nashorn.internal.runtime.JSType: jdk.nashorn.internal.runtime.JSType ofNoFunction(java.lang.Object)>(r0);	$r2 = <jdk.nashorn.internal.runtime.JSType: jdk.nashorn.internal.runtime.JSType OBJECT>;	if r1 != $r2 goto $r3 = newarray (java.lang.String)[1];	$r3 = newarray (java.lang.String)[1];	$r5 = virtualinvoke r1.<jdk.nashorn.internal.runtime.JSType: java.lang.String toString()>();	$r4 = <java.util.Locale: java.util.Locale ENGLISH>;	$r6 = virtualinvoke $r5.<java.lang.String: java.lang.String toLowerCase(java.util.Locale)>($r4);	$r3[0] = $r6;	$r7 = staticinvoke <jdk.nashorn.internal.runtime.ECMAErrors: jdk.nashorn.internal.runtime.ECMAException typeError(java.lang.String,java.lang.String[])>("in.with.non.object", $r3);	throw $r7
;block_num 2