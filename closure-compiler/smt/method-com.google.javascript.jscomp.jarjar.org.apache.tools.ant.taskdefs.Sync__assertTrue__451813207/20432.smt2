(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1305 0)
(declare-sort var3346 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var3346-init () var3346)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/1864341934 (var3346 String) void)
(declare-const null-String String)
(declare-const null-Bool Bool)
(declare-const var1727 String) ; Statement: r2 := @parameter0: java.lang.String 
(assert (not (= var1727 null-String)))
(declare-const var449 Bool) ; Statement: z0 := @parameter1: boolean 
(assert (not (= var449 null-Bool)))
 ; Statement: if z0 != 0 goto return 
(assert (not (not (= (ite var449 1 0) 0)))) ; Negate: Cond: z0 != 0  
(define-const var789 var3346 var3346-init) ; Statement: $r0 = new com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException 
(define-const var485 String String-init) ; Statement: $r1 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var485)) ; Statement: specialinvoke $r1.<java.lang.StringBuilder: void <init>()>() 
(declare-const var485!1 String)
(assert (= var485!1 ""))
(assert true)
(define-const var3999 String (append/672562846 var485!1 "Assertion Error: ")) ; Statement: $r3 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Assertion Error: ") 
(declare-const var485!2 String)
(assert (= var485!2 (str.++ var485!1 "Assertion Error: ")))
(assert true)
(define-const var3899 String (append/672562846 var3999 var1727)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r2) 
(declare-const var3999!1 String)
(assert (= var3999!1 (str.++ var3999 var1727)))
(assert true)
(define-const var3514 String (toString/-2075883882 var3899)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/1864341934 var789 var3514)) ; Statement: specialinvoke $r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException: void <init>(java.lang.String)>($r5) 

(declare-const var789!1 var3346)
(declare-const var3514!1 String)
 ; Statement: throw $r0 
(check-sat)
(get-model)
(get-unsat-core)
; {var3346-init=([], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/1864341934=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException, java.lang.String], void)}
; {var1727=r2, var1305=null_type, var449=z0, var3346=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException, var789=$r0, var485=$r1, var3999=$r3, var3899=$r4, var3514=$r5}
; {r2=var1727, null_type=var1305, z0=var449, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException=var3346, $r0=var789, $r1=var485, $r3=var3999, $r4=var3899, $r5=var3514}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r2 := @parameter0: java.lang.String;	z0 := @parameter1: boolean;	if z0 != 0 goto return;	$r0 = new com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException;	$r1 = new java.lang.StringBuilder;	specialinvoke $r1.<java.lang.StringBuilder: void <init>()>();	$r3 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Assertion Error: ");	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r2);	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException: void <init>(java.lang.String)>($r5);	throw $r0
;block_num 2