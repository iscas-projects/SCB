(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var178 0)
(declare-sort var1722 0)
(declare-sort var134 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun validateOutputFile/1847014925 (var178 String String) String)
(declare-fun getAbsolutePath/-802773300 (var1722) String)
(define-fun replace/1524665721 ((s String) (old_char Int) (new_char Int)) String (str.replace_all s (str.from_code old_char) (str.from_code new_char)))
(define-fun isEmpty/-1285796103 ((s String)) Bool (= (str.len s) 0))
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var178 var178)
(declare-const null-var1722 var1722)
(declare-const null-String String)
(declare-const var3916 var178) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.javacc.JJTree 
(assert (not (= var3916 null-var178)))
(declare-const var2047 var1722) ; Statement: r1 := @parameter0: java.io.File 
(assert (not (= var2047 null-var1722)))
(declare-const var3934 String) ; Statement: r14 := @parameter1: java.lang.String 
(assert (not (= var3934 null-String)))
(declare-const var2575 String) ; Statement: r15 := @parameter2: java.lang.String 
(assert (not (= var2575 null-String)))
(assert true)
(define-const var3842 String (validateOutputFile/1847014925 var3916 var3934 var2575)) ; Statement: r16 = specialinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.javacc.JJTree: java.lang.String validateOutputFile(java.lang.String,java.lang.String)>(r14, r15) 
(assert true)
(define-const var3287 String (getAbsolutePath/-802773300 var2047)) ; Statement: $r2 = virtualinvoke r1.<java.io.File: java.lang.String getAbsolutePath()>() 
(assert true)
(define-const var1008 String (replace/1524665721 var3287 92 47)) ; Statement: r17 = virtualinvoke $r2.<java.lang.String: java.lang.String replace(char,char)>(92, 47) 
 ; Statement: if r16 == null goto $i2 = virtualinvoke r17.<java.lang.String: int lastIndexOf(int)>(47) 
(assert (not (= var3842 null-String))) ; Negate: Cond: r16 == null  
(assert true)
(define-const var2779 Bool (isEmpty/-1285796103 var3842)) ; Statement: $z2 = virtualinvoke r16.<java.lang.String: boolean isEmpty()>() 
 ; Statement: if $z2 == 0 goto (branch) 
(assert (= (ite var2779 1 0) 0)) ; Cond: $z2 == 0 
 ; Statement: if r15 == null goto r15 = specialinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.javacc.JJTree: java.lang.String getDefaultOutputDirectory()>() 
(assert (not (= var2575 null-String))) ; Negate: Cond: r15 == null  
(assert true)
(define-const var584 Bool (isEmpty/-1285796103 var2575)) ; Statement: $z1 = virtualinvoke r15.<java.lang.String: boolean isEmpty()>() 
 ; Statement: if $z1 == 0 goto $r27 = new java.lang.StringBuilder 
(assert (= (ite var584 1 0) 0)) ; Cond: $z1 == 0 
(define-const var1835 String String-init) ; Statement: $r27 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1835)) ; Statement: specialinvoke $r27.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1835!1 String)
(assert (= var1835!1 ""))
(assert true)
(define-const var2232 String (append/672562846 var1835!1 var2575)) ; Statement: $r19 = virtualinvoke $r27.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r15) 
(declare-const var1835!2 String)
(assert (= var1835!2 (str.++ var1835!1 var2575)))
(assert true)
(define-const var193 String (append/672562846 var2232 "/")) ; Statement: $r20 = virtualinvoke $r19.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("/") 
(declare-const var2232!1 String)
(assert (= var2232!1 (str.++ var2232 "/")))
(assert true)
(define-const var2595 String (append/672562846 var193 var3842)) ; Statement: $r21 = virtualinvoke $r20.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r16) 
(declare-const var193!1 String)
(assert (= var193!1 (str.++ var193 var3842)))
(assert true)
(define-const var2012 String (toString/-2075883882 var2595)) ; Statement: $r22 = virtualinvoke $r21.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
(define-const var570 String (replace/1524665721 var2012 92 47)) ; Statement: $r23 = virtualinvoke $r22.<java.lang.String: java.lang.String replace(char,char)>(92, 47) 
 ; Statement: return $r23 
(check-sat)
(get-model)
(get-unsat-core)
; {validateOutputFile/1847014925=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.javacc.JJTree, java.lang.String, java.lang.String], java.lang.String), getAbsolutePath/-802773300=([java.io.File], java.lang.String), replace/1524665721=([java.lang.String, char, char], java.lang.String), isEmpty/-1285796103=([java.lang.String], boolean), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var178=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.javacc.JJTree, var3916=r0, var1722=java.io.File, var2047=r1, var3934=r14, var134=null_type, var2575=r15, var3842=r16, var3287=$r2, var1008=r17, var2779=$z2, var584=$z1, var1835=$r27, var2232=$r19, var193=$r20, var2595=$r21, var2012=$r22, var570=$r23}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.javacc.JJTree=var178, r0=var3916, java.io.File=var1722, r1=var2047, r14=var3934, null_type=var134, r15=var2575, r16=var3842, $r2=var3287, r17=var1008, $z2=var2779, $z1=var584, $r27=var1835, $r19=var2232, $r20=var193, $r21=var2595, $r22=var2012, $r23=var570}
;seq <java.lang.String: java.lang.String replace(char,char)>;	<java.lang.String: boolean isEmpty()>;	<java.lang.String: boolean isEmpty()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.String: java.lang.String replace(char,char)>
;cnt {"<java.lang.String: java.lang.String replace(char,char)>": 2,"<java.lang.String: boolean isEmpty()>": 2,"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.javacc.JJTree;	r1 := @parameter0: java.io.File;	r14 := @parameter1: java.lang.String;	r15 := @parameter2: java.lang.String;	r16 = specialinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.javacc.JJTree: java.lang.String validateOutputFile(java.lang.String,java.lang.String)>(r14, r15);	$r2 = virtualinvoke r1.<java.io.File: java.lang.String getAbsolutePath()>();	r17 = virtualinvoke $r2.<java.lang.String: java.lang.String replace(char,char)>(92, 47);	if r16 == null goto $i2 = virtualinvoke r17.<java.lang.String: int lastIndexOf(int)>(47);	$z2 = virtualinvoke r16.<java.lang.String: boolean isEmpty()>();	if $z2 == 0 goto (branch);	if r15 == null goto r15 = specialinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.javacc.JJTree: java.lang.String getDefaultOutputDirectory()>();	$z1 = virtualinvoke r15.<java.lang.String: boolean isEmpty()>();	if $z1 == 0 goto $r27 = new java.lang.StringBuilder;	$r27 = new java.lang.StringBuilder;	specialinvoke $r27.<java.lang.StringBuilder: void <init>()>();	$r19 = virtualinvoke $r27.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r15);	$r20 = virtualinvoke $r19.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("/");	$r21 = virtualinvoke $r20.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r16);	$r22 = virtualinvoke $r21.<java.lang.StringBuilder: java.lang.String toString()>();	$r23 = virtualinvoke $r22.<java.lang.String: java.lang.String replace(char,char)>(92, 47);	return $r23
;block_num 5