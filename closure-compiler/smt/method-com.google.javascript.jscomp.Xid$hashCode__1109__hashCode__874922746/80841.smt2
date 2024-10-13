(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var233 0)
(declare-sort var2661 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun hashCode/-467973558 (String) Int)
(declare-const null-var233 var233)
(declare-const null-String String)
(declare-const var2554 var233) ; Statement: $r0 := @this: com.google.javascript.jscomp.Xid$hashCode__1109 
(assert (not (= var2554 null-var233)))
(declare-const var2865 String) ; Statement: $r1 := @parameter0: java.lang.String 
(assert (not (= var2865 null-String)))
(assert true)
(define-const var715 Int (hashCode/-467973558 var2865)) ; Statement: $i0 = virtualinvoke $r1.<java.lang.String: int hashCode()>() 
 ; Statement: return $i0 
(check-sat)
(get-model)
(get-unsat-core)
; {hashCode/-467973558=([java.lang.String], int)}
; {var233=com.google.javascript.jscomp.Xid$hashCode__1109, var2554=$r0, var2865=$r1, var2661=null_type, var715=$i0}
; {com.google.javascript.jscomp.Xid$hashCode__1109=var233, $r0=var2554, $r1=var2865, null_type=var2661, $i0=var715}
;seq <java.lang.String: int hashCode()>
;cnt {"<java.lang.String: int hashCode()>": 1}
;stmts $r0 := @this: com.google.javascript.jscomp.Xid$hashCode__1109;	$r1 := @parameter0: java.lang.String;	$i0 = virtualinvoke $r1.<java.lang.String: int hashCode()>();	return $i0
;block_num 1