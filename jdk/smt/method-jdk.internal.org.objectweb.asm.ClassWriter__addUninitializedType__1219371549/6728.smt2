(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var362 0)
(declare-sort var3311 0)
(declare-sort var3098 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun key/790748385 (var362) var3098)
(declare-fun type/-41352451 (var3098) Int)
(declare-fun intVal/-41352451 (var3098) Int)
(declare-fun strVal1/-41352451 (var3098) String)
(declare-fun hashCode/-467973558 (String) Int)
(declare-fun hashCode/-41352451 (var3098) Int)
(declare-fun get/-1113612774 (var362 var3098) var3098)
(declare-fun addType/-1628454529 (var362 var3098) var3098)
(declare-fun index/-41352451 (var3098) Int)
(declare-const null-var362 var362)
(declare-const null-String String)
(declare-const null-Int Int)
(declare-const null-var3098 var3098)
(declare-const var3687 var362) ; Statement: r0 := @this: jdk.internal.org.objectweb.asm.ClassWriter 
(assert (not (= var3687 null-var362)))
(declare-const var3301 String) ; Statement: r3 := @parameter0: java.lang.String 
(assert (not (= var3301 null-String)))
(declare-const var684 Int) ; Statement: i0 := @parameter1: int 
(assert (not (= var684 null-Int)))
(define-const var322 var3098 (key/790748385 var3687)) ; Statement: $r1 = r0.<jdk.internal.org.objectweb.asm.ClassWriter: jdk.internal.org.objectweb.asm.Item key> 
(declare-const var322!1 var3098)
(assert (not (= var322!1 null-var3098)))
(assert (= (type/-41352451 var322!1) 31)) ; Statement: $r1.<jdk.internal.org.objectweb.asm.Item: int type> = 31 
(define-const var3623 var3098 (key/790748385 var3687)) ; Statement: $r2 = r0.<jdk.internal.org.objectweb.asm.ClassWriter: jdk.internal.org.objectweb.asm.Item key> 
(declare-const var3623!1 var3098)
(assert (not (= var3623!1 null-var3098)))
(assert (= (intVal/-41352451 var3623!1) var684)) ; Statement: $r2.<jdk.internal.org.objectweb.asm.Item: int intVal> = i0 
(define-const var2007 var3098 (key/790748385 var3687)) ; Statement: $r4 = r0.<jdk.internal.org.objectweb.asm.ClassWriter: jdk.internal.org.objectweb.asm.Item key> 
(declare-const var2007!1 var3098)
(assert (not (= var2007!1 null-var3098)))
(assert (= (strVal1/-41352451 var2007!1) var3301)) ; Statement: $r4.<jdk.internal.org.objectweb.asm.Item: java.lang.String strVal1> = r3 
(define-const var3336 var3098 (key/790748385 var3687)) ; Statement: $r5 = r0.<jdk.internal.org.objectweb.asm.ClassWriter: jdk.internal.org.objectweb.asm.Item key> 
(assert true)
(define-const var2492 Int (hashCode/-467973558 var3301)) ; Statement: $i1 = virtualinvoke r3.<java.lang.String: int hashCode()>() 
(define-const var3007 Int (+ 31 var2492)) ; Statement: $i2 = 31 + $i1 
(define-const var730 Int (+ var3007 var684)) ; Statement: $i3 = $i2 + i0 
(define-const var3981 Int (bv2nat (bvand ((_ int2bv 64) 2147483647) ((_ int2bv 64) var730)))) ; Statement: $i4 = 2147483647 & $i3 
(declare-const var3336!1 var3098)
(assert (not (= var3336!1 null-var3098)))
(assert (= (hashCode/-41352451 var3336!1) var3981)) ; Statement: $r5.<jdk.internal.org.objectweb.asm.Item: int hashCode> = $i4 
(define-const var166 var3098 (key/790748385 var3687)) ; Statement: $r6 = r0.<jdk.internal.org.objectweb.asm.ClassWriter: jdk.internal.org.objectweb.asm.Item key> 
(assert true)
(define-const var2183 var3098 (get/-1113612774 var3687 var166)) ; Statement: r8 = specialinvoke r0.<jdk.internal.org.objectweb.asm.ClassWriter: jdk.internal.org.objectweb.asm.Item get(jdk.internal.org.objectweb.asm.Item)>($r6) 
 ; Statement: if r8 != null goto $i5 = r8.<jdk.internal.org.objectweb.asm.Item: int index> 
(assert (not (not (= var2183 null-var3098)))) ; Negate: Cond: r8 != null  
(define-const var493 var3098 (key/790748385 var3687)) ; Statement: $r7 = r0.<jdk.internal.org.objectweb.asm.ClassWriter: jdk.internal.org.objectweb.asm.Item key> 
(assert true)
(define-const var2183!1 var3098 (addType/-1628454529 var3687 var493)) ; Statement: r8 = specialinvoke r0.<jdk.internal.org.objectweb.asm.ClassWriter: jdk.internal.org.objectweb.asm.Item addType(jdk.internal.org.objectweb.asm.Item)>($r7) 
(assert true) ; Non Conditional
(define-const var3620 Int (index/-41352451 var2183!1)) ; Statement: $i5 = r8.<jdk.internal.org.objectweb.asm.Item: int index> 
 ; Statement: return $i5 
(check-sat)
(get-model)
(get-unsat-core)
; {key/790748385=([jdk.internal.org.objectweb.asm.ClassWriter], jdk.internal.org.objectweb.asm.Item), type/-41352451=([jdk.internal.org.objectweb.asm.Item], int), intVal/-41352451=([jdk.internal.org.objectweb.asm.Item], int), strVal1/-41352451=([jdk.internal.org.objectweb.asm.Item], java.lang.String), hashCode/-467973558=([java.lang.String], int), hashCode/-41352451=([jdk.internal.org.objectweb.asm.Item], int), get/-1113612774=([jdk.internal.org.objectweb.asm.ClassWriter, jdk.internal.org.objectweb.asm.Item], jdk.internal.org.objectweb.asm.Item), addType/-1628454529=([jdk.internal.org.objectweb.asm.ClassWriter, jdk.internal.org.objectweb.asm.Item], jdk.internal.org.objectweb.asm.Item), index/-41352451=([jdk.internal.org.objectweb.asm.Item], int)}
; {var362=jdk.internal.org.objectweb.asm.ClassWriter, var3687=r0, var3301=r3, var3311=null_type, var684=i0, var3098=jdk.internal.org.objectweb.asm.Item, var322=$r1, var3623=$r2, var2007=$r4, var3336=$r5, var2492=$i1, var3007=$i2, var730=$i3, var3981=$i4, var166=$r6, var2183=r8, var493=$r7, var3620=$i5}
; {jdk.internal.org.objectweb.asm.ClassWriter=var362, r0=var3687, r3=var3301, null_type=var3311, i0=var684, jdk.internal.org.objectweb.asm.Item=var3098, $r1=var322, $r2=var3623, $r4=var2007, $r5=var3336, $i1=var2492, $i2=var3007, $i3=var730, $i4=var3981, $r6=var166, r8=var2183, $r7=var493, $i5=var3620}
;seq <java.lang.String: int hashCode()>
;cnt {"<java.lang.String: int hashCode()>": 1}
;stmts r0 := @this: jdk.internal.org.objectweb.asm.ClassWriter;	r3 := @parameter0: java.lang.String;	i0 := @parameter1: int;	$r1 = r0.<jdk.internal.org.objectweb.asm.ClassWriter: jdk.internal.org.objectweb.asm.Item key>;	$r1.<jdk.internal.org.objectweb.asm.Item: int type> = 31;	$r2 = r0.<jdk.internal.org.objectweb.asm.ClassWriter: jdk.internal.org.objectweb.asm.Item key>;	$r2.<jdk.internal.org.objectweb.asm.Item: int intVal> = i0;	$r4 = r0.<jdk.internal.org.objectweb.asm.ClassWriter: jdk.internal.org.objectweb.asm.Item key>;	$r4.<jdk.internal.org.objectweb.asm.Item: java.lang.String strVal1> = r3;	$r5 = r0.<jdk.internal.org.objectweb.asm.ClassWriter: jdk.internal.org.objectweb.asm.Item key>;	$i1 = virtualinvoke r3.<java.lang.String: int hashCode()>();	$i2 = 31 + $i1;	$i3 = $i2 + i0;	$i4 = 2147483647 & $i3;	$r5.<jdk.internal.org.objectweb.asm.Item: int hashCode> = $i4;	$r6 = r0.<jdk.internal.org.objectweb.asm.ClassWriter: jdk.internal.org.objectweb.asm.Item key>;	r8 = specialinvoke r0.<jdk.internal.org.objectweb.asm.ClassWriter: jdk.internal.org.objectweb.asm.Item get(jdk.internal.org.objectweb.asm.Item)>($r6);	if r8 != null goto $i5 = r8.<jdk.internal.org.objectweb.asm.Item: int index>;	$r7 = r0.<jdk.internal.org.objectweb.asm.ClassWriter: jdk.internal.org.objectweb.asm.Item key>;	r8 = specialinvoke r0.<jdk.internal.org.objectweb.asm.ClassWriter: jdk.internal.org.objectweb.asm.Item addType(jdk.internal.org.objectweb.asm.Item)>($r7);	$i5 = r8.<jdk.internal.org.objectweb.asm.Item: int index>;	return $i5
;block_num 3