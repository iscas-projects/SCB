(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2061 0)
(declare-sort var614 0)
(declare-sort var3915 0)
(declare-sort var3604 0)
(declare-sort var3719 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun lastIndexOf/-1292097097 (String Int) Int)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-const null-var2061 var2061)
(declare-const null-String String)
(declare-const null-Bool Bool)
(declare-const var3604-namePrimitiveMap var3915)
(declare-const null-var3719 var3719)
(declare-const var2954 var2061) ; Statement: r3 := @parameter0: java.lang.ClassLoader 
(assert (not (= var2954 null-var2061)))
(declare-const var3740 String) ; Statement: r0 := @parameter1: java.lang.String 
(assert (not (= var3740 null-String)))
(declare-const var3110 Bool) ; Statement: z0 := @parameter2: boolean 
(assert (not (= var3110 null-Bool)))
(define-const var11 var3915 var3604-namePrimitiveMap) ; Statement: $r1 = <org.apache.commons.lang3.ClassUtils: java.util.Map namePrimitiveMap> 
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var3384 var3719) ; Statement: $r6 := @caughtexception 
(assert (not (= var3384 null-var3719)))
(assert true)
(define-const var527 Int (lastIndexOf/-1292097097 var3740 46)) ; Statement: i0 = virtualinvoke r0.<java.lang.String: int lastIndexOf(int)>(46) 
(define-const var1348 Int (cast-from-Int-to-Int (- 1))) ; Statement: $i3 = (int) -1 
 ; Statement: if i0 == $i3 goto throw $r6 
(assert (= var527 var1348)) ; Cond: i0 == $i3 
 ; Statement: throw $r6 
(check-sat)
(get-model)
(get-unsat-core)
; {lastIndexOf/-1292097097=([java.lang.String, int], int), cast-from-Int-to-Int=([int], int)}
; {var2061=java.lang.ClassLoader, var2954=r3, var3740=r0, var614=null_type, var3110=z0, var3915=java.util.Map, var3604=org.apache.commons.lang3.ClassUtils, var11=$r1, var3719=java.lang.ClassNotFoundException, var3384=$r6, var527=i0, var1348=$i3}
; {java.lang.ClassLoader=var2061, r3=var2954, r0=var3740, null_type=var614, z0=var3110, java.util.Map=var3915, org.apache.commons.lang3.ClassUtils=var3604, $r1=var11, java.lang.ClassNotFoundException=var3719, $r6=var3384, i0=var527, $i3=var1348}
;seq <java.lang.String: int lastIndexOf(int)>
;cnt {"<java.lang.String: int lastIndexOf(int)>": 1}
;stmts r3 := @parameter0: java.lang.ClassLoader;	r0 := @parameter1: java.lang.String;	z0 := @parameter2: boolean;	$r1 = <org.apache.commons.lang3.ClassUtils: java.util.Map namePrimitiveMap>;	$r6 := @caughtexception;	i0 = virtualinvoke r0.<java.lang.String: int lastIndexOf(int)>(46);	$i3 = (int) -1;	if i0 == $i3 goto throw $r6;	throw $r6
;block_num 3