(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1891 0)
(declare-sort var566 0)
(declare-sort var622 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun validateOutputFile/1847014925 (var1891 String String) String)
(declare-fun getAbsolutePath/-802773300 (var566) String)
(define-fun replace/1524665721 ((s String) (old_char Int) (new_char Int)) String (str.replace_all s (str.from_code old_char) (str.from_code new_char)))
(define-fun isEmpty/-1285796103 ((s String)) Bool (= (str.len s) 0))
(declare-fun getDefaultOutputDirectory/-275374595 (var1891) String)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var1891 var1891)
(declare-const null-var566 var566)
(declare-const null-String String)
(declare-const var794 var1891) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.javacc.JJTree 
(assert (not (= var794 null-var1891)))
(declare-const var2287 var566) ; Statement: r1 := @parameter0: java.io.File 
(assert (not (= var2287 null-var566)))
(declare-const var3413 String) ; Statement: r14 := @parameter1: java.lang.String 
(assert (not (= var3413 null-String)))
(declare-const var397 String) ; Statement: r15 := @parameter2: java.lang.String 
(assert (not (= var397 null-String)))
(assert true)
(define-const var1534 String (validateOutputFile/1847014925 var794 var3413 var397)) ; Statement: r16 = specialinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.javacc.JJTree: java.lang.String validateOutputFile(java.lang.String,java.lang.String)>(r14, r15) 
(assert true)
(define-const var453 String (getAbsolutePath/-802773300 var2287)) ; Statement: $r2 = virtualinvoke r1.<java.io.File: java.lang.String getAbsolutePath()>() 
(assert true)
(define-const var3693 String (replace/1524665721 var453 92 47)) ; Statement: r17 = virtualinvoke $r2.<java.lang.String: java.lang.String replace(char,char)>(92, 47) 
 ; Statement: if r16 == null goto $i2 = virtualinvoke r17.<java.lang.String: int lastIndexOf(int)>(47) 
(assert (not (= var1534 null-String))) ; Negate: Cond: r16 == null  
(assert true)
(define-const var2863 Bool (isEmpty/-1285796103 var1534)) ; Statement: $z2 = virtualinvoke r16.<java.lang.String: boolean isEmpty()>() 
 ; Statement: if $z2 == 0 goto (branch) 
(assert (= (ite var2863 1 0) 0)) ; Cond: $z2 == 0 
 ; Statement: if r15 == null goto r15 = specialinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.javacc.JJTree: java.lang.String getDefaultOutputDirectory()>() 
(assert (= var397 null-String)) ; Cond: r15 == null 
(assert true)
(define-const var397!1 String (getDefaultOutputDirectory/-275374595 var794)) ; Statement: r15 = specialinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.javacc.JJTree: java.lang.String getDefaultOutputDirectory()>() 
(assert true) ; Non Conditional
(define-const var3612 String String-init) ; Statement: $r27 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3612)) ; Statement: specialinvoke $r27.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3612!1 String)
(assert (= var3612!1 ""))
(assert true)
(define-const var3045 String (append/672562846 var3612!1 var397!1)) ; Statement: $r19 = virtualinvoke $r27.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r15) 
(declare-const var3612!2 String)
(assert (= var3612!2 (str.++ var3612!1 var397!1)))
(assert true)
(define-const var3467 String (append/672562846 var3045 "/")) ; Statement: $r20 = virtualinvoke $r19.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("/") 
(declare-const var3045!1 String)
(assert (= var3045!1 (str.++ var3045 "/")))
(assert true)
(define-const var2570 String (append/672562846 var3467 var1534)) ; Statement: $r21 = virtualinvoke $r20.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r16) 
(declare-const var3467!1 String)
(assert (= var3467!1 (str.++ var3467 var1534)))
(assert true)
(define-const var2513 String (toString/-2075883882 var2570)) ; Statement: $r22 = virtualinvoke $r21.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
(define-const var2577 String (replace/1524665721 var2513 92 47)) ; Statement: $r23 = virtualinvoke $r22.<java.lang.String: java.lang.String replace(char,char)>(92, 47) 
 ; Statement: return $r23 
(check-sat)
(get-model)
(get-unsat-core)
; {validateOutputFile/1847014925=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.javacc.JJTree, java.lang.String, java.lang.String], java.lang.String), getAbsolutePath/-802773300=([java.io.File], java.lang.String), replace/1524665721=([java.lang.String, char, char], java.lang.String), isEmpty/-1285796103=([java.lang.String], boolean), getDefaultOutputDirectory/-275374595=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.javacc.JJTree], java.lang.String), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var1891=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.javacc.JJTree, var794=r0, var566=java.io.File, var2287=r1, var3413=r14, var622=null_type, var397=r15, var1534=r16, var453=$r2, var3693=r17, var2863=$z2, var3612=$r27, var3045=$r19, var3467=$r20, var2570=$r21, var2513=$r22, var2577=$r23}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.javacc.JJTree=var1891, r0=var794, java.io.File=var566, r1=var2287, r14=var3413, null_type=var622, r15=var397, r16=var1534, $r2=var453, r17=var3693, $z2=var2863, $r27=var3612, $r19=var3045, $r20=var3467, $r21=var2570, $r22=var2513, $r23=var2577}
;seq <java.lang.String: java.lang.String replace(char,char)>;	<java.lang.String: boolean isEmpty()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.String: java.lang.String replace(char,char)>
;cnt {"<java.lang.String: java.lang.String replace(char,char)>": 2,"<java.lang.String: boolean isEmpty()>": 1,"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.javacc.JJTree;	r1 := @parameter0: java.io.File;	r14 := @parameter1: java.lang.String;	r15 := @parameter2: java.lang.String;	r16 = specialinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.javacc.JJTree: java.lang.String validateOutputFile(java.lang.String,java.lang.String)>(r14, r15);	$r2 = virtualinvoke r1.<java.io.File: java.lang.String getAbsolutePath()>();	r17 = virtualinvoke $r2.<java.lang.String: java.lang.String replace(char,char)>(92, 47);	if r16 == null goto $i2 = virtualinvoke r17.<java.lang.String: int lastIndexOf(int)>(47);	$z2 = virtualinvoke r16.<java.lang.String: boolean isEmpty()>();	if $z2 == 0 goto (branch);	if r15 == null goto r15 = specialinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.javacc.JJTree: java.lang.String getDefaultOutputDirectory()>();	r15 = specialinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.javacc.JJTree: java.lang.String getDefaultOutputDirectory()>();	$r27 = new java.lang.StringBuilder;	specialinvoke $r27.<java.lang.StringBuilder: void <init>()>();	$r19 = virtualinvoke $r27.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r15);	$r20 = virtualinvoke $r19.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("/");	$r21 = virtualinvoke $r20.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r16);	$r22 = virtualinvoke $r21.<java.lang.StringBuilder: java.lang.String toString()>();	$r23 = virtualinvoke $r22.<java.lang.String: java.lang.String replace(char,char)>(92, 47);	return $r23
;block_num 5