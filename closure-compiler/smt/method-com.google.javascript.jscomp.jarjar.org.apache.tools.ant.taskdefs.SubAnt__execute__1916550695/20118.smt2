(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3607 0)
(declare-sort var765 0)
(declare-sort var2597 0)
(declare-sort var3049 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun exists/1072868559 (var765) Bool)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1031950772 (String var2597) String)
(declare-fun cast-from-var765-to-var2597 (var765) var2597)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun failOnError/328841187 (var3607) Bool)
(declare-fun log/456963423 (var3049 String Int) void)
(declare-fun cast-from-var3607-to-var3049 (var3607) var3049)
(declare-const null-var3607 var3607)
(declare-const null-var765 var765)
(declare-const var1757 var3607) ; Statement: r1 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.SubAnt 
(assert (not (= var1757 null-var3607)))
(declare-const var3351 var765) ; Statement: r0 := @parameter0: java.io.File 
(assert (not (= var3351 null-var765)))
(declare-const var2350 var765) ; Statement: r3 := @parameter1: java.io.File 
(assert (not (= var2350 null-var765)))
(assert true)
(define-const var242 Bool (exists/1072868559 var3351)) ; Statement: $z0 = virtualinvoke r0.<java.io.File: boolean exists()>() 
 ; Statement: if $z0 == 0 goto $r38 = new java.lang.StringBuilder 
(assert (= (ite var242 1 0) 0)) ; Cond: $z0 == 0 
(define-const var1587 String String-init) ; Statement: $r38 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1587)) ; Statement: specialinvoke $r38.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1587!1 String)
(assert (= var1587!1 ""))
(assert true)
(define-const var3244 String (append/672562846 var1587!1 "Invalid file: ")) ; Statement: $r39 = virtualinvoke $r38.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Invalid file: ") 
(declare-const var1587!2 String)
(assert (= var1587!2 (str.++ var1587!1 "Invalid file: ")))
(assert true)
(define-const var2371 String (append/-1031950772 var3244 (cast-from-var765-to-var2597 var3351))) ; Statement: $r40 = virtualinvoke $r39.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r0) 
(declare-const var3244!1 String)
(assert (str.prefixof var3244 var3244!1))
(assert true)
(define-const var2921 String (toString/-2075883882 var2371)) ; Statement: $r41 = virtualinvoke $r40.<java.lang.StringBuilder: java.lang.String toString()>() 
(define-const var1250 Bool (failOnError/328841187 var1757)) ; Statement: $z8 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.SubAnt: boolean failOnError> 
 ; Statement: if $z8 == 0 goto virtualinvoke r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.SubAnt: void log(java.lang.String,int)>($r41, 1) 
(assert (= (ite var1250 1 0) 0)) ; Cond: $z8 == 0 
(assert true)
;(assert (log/456963423 (cast-from-var3607-to-var3049 var1757) var2921 1)) ; Statement: virtualinvoke r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.SubAnt: void log(java.lang.String,int)>($r41, 1) 

(declare-const var1757!1 var3607)
(declare-const var2921!1 String)
(declare-const var2609 Int)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {exists/1072868559=([java.io.File], boolean), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-var765-to-var2597=([java.io.File], java.lang.Object), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), failOnError/328841187=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.SubAnt], boolean), log/456963423=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Task, java.lang.String, int], void), cast-from-var3607-to-var3049=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.SubAnt], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Task)}
; {var3607=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.SubAnt, var1757=r1, var765=java.io.File, var3351=r0, var2350=r3, var242=$z0, var1587=$r38, var3244=$r39, var2597=java.lang.Object, var2371=$r40, var2921=$r41, var1250=$z8, var3049=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Task, var2609=1}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.SubAnt=var3607, r1=var1757, java.io.File=var765, r0=var3351, r3=var2350, $z0=var242, $r38=var1587, $r39=var3244, java.lang.Object=var2597, $r40=var2371, $r41=var2921, $z8=var1250, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Task=var3049, 1=var2609}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.SubAnt;	r0 := @parameter0: java.io.File;	r3 := @parameter1: java.io.File;	$z0 = virtualinvoke r0.<java.io.File: boolean exists()>();	if $z0 == 0 goto $r38 = new java.lang.StringBuilder;	$r38 = new java.lang.StringBuilder;	specialinvoke $r38.<java.lang.StringBuilder: void <init>()>();	$r39 = virtualinvoke $r38.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Invalid file: ");	$r40 = virtualinvoke $r39.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r0);	$r41 = virtualinvoke $r40.<java.lang.StringBuilder: java.lang.String toString()>();	$z8 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.SubAnt: boolean failOnError>;	if $z8 == 0 goto virtualinvoke r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.SubAnt: void log(java.lang.String,int)>($r41, 1);	virtualinvoke r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.SubAnt: void log(java.lang.String,int)>($r41, 1);	return
;block_num 3