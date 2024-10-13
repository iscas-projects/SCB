(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1007 0)
(declare-sort var3189 0)
(declare-sort var2943 0)
(declare-sort var597 0)
(declare-sort var1349 0)
(declare-sort var1239 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun nestedCreator/-985051630 (var1007) var3189)
(declare-fun parent/-985051630 (var1007) var2943)
(declare-fun nestedObject/-985051630 (var1007) var2943)
(declare-fun store/-1826046229 (var3189 var2943 var2943) void)
(declare-fun var1239_access$400/526134326 (var597) var1349)
(declare-const null-var1007 var1007)
(declare-const null-var597 var597)
(declare-const var2804 var1007) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.IntrospectionHelper$Creator 
(assert (not (= var2804 null-var1007)))
(define-const var3502 var3189 (nestedCreator/-985051630 var2804)) ; Statement: $r3 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.IntrospectionHelper$Creator: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.IntrospectionHelper$NestedCreator nestedCreator> 
(define-const var1688 var2943 (parent/-985051630 var2804)) ; Statement: $r2 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.IntrospectionHelper$Creator: java.lang.Object parent> 
(define-const var3553 var2943 (nestedObject/-985051630 var2804)) ; Statement: $r1 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.IntrospectionHelper$Creator: java.lang.Object nestedObject> 
(assert true) ; Non Conditional
(assert true)
;(assert (store/-1826046229 var3502 var1688 var3553)) ; Statement: virtualinvoke $r3.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.IntrospectionHelper$NestedCreator: void store(java.lang.Object,java.lang.Object)>($r2, $r1) 

(declare-const var3502!1 var3189)
(declare-const var1688!1 var2943)
(declare-const var3553!1 var2943)
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var1471 var597) ; Statement: $r4 := @caughtexception 
(assert (not (= var1471 null-var597)))
(define-const var3270 var1349 (var1239_access$400/526134326 var1471)) ; Statement: $r5 = staticinvoke <com.google.javascript.jscomp.jarjar.org.apache.tools.ant.IntrospectionHelper: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException access$400(java.lang.reflect.InvocationTargetException)>($r4) 
 ; Statement: throw $r5 
(check-sat)
(get-model)
(get-unsat-core)
; {nestedCreator/-985051630=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.IntrospectionHelper$Creator], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.IntrospectionHelper$NestedCreator), parent/-985051630=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.IntrospectionHelper$Creator], java.lang.Object), nestedObject/-985051630=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.IntrospectionHelper$Creator], java.lang.Object), store/-1826046229=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.IntrospectionHelper$NestedCreator, java.lang.Object, java.lang.Object], void), var1239_access$400/526134326=([java.lang.reflect.InvocationTargetException], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException)}
; {var1007=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.IntrospectionHelper$Creator, var2804=r0, var3189=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.IntrospectionHelper$NestedCreator, var3502=$r3, var2943=java.lang.Object, var1688=$r2, var3553=$r1, var597=java.lang.reflect.InvocationTargetException, var1471=$r4, var1349=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException, var1239=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.IntrospectionHelper, var3270=$r5}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.IntrospectionHelper$Creator=var1007, r0=var2804, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.IntrospectionHelper$NestedCreator=var3189, $r3=var3502, java.lang.Object=var2943, $r2=var1688, $r1=var3553, java.lang.reflect.InvocationTargetException=var597, $r4=var1471, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException=var1349, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.IntrospectionHelper=var1239, $r5=var3270}
;seq 
;cnt {}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.IntrospectionHelper$Creator;	$r3 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.IntrospectionHelper$Creator: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.IntrospectionHelper$NestedCreator nestedCreator>;	$r2 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.IntrospectionHelper$Creator: java.lang.Object parent>;	$r1 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.IntrospectionHelper$Creator: java.lang.Object nestedObject>;	virtualinvoke $r3.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.IntrospectionHelper$NestedCreator: void store(java.lang.Object,java.lang.Object)>($r2, $r1);	$r4 := @caughtexception;	$r5 = staticinvoke <com.google.javascript.jscomp.jarjar.org.apache.tools.ant.IntrospectionHelper: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException access$400(java.lang.reflect.InvocationTargetException)>($r4);	throw $r5
;block_num 3