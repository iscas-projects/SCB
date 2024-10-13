(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2211 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun className/1477337346 (var2211) String)
(define-fun indexOf/-1037706067 ((s String) (c Int)) Int (str.indexof s (str.from_code c) 0))
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-const null-var2211 var2211)
(declare-const var2501 var2211) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.com.google.common.reflect.ClassPath$ClassInfo 
(assert (not (= var2501 null-var2211)))
(define-const var3390 String (className/1477337346 var2501)) ; Statement: $r1 = r0.<com.google.javascript.jscomp.jarjar.com.google.common.reflect.ClassPath$ClassInfo: java.lang.String className> 
(assert true)
(define-const var2764 Int (indexOf/-1037706067 var3390 36)) ; Statement: $i0 = virtualinvoke $r1.<java.lang.String: int indexOf(int)>(36) 
(define-const var2300 Int (cast-from-Int-to-Int (- 1))) ; Statement: $i2 = (int) -1 
 ; Statement: if $i0 != $i2 goto $z0 = 0 
(assert (not (= var2764 var2300))) ; Cond: $i0 != $i2 
(define-const var1586 Bool (ite (= 1 0) true false)) ; Statement: $z0 = 0 
(assert true) ; Non Conditional
 ; Statement: return $z0 
(check-sat)
(get-model)
(get-unsat-core)
; {className/1477337346=([com.google.javascript.jscomp.jarjar.com.google.common.reflect.ClassPath$ClassInfo], java.lang.String), indexOf/-1037706067=([java.lang.String, int], int), cast-from-Int-to-Int=([int], int)}
; {var2211=com.google.javascript.jscomp.jarjar.com.google.common.reflect.ClassPath$ClassInfo, var2501=r0, var3390=$r1, var2764=$i0, var2300=$i2, var1586=$z0}
; {com.google.javascript.jscomp.jarjar.com.google.common.reflect.ClassPath$ClassInfo=var2211, r0=var2501, $r1=var3390, $i0=var2764, $i2=var2300, $z0=var1586}
;seq <java.lang.String: int indexOf(int)>
;cnt {"<java.lang.String: int indexOf(int)>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.com.google.common.reflect.ClassPath$ClassInfo;	$r1 = r0.<com.google.javascript.jscomp.jarjar.com.google.common.reflect.ClassPath$ClassInfo: java.lang.String className>;	$i0 = virtualinvoke $r1.<java.lang.String: int indexOf(int)>(36);	$i2 = (int) -1;	if $i0 != $i2 goto $z0 = 0;	$z0 = 0;	return $z0
;block_num 3