(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3664 0)
(declare-sort var1401 0)
(declare-sort var3805 0)
(declare-sort var2763 0)
(declare-sort var181 0)
(declare-sort var438 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-const var181!class ClassObject)
(declare-fun as/-1605813372 (var3805 ClassObject) var2763)
(declare-fun cast-from-var2763-to-var181 (var2763) var181)
(declare-fun var438-init () var438)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1031950772 (String var2763) String)
(declare-fun cast-from-var3805-to-var2763 (var3805) var2763)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/1864341934 (var438 String) void)
(declare-const null-var3664 var3664)
(declare-const null-var1401 var1401)
(declare-const null-var3805 var3805)
(declare-const null-var181 var181)
(declare-const var2161 var3664) ; Statement: r3 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.helper.ProjectHelper2 
(assert (not (= var2161 null-var3664)))
(declare-const var2788 var1401) ; Statement: r4 := @parameter0: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project 
(assert (not (= var2788 null-var1401)))
(declare-const var1276 var3805) ; Statement: r0 := @parameter1: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Resource 
(assert (not (= var1276 null-var3805)))
(assert true)
(define-const var2327 var2763 (as/-1605813372 var1276 var181!class)) ; Statement: $r1 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Resource: java.lang.Object as(java.lang.Class)>(class "Lcom/google/javascript/jscomp/jarjar/org/apache/tools/ant/types/resources/URLProvider;") 
(define-const var1975 var181 (cast-from-var2763-to-var181 var2327)) ; Statement: r2 = (com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.resources.URLProvider) $r1 
 ; Statement: if r2 != null goto $r5 = interfaceinvoke r2.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.resources.URLProvider: java.net.URL getURL()>() 
(assert (not (not (= var1975 null-var181)))) ; Negate: Cond: r2 != null  
(define-const var2329 var438 var438-init) ; Statement: $r7 = new com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException 
(define-const var944 String String-init) ; Statement: $r8 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var944)) ; Statement: specialinvoke $r8.<java.lang.StringBuilder: void <init>()>() 
(declare-const var944!1 String)
(assert (= var944!1 ""))
(assert true)
(define-const var511 String (append/672562846 var944!1 "Unsupported resource type: ")) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Unsupported resource type: ") 
(declare-const var944!2 String)
(assert (= var944!2 (str.++ var944!1 "Unsupported resource type: ")))
(assert true)
(define-const var1639 String (append/-1031950772 var511 (cast-from-var3805-to-var2763 var1276))) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r0) 
(declare-const var511!1 String)
(assert (str.prefixof var511 var511!1))
(assert true)
(define-const var2774 String (toString/-2075883882 var1639)) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/1864341934 var2329 var2774)) ; Statement: specialinvoke $r7.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException: void <init>(java.lang.String)>($r11) 

(declare-const var2329!1 var438)
(declare-const var2774!1 String)
 ; Statement: throw $r7 
(check-sat)
(get-model)
(get-unsat-core)
; {as/-1605813372=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Resource, java.lang.Class], java.lang.Object), cast-from-var2763-to-var181=([java.lang.Object], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.resources.URLProvider), var438-init=([], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-var3805-to-var2763=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Resource], java.lang.Object), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/1864341934=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException, java.lang.String], void)}
; {var3664=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.helper.ProjectHelper2, var2161=r3, var1401=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project, var2788=r4, var3805=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Resource, var1276=r0, var2763=java.lang.Object, var181=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.resources.URLProvider, var2327=$r1, var1975=r2, var438=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException, var2329=$r7, var944=$r8, var511=$r9, var1639=$r10, var2774=$r11}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.helper.ProjectHelper2=var3664, r3=var2161, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project=var1401, r4=var2788, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Resource=var3805, r0=var1276, java.lang.Object=var2763, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.resources.URLProvider=var181, $r1=var2327, r2=var1975, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException=var438, $r7=var2329, $r8=var944, $r9=var511, $r10=var1639, $r11=var2774}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r3 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.helper.ProjectHelper2;	r4 := @parameter0: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project;	r0 := @parameter1: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Resource;	$r1 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Resource: java.lang.Object as(java.lang.Class)>(class "Lcom/google/javascript/jscomp/jarjar/org/apache/tools/ant/types/resources/URLProvider;");	r2 = (com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.resources.URLProvider) $r1;	if r2 != null goto $r5 = interfaceinvoke r2.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.resources.URLProvider: java.net.URL getURL()>();	$r7 = new com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException;	$r8 = new java.lang.StringBuilder;	specialinvoke $r8.<java.lang.StringBuilder: void <init>()>();	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Unsupported resource type: ");	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r0);	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r7.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException: void <init>(java.lang.String)>($r11);	throw $r7
;block_num 2