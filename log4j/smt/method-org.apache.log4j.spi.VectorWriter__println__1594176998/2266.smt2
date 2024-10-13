(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3130 0)
(declare-sort var1423 0)
(declare-sort var2329 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun v/187381314 (var3130) var1423)
(declare-fun String-init () String)
(declare-fun <init>/-915723298 (String (Array Int Int)) void)
(declare-fun addElement/-1717065458 (var1423 var2329) void)
(declare-fun cast-from-String-to-var2329 (String) var2329)
(declare-const null-var3130 var3130)
(declare-const null-__Array__Int__Int__ (Array Int Int))
(declare-const var2176 var3130) ; Statement: r0 := @this: org.apache.log4j.spi.VectorWriter 
(assert (not (= var2176 null-var3130)))
(declare-const var1187 (Array Int Int)) ; Statement: r2 := @parameter0: char[] 
(assert (not (= var1187 null-__Array__Int__Int__)))
(define-const var1601 var1423 (v/187381314 var2176)) ; Statement: $r3 = r0.<org.apache.log4j.spi.VectorWriter: java.util.Vector v> 
(define-const var2669 String String-init) ; Statement: $r1 = new java.lang.String 
(assert true)
;(assert (<init>/-915723298 var2669 var1187)) ; Statement: specialinvoke $r1.<java.lang.String: void <init>(char[])>(r2) 

(declare-const var2669!1 String)
(declare-const var1187!1 (Array Int Int))
(assert true)
;(assert (addElement/-1717065458 var1601 (cast-from-String-to-var2329 var2669!1))) ; Statement: virtualinvoke $r3.<java.util.Vector: void addElement(java.lang.Object)>($r1) 

(declare-const var1601!1 var1423)
(declare-const var2669!2 String)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {v/187381314=([org.apache.log4j.spi.VectorWriter], java.util.Vector), String-init=([], java.lang.String), <init>/-915723298=([java.lang.String, char[]], void), addElement/-1717065458=([java.util.Vector, java.lang.Object], void), cast-from-String-to-var2329=([java.lang.String], java.lang.Object)}
; {var3130=org.apache.log4j.spi.VectorWriter, var2176=r0, var1187=r2, var1423=java.util.Vector, var1601=$r3, var2669=$r1, var2329=java.lang.Object}
; {org.apache.log4j.spi.VectorWriter=var3130, r0=var2176, r2=var1187, java.util.Vector=var1423, $r3=var1601, $r1=var2669, java.lang.Object=var2329}
;seq <java.lang.String: void <init>(char[])>
;cnt {"<java.lang.String: void <init>(char[])>": 1}
;stmts r0 := @this: org.apache.log4j.spi.VectorWriter;	r2 := @parameter0: char[];	$r3 = r0.<org.apache.log4j.spi.VectorWriter: java.util.Vector v>;	$r1 = new java.lang.String;	specialinvoke $r1.<java.lang.String: void <init>(char[])>(r2);	virtualinvoke $r3.<java.util.Vector: void addElement(java.lang.Object)>($r1);	return
;block_num 1