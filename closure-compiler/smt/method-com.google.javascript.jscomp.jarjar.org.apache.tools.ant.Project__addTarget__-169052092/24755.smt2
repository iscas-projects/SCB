(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1853 0)
(declare-sort var859 0)
(declare-sort var2186 0)
(declare-sort var2806 0)
(declare-sort var2165 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun targets/173117946 (var1853) var2806)
(declare-fun get/-1721276195 (var2806 var2165) var2165)
(declare-fun cast-from-String-to-var2165 (String) var2165)
(declare-fun addOrReplaceTarget/1871740085 (var1853 String var2186) void)
(declare-const null-var1853 var1853)
(declare-const null-String String)
(declare-const null-var2186 var2186)
(declare-const null-var2165 var2165)
(declare-const var588 var1853) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project 
(assert (not (= var588 null-var1853)))
(declare-const var1312 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var1312 null-String)))
(declare-const var1398 var2186) ; Statement: r4 := @parameter1: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Target 
(assert (not (= var1398 null-var2186)))
(define-const var109 var2806 (targets/173117946 var588)) ; Statement: $r2 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project: java.util.Hashtable targets> 
(assert true)
(define-const var564 var2165 (get/-1721276195 var109 (cast-from-String-to-var2165 var1312))) ; Statement: $r3 = virtualinvoke $r2.<java.util.Hashtable: java.lang.Object get(java.lang.Object)>(r1) 
 ; Statement: if $r3 == null goto virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project: void addOrReplaceTarget(java.lang.String,com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Target)>(r1, r4) 
(assert (= var564 null-var2165)) ; Cond: $r3 == null 
(assert true)
;(assert (addOrReplaceTarget/1871740085 var588 var1312 var1398)) ; Statement: virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project: void addOrReplaceTarget(java.lang.String,com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Target)>(r1, r4) 

(declare-const var588!1 var1853)
(declare-const var1312!1 String)
(declare-const var1398!1 var2186)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {targets/173117946=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project], java.util.Hashtable), get/-1721276195=([java.util.Hashtable, java.lang.Object], java.lang.Object), cast-from-String-to-var2165=([java.lang.String], java.lang.Object), addOrReplaceTarget/1871740085=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project, java.lang.String, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Target], void)}
; {var1853=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project, var588=r0, var1312=r1, var859=null_type, var2186=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Target, var1398=r4, var2806=java.util.Hashtable, var109=$r2, var2165=java.lang.Object, var564=$r3}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project=var1853, r0=var588, r1=var1312, null_type=var859, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Target=var2186, r4=var1398, java.util.Hashtable=var2806, $r2=var109, java.lang.Object=var2165, $r3=var564}
;seq 
;cnt {}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project;	r1 := @parameter0: java.lang.String;	r4 := @parameter1: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Target;	$r2 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project: java.util.Hashtable targets>;	$r3 = virtualinvoke $r2.<java.util.Hashtable: java.lang.Object get(java.lang.Object)>(r1);	if $r3 == null goto virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project: void addOrReplaceTarget(java.lang.String,com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Target)>(r1, r4);	virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project: void addOrReplaceTarget(java.lang.String,com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Target)>(r1, r4);	return
;block_num 2