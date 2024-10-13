(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3108 0)
(declare-sort var3151 0)
(declare-sort var936 0)
(declare-sort var2893 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/-1061048412 ((s String)) String s)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun pop/1012470055 (var3151) var936)
(declare-fun cast-from-var936-to-String (var936) String)
(declare-fun var2893-init () var2893)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/1864341934 (var2893 String) void)
(declare-const null-String String)
(declare-const null-var3151 var3151)
(declare-const var161 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var161 null-String)))
(declare-const var3506 var3151) ; Statement: r2 := @parameter1: java.util.Stack 
(assert (not (= var3506 null-var3151)))
(define-const var2458 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/-1061048412 var2458 "Circular dependency: ")) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>(java.lang.String)>("Circular dependency: ") 
(declare-const var2458!1 String)
(assert (= var2458!1 "Circular dependency: "))
(assert true)
;(assert (append/672562846 var2458!1 var161)) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1) 
(declare-const var2458!2 String)
(assert (= var2458!2 (str.++ var2458!1 var161)))
(assert true) ; Non Conditional
(assert true)
(define-const var515 var936 (pop/1012470055 var3506)) ; Statement: $r3 = virtualinvoke r2.<java.util.Stack: java.lang.Object pop()>() 
(define-const var3717 String (cast-from-var936-to-String var515)) ; Statement: $r4 = (java.lang.String) $r3 
(assert true)
;(assert (append/672562846 var2458!2 " <- ")) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" <- ") 
(declare-const var2458!3 String)
(assert (= var2458!3 (str.++ var2458!2 " <- ")))
(assert true)
;(assert (append/672562846 var2458!3 var3717)) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r4) 
(declare-const var2458!4 String)
(assert (= var2458!4 (str.++ var2458!3 var3717)))
(assert true)
(define-const var1247 Bool (= var3717 var161)) ; Statement: $z0 = virtualinvoke $r4.<java.lang.String: boolean equals(java.lang.Object)>(r1) 
 ; Statement: if $z0 == 0 goto $r3 = virtualinvoke r2.<java.util.Stack: java.lang.Object pop()>() 
(assert (not (= (ite var1247 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var2233 var2893 var2893-init) ; Statement: $r5 = new com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException 
(assert true)
(define-const var1242 String (toString/-2075883882 var2458!4)) ; Statement: $r6 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/1864341934 var2233 var1242)) ; Statement: specialinvoke $r5.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException: void <init>(java.lang.String)>($r6) 

(declare-const var2233!1 var2893)
(declare-const var1242!1 String)
 ; Statement: return $r5 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/-1061048412=([java.lang.StringBuilder, java.lang.String], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), pop/1012470055=([java.util.Stack], java.lang.Object), cast-from-var936-to-String=([java.lang.Object], java.lang.String), var2893-init=([], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/1864341934=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException, java.lang.String], void)}
; {var161=r1, var3108=null_type, var3151=java.util.Stack, var3506=r2, var2458=$r0, var936=java.lang.Object, var515=$r3, var3717=$r4, var1247=$z0, var2893=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException, var2233=$r5, var1242=$r6}
; {r1=var161, null_type=var3108, java.util.Stack=var3151, r2=var3506, $r0=var2458, java.lang.Object=var936, $r3=var515, $r4=var3717, $z0=var1247, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException=var2893, $r5=var2233, $r6=var1242}
;seq <java.lang.StringBuilder: void <init>(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.String: boolean equals(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.String: boolean equals(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @parameter0: java.lang.String;	r2 := @parameter1: java.util.Stack;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>(java.lang.String)>("Circular dependency: ");	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1);	$r3 = virtualinvoke r2.<java.util.Stack: java.lang.Object pop()>();	$r4 = (java.lang.String) $r3;	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" <- ");	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r4);	$z0 = virtualinvoke $r4.<java.lang.String: boolean equals(java.lang.Object)>(r1);	if $z0 == 0 goto $r3 = virtualinvoke r2.<java.util.Stack: java.lang.Object pop()>();	$r5 = new com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException;	$r6 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r5.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException: void <init>(java.lang.String)>($r6);	return $r5
;block_num 3