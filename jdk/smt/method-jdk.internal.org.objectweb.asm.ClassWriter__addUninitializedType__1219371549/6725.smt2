(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var397 0)
(declare-sort var1130 0)
(declare-sort var338 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun key/790748385 (var397) var338)
(declare-fun type/-41352451 (var338) Int)
(declare-fun intVal/-41352451 (var338) Int)
(declare-fun strVal1/-41352451 (var338) String)
(declare-fun hashCode/-467973558 (String) Int)
(declare-fun hashCode/-41352451 (var338) Int)
(declare-fun get/-1113612774 (var397 var338) var338)
(declare-fun index/-41352451 (var338) Int)
(declare-const null-var397 var397)
(declare-const null-String String)
(declare-const null-Int Int)
(declare-const null-var338 var338)
(declare-const var27 var397) ; Statement: r0 := @this: jdk.internal.org.objectweb.asm.ClassWriter 
(assert (not (= var27 null-var397)))
(declare-const var997 String) ; Statement: r3 := @parameter0: java.lang.String 
(assert (not (= var997 null-String)))
(declare-const var1532 Int) ; Statement: i0 := @parameter1: int 
(assert (not (= var1532 null-Int)))
(define-const var3416 var338 (key/790748385 var27)) ; Statement: $r1 = r0.<jdk.internal.org.objectweb.asm.ClassWriter: jdk.internal.org.objectweb.asm.Item key> 
(declare-const var3416!1 var338)
(assert (not (= var3416!1 null-var338)))
(assert (= (type/-41352451 var3416!1) 31)) ; Statement: $r1.<jdk.internal.org.objectweb.asm.Item: int type> = 31 
(define-const var3943 var338 (key/790748385 var27)) ; Statement: $r2 = r0.<jdk.internal.org.objectweb.asm.ClassWriter: jdk.internal.org.objectweb.asm.Item key> 
(declare-const var3943!1 var338)
(assert (not (= var3943!1 null-var338)))
(assert (= (intVal/-41352451 var3943!1) var1532)) ; Statement: $r2.<jdk.internal.org.objectweb.asm.Item: int intVal> = i0 
(define-const var2963 var338 (key/790748385 var27)) ; Statement: $r4 = r0.<jdk.internal.org.objectweb.asm.ClassWriter: jdk.internal.org.objectweb.asm.Item key> 
(declare-const var2963!1 var338)
(assert (not (= var2963!1 null-var338)))
(assert (= (strVal1/-41352451 var2963!1) var997)) ; Statement: $r4.<jdk.internal.org.objectweb.asm.Item: java.lang.String strVal1> = r3 
(define-const var2720 var338 (key/790748385 var27)) ; Statement: $r5 = r0.<jdk.internal.org.objectweb.asm.ClassWriter: jdk.internal.org.objectweb.asm.Item key> 
(assert true)
(define-const var3301 Int (hashCode/-467973558 var997)) ; Statement: $i1 = virtualinvoke r3.<java.lang.String: int hashCode()>() 
(define-const var213 Int (+ 31 var3301)) ; Statement: $i2 = 31 + $i1 
(define-const var673 Int (+ var213 var1532)) ; Statement: $i3 = $i2 + i0 
(define-const var506 Int (bv2nat (bvand ((_ int2bv 64) 2147483647) ((_ int2bv 64) var673)))) ; Statement: $i4 = 2147483647 & $i3 
(declare-const var2720!1 var338)
(assert (not (= var2720!1 null-var338)))
(assert (= (hashCode/-41352451 var2720!1) var506)) ; Statement: $r5.<jdk.internal.org.objectweb.asm.Item: int hashCode> = $i4 
(define-const var2387 var338 (key/790748385 var27)) ; Statement: $r6 = r0.<jdk.internal.org.objectweb.asm.ClassWriter: jdk.internal.org.objectweb.asm.Item key> 
(assert true)
(define-const var922 var338 (get/-1113612774 var27 var2387)) ; Statement: r8 = specialinvoke r0.<jdk.internal.org.objectweb.asm.ClassWriter: jdk.internal.org.objectweb.asm.Item get(jdk.internal.org.objectweb.asm.Item)>($r6) 
 ; Statement: if r8 != null goto $i5 = r8.<jdk.internal.org.objectweb.asm.Item: int index> 
(assert (not (= var922 null-var338))) ; Cond: r8 != null 
(define-const var1783 Int (index/-41352451 var922)) ; Statement: $i5 = r8.<jdk.internal.org.objectweb.asm.Item: int index> 
 ; Statement: return $i5 
(check-sat)
(get-model)
(get-unsat-core)
; {key/790748385=([jdk.internal.org.objectweb.asm.ClassWriter], jdk.internal.org.objectweb.asm.Item), type/-41352451=([jdk.internal.org.objectweb.asm.Item], int), intVal/-41352451=([jdk.internal.org.objectweb.asm.Item], int), strVal1/-41352451=([jdk.internal.org.objectweb.asm.Item], java.lang.String), hashCode/-467973558=([java.lang.String], int), hashCode/-41352451=([jdk.internal.org.objectweb.asm.Item], int), get/-1113612774=([jdk.internal.org.objectweb.asm.ClassWriter, jdk.internal.org.objectweb.asm.Item], jdk.internal.org.objectweb.asm.Item), index/-41352451=([jdk.internal.org.objectweb.asm.Item], int)}
; {var397=jdk.internal.org.objectweb.asm.ClassWriter, var27=r0, var997=r3, var1130=null_type, var1532=i0, var338=jdk.internal.org.objectweb.asm.Item, var3416=$r1, var3943=$r2, var2963=$r4, var2720=$r5, var3301=$i1, var213=$i2, var673=$i3, var506=$i4, var2387=$r6, var922=r8, var1783=$i5}
; {jdk.internal.org.objectweb.asm.ClassWriter=var397, r0=var27, r3=var997, null_type=var1130, i0=var1532, jdk.internal.org.objectweb.asm.Item=var338, $r1=var3416, $r2=var3943, $r4=var2963, $r5=var2720, $i1=var3301, $i2=var213, $i3=var673, $i4=var506, $r6=var2387, r8=var922, $i5=var1783}
;seq <java.lang.String: int hashCode()>
;cnt {"<java.lang.String: int hashCode()>": 1}
;stmts r0 := @this: jdk.internal.org.objectweb.asm.ClassWriter;	r3 := @parameter0: java.lang.String;	i0 := @parameter1: int;	$r1 = r0.<jdk.internal.org.objectweb.asm.ClassWriter: jdk.internal.org.objectweb.asm.Item key>;	$r1.<jdk.internal.org.objectweb.asm.Item: int type> = 31;	$r2 = r0.<jdk.internal.org.objectweb.asm.ClassWriter: jdk.internal.org.objectweb.asm.Item key>;	$r2.<jdk.internal.org.objectweb.asm.Item: int intVal> = i0;	$r4 = r0.<jdk.internal.org.objectweb.asm.ClassWriter: jdk.internal.org.objectweb.asm.Item key>;	$r4.<jdk.internal.org.objectweb.asm.Item: java.lang.String strVal1> = r3;	$r5 = r0.<jdk.internal.org.objectweb.asm.ClassWriter: jdk.internal.org.objectweb.asm.Item key>;	$i1 = virtualinvoke r3.<java.lang.String: int hashCode()>();	$i2 = 31 + $i1;	$i3 = $i2 + i0;	$i4 = 2147483647 & $i3;	$r5.<jdk.internal.org.objectweb.asm.Item: int hashCode> = $i4;	$r6 = r0.<jdk.internal.org.objectweb.asm.ClassWriter: jdk.internal.org.objectweb.asm.Item key>;	r8 = specialinvoke r0.<jdk.internal.org.objectweb.asm.ClassWriter: jdk.internal.org.objectweb.asm.Item get(jdk.internal.org.objectweb.asm.Item)>($r6);	if r8 != null goto $i5 = r8.<jdk.internal.org.objectweb.asm.Item: int index>;	$i5 = r8.<jdk.internal.org.objectweb.asm.Item: int index>;	return $i5
;block_num 2