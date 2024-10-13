(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1347 0)
(declare-sort var3358 0)
(declare-sort var1528 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun name/459083917 (var1347) String)
(declare-fun hashCode/-467973558 (String) Int)
(declare-fun args/459083917 (var1347) (Array Int ClassObject))
(declare-fun var3358_hashCode/1826207050 ((Array Int var1528)) Int)
(declare-fun cast-from-__Array__Int__ClassObject__-to-__Array__Int__var1528__ ((Array Int ClassObject)) (Array Int var1528))
(declare-const null-var1347 var1347)
(declare-const var3228 var1347) ; Statement: r0 := @this: jdk.internal.dynalink.beans.AccessibleMembersLookup$MethodSignature 
(assert (not (= var3228 null-var1347)))
(define-const var2496 String (name/459083917 var3228)) ; Statement: $r1 = r0.<jdk.internal.dynalink.beans.AccessibleMembersLookup$MethodSignature: java.lang.String name> 
(assert true)
(define-const var671 Int (hashCode/-467973558 var2496)) ; Statement: $i1 = virtualinvoke $r1.<java.lang.String: int hashCode()>() 
(define-const var1672 (Array Int ClassObject) (args/459083917 var3228)) ; Statement: $r2 = r0.<jdk.internal.dynalink.beans.AccessibleMembersLookup$MethodSignature: java.lang.Class[] args> 
(define-const var3800 Int (var3358_hashCode/1826207050 (cast-from-__Array__Int__ClassObject__-to-__Array__Int__var1528__ var1672))) ; Statement: $i0 = staticinvoke <java.util.Arrays: int hashCode(java.lang.Object[])>($r2) 
(define-const var2001 Int (bv2nat (bvxor ((_ int2bv 64) var671) ((_ int2bv 64) var3800)))) ; Statement: $i2 = $i1 ^ $i0 
 ; Statement: return $i2 
(check-sat)
(get-model)
(get-unsat-core)
; {name/459083917=([jdk.internal.dynalink.beans.AccessibleMembersLookup$MethodSignature], java.lang.String), hashCode/-467973558=([java.lang.String], int), args/459083917=([jdk.internal.dynalink.beans.AccessibleMembersLookup$MethodSignature], java.lang.Class[]), var3358_hashCode/1826207050=([java.lang.Object[]], int), cast-from-__Array__Int__ClassObject__-to-__Array__Int__var1528__=([java.lang.Class[]], java.lang.Object[])}
; {var1347=jdk.internal.dynalink.beans.AccessibleMembersLookup$MethodSignature, var3228=r0, var2496=$r1, var671=$i1, var1672=$r2, var3358=java.util.Arrays, var1528=java.lang.Object, var3800=$i0, var2001=$i2}
; {jdk.internal.dynalink.beans.AccessibleMembersLookup$MethodSignature=var1347, r0=var3228, $r1=var2496, $i1=var671, $r2=var1672, java.util.Arrays=var3358, java.lang.Object=var1528, $i0=var3800, $i2=var2001}
;seq <java.lang.String: int hashCode()>
;cnt {"<java.lang.String: int hashCode()>": 1}
;stmts r0 := @this: jdk.internal.dynalink.beans.AccessibleMembersLookup$MethodSignature;	$r1 = r0.<jdk.internal.dynalink.beans.AccessibleMembersLookup$MethodSignature: java.lang.String name>;	$i1 = virtualinvoke $r1.<java.lang.String: int hashCode()>();	$r2 = r0.<jdk.internal.dynalink.beans.AccessibleMembersLookup$MethodSignature: java.lang.Class[] args>;	$i0 = staticinvoke <java.util.Arrays: int hashCode(java.lang.Object[])>($r2);	$i2 = $i1 ^ $i0;	return $i2
;block_num 1