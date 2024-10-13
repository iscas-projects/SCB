(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3641 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun className/1477337346 (var3641) String)
(define-fun indexOf/-1037706067 ((s String) (c Int)) Int (str.indexof s (str.from_code c) 0))
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-const null-var3641 var3641)
(declare-const var3418 var3641) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.com.google.common.reflect.ClassPath$ClassInfo 
(assert (not (= var3418 null-var3641)))
(define-const var1222 String (className/1477337346 var3418)) ; Statement: $r1 = r0.<com.google.javascript.jscomp.jarjar.com.google.common.reflect.ClassPath$ClassInfo: java.lang.String className> 
(assert true)
(define-const var787 Int (indexOf/-1037706067 var1222 36)) ; Statement: $i0 = virtualinvoke $r1.<java.lang.String: int indexOf(int)>(36) 
(define-const var1820 Int (cast-from-Int-to-Int (- 1))) ; Statement: $i2 = (int) -1 
 ; Statement: if $i0 != $i2 goto $z0 = 0 
(assert (not (not (= var787 var1820)))) ; Negate: Cond: $i0 != $i2  
(define-const var867 Bool (ite (= 1 1) true false)) ; Statement: $z0 = 1 
 ; Statement: goto [?= return $z0] 
(assert true) ; Non Conditional
 ; Statement: return $z0 
(check-sat)
(get-model)
(get-unsat-core)
; {className/1477337346=([com.google.javascript.jscomp.jarjar.com.google.common.reflect.ClassPath$ClassInfo], java.lang.String), indexOf/-1037706067=([java.lang.String, int], int), cast-from-Int-to-Int=([int], int)}
; {var3641=com.google.javascript.jscomp.jarjar.com.google.common.reflect.ClassPath$ClassInfo, var3418=r0, var1222=$r1, var787=$i0, var1820=$i2, var867=$z0}
; {com.google.javascript.jscomp.jarjar.com.google.common.reflect.ClassPath$ClassInfo=var3641, r0=var3418, $r1=var1222, $i0=var787, $i2=var1820, $z0=var867}
;seq <java.lang.String: int indexOf(int)>
;cnt {"<java.lang.String: int indexOf(int)>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.com.google.common.reflect.ClassPath$ClassInfo;	$r1 = r0.<com.google.javascript.jscomp.jarjar.com.google.common.reflect.ClassPath$ClassInfo: java.lang.String className>;	$i0 = virtualinvoke $r1.<java.lang.String: int indexOf(int)>(36);	$i2 = (int) -1;	if $i0 != $i2 goto $z0 = 0;	$z0 = 1;	goto [?= return $z0];	return $z0
;block_num 3