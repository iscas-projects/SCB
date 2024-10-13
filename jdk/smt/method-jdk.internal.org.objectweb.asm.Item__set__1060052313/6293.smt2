(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var275 0)
(declare-sort var3991 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun type/-41352451 (var275) Int)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun longVal/-41352451 (var275) Int)
(declare-fun strVal1/-41352451 (var275) String)
(declare-fun strVal2/-41352451 (var275) String)
(declare-fun hashCode/-467973558 (String) Int)
(declare-fun hashCode/-41352451 (var275) Int)
(declare-const null-var275 var275)
(declare-const null-String String)
(declare-const null-Int Int)
(declare-const var1371 var275) ; Statement: r0 := @this: jdk.internal.org.objectweb.asm.Item 
(assert (not (= var1371 null-var275)))
(declare-const var3059 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var3059 null-String)))
(declare-const var1451 String) ; Statement: r2 := @parameter1: java.lang.String 
(assert (not (= var1451 null-String)))
(declare-const var3705 Int) ; Statement: i0 := @parameter2: int 
(assert (not (= var3705 null-Int)))
(declare-const var1371!1 var275)
(assert (not (= var1371!1 null-var275)))
(assert (= (type/-41352451 var1371!1) 18)) ; Statement: r0.<jdk.internal.org.objectweb.asm.Item: int type> = 18 
(define-const var2453 Int (cast-from-Int-to-Int var3705)) ; Statement: $l1 = (long) i0 
(declare-const var1371!2 var275)
(assert (not (= var1371!2 null-var275)))
(assert (= (longVal/-41352451 var1371!2) var2453)) ; Statement: r0.<jdk.internal.org.objectweb.asm.Item: long longVal> = $l1 
(declare-const var1371!3 var275)
(assert (not (= var1371!3 null-var275)))
(assert (= (strVal1/-41352451 var1371!3) var3059)) ; Statement: r0.<jdk.internal.org.objectweb.asm.Item: java.lang.String strVal1> = r1 
(declare-const var1371!4 var275)
(assert (not (= var1371!4 null-var275)))
(assert (= (strVal2/-41352451 var1371!4) var1451)) ; Statement: r0.<jdk.internal.org.objectweb.asm.Item: java.lang.String strVal2> = r2 
(define-const var45 String (strVal1/-41352451 var1371!4)) ; Statement: $r3 = r0.<jdk.internal.org.objectweb.asm.Item: java.lang.String strVal1> 
(assert true)
(define-const var1512 Int (hashCode/-467973558 var45)) ; Statement: $i2 = virtualinvoke $r3.<java.lang.String: int hashCode()>() 
(define-const var2695 Int (* var3705 var1512)) ; Statement: $i4 = i0 * $i2 
(define-const var103 String (strVal2/-41352451 var1371!4)) ; Statement: $r4 = r0.<jdk.internal.org.objectweb.asm.Item: java.lang.String strVal2> 
(assert true)
(define-const var2121 Int (hashCode/-467973558 var103)) ; Statement: $i3 = virtualinvoke $r4.<java.lang.String: int hashCode()>() 
(define-const var2601 Int (* var2695 var2121)) ; Statement: $i5 = $i4 * $i3 
(define-const var2707 Int (+ 18 var2601)) ; Statement: $i6 = 18 + $i5 
(define-const var3548 Int (bv2nat (bvand ((_ int2bv 64) 2147483647) ((_ int2bv 64) var2707)))) ; Statement: $i7 = 2147483647 & $i6 
(declare-const var1371!5 var275)
(assert (not (= var1371!5 null-var275)))
(assert (= (hashCode/-41352451 var1371!5) var3548)) ; Statement: r0.<jdk.internal.org.objectweb.asm.Item: int hashCode> = $i7 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {type/-41352451=([jdk.internal.org.objectweb.asm.Item], int), cast-from-Int-to-Int=([int], long), longVal/-41352451=([jdk.internal.org.objectweb.asm.Item], long), strVal1/-41352451=([jdk.internal.org.objectweb.asm.Item], java.lang.String), strVal2/-41352451=([jdk.internal.org.objectweb.asm.Item], java.lang.String), hashCode/-467973558=([java.lang.String], int), hashCode/-41352451=([jdk.internal.org.objectweb.asm.Item], int)}
; {var275=jdk.internal.org.objectweb.asm.Item, var1371=r0, var3059=r1, var3991=null_type, var1451=r2, var3705=i0, var2453=$l1, var45=$r3, var1512=$i2, var2695=$i4, var103=$r4, var2121=$i3, var2601=$i5, var2707=$i6, var3548=$i7}
; {jdk.internal.org.objectweb.asm.Item=var275, r0=var1371, r1=var3059, null_type=var3991, r2=var1451, i0=var3705, $l1=var2453, $r3=var45, $i2=var1512, $i4=var2695, $r4=var103, $i3=var2121, $i5=var2601, $i6=var2707, $i7=var3548}
;seq <java.lang.String: int hashCode()>;	<java.lang.String: int hashCode()>
;cnt {"<java.lang.String: int hashCode()>": 2}
;stmts r0 := @this: jdk.internal.org.objectweb.asm.Item;	r1 := @parameter0: java.lang.String;	r2 := @parameter1: java.lang.String;	i0 := @parameter2: int;	r0.<jdk.internal.org.objectweb.asm.Item: int type> = 18;	$l1 = (long) i0;	r0.<jdk.internal.org.objectweb.asm.Item: long longVal> = $l1;	r0.<jdk.internal.org.objectweb.asm.Item: java.lang.String strVal1> = r1;	r0.<jdk.internal.org.objectweb.asm.Item: java.lang.String strVal2> = r2;	$r3 = r0.<jdk.internal.org.objectweb.asm.Item: java.lang.String strVal1>;	$i2 = virtualinvoke $r3.<java.lang.String: int hashCode()>();	$i4 = i0 * $i2;	$r4 = r0.<jdk.internal.org.objectweb.asm.Item: java.lang.String strVal2>;	$i3 = virtualinvoke $r4.<java.lang.String: int hashCode()>();	$i5 = $i4 * $i3;	$i6 = 18 + $i5;	$i7 = 2147483647 & $i6;	r0.<jdk.internal.org.objectweb.asm.Item: int hashCode> = $i7;	return
;block_num 1