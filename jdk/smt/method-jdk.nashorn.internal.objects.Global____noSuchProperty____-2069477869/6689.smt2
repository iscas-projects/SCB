(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1830 0)
(declare-sort var3446 0)
(declare-sort var889 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var3446_instance/-1028431714 () var3446)
(declare-fun currentContext/-1050779056 (var3446) var889)
(declare-fun toString/-522406933 (var1830) String)
(declare-const null-var1830 var1830)
(declare-const null-var889 var889)
(declare-const var2013 var1830) ; Statement: r6 := @parameter0: java.lang.Object 
(assert (not (= var2013 null-var1830)))
(declare-const var1979 var1830) ; Statement: r2 := @parameter1: java.lang.Object 
(assert (not (= var1979 null-var1830)))
(define-const var1573 var3446 var3446_instance/-1028431714) ; Statement: r0 = staticinvoke <jdk.nashorn.internal.objects.Global: jdk.nashorn.internal.objects.Global instance()>() 
(assert true)
(define-const var2538 var889 (currentContext/-1050779056 var1573)) ; Statement: r1 = specialinvoke r0.<jdk.nashorn.internal.objects.Global: javax.script.ScriptContext currentContext()>() 
(assert true)
(define-const var1828 String (toString/-522406933 var1979)) ; Statement: r3 = virtualinvoke r2.<java.lang.Object: java.lang.String toString()>() 
 ; Statement: if r1 == null goto $r4 = "context" 
(assert (= var2538 null-var889)) ; Cond: r1 == null 
(define-const var2913 String "context") ; Statement: $r4 = "context" 
(assert true)
(define-const var838 Bool (= var2913 var1828)) ; Statement: $z0 = virtualinvoke $r4.<java.lang.String: boolean equals(java.lang.Object)>(r3) 
 ; Statement: if $z0 == 0 goto $r5 = "engine" 
(assert (not (= (ite var838 1 0) 0))) ; Negate: Cond: $z0 == 0  
 ; Statement: return r1 
(check-sat)
(get-model)
(get-unsat-core)
; {var3446_instance/-1028431714=([], jdk.nashorn.internal.objects.Global), currentContext/-1050779056=([jdk.nashorn.internal.objects.Global], javax.script.ScriptContext), toString/-522406933=([java.lang.Object], java.lang.String)}
; {var1830=java.lang.Object, var2013=r6, var1979=r2, var3446=jdk.nashorn.internal.objects.Global, var1573=r0, var889=javax.script.ScriptContext, var2538=r1, var1828=r3, var2913=$r4, var838=$z0}
; {java.lang.Object=var1830, r6=var2013, r2=var1979, jdk.nashorn.internal.objects.Global=var3446, r0=var1573, javax.script.ScriptContext=var889, r1=var2538, r3=var1828, $r4=var2913, $z0=var838}
;seq <java.lang.Object: java.lang.String toString()>;	<java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r6 := @parameter0: java.lang.Object;	r2 := @parameter1: java.lang.Object;	r0 = staticinvoke <jdk.nashorn.internal.objects.Global: jdk.nashorn.internal.objects.Global instance()>();	r1 = specialinvoke r0.<jdk.nashorn.internal.objects.Global: javax.script.ScriptContext currentContext()>();	r3 = virtualinvoke r2.<java.lang.Object: java.lang.String toString()>();	if r1 == null goto $r4 = "context";	$r4 = "context";	$z0 = virtualinvoke $r4.<java.lang.String: boolean equals(java.lang.Object)>(r3);	if $z0 == 0 goto $r5 = "engine";	return r1
;block_num 3