(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1778 0)
(declare-sort var247 0)
(declare-sort var3303 0)
(declare-sort var2657 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun exists/1072868559 (var247) Bool)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1031950772 (String var3303) String)
(declare-fun cast-from-var247-to-var3303 (var247) var3303)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun failOnError/328841187 (var1778) Bool)
(declare-fun var2657-init () var2657)
(declare-fun <init>/1864341934 (var2657 String) void)
(declare-const null-var1778 var1778)
(declare-const null-var247 var247)
(declare-const var1789 var1778) ; Statement: r1 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.SubAnt 
(assert (not (= var1789 null-var1778)))
(declare-const var1104 var247) ; Statement: r0 := @parameter0: java.io.File 
(assert (not (= var1104 null-var247)))
(declare-const var2490 var247) ; Statement: r3 := @parameter1: java.io.File 
(assert (not (= var2490 null-var247)))
(assert true)
(define-const var3966 Bool (exists/1072868559 var1104)) ; Statement: $z0 = virtualinvoke r0.<java.io.File: boolean exists()>() 
 ; Statement: if $z0 == 0 goto $r38 = new java.lang.StringBuilder 
(assert (= (ite var3966 1 0) 0)) ; Cond: $z0 == 0 
(define-const var3228 String String-init) ; Statement: $r38 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3228)) ; Statement: specialinvoke $r38.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3228!1 String)
(assert (= var3228!1 ""))
(assert true)
(define-const var521 String (append/672562846 var3228!1 "Invalid file: ")) ; Statement: $r39 = virtualinvoke $r38.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Invalid file: ") 
(declare-const var3228!2 String)
(assert (= var3228!2 (str.++ var3228!1 "Invalid file: ")))
(assert true)
(define-const var1955 String (append/-1031950772 var521 (cast-from-var247-to-var3303 var1104))) ; Statement: $r40 = virtualinvoke $r39.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r0) 
(declare-const var521!1 String)
(assert (str.prefixof var521 var521!1))
(assert true)
(define-const var3518 String (toString/-2075883882 var1955)) ; Statement: $r41 = virtualinvoke $r40.<java.lang.StringBuilder: java.lang.String toString()>() 
(define-const var466 Bool (failOnError/328841187 var1789)) ; Statement: $z8 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.SubAnt: boolean failOnError> 
 ; Statement: if $z8 == 0 goto virtualinvoke r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.SubAnt: void log(java.lang.String,int)>($r41, 1) 
(assert (not (= (ite var466 1 0) 0))) ; Negate: Cond: $z8 == 0  
(define-const var3014 var2657 var2657-init) ; Statement: $r2 = new com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException 
(assert true)
;(assert (<init>/1864341934 var3014 var3518)) ; Statement: specialinvoke $r2.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException: void <init>(java.lang.String)>($r41) 

(declare-const var3014!1 var2657)
(declare-const var3518!1 String)
 ; Statement: throw $r2 
(check-sat)
(get-model)
(get-unsat-core)
; {exists/1072868559=([java.io.File], boolean), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-var247-to-var3303=([java.io.File], java.lang.Object), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), failOnError/328841187=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.SubAnt], boolean), var2657-init=([], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException), <init>/1864341934=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException, java.lang.String], void)}
; {var1778=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.SubAnt, var1789=r1, var247=java.io.File, var1104=r0, var2490=r3, var3966=$z0, var3228=$r38, var521=$r39, var3303=java.lang.Object, var1955=$r40, var3518=$r41, var466=$z8, var2657=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException, var3014=$r2}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.SubAnt=var1778, r1=var1789, java.io.File=var247, r0=var1104, r3=var2490, $z0=var3966, $r38=var3228, $r39=var521, java.lang.Object=var3303, $r40=var1955, $r41=var3518, $z8=var466, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException=var2657, $r2=var3014}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.SubAnt;	r0 := @parameter0: java.io.File;	r3 := @parameter1: java.io.File;	$z0 = virtualinvoke r0.<java.io.File: boolean exists()>();	if $z0 == 0 goto $r38 = new java.lang.StringBuilder;	$r38 = new java.lang.StringBuilder;	specialinvoke $r38.<java.lang.StringBuilder: void <init>()>();	$r39 = virtualinvoke $r38.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Invalid file: ");	$r40 = virtualinvoke $r39.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r0);	$r41 = virtualinvoke $r40.<java.lang.StringBuilder: java.lang.String toString()>();	$z8 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.SubAnt: boolean failOnError>;	if $z8 == 0 goto virtualinvoke r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.SubAnt: void log(java.lang.String,int)>($r41, 1);	$r2 = new com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException;	specialinvoke $r2.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException: void <init>(java.lang.String)>($r41);	throw $r2
;block_num 3