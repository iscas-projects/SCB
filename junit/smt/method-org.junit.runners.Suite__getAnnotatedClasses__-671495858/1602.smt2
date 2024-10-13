(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1981 0)
(declare-sort var1659 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-const var1659!class ClassObject)
(declare-fun getAnnotation/-664766848 (ClassObject ClassObject) var1981)
(declare-fun cast-from-var1981-to-var1659 (var1981) var1659)
(declare-fun var1659_value/-1003411625 (var1659) (Array Int ClassObject))
(declare-const null-ClassObject ClassObject)
(declare-const null-var1659 var1659)
(declare-const var2494 ClassObject) ; Statement: r0 := @parameter0: java.lang.Class 
(assert (not (= var2494 null-ClassObject)))
(assert true)
(define-const var1274 var1981 (getAnnotation/-664766848 var2494 var1659!class)) ; Statement: $r1 = virtualinvoke r0.<java.lang.Class: java.lang.'annotation'.Annotation getAnnotation(java.lang.Class)>(class "Lorg/junit/runners/Suite$SuiteClasses;") 
(define-const var1622 var1659 (cast-from-var1981-to-var1659 var1274)) ; Statement: r2 = (org.junit.runners.Suite$SuiteClasses) $r1 
 ; Statement: if r2 != null goto $r3 = interfaceinvoke r2.<org.junit.runners.Suite$SuiteClasses: java.lang.Class[] value()>() 
(assert (not (= var1622 null-var1659))) ; Cond: r2 != null 
(define-const var3686 (Array Int ClassObject) (var1659_value/-1003411625 var1622)) ; Statement: $r3 = interfaceinvoke r2.<org.junit.runners.Suite$SuiteClasses: java.lang.Class[] value()>() 
 ; Statement: return $r3 
(check-sat)
(get-model)
(get-unsat-core)
; {getAnnotation/-664766848=([java.lang.Class, java.lang.Class], java.lang.annotation.Annotation), cast-from-var1981-to-var1659=([java.lang.annotation.Annotation], org.junit.runners.Suite$SuiteClasses), var1659_value/-1003411625=([org.junit.runners.Suite$SuiteClasses], java.lang.Class[])}
; {var2494=r0, var1981=java.lang.annotation.Annotation, var1659=org.junit.runners.Suite$SuiteClasses, var1274=$r1, var1622=r2, var3686=$r3}
; {r0=var2494, java.lang.annotation.Annotation=var1981, org.junit.runners.Suite$SuiteClasses=var1659, $r1=var1274, r2=var1622, $r3=var3686}
;seq 
;cnt {}
;stmts r0 := @parameter0: java.lang.Class;	$r1 = virtualinvoke r0.<java.lang.Class: java.lang.'annotation'.Annotation getAnnotation(java.lang.Class)>(class "Lorg/junit/runners/Suite$SuiteClasses;");	r2 = (org.junit.runners.Suite$SuiteClasses) $r1;	if r2 != null goto $r3 = interfaceinvoke r2.<org.junit.runners.Suite$SuiteClasses: java.lang.Class[] value()>();	$r3 = interfaceinvoke r2.<org.junit.runners.Suite$SuiteClasses: java.lang.Class[] value()>();	return $r3
;block_num 2