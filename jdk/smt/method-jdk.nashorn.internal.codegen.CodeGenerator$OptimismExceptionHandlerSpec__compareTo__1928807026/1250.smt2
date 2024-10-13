(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1007 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun lvarSpec/-1096810284 (var1007) String)
(declare-fun compareTo/1411385946 (String String) Int)
(declare-const null-var1007 var1007)
(declare-const var1835 var1007) ; Statement: r0 := @this: jdk.nashorn.internal.codegen.CodeGenerator$OptimismExceptionHandlerSpec 
(assert (not (= var1835 null-var1007)))
(declare-const var1451 var1007) ; Statement: r1 := @parameter0: jdk.nashorn.internal.codegen.CodeGenerator$OptimismExceptionHandlerSpec 
(assert (not (= var1451 null-var1007)))
(define-const var392 String (lvarSpec/-1096810284 var1835)) ; Statement: $r3 = r0.<jdk.nashorn.internal.codegen.CodeGenerator$OptimismExceptionHandlerSpec: java.lang.String lvarSpec> 
(define-const var1360 String (lvarSpec/-1096810284 var1451)) ; Statement: $r2 = r1.<jdk.nashorn.internal.codegen.CodeGenerator$OptimismExceptionHandlerSpec: java.lang.String lvarSpec> 
(assert true)
(define-const var3656 Int (compareTo/1411385946 var392 var1360)) ; Statement: $i0 = virtualinvoke $r3.<java.lang.String: int compareTo(java.lang.String)>($r2) 
(assert (let ((this<other (str.< var392 var1360)) (this<=other (str.<= var392 var1360)) (compareRes (compareTo/1411385946 var392 var1360))) (or (and (> compareRes 0) (not this<=other)) (and (< compareRes 0) this<other) (and (= compareRes 0) (not this<other) this<=other))))
 ; Statement: return $i0 
(check-sat)
(get-model)
(get-unsat-core)
; {lvarSpec/-1096810284=([jdk.nashorn.internal.codegen.CodeGenerator$OptimismExceptionHandlerSpec], java.lang.String), compareTo/1411385946=([java.lang.String, java.lang.String], int)}
; {var1007=jdk.nashorn.internal.codegen.CodeGenerator$OptimismExceptionHandlerSpec, var1835=r0, var1451=r1, var392=$r3, var1360=$r2, var3656=$i0}
; {jdk.nashorn.internal.codegen.CodeGenerator$OptimismExceptionHandlerSpec=var1007, r0=var1835, r1=var1451, $r3=var392, $r2=var1360, $i0=var3656}
;seq <java.lang.String: int compareTo(java.lang.String)>
;cnt {"<java.lang.String: int compareTo(java.lang.String)>": 1}
;stmts r0 := @this: jdk.nashorn.internal.codegen.CodeGenerator$OptimismExceptionHandlerSpec;	r1 := @parameter0: jdk.nashorn.internal.codegen.CodeGenerator$OptimismExceptionHandlerSpec;	$r3 = r0.<jdk.nashorn.internal.codegen.CodeGenerator$OptimismExceptionHandlerSpec: java.lang.String lvarSpec>;	$r2 = r1.<jdk.nashorn.internal.codegen.CodeGenerator$OptimismExceptionHandlerSpec: java.lang.String lvarSpec>;	$i0 = virtualinvoke $r3.<java.lang.String: int compareTo(java.lang.String)>($r2);	return $i0
;block_num 1