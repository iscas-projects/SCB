(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var506 0)
(declare-sort var3452 0)
(declare-sort var3212 0)
(declare-sort var1562 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var3212_ensureAccessibility/-884759201 (var1562) void)
(declare-fun cast-from-var3452-to-var1562 (var3452) var1562)
(declare-const null-ClassObject ClassObject)
(declare-const null-String String)
(declare-const null-var3452 var3452)
(declare-const var691 ClassObject) ; Statement: r0 := @parameter0: java.lang.Class 
(assert (not (= var691 null-ClassObject)))
(declare-const var2377 String) ; Statement: r5 := @parameter1: java.lang.String 
(assert (not (= var2377 null-String)))
(define-const var14 ClassObject var691) ; Statement: r8 = r0 
(define-const var1903 var3452 null-var3452) ; Statement: r9 = null 
(assert true) ; Non Conditional
 ; Statement: if r9 != null goto (branch) 
(assert (not (= var1903 null-var3452))) ; Cond: r9 != null 
 ; Statement: if r9 != null goto staticinvoke <org.hibernate.internal.util.ReflectHelper: void ensureAccessibility(java.lang.reflect.AccessibleObject)>(r9) 
(assert (not (= var1903 null-var3452))) ; Cond: r9 != null 
;(assert (var3212_ensureAccessibility/-884759201 (cast-from-var3452-to-var1562 var1903))) ; Statement: staticinvoke <org.hibernate.internal.util.ReflectHelper: void ensureAccessibility(java.lang.reflect.AccessibleObject)>(r9) 

(declare-const var1903!1 var3452)
 ; Statement: return r9 
(check-sat)
(get-model)
(get-unsat-core)
; {var3212_ensureAccessibility/-884759201=([java.lang.reflect.AccessibleObject], void), cast-from-var3452-to-var1562=([java.lang.reflect.Method], java.lang.reflect.AccessibleObject)}
; {var691=r0, var2377=r5, var506=null_type, var14=r8, var3452=java.lang.reflect.Method, var1903=r9, var3212=org.hibernate.internal.util.ReflectHelper, var1562=java.lang.reflect.AccessibleObject}
; {r0=var691, r5=var2377, null_type=var506, r8=var14, java.lang.reflect.Method=var3452, r9=var1903, org.hibernate.internal.util.ReflectHelper=var3212, java.lang.reflect.AccessibleObject=var1562}
;seq 
;cnt {}
;stmts r0 := @parameter0: java.lang.Class;	r5 := @parameter1: java.lang.String;	r8 = r0;	r9 = null;	if r9 != null goto (branch);	if r9 != null goto staticinvoke <org.hibernate.internal.util.ReflectHelper: void ensureAccessibility(java.lang.reflect.AccessibleObject)>(r9);	staticinvoke <org.hibernate.internal.util.ReflectHelper: void ensureAccessibility(java.lang.reflect.AccessibleObject)>(r9);	return r9
;block_num 4