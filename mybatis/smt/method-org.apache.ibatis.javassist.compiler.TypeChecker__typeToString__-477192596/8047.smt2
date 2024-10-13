(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var746 0)
(declare-sort var1459 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var1459_jvmToJavaName/-391475069 (String) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-const null-String String)
(declare-const null-Int Int)
(declare-const var823 String) ; Statement: r0 := @parameter0: java.lang.StringBuilder 
(assert (not (= var823 null-String)))
(declare-const var499 Int) ; Statement: i0 := @parameter1: int 
(assert (not (= var499 null-Int)))
(declare-const var1530 Int) ; Statement: i1 := @parameter2: int 
(assert (not (= var1530 null-Int)))
(declare-const var1705 String) ; Statement: r1 := @parameter3: java.lang.String 
(assert (not (= var1705 null-String)))
 ; Statement: if i0 != 307 goto (branch) 
(assert (not (not (= var499 307)))) ; Negate: Cond: i0 != 307  
(define-const var3463 String (var1459_jvmToJavaName/-391475069 var1705)) ; Statement: r3 = staticinvoke <org.apache.ibatis.javassist.compiler.MemberResolver: java.lang.String jvmToJavaName(java.lang.String)>(r1) 
 ; Statement: goto [?= virtualinvoke r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r3)] 
(assert true) ; Non Conditional
(assert true)
;(assert (append/672562846 var823 var3463)) ; Statement: virtualinvoke r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r3) 
(declare-const var823!1 String)
(assert (= var823!1 (str.++ var823 var3463)))
(assert true) ; Non Conditional
(define-const var1853 Int var1530) ; Statement: $i2 = i1 
(define-const var971 Int (cast-from-Int-to-Int (- 1))) ; Statement: $i4 = (int) -1 
(define-const var1530!1 Int (+ var1530 var971)) ; Statement: i1 = i1 + $i4 
 ; Statement: if $i2 <= 0 goto return r0 
(assert (<= var1853 0)) ; Cond: $i2 <= 0 
 ; Statement: return r0 
(check-sat)
(get-model)
(get-unsat-core)
; {var1459_jvmToJavaName/-391475069=([java.lang.String], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), cast-from-Int-to-Int=([int], int)}
; {var823=r0, var499=i0, var1530=i1, var1705=r1, var746=null_type, var1459=org.apache.ibatis.javassist.compiler.MemberResolver, var3463=r3, var1853=$i2, var971=$i4}
; {r0=var823, i0=var499, i1=var1530, r1=var1705, null_type=var746, org.apache.ibatis.javassist.compiler.MemberResolver=var1459, r3=var3463, $i2=var1853, $i4=var971}
;seq <java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>
;cnt {"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1}
;stmts r0 := @parameter0: java.lang.StringBuilder;	i0 := @parameter1: int;	i1 := @parameter2: int;	r1 := @parameter3: java.lang.String;	if i0 != 307 goto (branch);	r3 = staticinvoke <org.apache.ibatis.javassist.compiler.MemberResolver: java.lang.String jvmToJavaName(java.lang.String)>(r1);	goto [?= virtualinvoke r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r3)];	virtualinvoke r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r3);	$i2 = i1;	$i4 = (int) -1;	i1 = i1 + $i4;	if $i2 <= 0 goto return r0;	return r0
;block_num 5