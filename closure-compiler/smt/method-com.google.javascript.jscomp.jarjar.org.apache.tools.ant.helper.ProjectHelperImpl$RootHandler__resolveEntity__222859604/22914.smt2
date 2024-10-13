(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var983 0)
(declare-sort var2570 0)
(declare-sort var3667 0)
(declare-sort var1034 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun helperImpl/-2078893078 (var983) var3667)
(declare-fun var3667_access$200/-477759237 (var3667) var1034)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun log/2093317233 (var1034 String Int) void)
(define-fun startsWith/-1785782452 ((s String) (prefix String)) Bool (str.prefixof prefix s))
(declare-const null-var983 var983)
(declare-const null-String String)
(declare-const var3427 var983) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.helper.ProjectHelperImpl$RootHandler 
(assert (not (= var3427 null-var983)))
(declare-const var1692 String) ; Statement: r43 := @parameter0: java.lang.String 
(assert (not (= var1692 null-String)))
(declare-const var535 String) ; Statement: r3 := @parameter1: java.lang.String 
(assert (not (= var535 null-String)))
(define-const var916 var3667 (helperImpl/-2078893078 var3427)) ; Statement: $r1 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.helper.ProjectHelperImpl$RootHandler: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.helper.ProjectHelperImpl helperImpl> 
(define-const var1745 var1034 (var3667_access$200/-477759237 var916)) ; Statement: $r7 = staticinvoke <com.google.javascript.jscomp.jarjar.org.apache.tools.ant.helper.ProjectHelperImpl: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project access$200(com.google.javascript.jscomp.jarjar.org.apache.tools.ant.helper.ProjectHelperImpl)>($r1) 
(define-const var2316 String String-init) ; Statement: $r2 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2316)) ; Statement: specialinvoke $r2.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2316!1 String)
(assert (= var2316!1 ""))
(assert true)
(define-const var2768 String (append/672562846 var2316!1 "resolving systemId: ")) ; Statement: $r4 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("resolving systemId: ") 
(declare-const var2316!2 String)
(assert (= var2316!2 (str.++ var2316!1 "resolving systemId: ")))
(assert true)
(define-const var1374 String (append/672562846 var2768 var535)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r3) 
(declare-const var2768!1 String)
(assert (= var2768!1 (str.++ var2768 var535)))
(assert true)
(define-const var2255 String (toString/-2075883882 var1374)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (log/2093317233 var1745 var2255 3)) ; Statement: virtualinvoke $r7.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project: void log(java.lang.String,int)>($r6, 3) 

(declare-const var1745!1 var1034)
(declare-const var2255!1 String)
(declare-const var3094 Int)
(assert true)
(define-const var3954 Bool (startsWith/-1785782452 var535 "file:")) ; Statement: $z0 = virtualinvoke r3.<java.lang.String: boolean startsWith(java.lang.String)>("file:") 
 ; Statement: if $z0 == 0 goto return null 
(assert (= (ite var3954 1 0) 0)) ; Cond: $z0 == 0 
 ; Statement: return null 
(check-sat)
(get-model)
(get-unsat-core)
; {helperImpl/-2078893078=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.helper.ProjectHelperImpl$RootHandler], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.helper.ProjectHelperImpl), var3667_access$200/-477759237=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.helper.ProjectHelperImpl], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), log/2093317233=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project, java.lang.String, int], void), startsWith/-1785782452=([java.lang.String, java.lang.String], boolean)}
; {var983=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.helper.ProjectHelperImpl$RootHandler, var3427=r0, var1692=r43, var2570=null_type, var535=r3, var3667=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.helper.ProjectHelperImpl, var916=$r1, var1034=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project, var1745=$r7, var2316=$r2, var2768=$r4, var1374=$r5, var2255=$r6, var3094=3, var3954=$z0}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.helper.ProjectHelperImpl$RootHandler=var983, r0=var3427, r43=var1692, null_type=var2570, r3=var535, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.helper.ProjectHelperImpl=var3667, $r1=var916, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project=var1034, $r7=var1745, $r2=var2316, $r4=var2768, $r5=var1374, $r6=var2255, 3=var3094, $z0=var3954}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.String: boolean startsWith(java.lang.String)>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1,"<java.lang.String: boolean startsWith(java.lang.String)>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.helper.ProjectHelperImpl$RootHandler;	r43 := @parameter0: java.lang.String;	r3 := @parameter1: java.lang.String;	$r1 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.helper.ProjectHelperImpl$RootHandler: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.helper.ProjectHelperImpl helperImpl>;	$r7 = staticinvoke <com.google.javascript.jscomp.jarjar.org.apache.tools.ant.helper.ProjectHelperImpl: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project access$200(com.google.javascript.jscomp.jarjar.org.apache.tools.ant.helper.ProjectHelperImpl)>($r1);	$r2 = new java.lang.StringBuilder;	specialinvoke $r2.<java.lang.StringBuilder: void <init>()>();	$r4 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("resolving systemId: ");	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r3);	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>();	virtualinvoke $r7.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project: void log(java.lang.String,int)>($r6, 3);	$z0 = virtualinvoke r3.<java.lang.String: boolean startsWith(java.lang.String)>("file:");	if $z0 == 0 goto return null;	return null
;block_num 2