(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3700 0)
(declare-sort var3843 0)
(declare-sort var3583 0)
(declare-sort var740 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun nestedTypes/1960194218 (var3700) var3583)
(declare-fun var3583_get/1088891777 (var3583 var740) var740)
(declare-fun cast-from-String-to-var740 (String) var740)
(declare-fun cast-from-var740-to-ClassObject (var740) ClassObject)
(declare-const null-var3700 var3700)
(declare-const null-String String)
(declare-const null-ClassObject ClassObject)
(declare-const var3363 var3700) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.IntrospectionHelper 
(assert (not (= var3363 null-var3700)))
(declare-const var3985 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var3985 null-String)))
(define-const var1880 var3583 (nestedTypes/1960194218 var3363)) ; Statement: $r2 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.IntrospectionHelper: java.util.Map nestedTypes> 
(define-const var3735 var740 (var3583_get/1088891777 var1880 (cast-from-String-to-var740 var3985))) ; Statement: $r3 = interfaceinvoke $r2.<java.util.Map: java.lang.Object get(java.lang.Object)>(r1) 
(define-const var3411 ClassObject (cast-from-var740-to-ClassObject var3735)) ; Statement: r4 = (java.lang.Class) $r3 
 ; Statement: if r4 != null goto return r4 
(assert (not (= var3411 null-ClassObject))) ; Cond: r4 != null 
 ; Statement: return r4 
(check-sat)
(get-model)
(get-unsat-core)
; {nestedTypes/1960194218=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.IntrospectionHelper], java.util.Map), var3583_get/1088891777=([java.util.Map, java.lang.Object], java.lang.Object), cast-from-String-to-var740=([java.lang.String], java.lang.Object), cast-from-var740-to-ClassObject=([java.lang.Object], java.lang.Class)}
; {var3700=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.IntrospectionHelper, var3363=r0, var3985=r1, var3843=null_type, var3583=java.util.Map, var1880=$r2, var740=java.lang.Object, var3735=$r3, var3411=r4}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.IntrospectionHelper=var3700, r0=var3363, r1=var3985, null_type=var3843, java.util.Map=var3583, $r2=var1880, java.lang.Object=var740, $r3=var3735, r4=var3411}
;seq 
;cnt {}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.IntrospectionHelper;	r1 := @parameter0: java.lang.String;	$r2 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.IntrospectionHelper: java.util.Map nestedTypes>;	$r3 = interfaceinvoke $r2.<java.util.Map: java.lang.Object get(java.lang.Object)>(r1);	r4 = (java.lang.Class) $r3;	if r4 != null goto return r4;	return r4
;block_num 2