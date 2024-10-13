(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2565 0)
(declare-sort var3639 0)
(declare-sort var544 0)
(declare-sort var3558 0)
(declare-sort var2936 0)
(declare-sort var3468 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun nestedCreators/1960194218 (var2565) var544)
(declare-fun var544_get/1088891777 (var544 var3558) var3558)
(declare-fun cast-from-String-to-var3558 (String) var3558)
(declare-fun cast-from-var3558-to-var2936 (var3558) var2936)
(declare-fun var2936_access$200/1215958697 (var2936) var3468)
(declare-const null-var2565 var2565)
(declare-const null-String String)
(declare-const null-var2936 var2936)
(declare-const var3543 var2565) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.IntrospectionHelper 
(assert (not (= var3543 null-var2565)))
(declare-const var1254 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var1254 null-String)))
(define-const var3007 var544 (nestedCreators/1960194218 var3543)) ; Statement: $r2 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.IntrospectionHelper: java.util.Map nestedCreators> 
(define-const var1183 var3558 (var544_get/1088891777 var3007 (cast-from-String-to-var3558 var1254))) ; Statement: $r3 = interfaceinvoke $r2.<java.util.Map: java.lang.Object get(java.lang.Object)>(r1) 
(define-const var1619 var2936 (cast-from-var3558-to-var2936 var1183)) ; Statement: r4 = (com.google.javascript.jscomp.jarjar.org.apache.tools.ant.IntrospectionHelper$NestedCreator) $r3 
 ; Statement: if r4 != null goto $r5 = staticinvoke <com.google.javascript.jscomp.jarjar.org.apache.tools.ant.IntrospectionHelper$NestedCreator: java.lang.reflect.Method access$200(com.google.javascript.jscomp.jarjar.org.apache.tools.ant.IntrospectionHelper$NestedCreator)>(r4) 
(assert (not (= var1619 null-var2936))) ; Cond: r4 != null 
(define-const var844 var3468 (var2936_access$200/1215958697 var1619)) ; Statement: $r5 = staticinvoke <com.google.javascript.jscomp.jarjar.org.apache.tools.ant.IntrospectionHelper$NestedCreator: java.lang.reflect.Method access$200(com.google.javascript.jscomp.jarjar.org.apache.tools.ant.IntrospectionHelper$NestedCreator)>(r4) 
 ; Statement: return $r5 
(check-sat)
(get-model)
(get-unsat-core)
; {nestedCreators/1960194218=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.IntrospectionHelper], java.util.Map), var544_get/1088891777=([java.util.Map, java.lang.Object], java.lang.Object), cast-from-String-to-var3558=([java.lang.String], java.lang.Object), cast-from-var3558-to-var2936=([java.lang.Object], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.IntrospectionHelper$NestedCreator), var2936_access$200/1215958697=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.IntrospectionHelper$NestedCreator], java.lang.reflect.Method)}
; {var2565=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.IntrospectionHelper, var3543=r0, var1254=r1, var3639=null_type, var544=java.util.Map, var3007=$r2, var3558=java.lang.Object, var1183=$r3, var2936=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.IntrospectionHelper$NestedCreator, var1619=r4, var3468=java.lang.reflect.Method, var844=$r5}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.IntrospectionHelper=var2565, r0=var3543, r1=var1254, null_type=var3639, java.util.Map=var544, $r2=var3007, java.lang.Object=var3558, $r3=var1183, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.IntrospectionHelper$NestedCreator=var2936, r4=var1619, java.lang.reflect.Method=var3468, $r5=var844}
;seq 
;cnt {}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.IntrospectionHelper;	r1 := @parameter0: java.lang.String;	$r2 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.IntrospectionHelper: java.util.Map nestedCreators>;	$r3 = interfaceinvoke $r2.<java.util.Map: java.lang.Object get(java.lang.Object)>(r1);	r4 = (com.google.javascript.jscomp.jarjar.org.apache.tools.ant.IntrospectionHelper$NestedCreator) $r3;	if r4 != null goto $r5 = staticinvoke <com.google.javascript.jscomp.jarjar.org.apache.tools.ant.IntrospectionHelper$NestedCreator: java.lang.reflect.Method access$200(com.google.javascript.jscomp.jarjar.org.apache.tools.ant.IntrospectionHelper$NestedCreator)>(r4);	$r5 = staticinvoke <com.google.javascript.jscomp.jarjar.org.apache.tools.ant.IntrospectionHelper$NestedCreator: java.lang.reflect.Method access$200(com.google.javascript.jscomp.jarjar.org.apache.tools.ant.IntrospectionHelper$NestedCreator)>(r4);	return $r5
;block_num 2