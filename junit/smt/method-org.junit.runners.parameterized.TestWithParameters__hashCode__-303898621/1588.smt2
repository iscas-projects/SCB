(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3538 0)
(declare-sort var488 0)
(declare-sort var2180 0)
(declare-sort var1771 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun name/-1146174836 (var3538) String)
(declare-fun hashCode/-467973558 (String) Int)
(declare-fun testClass/-1146174836 (var3538) var488)
(declare-fun hashCode/1063576923 (var488) Int)
(declare-fun parameters/-1146174836 (var3538) var2180)
(declare-fun hashCode/1739917532 (var1771) Int)
(declare-fun cast-from-var2180-to-var1771 (var2180) var1771)
(declare-const null-var3538 var3538)
(declare-const var480 var3538) ; Statement: r0 := @this: org.junit.runners.parameterized.TestWithParameters 
(assert (not (= var480 null-var3538)))
(define-const var516 String (name/-1146174836 var480)) ; Statement: $r1 = r0.<org.junit.runners.parameterized.TestWithParameters: java.lang.String name> 
(assert true)
(define-const var2893 Int (hashCode/-467973558 var516)) ; Statement: $i0 = virtualinvoke $r1.<java.lang.String: int hashCode()>() 
(define-const var93 Int (+ 14747 var2893)) ; Statement: i6 = 14747 + $i0 
(define-const var743 Int (* 14747 var93)) ; Statement: $i2 = 14747 * i6 
(define-const var519 var488 (testClass/-1146174836 var480)) ; Statement: $r2 = r0.<org.junit.runners.parameterized.TestWithParameters: org.junit.runners.model.TestClass testClass> 
(assert true)
(define-const var2405 Int (hashCode/1063576923 var519)) ; Statement: $i1 = virtualinvoke $r2.<org.junit.runners.model.TestClass: int hashCode()>() 
(define-const var3402 Int (+ var743 var2405)) ; Statement: i7 = $i2 + $i1 
(define-const var761 Int (* 14747 var3402)) ; Statement: $i4 = 14747 * i7 
(define-const var1418 var2180 (parameters/-1146174836 var480)) ; Statement: $r3 = r0.<org.junit.runners.parameterized.TestWithParameters: java.util.List parameters> 
(assert true)
(define-const var3383 Int (hashCode/1739917532 (cast-from-var2180-to-var1771 var1418))) ; Statement: $i3 = virtualinvoke $r3.<java.lang.Object: int hashCode()>() 
(define-const var939 Int (+ var761 var3383)) ; Statement: $i5 = $i4 + $i3 
 ; Statement: return $i5 
(check-sat)
(get-model)
(get-unsat-core)
; {name/-1146174836=([org.junit.runners.parameterized.TestWithParameters], java.lang.String), hashCode/-467973558=([java.lang.String], int), testClass/-1146174836=([org.junit.runners.parameterized.TestWithParameters], org.junit.runners.model.TestClass), hashCode/1063576923=([org.junit.runners.model.TestClass], int), parameters/-1146174836=([org.junit.runners.parameterized.TestWithParameters], java.util.List), hashCode/1739917532=([java.lang.Object], int), cast-from-var2180-to-var1771=([java.util.List], java.lang.Object)}
; {var3538=org.junit.runners.parameterized.TestWithParameters, var480=r0, var516=$r1, var2893=$i0, var93=i6, var743=$i2, var488=org.junit.runners.model.TestClass, var519=$r2, var2405=$i1, var3402=i7, var761=$i4, var2180=java.util.List, var1418=$r3, var1771=java.lang.Object, var3383=$i3, var939=$i5}
; {org.junit.runners.parameterized.TestWithParameters=var3538, r0=var480, $r1=var516, $i0=var2893, i6=var93, $i2=var743, org.junit.runners.model.TestClass=var488, $r2=var519, $i1=var2405, i7=var3402, $i4=var761, java.util.List=var2180, $r3=var1418, java.lang.Object=var1771, $i3=var3383, $i5=var939}
;seq <java.lang.String: int hashCode()>
;cnt {"<java.lang.String: int hashCode()>": 1}
;stmts r0 := @this: org.junit.runners.parameterized.TestWithParameters;	$r1 = r0.<org.junit.runners.parameterized.TestWithParameters: java.lang.String name>;	$i0 = virtualinvoke $r1.<java.lang.String: int hashCode()>();	i6 = 14747 + $i0;	$i2 = 14747 * i6;	$r2 = r0.<org.junit.runners.parameterized.TestWithParameters: org.junit.runners.model.TestClass testClass>;	$i1 = virtualinvoke $r2.<org.junit.runners.model.TestClass: int hashCode()>();	i7 = $i2 + $i1;	$i4 = 14747 * i7;	$r3 = r0.<org.junit.runners.parameterized.TestWithParameters: java.util.List parameters>;	$i3 = virtualinvoke $r3.<java.lang.Object: int hashCode()>();	$i5 = $i4 + $i3;	return $i5
;block_num 1