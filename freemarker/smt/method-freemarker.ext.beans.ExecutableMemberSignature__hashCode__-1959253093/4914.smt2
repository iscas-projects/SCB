(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var84 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun name/1873769972 (var84) String)
(declare-fun hashCode/-467973558 (String) Int)
(declare-fun args/1873769972 (var84) (Array Int ClassObject))
(declare-fun getLength-Arr-ClassObject-1 ((Array Int ClassObject)) Int)
(declare-const null-var84 var84)
(declare-const var1428 var84) ; Statement: r0 := @this: freemarker.ext.beans.ExecutableMemberSignature 
(assert (not (= var1428 null-var84)))
(define-const var2861 String (name/1873769972 var1428)) ; Statement: $r1 = r0.<freemarker.ext.beans.ExecutableMemberSignature: java.lang.String name> 
(assert true)
(define-const var402 Int (hashCode/-467973558 var2861)) ; Statement: $i2 = virtualinvoke $r1.<java.lang.String: int hashCode()>() 
(define-const var2743 (Array Int ClassObject) (args/1873769972 var1428)) ; Statement: $r2 = r0.<freemarker.ext.beans.ExecutableMemberSignature: java.lang.Class[] args> 
(define-const var3902 Int (getLength-Arr-ClassObject-1 var2743)) ; Statement: $i0 = lengthof $r2 
(define-const var3906 Int (* var3902 31)) ; Statement: $i1 = $i0 * 31 
(define-const var1698 Int (+ var402 var3906)) ; Statement: $i3 = $i2 + $i1 
 ; Statement: return $i3 
(check-sat)
(get-model)
(get-unsat-core)
; {name/1873769972=([freemarker.ext.beans.ExecutableMemberSignature], java.lang.String), hashCode/-467973558=([java.lang.String], int), args/1873769972=([freemarker.ext.beans.ExecutableMemberSignature], java.lang.Class[]), getLength-Arr-ClassObject-1=([java.lang.Class[]], int)}
; {var84=freemarker.ext.beans.ExecutableMemberSignature, var1428=r0, var2861=$r1, var402=$i2, var2743=$r2, var3902=$i0, var3906=$i1, var1698=$i3}
; {freemarker.ext.beans.ExecutableMemberSignature=var84, r0=var1428, $r1=var2861, $i2=var402, $r2=var2743, $i0=var3902, $i1=var3906, $i3=var1698}
;seq <java.lang.String: int hashCode()>
;cnt {"<java.lang.String: int hashCode()>": 1}
;stmts r0 := @this: freemarker.ext.beans.ExecutableMemberSignature;	$r1 = r0.<freemarker.ext.beans.ExecutableMemberSignature: java.lang.String name>;	$i2 = virtualinvoke $r1.<java.lang.String: int hashCode()>();	$r2 = r0.<freemarker.ext.beans.ExecutableMemberSignature: java.lang.Class[] args>;	$i0 = lengthof $r2;	$i1 = $i0 * 31;	$i3 = $i2 + $i1;	return $i3
;block_num 1