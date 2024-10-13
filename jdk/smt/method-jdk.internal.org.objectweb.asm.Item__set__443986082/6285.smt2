(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var16 0)
(declare-sort var101 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun type/-41352451 (var16) Int)
(declare-fun strVal1/-41352451 (var16) String)
(declare-fun strVal2/-41352451 (var16) String)
(declare-fun strVal3/-41352451 (var16) String)
(declare-fun hashCode/-467973558 (String) Int)
(declare-fun hashCode/-41352451 (var16) Int)
(declare-const null-var16 var16)
(declare-const null-Int Int)
(declare-const null-String String)
(declare-const var2179 var16) ; Statement: r0 := @this: jdk.internal.org.objectweb.asm.Item 
(assert (not (= var2179 null-var16)))
(declare-const var3731 Int) ; Statement: i0 := @parameter0: int 
(assert (not (= var3731 null-Int)))
(declare-const var3547 String) ; Statement: r1 := @parameter1: java.lang.String 
(assert (not (= var3547 null-String)))
(declare-const var2747 String) ; Statement: r2 := @parameter2: java.lang.String 
(assert (not (= var2747 null-String)))
(declare-const var1215 String) ; Statement: r3 := @parameter3: java.lang.String 
(assert (not (= var1215 null-String)))
(declare-const var2179!1 var16)
(assert (not (= var2179!1 null-var16)))
(assert (= (type/-41352451 var2179!1) var3731)) ; Statement: r0.<jdk.internal.org.objectweb.asm.Item: int type> = i0 
(declare-const var2179!2 var16)
(assert (not (= var2179!2 null-var16)))
(assert (= (strVal1/-41352451 var2179!2) var3547)) ; Statement: r0.<jdk.internal.org.objectweb.asm.Item: java.lang.String strVal1> = r1 
(declare-const var2179!3 var16)
(assert (not (= var2179!3 null-var16)))
(assert (= (strVal2/-41352451 var2179!3) var2747)) ; Statement: r0.<jdk.internal.org.objectweb.asm.Item: java.lang.String strVal2> = r2 
(declare-const var2179!4 var16)
(assert (not (= var2179!4 null-var16)))
(assert (= (strVal3/-41352451 var2179!4) var1215)) ; Statement: r0.<jdk.internal.org.objectweb.asm.Item: java.lang.String strVal3> = r3 
 ; Statement: lookupswitch(i0) {     case 1: goto $i6 = virtualinvoke r1.<java.lang.String: int hashCode()>();     case 7: goto r0.<jdk.internal.org.objectweb.asm.Item: int intVal> = 0;     case 8: goto $i6 = virtualinvoke r1.<java.lang.String: int hashCode()>();     case 12: goto $i2 = virtualinvoke r1.<java.lang.String: int hashCode()>();     case 16: goto $i6 = virtualinvoke r1.<java.lang.String: int hashCode()>();     case 30: goto $i6 = virtualinvoke r1.<java.lang.String: int hashCode()>();     default: goto $i10 = virtualinvoke r1.<java.lang.String: int hashCode()>(); } 
(assert (and (not (= var3731 30)) (and (not (= var3731 16)) (and (not (= var3731 12)) (and (not (= var3731 8)) (and (not (= var3731 7)) (and (not (= var3731 1)) true))))))) ; Intersect: Negate: Cond: i0 == 30   and Intersect: Negate: Cond: i0 == 16   and Intersect: Negate: Cond: i0 == 12   and Intersect: Negate: Cond: i0 == 8   and Intersect: Negate: Cond: i0 == 7   and Intersect: Negate: Cond: i0 == 1   and Non Conditional      
(assert true)
(define-const var2807 Int (hashCode/-467973558 var3547)) ; Statement: $i10 = virtualinvoke r1.<java.lang.String: int hashCode()>() 
(assert true)
(define-const var595 Int (hashCode/-467973558 var2747)) ; Statement: $i9 = virtualinvoke r2.<java.lang.String: int hashCode()>() 
(define-const var1207 Int (* var2807 var595)) ; Statement: $i12 = $i10 * $i9 
(assert true)
(define-const var1649 Int (hashCode/-467973558 var1215)) ; Statement: $i11 = virtualinvoke r3.<java.lang.String: int hashCode()>() 
(define-const var1146 Int (* var1207 var1649)) ; Statement: $i13 = $i12 * $i11 
(define-const var3875 Int (+ var3731 var1146)) ; Statement: $i14 = i0 + $i13 
(define-const var792 Int (bv2nat (bvand ((_ int2bv 64) 2147483647) ((_ int2bv 64) var3875)))) ; Statement: $i15 = 2147483647 & $i14 
(declare-const var2179!5 var16)
(assert (not (= var2179!5 null-var16)))
(assert (= (hashCode/-41352451 var2179!5) var792)) ; Statement: r0.<jdk.internal.org.objectweb.asm.Item: int hashCode> = $i15 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {type/-41352451=([jdk.internal.org.objectweb.asm.Item], int), strVal1/-41352451=([jdk.internal.org.objectweb.asm.Item], java.lang.String), strVal2/-41352451=([jdk.internal.org.objectweb.asm.Item], java.lang.String), strVal3/-41352451=([jdk.internal.org.objectweb.asm.Item], java.lang.String), hashCode/-467973558=([java.lang.String], int), hashCode/-41352451=([jdk.internal.org.objectweb.asm.Item], int)}
; {var16=jdk.internal.org.objectweb.asm.Item, var2179=r0, var3731=i0, var3547=r1, var101=null_type, var2747=r2, var1215=r3, var2807=$i10, var595=$i9, var1207=$i12, var1649=$i11, var1146=$i13, var3875=$i14, var792=$i15}
; {jdk.internal.org.objectweb.asm.Item=var16, r0=var2179, i0=var3731, r1=var3547, null_type=var101, r2=var2747, r3=var1215, $i10=var2807, $i9=var595, $i12=var1207, $i11=var1649, $i13=var1146, $i14=var3875, $i15=var792}
;seq <java.lang.String: int hashCode()>;	<java.lang.String: int hashCode()>;	<java.lang.String: int hashCode()>
;cnt {"<java.lang.String: int hashCode()>": 3}
;stmts r0 := @this: jdk.internal.org.objectweb.asm.Item;	i0 := @parameter0: int;	r1 := @parameter1: java.lang.String;	r2 := @parameter2: java.lang.String;	r3 := @parameter3: java.lang.String;	r0.<jdk.internal.org.objectweb.asm.Item: int type> = i0;	r0.<jdk.internal.org.objectweb.asm.Item: java.lang.String strVal1> = r1;	r0.<jdk.internal.org.objectweb.asm.Item: java.lang.String strVal2> = r2;	r0.<jdk.internal.org.objectweb.asm.Item: java.lang.String strVal3> = r3;	lookupswitch(i0) {     case 1: goto $i6 = virtualinvoke r1.<java.lang.String: int hashCode()>();     case 7: goto r0.<jdk.internal.org.objectweb.asm.Item: int intVal> = 0;     case 8: goto $i6 = virtualinvoke r1.<java.lang.String: int hashCode()>();     case 12: goto $i2 = virtualinvoke r1.<java.lang.String: int hashCode()>();     case 16: goto $i6 = virtualinvoke r1.<java.lang.String: int hashCode()>();     case 30: goto $i6 = virtualinvoke r1.<java.lang.String: int hashCode()>();     default: goto $i10 = virtualinvoke r1.<java.lang.String: int hashCode()>(); };	$i10 = virtualinvoke r1.<java.lang.String: int hashCode()>();	$i9 = virtualinvoke r2.<java.lang.String: int hashCode()>();	$i12 = $i10 * $i9;	$i11 = virtualinvoke r3.<java.lang.String: int hashCode()>();	$i13 = $i12 * $i11;	$i14 = i0 + $i13;	$i15 = 2147483647 & $i14;	r0.<jdk.internal.org.objectweb.asm.Item: int hashCode> = $i15;	return
;block_num 2