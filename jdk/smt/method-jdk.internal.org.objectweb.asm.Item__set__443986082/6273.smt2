(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1446 0)
(declare-sort var283 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun type/-41352451 (var1446) Int)
(declare-fun strVal1/-41352451 (var1446) String)
(declare-fun strVal2/-41352451 (var1446) String)
(declare-fun strVal3/-41352451 (var1446) String)
(declare-fun hashCode/-467973558 (String) Int)
(declare-fun hashCode/-41352451 (var1446) Int)
(declare-const null-var1446 var1446)
(declare-const null-Int Int)
(declare-const null-String String)
(declare-const var1351 var1446) ; Statement: r0 := @this: jdk.internal.org.objectweb.asm.Item 
(assert (not (= var1351 null-var1446)))
(declare-const var2358 Int) ; Statement: i0 := @parameter0: int 
(assert (not (= var2358 null-Int)))
(declare-const var2258 String) ; Statement: r1 := @parameter1: java.lang.String 
(assert (not (= var2258 null-String)))
(declare-const var3296 String) ; Statement: r2 := @parameter2: java.lang.String 
(assert (not (= var3296 null-String)))
(declare-const var3410 String) ; Statement: r3 := @parameter3: java.lang.String 
(assert (not (= var3410 null-String)))
(declare-const var1351!1 var1446)
(assert (not (= var1351!1 null-var1446)))
(assert (= (type/-41352451 var1351!1) var2358)) ; Statement: r0.<jdk.internal.org.objectweb.asm.Item: int type> = i0 
(declare-const var1351!2 var1446)
(assert (not (= var1351!2 null-var1446)))
(assert (= (strVal1/-41352451 var1351!2) var2258)) ; Statement: r0.<jdk.internal.org.objectweb.asm.Item: java.lang.String strVal1> = r1 
(declare-const var1351!3 var1446)
(assert (not (= var1351!3 null-var1446)))
(assert (= (strVal2/-41352451 var1351!3) var3296)) ; Statement: r0.<jdk.internal.org.objectweb.asm.Item: java.lang.String strVal2> = r2 
(declare-const var1351!4 var1446)
(assert (not (= var1351!4 null-var1446)))
(assert (= (strVal3/-41352451 var1351!4) var3410)) ; Statement: r0.<jdk.internal.org.objectweb.asm.Item: java.lang.String strVal3> = r3 
 ; Statement: lookupswitch(i0) {     case 1: goto $i6 = virtualinvoke r1.<java.lang.String: int hashCode()>();     case 7: goto r0.<jdk.internal.org.objectweb.asm.Item: int intVal> = 0;     case 8: goto $i6 = virtualinvoke r1.<java.lang.String: int hashCode()>();     case 12: goto $i2 = virtualinvoke r1.<java.lang.String: int hashCode()>();     case 16: goto $i6 = virtualinvoke r1.<java.lang.String: int hashCode()>();     case 30: goto $i6 = virtualinvoke r1.<java.lang.String: int hashCode()>();     default: goto $i10 = virtualinvoke r1.<java.lang.String: int hashCode()>(); } 
(assert (and (= var2358 12) (and (not (= var2358 8)) (and (not (= var2358 7)) (and (not (= var2358 1)) true))))) ; Intersect: Cond: i0 == 12  and Intersect: Negate: Cond: i0 == 8   and Intersect: Negate: Cond: i0 == 7   and Intersect: Negate: Cond: i0 == 1   and Non Conditional    
(assert true)
(define-const var1016 Int (hashCode/-467973558 var2258)) ; Statement: $i2 = virtualinvoke r1.<java.lang.String: int hashCode()>() 
(assert true)
(define-const var1693 Int (hashCode/-467973558 var3296)) ; Statement: $i1 = virtualinvoke r2.<java.lang.String: int hashCode()>() 
(define-const var2214 Int (* var1016 var1693)) ; Statement: $i3 = $i2 * $i1 
(define-const var1316 Int (+ var2358 var2214)) ; Statement: $i4 = i0 + $i3 
(define-const var1223 Int (bv2nat (bvand ((_ int2bv 64) 2147483647) ((_ int2bv 64) var1316)))) ; Statement: $i5 = 2147483647 & $i4 
(declare-const var1351!5 var1446)
(assert (not (= var1351!5 null-var1446)))
(assert (= (hashCode/-41352451 var1351!5) var1223)) ; Statement: r0.<jdk.internal.org.objectweb.asm.Item: int hashCode> = $i5 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {type/-41352451=([jdk.internal.org.objectweb.asm.Item], int), strVal1/-41352451=([jdk.internal.org.objectweb.asm.Item], java.lang.String), strVal2/-41352451=([jdk.internal.org.objectweb.asm.Item], java.lang.String), strVal3/-41352451=([jdk.internal.org.objectweb.asm.Item], java.lang.String), hashCode/-467973558=([java.lang.String], int), hashCode/-41352451=([jdk.internal.org.objectweb.asm.Item], int)}
; {var1446=jdk.internal.org.objectweb.asm.Item, var1351=r0, var2358=i0, var2258=r1, var283=null_type, var3296=r2, var3410=r3, var1016=$i2, var1693=$i1, var2214=$i3, var1316=$i4, var1223=$i5}
; {jdk.internal.org.objectweb.asm.Item=var1446, r0=var1351, i0=var2358, r1=var2258, null_type=var283, r2=var3296, r3=var3410, $i2=var1016, $i1=var1693, $i3=var2214, $i4=var1316, $i5=var1223}
;seq <java.lang.String: int hashCode()>;	<java.lang.String: int hashCode()>
;cnt {"<java.lang.String: int hashCode()>": 2}
;stmts r0 := @this: jdk.internal.org.objectweb.asm.Item;	i0 := @parameter0: int;	r1 := @parameter1: java.lang.String;	r2 := @parameter2: java.lang.String;	r3 := @parameter3: java.lang.String;	r0.<jdk.internal.org.objectweb.asm.Item: int type> = i0;	r0.<jdk.internal.org.objectweb.asm.Item: java.lang.String strVal1> = r1;	r0.<jdk.internal.org.objectweb.asm.Item: java.lang.String strVal2> = r2;	r0.<jdk.internal.org.objectweb.asm.Item: java.lang.String strVal3> = r3;	lookupswitch(i0) {     case 1: goto $i6 = virtualinvoke r1.<java.lang.String: int hashCode()>();     case 7: goto r0.<jdk.internal.org.objectweb.asm.Item: int intVal> = 0;     case 8: goto $i6 = virtualinvoke r1.<java.lang.String: int hashCode()>();     case 12: goto $i2 = virtualinvoke r1.<java.lang.String: int hashCode()>();     case 16: goto $i6 = virtualinvoke r1.<java.lang.String: int hashCode()>();     case 30: goto $i6 = virtualinvoke r1.<java.lang.String: int hashCode()>();     default: goto $i10 = virtualinvoke r1.<java.lang.String: int hashCode()>(); };	$i2 = virtualinvoke r1.<java.lang.String: int hashCode()>();	$i1 = virtualinvoke r2.<java.lang.String: int hashCode()>();	$i3 = $i2 * $i1;	$i4 = i0 + $i3;	$i5 = 2147483647 & $i4;	r0.<jdk.internal.org.objectweb.asm.Item: int hashCode> = $i5;	return
;block_num 2