(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3588 0)
(declare-sort var3586 0)
(declare-sort var554 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun hasReferenceName/2138409774 (var3588) Bool)
(declare-fun var3586_checkState/1431124798 (Bool) void)
(declare-fun getReferenceName/555756733 (var3588) String)
(declare-fun var3586_checkNotNull/1446102589 (var554) var554)
(declare-fun cast-from-String-to-var554 (String) var554)
(declare-fun cast-from-var554-to-String (var554) String)
(declare-fun hashCode/-467973558 (String) Int)
(declare-const null-var3588 var3588)
(declare-const var3508 var3588) ; Statement: r0 := @parameter0: com.google.javascript.rhino.jstype.ObjectType 
(assert (not (= var3508 null-var3588)))
(assert true)
(define-const var777 Bool (hasReferenceName/2138409774 var3508)) ; Statement: $z0 = virtualinvoke r0.<com.google.javascript.rhino.jstype.ObjectType: boolean hasReferenceName()>() 
;(assert (var3586_checkState/1431124798 var777)) ; Statement: staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: void checkState(boolean)>($z0) 

(declare-const var777!1 Bool)
(assert true)
(define-const var3698 String (getReferenceName/555756733 var3508)) ; Statement: $r1 = virtualinvoke r0.<com.google.javascript.rhino.jstype.ObjectType: java.lang.String getReferenceName()>() 
(define-const var3589 var554 (var3586_checkNotNull/1446102589 (cast-from-String-to-var554 var3698))) ; Statement: $r2 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: java.lang.Object checkNotNull(java.lang.Object)>($r1) 
(define-const var2465 String (cast-from-var554-to-String var3589)) ; Statement: r3 = (java.lang.String) $r2 
(assert true)
(define-const var2718 Int (hashCode/-467973558 var2465)) ; Statement: $i0 = virtualinvoke r3.<java.lang.String: int hashCode()>() 
 ; Statement: return $i0 
(check-sat)
(get-model)
(get-unsat-core)
; {hasReferenceName/2138409774=([com.google.javascript.rhino.jstype.ObjectType], boolean), var3586_checkState/1431124798=([boolean], void), getReferenceName/555756733=([com.google.javascript.rhino.jstype.ObjectType], java.lang.String), var3586_checkNotNull/1446102589=([java.lang.Object], java.lang.Object), cast-from-String-to-var554=([java.lang.String], java.lang.Object), cast-from-var554-to-String=([java.lang.Object], java.lang.String), hashCode/-467973558=([java.lang.String], int)}
; {var3588=com.google.javascript.rhino.jstype.ObjectType, var3508=r0, var777=$z0, var3586=com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions, var3698=$r1, var554=java.lang.Object, var3589=$r2, var2465=r3, var2718=$i0}
; {com.google.javascript.rhino.jstype.ObjectType=var3588, r0=var3508, $z0=var777, com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions=var3586, $r1=var3698, java.lang.Object=var554, $r2=var3589, r3=var2465, $i0=var2718}
;seq <java.lang.String: int hashCode()>
;cnt {"<java.lang.String: int hashCode()>": 1}
;stmts r0 := @parameter0: com.google.javascript.rhino.jstype.ObjectType;	$z0 = virtualinvoke r0.<com.google.javascript.rhino.jstype.ObjectType: boolean hasReferenceName()>();	staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: void checkState(boolean)>($z0);	$r1 = virtualinvoke r0.<com.google.javascript.rhino.jstype.ObjectType: java.lang.String getReferenceName()>();	$r2 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: java.lang.Object checkNotNull(java.lang.Object)>($r1);	r3 = (java.lang.String) $r2;	$i0 = virtualinvoke r3.<java.lang.String: int hashCode()>();	return $i0
;block_num 1