(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3784 0)
(declare-sort var1282 0)
(declare-sort var2182 0)
(declare-sort var351 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun context/2096387024 (var3784) var2182)
(declare-fun getProject/-757559556 (var2182) var351)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun log/2093317233 (var351 String Int) void)
(define-fun startsWith/-1785782452 ((s String) (prefix String)) Bool (str.prefixof prefix s))
(declare-const null-var3784 var3784)
(declare-const null-String String)
(declare-const var1656 var3784) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.helper.ProjectHelper2$RootHandler 
(assert (not (= var1656 null-var3784)))
(declare-const var1780 String) ; Statement: r51 := @parameter0: java.lang.String 
(assert (not (= var1780 null-String)))
(declare-const var152 String) ; Statement: r3 := @parameter1: java.lang.String 
(assert (not (= var152 null-String)))
(define-const var1972 var2182 (context/2096387024 var1656)) ; Statement: $r1 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.helper.ProjectHelper2$RootHandler: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.helper.AntXMLContext context> 
(assert true)
(define-const var2884 var351 (getProject/-757559556 var1972)) ; Statement: $r7 = virtualinvoke $r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.helper.AntXMLContext: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project getProject()>() 
(define-const var3953 String String-init) ; Statement: $r2 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3953)) ; Statement: specialinvoke $r2.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3953!1 String)
(assert (= var3953!1 ""))
(assert true)
(define-const var1532 String (append/672562846 var3953!1 "resolving systemId: ")) ; Statement: $r4 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("resolving systemId: ") 
(declare-const var3953!2 String)
(assert (= var3953!2 (str.++ var3953!1 "resolving systemId: ")))
(assert true)
(define-const var204 String (append/672562846 var1532 var152)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r3) 
(declare-const var1532!1 String)
(assert (= var1532!1 (str.++ var1532 var152)))
(assert true)
(define-const var1665 String (toString/-2075883882 var204)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (log/2093317233 var2884 var1665 3)) ; Statement: virtualinvoke $r7.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project: void log(java.lang.String,int)>($r6, 3) 

(declare-const var2884!1 var351)
(declare-const var1665!1 String)
(declare-const var247 Int)
(assert true)
(define-const var1823 Bool (startsWith/-1785782452 var152 "file:")) ; Statement: $z0 = virtualinvoke r3.<java.lang.String: boolean startsWith(java.lang.String)>("file:") 
 ; Statement: if $z0 == 0 goto $r8 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.helper.ProjectHelper2$RootHandler: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.helper.AntXMLContext context> 
(assert (= (ite var1823 1 0) 0)) ; Cond: $z0 == 0 
(define-const var1416 var2182 (context/2096387024 var1656)) ; Statement: $r8 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.helper.ProjectHelper2$RootHandler: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.helper.AntXMLContext context> 
(assert true)
(define-const var244 var351 (getProject/-757559556 var1416)) ; Statement: $r9 = virtualinvoke $r8.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.helper.AntXMLContext: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project getProject()>() 
(assert true)
;(assert (log/2093317233 var244 "could not resolve systemId" 4)) ; Statement: virtualinvoke $r9.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project: void log(java.lang.String,int)>("could not resolve systemId", 4) 

(declare-const var244!1 var351)
(declare-const var3054 String)
(declare-const var1786 Int)
 ; Statement: return null 
(check-sat)
(get-model)
(get-unsat-core)
; {context/2096387024=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.helper.ProjectHelper2$RootHandler], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.helper.AntXMLContext), getProject/-757559556=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.helper.AntXMLContext], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), log/2093317233=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project, java.lang.String, int], void), startsWith/-1785782452=([java.lang.String, java.lang.String], boolean)}
; {var3784=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.helper.ProjectHelper2$RootHandler, var1656=r0, var1780=r51, var1282=null_type, var152=r3, var2182=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.helper.AntXMLContext, var1972=$r1, var351=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project, var2884=$r7, var3953=$r2, var1532=$r4, var204=$r5, var1665=$r6, var247=3, var1823=$z0, var1416=$r8, var244=$r9, var3054="could not resolve systemId", var1786=4}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.helper.ProjectHelper2$RootHandler=var3784, r0=var1656, r51=var1780, null_type=var1282, r3=var152, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.helper.AntXMLContext=var2182, $r1=var1972, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project=var351, $r7=var2884, $r2=var3953, $r4=var1532, $r5=var204, $r6=var1665, 3=var247, $z0=var1823, $r8=var1416, $r9=var244, "could not resolve systemId"=var3054, 4=var1786}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.String: boolean startsWith(java.lang.String)>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1,"<java.lang.String: boolean startsWith(java.lang.String)>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.helper.ProjectHelper2$RootHandler;	r51 := @parameter0: java.lang.String;	r3 := @parameter1: java.lang.String;	$r1 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.helper.ProjectHelper2$RootHandler: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.helper.AntXMLContext context>;	$r7 = virtualinvoke $r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.helper.AntXMLContext: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project getProject()>();	$r2 = new java.lang.StringBuilder;	specialinvoke $r2.<java.lang.StringBuilder: void <init>()>();	$r4 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("resolving systemId: ");	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r3);	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>();	virtualinvoke $r7.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project: void log(java.lang.String,int)>($r6, 3);	$z0 = virtualinvoke r3.<java.lang.String: boolean startsWith(java.lang.String)>("file:");	if $z0 == 0 goto $r8 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.helper.ProjectHelper2$RootHandler: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.helper.AntXMLContext context>;	$r8 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.helper.ProjectHelper2$RootHandler: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.helper.AntXMLContext context>;	$r9 = virtualinvoke $r8.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.helper.AntXMLContext: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project getProject()>();	virtualinvoke $r9.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project: void log(java.lang.String,int)>("could not resolve systemId", 4);	return null
;block_num 2