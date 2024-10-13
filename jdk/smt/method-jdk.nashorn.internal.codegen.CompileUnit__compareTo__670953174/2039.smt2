(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var255 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun className/352731939 (var255) String)
(declare-fun compareTo/1411385946 (String String) Int)
(declare-const null-var255 var255)
(declare-const var2468 var255) ; Statement: r0 := @this: jdk.nashorn.internal.codegen.CompileUnit 
(assert (not (= var2468 null-var255)))
(declare-const var177 var255) ; Statement: r1 := @parameter0: jdk.nashorn.internal.codegen.CompileUnit 
(assert (not (= var177 null-var255)))
(define-const var1260 String (className/352731939 var2468)) ; Statement: $r3 = r0.<jdk.nashorn.internal.codegen.CompileUnit: java.lang.String className> 
(define-const var1377 String (className/352731939 var177)) ; Statement: $r2 = r1.<jdk.nashorn.internal.codegen.CompileUnit: java.lang.String className> 
(assert true)
(define-const var2719 Int (compareTo/1411385946 var1260 var1377)) ; Statement: $i0 = virtualinvoke $r3.<java.lang.String: int compareTo(java.lang.String)>($r2) 
(assert (let ((this<other (str.< var1260 var1377)) (this<=other (str.<= var1260 var1377)) (compareRes (compareTo/1411385946 var1260 var1377))) (or (and (> compareRes 0) (not this<=other)) (and (< compareRes 0) this<other) (and (= compareRes 0) (not this<other) this<=other))))
 ; Statement: return $i0 
(check-sat)
(get-model)
(get-unsat-core)
; {className/352731939=([jdk.nashorn.internal.codegen.CompileUnit], java.lang.String), compareTo/1411385946=([java.lang.String, java.lang.String], int)}
; {var255=jdk.nashorn.internal.codegen.CompileUnit, var2468=r0, var177=r1, var1260=$r3, var1377=$r2, var2719=$i0}
; {jdk.nashorn.internal.codegen.CompileUnit=var255, r0=var2468, r1=var177, $r3=var1260, $r2=var1377, $i0=var2719}
;seq <java.lang.String: int compareTo(java.lang.String)>
;cnt {"<java.lang.String: int compareTo(java.lang.String)>": 1}
;stmts r0 := @this: jdk.nashorn.internal.codegen.CompileUnit;	r1 := @parameter0: jdk.nashorn.internal.codegen.CompileUnit;	$r3 = r0.<jdk.nashorn.internal.codegen.CompileUnit: java.lang.String className>;	$r2 = r1.<jdk.nashorn.internal.codegen.CompileUnit: java.lang.String className>;	$i0 = virtualinvoke $r3.<java.lang.String: int compareTo(java.lang.String)>($r2);	return $i0
;block_num 1