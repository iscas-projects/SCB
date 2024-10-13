(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1706 0)
(declare-sort var1095 0)
(declare-sort var3548 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun log/456963423 (var3548 String Int) void)
(declare-fun cast-from-var1706-to-var3548 (var1706) var3548)
(declare-const null-var1706 var1706)
(declare-const null-String String)
(declare-const var135 var1706) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Jar 
(assert (not (= var135 null-var1706)))
(declare-const var1599 String) ; Statement: r2 := @parameter0: java.lang.String 
(assert (not (= var1599 null-String)))
(define-const var613 String String-init) ; Statement: $r1 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var613)) ; Statement: specialinvoke $r1.<java.lang.StringBuilder: void <init>()>() 
(declare-const var613!1 String)
(assert (= var613!1 ""))
(assert true)
(define-const var1827 String (append/672562846 var613!1 "Manifest warning: ")) ; Statement: $r3 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Manifest warning: ") 
(declare-const var613!2 String)
(assert (= var613!2 (str.++ var613!1 "Manifest warning: ")))
(assert true)
(define-const var3500 String (append/672562846 var1827 var1599)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r2) 
(declare-const var1827!1 String)
(assert (= var1827!1 (str.++ var1827 var1599)))
(assert true)
(define-const var2160 String (toString/-2075883882 var3500)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (log/456963423 (cast-from-var1706-to-var3548 var135) var2160 1)) ; Statement: virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Jar: void log(java.lang.String,int)>($r5, 1) 

(declare-const var135!1 var1706)
(declare-const var2160!1 String)
(declare-const var2662 Int)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), log/456963423=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Task, java.lang.String, int], void), cast-from-var1706-to-var3548=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Jar], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Task)}
; {var1706=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Jar, var135=r0, var1599=r2, var1095=null_type, var613=$r1, var1827=$r3, var3500=$r4, var2160=$r5, var3548=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Task, var2662=1}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Jar=var1706, r0=var135, r2=var1599, null_type=var1095, $r1=var613, $r3=var1827, $r4=var3500, $r5=var2160, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Task=var3548, 1=var2662}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Jar;	r2 := @parameter0: java.lang.String;	$r1 = new java.lang.StringBuilder;	specialinvoke $r1.<java.lang.StringBuilder: void <init>()>();	$r3 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Manifest warning: ");	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r2);	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>();	virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Jar: void log(java.lang.String,int)>($r5, 1);	return
;block_num 1