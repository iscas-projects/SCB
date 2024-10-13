(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2869 0)
(declare-sort var1398 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun type/-41352451 (var2869) Int)
(declare-fun strVal1/-41352451 (var2869) String)
(declare-fun strVal2/-41352451 (var2869) String)
(declare-fun strVal3/-41352451 (var2869) String)
(declare-fun hashCode/-467973558 (String) Int)
(declare-fun hashCode/-41352451 (var2869) Int)
(declare-const null-var2869 var2869)
(declare-const null-Int Int)
(declare-const null-String String)
(declare-const var2921 var2869) ; Statement: r0 := @this: jdk.internal.org.objectweb.asm.Item 
(assert (not (= var2921 null-var2869)))
(declare-const var3416 Int) ; Statement: i0 := @parameter0: int 
(assert (not (= var3416 null-Int)))
(declare-const var1521 String) ; Statement: r1 := @parameter1: java.lang.String 
(assert (not (= var1521 null-String)))
(declare-const var2867 String) ; Statement: r2 := @parameter2: java.lang.String 
(assert (not (= var2867 null-String)))
(declare-const var3649 String) ; Statement: r3 := @parameter3: java.lang.String 
(assert (not (= var3649 null-String)))
(declare-const var2921!1 var2869)
(assert (not (= var2921!1 null-var2869)))
(assert (= (type/-41352451 var2921!1) var3416)) ; Statement: r0.<jdk.internal.org.objectweb.asm.Item: int type> = i0 
(declare-const var2921!2 var2869)
(assert (not (= var2921!2 null-var2869)))
(assert (= (strVal1/-41352451 var2921!2) var1521)) ; Statement: r0.<jdk.internal.org.objectweb.asm.Item: java.lang.String strVal1> = r1 
(declare-const var2921!3 var2869)
(assert (not (= var2921!3 null-var2869)))
(assert (= (strVal2/-41352451 var2921!3) var2867)) ; Statement: r0.<jdk.internal.org.objectweb.asm.Item: java.lang.String strVal2> = r2 
(declare-const var2921!4 var2869)
(assert (not (= var2921!4 null-var2869)))
(assert (= (strVal3/-41352451 var2921!4) var3649)) ; Statement: r0.<jdk.internal.org.objectweb.asm.Item: java.lang.String strVal3> = r3 
 ; Statement: lookupswitch(i0) {     case 1: goto $i6 = virtualinvoke r1.<java.lang.String: int hashCode()>();     case 7: goto r0.<jdk.internal.org.objectweb.asm.Item: int intVal> = 0;     case 8: goto $i6 = virtualinvoke r1.<java.lang.String: int hashCode()>();     case 12: goto $i2 = virtualinvoke r1.<java.lang.String: int hashCode()>();     case 16: goto $i6 = virtualinvoke r1.<java.lang.String: int hashCode()>();     case 30: goto $i6 = virtualinvoke r1.<java.lang.String: int hashCode()>();     default: goto $i10 = virtualinvoke r1.<java.lang.String: int hashCode()>(); } 
(assert (and (= var3416 1) true)) ; Intersect: Cond: i0 == 1  and Non Conditional 
(assert true)
(define-const var1792 Int (hashCode/-467973558 var1521)) ; Statement: $i6 = virtualinvoke r1.<java.lang.String: int hashCode()>() 
(define-const var1739 Int (+ var3416 var1792)) ; Statement: $i7 = i0 + $i6 
(define-const var1802 Int (bv2nat (bvand ((_ int2bv 64) 2147483647) ((_ int2bv 64) var1739)))) ; Statement: $i8 = 2147483647 & $i7 
(declare-const var2921!5 var2869)
(assert (not (= var2921!5 null-var2869)))
(assert (= (hashCode/-41352451 var2921!5) var1802)) ; Statement: r0.<jdk.internal.org.objectweb.asm.Item: int hashCode> = $i8 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {type/-41352451=([jdk.internal.org.objectweb.asm.Item], int), strVal1/-41352451=([jdk.internal.org.objectweb.asm.Item], java.lang.String), strVal2/-41352451=([jdk.internal.org.objectweb.asm.Item], java.lang.String), strVal3/-41352451=([jdk.internal.org.objectweb.asm.Item], java.lang.String), hashCode/-467973558=([java.lang.String], int), hashCode/-41352451=([jdk.internal.org.objectweb.asm.Item], int)}
; {var2869=jdk.internal.org.objectweb.asm.Item, var2921=r0, var3416=i0, var1521=r1, var1398=null_type, var2867=r2, var3649=r3, var1792=$i6, var1739=$i7, var1802=$i8}
; {jdk.internal.org.objectweb.asm.Item=var2869, r0=var2921, i0=var3416, r1=var1521, null_type=var1398, r2=var2867, r3=var3649, $i6=var1792, $i7=var1739, $i8=var1802}
;seq <java.lang.String: int hashCode()>
;cnt {"<java.lang.String: int hashCode()>": 1}
;stmts r0 := @this: jdk.internal.org.objectweb.asm.Item;	i0 := @parameter0: int;	r1 := @parameter1: java.lang.String;	r2 := @parameter2: java.lang.String;	r3 := @parameter3: java.lang.String;	r0.<jdk.internal.org.objectweb.asm.Item: int type> = i0;	r0.<jdk.internal.org.objectweb.asm.Item: java.lang.String strVal1> = r1;	r0.<jdk.internal.org.objectweb.asm.Item: java.lang.String strVal2> = r2;	r0.<jdk.internal.org.objectweb.asm.Item: java.lang.String strVal3> = r3;	lookupswitch(i0) {     case 1: goto $i6 = virtualinvoke r1.<java.lang.String: int hashCode()>();     case 7: goto r0.<jdk.internal.org.objectweb.asm.Item: int intVal> = 0;     case 8: goto $i6 = virtualinvoke r1.<java.lang.String: int hashCode()>();     case 12: goto $i2 = virtualinvoke r1.<java.lang.String: int hashCode()>();     case 16: goto $i6 = virtualinvoke r1.<java.lang.String: int hashCode()>();     case 30: goto $i6 = virtualinvoke r1.<java.lang.String: int hashCode()>();     default: goto $i10 = virtualinvoke r1.<java.lang.String: int hashCode()>(); };	$i6 = virtualinvoke r1.<java.lang.String: int hashCode()>();	$i7 = i0 + $i6;	$i8 = 2147483647 & $i7;	r0.<jdk.internal.org.objectweb.asm.Item: int hashCode> = $i8;	return
;block_num 2