(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3038 0)
(declare-sort var515 0)
(declare-sort var1823 0)
(declare-sort var3035 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun toString/1471230080 (var515) String)
(declare-fun var3035_emptySuite/-1968719735 () var1823)
(declare-const null-var3038 var3038)
(declare-const null-var515 var515)
(declare-const var1654 var3038) ; Statement: r17 := @this: org.junit.experimental.max.MaxCore 
(assert (not (= var1654 null-var3038)))
(declare-const var2695 var515) ; Statement: r0 := @parameter0: org.junit.runner.Description 
(assert (not (= var2695 null-var515)))
(assert true)
(define-const var2814 String (toString/1471230080 var2695)) ; Statement: $r1 = virtualinvoke r0.<org.junit.runner.Description: java.lang.String toString()>() 
(assert true)
(define-const var412 Bool (= var2814 "TestSuite with 0 tests")) ; Statement: $z0 = virtualinvoke $r1.<java.lang.String: boolean equals(java.lang.Object)>("TestSuite with 0 tests") 
 ; Statement: if $z0 == 0 goto $r2 = virtualinvoke r0.<org.junit.runner.Description: java.lang.String toString()>() 
(assert (not (= (ite var412 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var1404 var1823 var3035_emptySuite/-1968719735) ; Statement: $r19 = staticinvoke <org.junit.runners.Suite: org.junit.runner.Runner emptySuite()>() 
 ; Statement: return $r19 
(check-sat)
(get-model)
(get-unsat-core)
; {toString/1471230080=([org.junit.runner.Description], java.lang.String), var3035_emptySuite/-1968719735=([], org.junit.runner.Runner)}
; {var3038=org.junit.experimental.max.MaxCore, var1654=r17, var515=org.junit.runner.Description, var2695=r0, var2814=$r1, var412=$z0, var1823=org.junit.runner.Runner, var3035=org.junit.runners.Suite, var1404=$r19}
; {org.junit.experimental.max.MaxCore=var3038, r17=var1654, org.junit.runner.Description=var515, r0=var2695, $r1=var2814, $z0=var412, org.junit.runner.Runner=var1823, org.junit.runners.Suite=var3035, $r19=var1404}
;seq <org.junit.runner.Description: java.lang.String toString()>;	<java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r17 := @this: org.junit.experimental.max.MaxCore;	r0 := @parameter0: org.junit.runner.Description;	$r1 = virtualinvoke r0.<org.junit.runner.Description: java.lang.String toString()>();	$z0 = virtualinvoke $r1.<java.lang.String: boolean equals(java.lang.Object)>("TestSuite with 0 tests");	if $z0 == 0 goto $r2 = virtualinvoke r0.<org.junit.runner.Description: java.lang.String toString()>();	$r19 = staticinvoke <org.junit.runners.Suite: org.junit.runner.Runner emptySuite()>();	return $r19
;block_num 2