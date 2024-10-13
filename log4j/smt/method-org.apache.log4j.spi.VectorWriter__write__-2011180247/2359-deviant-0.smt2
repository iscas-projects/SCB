(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2085 0)
(declare-sort var1765 0)
(declare-sort var378 0)
(declare-sort var567 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun v/187381314 (var2085) var378)
(define-fun substring/-1240304868 ((s String) (begin Int) (end Int)) String (str.substr s begin (- end begin)))
(declare-fun addElement/-1717065458 (var378 var567) void)
(declare-fun cast-from-String-to-var567 (String) var567)
(declare-const null-var2085 var2085)
(declare-const null-String String)
(declare-const null-Int Int)
(declare-const var2870 var2085) ; Statement: r0 := @this: org.apache.log4j.spi.VectorWriter 
(assert (not (= var2870 null-var2085)))
(declare-const var281 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var281 null-String)))
(declare-const var391 Int) ; Statement: i0 := @parameter1: int 
(assert (not (= var391 null-Int)))
(declare-const var244 Int) ; Statement: i1 := @parameter2: int 
(assert (not (= var244 null-Int)))
(define-const var3762 var378 (v/187381314 var2870)) ; Statement: $r2 = r0.<org.apache.log4j.spi.VectorWriter: java.util.Vector v> 
(define-const var2697 Int (+ var391 var244)) ; Statement: $i2 = i0 + i1 
(assert (not (and true (and (>= var391 0) (>= (str.len var281) var2697) (>= var2697 var391)))))
(check-sat)
(get-model)
(get-unsat-core)
; {v/187381314=([org.apache.log4j.spi.VectorWriter], java.util.Vector), substring/-1240304868=([java.lang.String, int, int], java.lang.String), addElement/-1717065458=([java.util.Vector, java.lang.Object], void), cast-from-String-to-var567=([java.lang.String], java.lang.Object)}
; {var2085=org.apache.log4j.spi.VectorWriter, var2870=r0, var281=r1, var1765=null_type, var391=i0, var244=i1, var378=java.util.Vector, var3762=$r2, var2697=$i2, var3462=$r3, var567=java.lang.Object}
; {org.apache.log4j.spi.VectorWriter=var2085, r0=var2870, r1=var281, null_type=var1765, i0=var391, i1=var244, java.util.Vector=var378, $r2=var3762, $i2=var2697, $r3=var3462, java.lang.Object=var567}
;seq <java.lang.String: java.lang.String substring(int,int)>
;cnt {"<java.lang.String: java.lang.String substring(int,int)>": 1}
;stmts r0 := @this: org.apache.log4j.spi.VectorWriter;	r1 := @parameter0: java.lang.String;	i0 := @parameter1: int;	i1 := @parameter2: int;	$r2 = r0.<org.apache.log4j.spi.VectorWriter: java.util.Vector v>;	$i2 = i0 + i1;	$r3 = virtualinvoke r1.<java.lang.String: java.lang.String substring(int,int)>(i0, $i2);	virtualinvoke $r2.<java.util.Vector: void addElement(java.lang.Object)>($r3);	return
;block_num 1