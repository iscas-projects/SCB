(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var119 0)
(declare-sort var1288 0)
(declare-sort var2293 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun v/187381314 (var119) var2293)
(declare-fun String_valueOf/-333372740 (var1288) String)
(declare-fun addElement/-1717065458 (var2293 var1288) void)
(declare-fun cast-from-String-to-var1288 (String) var1288)
(declare-const null-var119 var119)
(declare-const null-var1288 var1288)
(declare-const var2625 var119) ; Statement: r0 := @this: org.apache.log4j.spi.VectorWriter 
(assert (not (= var2625 null-var119)))
(declare-const var355 var1288) ; Statement: r1 := @parameter0: java.lang.Object 
(assert (not (= var355 null-var1288)))
(define-const var3634 var2293 (v/187381314 var2625)) ; Statement: $r2 = r0.<org.apache.log4j.spi.VectorWriter: java.util.Vector v> 
(define-const var1310 String (String_valueOf/-333372740 var355)) ; Statement: $r3 = staticinvoke <java.lang.String: java.lang.String valueOf(java.lang.Object)>(r1) 
(assert true)
;(assert (addElement/-1717065458 var3634 (cast-from-String-to-var1288 var1310))) ; Statement: virtualinvoke $r2.<java.util.Vector: void addElement(java.lang.Object)>($r3) 

(declare-const var3634!1 var2293)
(declare-const var1310!1 String)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {v/187381314=([org.apache.log4j.spi.VectorWriter], java.util.Vector), String_valueOf/-333372740=([java.lang.Object], java.lang.String), addElement/-1717065458=([java.util.Vector, java.lang.Object], void), cast-from-String-to-var1288=([java.lang.String], java.lang.Object)}
; {var119=org.apache.log4j.spi.VectorWriter, var2625=r0, var1288=java.lang.Object, var355=r1, var2293=java.util.Vector, var3634=$r2, var1310=$r3}
; {org.apache.log4j.spi.VectorWriter=var119, r0=var2625, java.lang.Object=var1288, r1=var355, java.util.Vector=var2293, $r2=var3634, $r3=var1310}
;seq <java.lang.String: java.lang.String valueOf(java.lang.Object)>
;cnt {"<java.lang.String: java.lang.String valueOf(java.lang.Object)>": 1}
;stmts r0 := @this: org.apache.log4j.spi.VectorWriter;	r1 := @parameter0: java.lang.Object;	$r2 = r0.<org.apache.log4j.spi.VectorWriter: java.util.Vector v>;	$r3 = staticinvoke <java.lang.String: java.lang.String valueOf(java.lang.Object)>(r1);	virtualinvoke $r2.<java.util.Vector: void addElement(java.lang.Object)>($r3);	return
;block_num 1