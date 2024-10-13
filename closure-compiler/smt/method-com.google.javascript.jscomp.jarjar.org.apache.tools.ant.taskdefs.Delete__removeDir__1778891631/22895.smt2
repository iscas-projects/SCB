(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2932 0)
(declare-sort var68 0)
(declare-sort var3411 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun list/1458469088 (var68) (Array Int String))
(declare-fun getLength-Arr-String-1 ((Array Int String)) Int)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getAbsolutePath/-802773300 (var68) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun verbosity/-115039737 (var2932) Int)
(declare-fun log/456963423 (var3411 String Int) void)
(declare-fun cast-from-var2932-to-var3411 (var2932) var3411)
(declare-fun delete/-1376537623 (var2932 var68) Bool)
(declare-const null-var2932 var2932)
(declare-const null-var68 var68)
(declare-const null-__Array__Int__String__ (Array Int String))
(declare-const var1055 var2932) ; Statement: r2 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Delete 
(assert (not (= var1055 null-var2932)))
(declare-const var1915 var68) ; Statement: r0 := @parameter0: java.io.File 
(assert (not (= var1915 null-var68)))
(assert true)
(define-const var2596 (Array Int String) (list/1458469088 var1915)) ; Statement: r25 = virtualinvoke r0.<java.io.File: java.lang.String[] list()>() 
 ; Statement: if r25 != null goto r1 = r25 
(assert (not (= var2596 null-__Array__Int__String__))) ; Cond: r25 != null 
(define-const var2784 (Array Int String) var2596) ; Statement: r1 = r25 
(define-const var194 Int (getLength-Arr-String-1 var2596)) ; Statement: $i1 = lengthof r25 
(define-const var1526 Int 0) ; Statement: i2 = 0 
(assert true) ; Non Conditional
 ; Statement: if i2 >= $i1 goto $r3 = new java.lang.StringBuilder 
(assert (>= var1526 var194)) ; Cond: i2 >= $i1 
(define-const var3371 String String-init) ; Statement: $r3 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3371)) ; Statement: specialinvoke $r3.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3371!1 String)
(assert (= var3371!1 ""))
(assert true)
(define-const var2016 String (append/672562846 var3371!1 "Deleting directory ")) ; Statement: $r5 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Deleting directory ") 
(declare-const var3371!2 String)
(assert (= var3371!2 (str.++ var3371!1 "Deleting directory ")))
(assert true)
(define-const var2575 String (getAbsolutePath/-802773300 var1915)) ; Statement: $r4 = virtualinvoke r0.<java.io.File: java.lang.String getAbsolutePath()>() 
(assert true)
(define-const var405 String (append/672562846 var2016 var2575)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r4) 
(declare-const var2016!1 String)
(assert (= var2016!1 (str.++ var2016 var2575)))
(assert true)
(define-const var697 String (toString/-2075883882 var405)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>() 
(define-const var551 Int (verbosity/-115039737 var1055)) ; Statement: $i0 = r2.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Delete: int verbosity> 
(assert true)
;(assert (log/456963423 (cast-from-var2932-to-var3411 var1055) var697 var551)) ; Statement: virtualinvoke r2.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Delete: void log(java.lang.String,int)>($r7, $i0) 

(declare-const var1055!1 var2932)
(declare-const var697!1 String)
(declare-const var551!1 Int)
(assert true)
(define-const var302 Bool (delete/-1376537623 var1055!1 var1915)) ; Statement: $z0 = specialinvoke r2.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Delete: boolean delete(java.io.File)>(r0) 
 ; Statement: if $z0 != 0 goto return 
(assert (not (= (ite var302 1 0) 0))) ; Cond: $z0 != 0 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {list/1458469088=([java.io.File], java.lang.String[]), getLength-Arr-String-1=([java.lang.String[]], int), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), getAbsolutePath/-802773300=([java.io.File], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), verbosity/-115039737=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Delete], int), log/456963423=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Task, java.lang.String, int], void), cast-from-var2932-to-var3411=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Delete], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Task), delete/-1376537623=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Delete, java.io.File], boolean)}
; {var2932=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Delete, var1055=r2, var68=java.io.File, var1915=r0, var2596=r25, var2784=r1, var194=$i1, var1526=i2, var3371=$r3, var2016=$r5, var2575=$r4, var405=$r6, var697=$r7, var551=$i0, var3411=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Task, var302=$z0}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Delete=var2932, r2=var1055, java.io.File=var68, r0=var1915, r25=var2596, r1=var2784, $i1=var194, i2=var1526, $r3=var3371, $r5=var2016, $r4=var2575, $r6=var405, $r7=var697, $i0=var551, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Task=var3411, $z0=var302}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r2 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Delete;	r0 := @parameter0: java.io.File;	r25 = virtualinvoke r0.<java.io.File: java.lang.String[] list()>();	if r25 != null goto r1 = r25;	r1 = r25;	$i1 = lengthof r25;	i2 = 0;	if i2 >= $i1 goto $r3 = new java.lang.StringBuilder;	$r3 = new java.lang.StringBuilder;	specialinvoke $r3.<java.lang.StringBuilder: void <init>()>();	$r5 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Deleting directory ");	$r4 = virtualinvoke r0.<java.io.File: java.lang.String getAbsolutePath()>();	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r4);	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>();	$i0 = r2.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Delete: int verbosity>;	virtualinvoke r2.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Delete: void log(java.lang.String,int)>($r7, $i0);	$z0 = specialinvoke r2.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Delete: boolean delete(java.io.File)>(r0);	if $z0 != 0 goto return;	return
;block_num 5