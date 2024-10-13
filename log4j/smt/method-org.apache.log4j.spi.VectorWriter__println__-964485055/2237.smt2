(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var746 0)
(declare-sort var56 0)
(declare-sort var3729 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun v/187381314 (var746) var3729)
(declare-fun String_valueOf/-333372740 (var56) String)
(declare-fun addElement/-1717065458 (var3729 var56) void)
(declare-fun cast-from-String-to-var56 (String) var56)
(declare-const null-var746 var746)
(declare-const null-var56 var56)
(declare-const var129 var746) ; Statement: r0 := @this: org.apache.log4j.spi.VectorWriter 
(assert (not (= var129 null-var746)))
(declare-const var160 var56) ; Statement: r1 := @parameter0: java.lang.Object 
(assert (not (= var160 null-var56)))
(define-const var601 var3729 (v/187381314 var129)) ; Statement: $r2 = r0.<org.apache.log4j.spi.VectorWriter: java.util.Vector v> 
(define-const var2364 String (String_valueOf/-333372740 var160)) ; Statement: $r3 = staticinvoke <java.lang.String: java.lang.String valueOf(java.lang.Object)>(r1) 
(assert true)
;(assert (addElement/-1717065458 var601 (cast-from-String-to-var56 var2364))) ; Statement: virtualinvoke $r2.<java.util.Vector: void addElement(java.lang.Object)>($r3) 

(declare-const var601!1 var3729)
(declare-const var2364!1 String)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {v/187381314=([org.apache.log4j.spi.VectorWriter], java.util.Vector), String_valueOf/-333372740=([java.lang.Object], java.lang.String), addElement/-1717065458=([java.util.Vector, java.lang.Object], void), cast-from-String-to-var56=([java.lang.String], java.lang.Object)}
; {var746=org.apache.log4j.spi.VectorWriter, var129=r0, var56=java.lang.Object, var160=r1, var3729=java.util.Vector, var601=$r2, var2364=$r3}
; {org.apache.log4j.spi.VectorWriter=var746, r0=var129, java.lang.Object=var56, r1=var160, java.util.Vector=var3729, $r2=var601, $r3=var2364}
;seq <java.lang.String: java.lang.String valueOf(java.lang.Object)>
;cnt {"<java.lang.String: java.lang.String valueOf(java.lang.Object)>": 1}
;stmts r0 := @this: org.apache.log4j.spi.VectorWriter;	r1 := @parameter0: java.lang.Object;	$r2 = r0.<org.apache.log4j.spi.VectorWriter: java.util.Vector v>;	$r3 = staticinvoke <java.lang.String: java.lang.String valueOf(java.lang.Object)>(r1);	virtualinvoke $r2.<java.util.Vector: void addElement(java.lang.Object)>($r3);	return
;block_num 1