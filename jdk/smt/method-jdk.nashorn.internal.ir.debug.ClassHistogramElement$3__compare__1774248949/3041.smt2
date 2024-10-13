(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1626 0)
(declare-sort var3085 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var3085_access$200/2101442455 (var3085) ClassObject)
(declare-fun getCanonicalName/935544231 (ClassObject) String)
(declare-fun compareTo/1411385946 (String String) Int)
(declare-const null-var1626 var1626)
(declare-const null-var3085 var3085)
(declare-const var3847 var1626) ; Statement: r6 := @this: jdk.nashorn.internal.ir.debug.ClassHistogramElement$3 
(assert (not (= var3847 null-var1626)))
(declare-const var3101 var3085) ; Statement: r0 := @parameter0: jdk.nashorn.internal.ir.debug.ClassHistogramElement 
(assert (not (= var3101 null-var3085)))
(declare-const var3945 var3085) ; Statement: r2 := @parameter1: jdk.nashorn.internal.ir.debug.ClassHistogramElement 
(assert (not (= var3945 null-var3085)))
(define-const var957 ClassObject (var3085_access$200/2101442455 var3101)) ; Statement: $r1 = staticinvoke <jdk.nashorn.internal.ir.debug.ClassHistogramElement: java.lang.Class access$200(jdk.nashorn.internal.ir.debug.ClassHistogramElement)>(r0) 
(assert true)
(define-const var2066 String (getCanonicalName/935544231 var957)) ; Statement: $r5 = virtualinvoke $r1.<java.lang.Class: java.lang.String getCanonicalName()>() 
(define-const var3939 ClassObject (var3085_access$200/2101442455 var3945)) ; Statement: $r3 = staticinvoke <jdk.nashorn.internal.ir.debug.ClassHistogramElement: java.lang.Class access$200(jdk.nashorn.internal.ir.debug.ClassHistogramElement)>(r2) 
(assert true)
(define-const var2746 String (getCanonicalName/935544231 var3939)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.Class: java.lang.String getCanonicalName()>() 
(assert true)
(define-const var3067 Int (compareTo/1411385946 var2066 var2746)) ; Statement: $i0 = virtualinvoke $r5.<java.lang.String: int compareTo(java.lang.String)>($r4) 
(assert (let ((this<other (str.< var2066 var2746)) (this<=other (str.<= var2066 var2746)) (compareRes (compareTo/1411385946 var2066 var2746))) (or (and (> compareRes 0) (not this<=other)) (and (< compareRes 0) this<other) (and (= compareRes 0) (not this<other) this<=other))))
 ; Statement: return $i0 
(check-sat)
(get-model)
(get-unsat-core)
; {var3085_access$200/2101442455=([jdk.nashorn.internal.ir.debug.ClassHistogramElement], java.lang.Class), getCanonicalName/935544231=([java.lang.Class], java.lang.String), compareTo/1411385946=([java.lang.String, java.lang.String], int)}
; {var1626=jdk.nashorn.internal.ir.debug.ClassHistogramElement$3, var3847=r6, var3085=jdk.nashorn.internal.ir.debug.ClassHistogramElement, var3101=r0, var3945=r2, var957=$r1, var2066=$r5, var3939=$r3, var2746=$r4, var3067=$i0}
; {jdk.nashorn.internal.ir.debug.ClassHistogramElement$3=var1626, r6=var3847, jdk.nashorn.internal.ir.debug.ClassHistogramElement=var3085, r0=var3101, r2=var3945, $r1=var957, $r5=var2066, $r3=var3939, $r4=var2746, $i0=var3067}
;seq <java.lang.String: int compareTo(java.lang.String)>
;cnt {"<java.lang.String: int compareTo(java.lang.String)>": 1}
;stmts r6 := @this: jdk.nashorn.internal.ir.debug.ClassHistogramElement$3;	r0 := @parameter0: jdk.nashorn.internal.ir.debug.ClassHistogramElement;	r2 := @parameter1: jdk.nashorn.internal.ir.debug.ClassHistogramElement;	$r1 = staticinvoke <jdk.nashorn.internal.ir.debug.ClassHistogramElement: java.lang.Class access$200(jdk.nashorn.internal.ir.debug.ClassHistogramElement)>(r0);	$r5 = virtualinvoke $r1.<java.lang.Class: java.lang.String getCanonicalName()>();	$r3 = staticinvoke <jdk.nashorn.internal.ir.debug.ClassHistogramElement: java.lang.Class access$200(jdk.nashorn.internal.ir.debug.ClassHistogramElement)>(r2);	$r4 = virtualinvoke $r3.<java.lang.Class: java.lang.String getCanonicalName()>();	$i0 = virtualinvoke $r5.<java.lang.String: int compareTo(java.lang.String)>($r4);	return $i0
;block_num 1