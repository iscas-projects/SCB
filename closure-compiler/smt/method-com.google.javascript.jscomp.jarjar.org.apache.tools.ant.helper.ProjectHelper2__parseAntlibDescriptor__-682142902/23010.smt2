(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3054 0)
(declare-sort var1332 0)
(declare-sort var39 0)
(declare-sort var1831 0)
(declare-sort var2169 0)
(declare-sort var107 0)
(declare-sort var3722 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-const var2169!class ClassObject)
(declare-fun as/-1605813372 (var39 ClassObject) var1831)
(declare-fun cast-from-var1831-to-var2169 (var1831) var2169)
(declare-fun var2169_getURL/-1538289573 (var2169) var107)
(declare-fun parseUnknownElement/774803737 (var3054 var1332 var107) var3722)
(declare-const null-var3054 var3054)
(declare-const null-var1332 var1332)
(declare-const null-var39 var39)
(declare-const null-var2169 var2169)
(declare-const var3741 var3054) ; Statement: r3 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.helper.ProjectHelper2 
(assert (not (= var3741 null-var3054)))
(declare-const var2514 var1332) ; Statement: r4 := @parameter0: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project 
(assert (not (= var2514 null-var1332)))
(declare-const var3788 var39) ; Statement: r0 := @parameter1: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Resource 
(assert (not (= var3788 null-var39)))
(assert true)
(define-const var2429 var1831 (as/-1605813372 var3788 var2169!class)) ; Statement: $r1 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Resource: java.lang.Object as(java.lang.Class)>(class "Lcom/google/javascript/jscomp/jarjar/org/apache/tools/ant/types/resources/URLProvider;") 
(define-const var3790 var2169 (cast-from-var1831-to-var2169 var2429)) ; Statement: r2 = (com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.resources.URLProvider) $r1 
 ; Statement: if r2 != null goto $r5 = interfaceinvoke r2.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.resources.URLProvider: java.net.URL getURL()>() 
(assert (not (= var3790 null-var2169))) ; Cond: r2 != null 
(define-const var1793 var107 (var2169_getURL/-1538289573 var3790)) ; Statement: $r5 = interfaceinvoke r2.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.resources.URLProvider: java.net.URL getURL()>() 
(assert true)
(define-const var3692 var3722 (parseUnknownElement/774803737 var3741 var2514 var1793)) ; Statement: $r6 = virtualinvoke r3.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.helper.ProjectHelper2: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.UnknownElement parseUnknownElement(com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project,java.net.URL)>(r4, $r5) 
 ; Statement: return $r6 
(check-sat)
(get-model)
(get-unsat-core)
; {as/-1605813372=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Resource, java.lang.Class], java.lang.Object), cast-from-var1831-to-var2169=([java.lang.Object], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.resources.URLProvider), var2169_getURL/-1538289573=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.resources.URLProvider], java.net.URL), parseUnknownElement/774803737=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.helper.ProjectHelper2, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project, java.net.URL], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.UnknownElement)}
; {var3054=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.helper.ProjectHelper2, var3741=r3, var1332=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project, var2514=r4, var39=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Resource, var3788=r0, var1831=java.lang.Object, var2169=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.resources.URLProvider, var2429=$r1, var3790=r2, var107=java.net.URL, var1793=$r5, var3722=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.UnknownElement, var3692=$r6}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.helper.ProjectHelper2=var3054, r3=var3741, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project=var1332, r4=var2514, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Resource=var39, r0=var3788, java.lang.Object=var1831, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.resources.URLProvider=var2169, $r1=var2429, r2=var3790, java.net.URL=var107, $r5=var1793, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.UnknownElement=var3722, $r6=var3692}
;seq 
;cnt {}
;stmts r3 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.helper.ProjectHelper2;	r4 := @parameter0: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project;	r0 := @parameter1: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Resource;	$r1 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Resource: java.lang.Object as(java.lang.Class)>(class "Lcom/google/javascript/jscomp/jarjar/org/apache/tools/ant/types/resources/URLProvider;");	r2 = (com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.resources.URLProvider) $r1;	if r2 != null goto $r5 = interfaceinvoke r2.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.resources.URLProvider: java.net.URL getURL()>();	$r5 = interfaceinvoke r2.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.resources.URLProvider: java.net.URL getURL()>();	$r6 = virtualinvoke r3.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.helper.ProjectHelper2: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.UnknownElement parseUnknownElement(com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project,java.net.URL)>(r4, $r5);	return $r6
;block_num 2