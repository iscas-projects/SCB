(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var149 0)
(declare-sort var673 0)
(declare-sort var1713 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun project/-241981961 (var149) var673)
(declare-fun var1713-init () var1713)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun refid/-241981961 (var149) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/1864341934 (var1713 String) void)
(declare-const null-var149 var149)
(declare-const null-var673 var673)
(declare-const var2819 var149) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Reference 
(assert (not (= var2819 null-var149)))
(define-const var3178 var673 (project/-241981961 var2819)) ; Statement: $r1 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Reference: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project project> 
 ; Statement: if $r1 != null goto $r2 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Reference: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project project> 
(assert (not (not (= var3178 null-var673)))) ; Negate: Cond: $r1 != null  
(define-const var2432 var1713 var1713-init) ; Statement: $r4 = new com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException 
(define-const var2386 String String-init) ; Statement: $r5 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2386)) ; Statement: specialinvoke $r5.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2386!1 String)
(assert (= var2386!1 ""))
(assert true)
(define-const var3625 String (append/672562846 var2386!1 "No project set on reference to ")) ; Statement: $r7 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("No project set on reference to ") 
(declare-const var2386!2 String)
(assert (= var2386!2 (str.++ var2386!1 "No project set on reference to ")))
(define-const var1561 String (refid/-241981961 var2819)) ; Statement: $r6 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Reference: java.lang.String refid> 
(assert true)
(define-const var2473 String (append/672562846 var3625 var1561)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r6) 
(declare-const var3625!1 String)
(assert (= var3625!1 (str.++ var3625 var1561)))
(assert true)
(define-const var2972 String (toString/-2075883882 var2473)) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/1864341934 var2432 var2972)) ; Statement: specialinvoke $r4.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException: void <init>(java.lang.String)>($r9) 

(declare-const var2432!1 var1713)
(declare-const var2972!1 String)
 ; Statement: throw $r4 
(check-sat)
(get-model)
(get-unsat-core)
; {project/-241981961=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Reference], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project), var1713-init=([], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), refid/-241981961=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Reference], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/1864341934=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException, java.lang.String], void)}
; {var149=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Reference, var2819=r0, var673=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project, var3178=$r1, var1713=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException, var2432=$r4, var2386=$r5, var3625=$r7, var1561=$r6, var2473=$r8, var2972=$r9}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Reference=var149, r0=var2819, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project=var673, $r1=var3178, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException=var1713, $r4=var2432, $r5=var2386, $r7=var3625, $r6=var1561, $r8=var2473, $r9=var2972}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Reference;	$r1 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Reference: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project project>;	if $r1 != null goto $r2 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Reference: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project project>;	$r4 = new com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException;	$r5 = new java.lang.StringBuilder;	specialinvoke $r5.<java.lang.StringBuilder: void <init>()>();	$r7 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("No project set on reference to ");	$r6 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Reference: java.lang.String refid>;	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r6);	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r4.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException: void <init>(java.lang.String)>($r9);	throw $r4
;block_num 2