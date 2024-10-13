(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var948 0)
(declare-sort var655 0)
(declare-sort var1815 0)
(declare-sort var2156 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun attributeTypes/1960194218 (var948) var1815)
(declare-fun var1815_get/1088891777 (var1815 var2156) var2156)
(declare-fun cast-from-String-to-var2156 (String) var2156)
(declare-fun cast-from-var2156-to-ClassObject (var2156) ClassObject)
(declare-const null-var948 var948)
(declare-const null-String String)
(declare-const null-ClassObject ClassObject)
(declare-const var988 var948) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.IntrospectionHelper 
(assert (not (= var988 null-var948)))
(declare-const var1209 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var1209 null-String)))
(define-const var1320 var1815 (attributeTypes/1960194218 var988)) ; Statement: $r2 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.IntrospectionHelper: java.util.Map attributeTypes> 
(define-const var2230 var2156 (var1815_get/1088891777 var1320 (cast-from-String-to-var2156 var1209))) ; Statement: $r3 = interfaceinvoke $r2.<java.util.Map: java.lang.Object get(java.lang.Object)>(r1) 
(define-const var1920 ClassObject (cast-from-var2156-to-ClassObject var2230)) ; Statement: r4 = (java.lang.Class) $r3 
 ; Statement: if r4 != null goto return r4 
(assert (not (= var1920 null-ClassObject))) ; Cond: r4 != null 
 ; Statement: return r4 
(check-sat)
(get-model)
(get-unsat-core)
; {attributeTypes/1960194218=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.IntrospectionHelper], java.util.Map), var1815_get/1088891777=([java.util.Map, java.lang.Object], java.lang.Object), cast-from-String-to-var2156=([java.lang.String], java.lang.Object), cast-from-var2156-to-ClassObject=([java.lang.Object], java.lang.Class)}
; {var948=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.IntrospectionHelper, var988=r0, var1209=r1, var655=null_type, var1815=java.util.Map, var1320=$r2, var2156=java.lang.Object, var2230=$r3, var1920=r4}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.IntrospectionHelper=var948, r0=var988, r1=var1209, null_type=var655, java.util.Map=var1815, $r2=var1320, java.lang.Object=var2156, $r3=var2230, r4=var1920}
;seq 
;cnt {}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.IntrospectionHelper;	r1 := @parameter0: java.lang.String;	$r2 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.IntrospectionHelper: java.util.Map attributeTypes>;	$r3 = interfaceinvoke $r2.<java.util.Map: java.lang.Object get(java.lang.Object)>(r1);	r4 = (java.lang.Class) $r3;	if r4 != null goto return r4;	return r4
;block_num 2