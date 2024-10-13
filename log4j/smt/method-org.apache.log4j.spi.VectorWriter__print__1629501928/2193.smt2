(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3362 0)
(declare-sort var915 0)
(declare-sort var237 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun v/187381314 (var3362) var915)
(declare-fun String-init () String)
(declare-fun <init>/-915723298 (String (Array Int Int)) void)
(declare-fun addElement/-1717065458 (var915 var237) void)
(declare-fun cast-from-String-to-var237 (String) var237)
(declare-const null-var3362 var3362)
(declare-const null-__Array__Int__Int__ (Array Int Int))
(declare-const var1419 var3362) ; Statement: r0 := @this: org.apache.log4j.spi.VectorWriter 
(assert (not (= var1419 null-var3362)))
(declare-const var2997 (Array Int Int)) ; Statement: r2 := @parameter0: char[] 
(assert (not (= var2997 null-__Array__Int__Int__)))
(define-const var1975 var915 (v/187381314 var1419)) ; Statement: $r3 = r0.<org.apache.log4j.spi.VectorWriter: java.util.Vector v> 
(define-const var1220 String String-init) ; Statement: $r1 = new java.lang.String 
(assert true)
;(assert (<init>/-915723298 var1220 var2997)) ; Statement: specialinvoke $r1.<java.lang.String: void <init>(char[])>(r2) 

(declare-const var1220!1 String)
(declare-const var2997!1 (Array Int Int))
(assert true)
;(assert (addElement/-1717065458 var1975 (cast-from-String-to-var237 var1220!1))) ; Statement: virtualinvoke $r3.<java.util.Vector: void addElement(java.lang.Object)>($r1) 

(declare-const var1975!1 var915)
(declare-const var1220!2 String)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {v/187381314=([org.apache.log4j.spi.VectorWriter], java.util.Vector), String-init=([], java.lang.String), <init>/-915723298=([java.lang.String, char[]], void), addElement/-1717065458=([java.util.Vector, java.lang.Object], void), cast-from-String-to-var237=([java.lang.String], java.lang.Object)}
; {var3362=org.apache.log4j.spi.VectorWriter, var1419=r0, var2997=r2, var915=java.util.Vector, var1975=$r3, var1220=$r1, var237=java.lang.Object}
; {org.apache.log4j.spi.VectorWriter=var3362, r0=var1419, r2=var2997, java.util.Vector=var915, $r3=var1975, $r1=var1220, java.lang.Object=var237}
;seq <java.lang.String: void <init>(char[])>
;cnt {"<java.lang.String: void <init>(char[])>": 1}
;stmts r0 := @this: org.apache.log4j.spi.VectorWriter;	r2 := @parameter0: char[];	$r3 = r0.<org.apache.log4j.spi.VectorWriter: java.util.Vector v>;	$r1 = new java.lang.String;	specialinvoke $r1.<java.lang.String: void <init>(char[])>(r2);	virtualinvoke $r3.<java.util.Vector: void addElement(java.lang.Object)>($r1);	return
;block_num 1