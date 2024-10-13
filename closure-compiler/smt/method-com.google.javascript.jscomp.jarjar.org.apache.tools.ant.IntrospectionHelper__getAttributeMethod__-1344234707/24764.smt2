(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1488 0)
(declare-sort var369 0)
(declare-sort var898 0)
(declare-sort var420 0)
(declare-sort var181 0)
(declare-sort var1115 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun attributeSetters/1960194218 (var1488) var898)
(declare-fun var898_get/1088891777 (var898 var420) var420)
(declare-fun cast-from-String-to-var420 (String) var420)
(declare-fun cast-from-var420-to-var181 (var420) var181)
(declare-fun var181_access$300/1310595092 (var181) var1115)
(declare-const null-var1488 var1488)
(declare-const null-String String)
(declare-const null-var181 var181)
(declare-const var2733 var1488) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.IntrospectionHelper 
(assert (not (= var2733 null-var1488)))
(declare-const var9 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var9 null-String)))
(define-const var2383 var898 (attributeSetters/1960194218 var2733)) ; Statement: $r2 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.IntrospectionHelper: java.util.Map attributeSetters> 
(define-const var1540 var420 (var898_get/1088891777 var2383 (cast-from-String-to-var420 var9))) ; Statement: $r3 = interfaceinvoke $r2.<java.util.Map: java.lang.Object get(java.lang.Object)>(r1) 
(define-const var2135 var181 (cast-from-var420-to-var181 var1540)) ; Statement: r4 = (com.google.javascript.jscomp.jarjar.org.apache.tools.ant.IntrospectionHelper$AttributeSetter) $r3 
 ; Statement: if r4 != null goto $r5 = staticinvoke <com.google.javascript.jscomp.jarjar.org.apache.tools.ant.IntrospectionHelper$AttributeSetter: java.lang.reflect.Method access$300(com.google.javascript.jscomp.jarjar.org.apache.tools.ant.IntrospectionHelper$AttributeSetter)>(r4) 
(assert (not (= var2135 null-var181))) ; Cond: r4 != null 
(define-const var105 var1115 (var181_access$300/1310595092 var2135)) ; Statement: $r5 = staticinvoke <com.google.javascript.jscomp.jarjar.org.apache.tools.ant.IntrospectionHelper$AttributeSetter: java.lang.reflect.Method access$300(com.google.javascript.jscomp.jarjar.org.apache.tools.ant.IntrospectionHelper$AttributeSetter)>(r4) 
 ; Statement: return $r5 
(check-sat)
(get-model)
(get-unsat-core)
; {attributeSetters/1960194218=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.IntrospectionHelper], java.util.Map), var898_get/1088891777=([java.util.Map, java.lang.Object], java.lang.Object), cast-from-String-to-var420=([java.lang.String], java.lang.Object), cast-from-var420-to-var181=([java.lang.Object], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.IntrospectionHelper$AttributeSetter), var181_access$300/1310595092=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.IntrospectionHelper$AttributeSetter], java.lang.reflect.Method)}
; {var1488=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.IntrospectionHelper, var2733=r0, var9=r1, var369=null_type, var898=java.util.Map, var2383=$r2, var420=java.lang.Object, var1540=$r3, var181=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.IntrospectionHelper$AttributeSetter, var2135=r4, var1115=java.lang.reflect.Method, var105=$r5}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.IntrospectionHelper=var1488, r0=var2733, r1=var9, null_type=var369, java.util.Map=var898, $r2=var2383, java.lang.Object=var420, $r3=var1540, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.IntrospectionHelper$AttributeSetter=var181, r4=var2135, java.lang.reflect.Method=var1115, $r5=var105}
;seq 
;cnt {}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.IntrospectionHelper;	r1 := @parameter0: java.lang.String;	$r2 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.IntrospectionHelper: java.util.Map attributeSetters>;	$r3 = interfaceinvoke $r2.<java.util.Map: java.lang.Object get(java.lang.Object)>(r1);	r4 = (com.google.javascript.jscomp.jarjar.org.apache.tools.ant.IntrospectionHelper$AttributeSetter) $r3;	if r4 != null goto $r5 = staticinvoke <com.google.javascript.jscomp.jarjar.org.apache.tools.ant.IntrospectionHelper$AttributeSetter: java.lang.reflect.Method access$300(com.google.javascript.jscomp.jarjar.org.apache.tools.ant.IntrospectionHelper$AttributeSetter)>(r4);	$r5 = staticinvoke <com.google.javascript.jscomp.jarjar.org.apache.tools.ant.IntrospectionHelper$AttributeSetter: java.lang.reflect.Method access$300(com.google.javascript.jscomp.jarjar.org.apache.tools.ant.IntrospectionHelper$AttributeSetter)>(r4);	return $r5
;block_num 2