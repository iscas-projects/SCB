(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1359 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun name/824703249 (var1359) String)
(declare-fun hashCode/-467973558 (String) Int)
(declare-fun desc/824703249 (var1359) String)
(declare-const null-var1359 var1359)
(declare-const var2923 var1359) ; Statement: r0 := @this: jdk.internal.org.objectweb.asm.commons.Method 
(assert (not (= var2923 null-var1359)))
(define-const var3971 String (name/824703249 var2923)) ; Statement: $r1 = r0.<jdk.internal.org.objectweb.asm.commons.Method: java.lang.String name> 
(assert true)
(define-const var3115 Int (hashCode/-467973558 var3971)) ; Statement: $i1 = virtualinvoke $r1.<java.lang.String: int hashCode()>() 
(define-const var38 String (desc/824703249 var2923)) ; Statement: $r2 = r0.<jdk.internal.org.objectweb.asm.commons.Method: java.lang.String desc> 
(assert true)
(define-const var1817 Int (hashCode/-467973558 var38)) ; Statement: $i0 = virtualinvoke $r2.<java.lang.String: int hashCode()>() 
(define-const var2474 Int (bv2nat (bvxor ((_ int2bv 64) var3115) ((_ int2bv 64) var1817)))) ; Statement: $i2 = $i1 ^ $i0 
 ; Statement: return $i2 
(check-sat)
(get-model)
(get-unsat-core)
; {name/824703249=([jdk.internal.org.objectweb.asm.commons.Method], java.lang.String), hashCode/-467973558=([java.lang.String], int), desc/824703249=([jdk.internal.org.objectweb.asm.commons.Method], java.lang.String)}
; {var1359=jdk.internal.org.objectweb.asm.commons.Method, var2923=r0, var3971=$r1, var3115=$i1, var38=$r2, var1817=$i0, var2474=$i2}
; {jdk.internal.org.objectweb.asm.commons.Method=var1359, r0=var2923, $r1=var3971, $i1=var3115, $r2=var38, $i0=var1817, $i2=var2474}
;seq <java.lang.String: int hashCode()>;	<java.lang.String: int hashCode()>
;cnt {"<java.lang.String: int hashCode()>": 2}
;stmts r0 := @this: jdk.internal.org.objectweb.asm.commons.Method;	$r1 = r0.<jdk.internal.org.objectweb.asm.commons.Method: java.lang.String name>;	$i1 = virtualinvoke $r1.<java.lang.String: int hashCode()>();	$r2 = r0.<jdk.internal.org.objectweb.asm.commons.Method: java.lang.String desc>;	$i0 = virtualinvoke $r2.<java.lang.String: int hashCode()>();	$i2 = $i1 ^ $i0;	return $i2
;block_num 1