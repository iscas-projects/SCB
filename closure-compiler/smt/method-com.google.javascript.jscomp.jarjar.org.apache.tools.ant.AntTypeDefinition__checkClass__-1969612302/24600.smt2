(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2291 0)
(declare-sort var2592 0)
(declare-sort var623 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun clazz/-1461999723 (var2291) ClassObject)
(declare-fun getTypeClass/1440337948 (var2291 var2592) ClassObject)
(declare-fun var623-init () var623)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getName/-2064347328 (var2291) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/1864341934 (var623 String) void)
(declare-const null-var2291 var2291)
(declare-const null-var2592 var2592)
(declare-const null-ClassObject ClassObject)
(declare-const var685 var2291) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.AntTypeDefinition 
(assert (not (= var685 null-var2291)))
(declare-const var1729 var2592) ; Statement: r4 := @parameter0: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project 
(assert (not (= var1729 null-var2592)))
(define-const var614 ClassObject (clazz/-1461999723 var685)) ; Statement: $r1 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.AntTypeDefinition: java.lang.Class clazz> 
 ; Statement: if $r1 != null goto $r2 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.AntTypeDefinition: java.lang.Class adapterClass> 
(assert (not (not (= var614 null-ClassObject)))) ; Negate: Cond: $r1 != null  
(assert true)
(define-const var3639 ClassObject (getTypeClass/1440337948 var685 var1729)) ; Statement: $r11 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.AntTypeDefinition: java.lang.Class getTypeClass(com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project)>(r4) 
(declare-const var685!1 var2291)
(assert (not (= var685!1 null-var2291)))
(assert (= (clazz/-1461999723 var685!1) var3639)) ; Statement: r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.AntTypeDefinition: java.lang.Class clazz> = $r11 
(define-const var3301 ClassObject (clazz/-1461999723 var685!1)) ; Statement: $r12 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.AntTypeDefinition: java.lang.Class clazz> 
 ; Statement: if $r12 != null goto $r2 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.AntTypeDefinition: java.lang.Class adapterClass> 
(assert (not (not (= var3301 null-ClassObject)))) ; Negate: Cond: $r12 != null  
(define-const var2189 var623 var623-init) ; Statement: $r13 = new com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException 
(define-const var6 String String-init) ; Statement: $r14 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var6)) ; Statement: specialinvoke $r14.<java.lang.StringBuilder: void <init>()>() 
(declare-const var6!1 String)
(assert (= var6!1 ""))
(assert true)
(define-const var396 String (append/672562846 var6!1 "Unable to create class for ")) ; Statement: $r16 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Unable to create class for ") 
(declare-const var6!2 String)
(assert (= var6!2 (str.++ var6!1 "Unable to create class for ")))
(assert true)
(define-const var2299 String (getName/-2064347328 var685!1)) ; Statement: $r15 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.AntTypeDefinition: java.lang.String getName()>() 
(assert true)
(define-const var728 String (append/672562846 var396 var2299)) ; Statement: $r17 = virtualinvoke $r16.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r15) 
(declare-const var396!1 String)
(assert (= var396!1 (str.++ var396 var2299)))
(assert true)
(define-const var2699 String (toString/-2075883882 var728)) ; Statement: $r18 = virtualinvoke $r17.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/1864341934 var2189 var2699)) ; Statement: specialinvoke $r13.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException: void <init>(java.lang.String)>($r18) 

(declare-const var2189!1 var623)
(declare-const var2699!1 String)
 ; Statement: throw $r13 
(check-sat)
(get-model)
(get-unsat-core)
; {clazz/-1461999723=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.AntTypeDefinition], java.lang.Class), getTypeClass/1440337948=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.AntTypeDefinition, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project], java.lang.Class), var623-init=([], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), getName/-2064347328=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.AntTypeDefinition], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/1864341934=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException, java.lang.String], void)}
; {var2291=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.AntTypeDefinition, var685=r0, var2592=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project, var1729=r4, var614=$r1, var3639=$r11, var3301=$r12, var623=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException, var2189=$r13, var6=$r14, var396=$r16, var2299=$r15, var728=$r17, var2699=$r18}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.AntTypeDefinition=var2291, r0=var685, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project=var2592, r4=var1729, $r1=var614, $r11=var3639, $r12=var3301, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException=var623, $r13=var2189, $r14=var6, $r16=var396, $r15=var2299, $r17=var728, $r18=var2699}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.AntTypeDefinition;	r4 := @parameter0: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project;	$r1 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.AntTypeDefinition: java.lang.Class clazz>;	if $r1 != null goto $r2 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.AntTypeDefinition: java.lang.Class adapterClass>;	$r11 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.AntTypeDefinition: java.lang.Class getTypeClass(com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project)>(r4);	r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.AntTypeDefinition: java.lang.Class clazz> = $r11;	$r12 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.AntTypeDefinition: java.lang.Class clazz>;	if $r12 != null goto $r2 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.AntTypeDefinition: java.lang.Class adapterClass>;	$r13 = new com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException;	$r14 = new java.lang.StringBuilder;	specialinvoke $r14.<java.lang.StringBuilder: void <init>()>();	$r16 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Unable to create class for ");	$r15 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.AntTypeDefinition: java.lang.String getName()>();	$r17 = virtualinvoke $r16.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r15);	$r18 = virtualinvoke $r17.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r13.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException: void <init>(java.lang.String)>($r18);	throw $r13
;block_num 3