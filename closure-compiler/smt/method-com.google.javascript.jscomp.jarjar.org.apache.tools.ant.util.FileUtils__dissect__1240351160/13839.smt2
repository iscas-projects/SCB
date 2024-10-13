(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3373 0)
(declare-sort var3611 0)
(declare-sort var1444 0)
(declare-sort var3729 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun replace/1524665721 ((s String) (old_char Int) (new_char Int)) String (str.replace_all s (str.from_code old_char) (str.from_code new_char)))
(declare-fun var3373_isAbsolutePath/85031090 (String) Bool)
(declare-fun var3729-init () var3729)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/1864341934 (var3729 String) void)
(declare-const null-var3373 var3373)
(declare-const null-String String)
(declare-const var1444-separatorChar Int)
(declare-const var328 var3373) ; Statement: r12 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.FileUtils 
(assert (not (= var328 null-var3373)))
(declare-const var1839 String) ; Statement: r13 := @parameter0: java.lang.String 
(assert (not (= var1839 null-String)))
(define-const var1333 Int var1444-separatorChar) ; Statement: c0 = <java.io.File: char separatorChar> 
(assert true)
(define-const var3160 String (replace/1524665721 var1839 47 var1333)) ; Statement: $r0 = virtualinvoke r13.<java.lang.String: java.lang.String replace(char,char)>(47, c0) 
(assert true)
(define-const var3076 String (replace/1524665721 var3160 92 var1333)) ; Statement: r14 = virtualinvoke $r0.<java.lang.String: java.lang.String replace(char,char)>(92, c0) 
(define-const var1746 Bool (var3373_isAbsolutePath/85031090 var3076)) ; Statement: $z0 = staticinvoke <com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.FileUtils: boolean isAbsolutePath(java.lang.String)>(r14) 
 ; Statement: if $z0 != 0 goto i1 = virtualinvoke r14.<java.lang.String: int indexOf(int)>(58) 
(assert (not (not (= (ite var1746 1 0) 0)))) ; Negate: Cond: $z0 != 0  
(define-const var3339 var3729 var3729-init) ; Statement: $r20 = new com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException 
(define-const var954 String String-init) ; Statement: $r19 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var954)) ; Statement: specialinvoke $r19.<java.lang.StringBuilder: void <init>()>() 
(declare-const var954!1 String)
(assert (= var954!1 ""))
(assert true)
(define-const var472 String (append/672562846 var954!1 var3076)) ; Statement: $r9 = virtualinvoke $r19.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r14) 
(declare-const var954!2 String)
(assert (= var954!2 (str.++ var954!1 var3076)))
(assert true)
(define-const var3895 String (append/672562846 var472 " is not an absolute path")) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" is not an absolute path") 
(declare-const var472!1 String)
(assert (= var472!1 (str.++ var472 " is not an absolute path")))
(assert true)
(define-const var586 String (toString/-2075883882 var3895)) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/1864341934 var3339 var586)) ; Statement: specialinvoke $r20.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException: void <init>(java.lang.String)>($r11) 

(declare-const var3339!1 var3729)
(declare-const var586!1 String)
 ; Statement: throw $r20 
(check-sat)
(get-model)
(get-unsat-core)
; {replace/1524665721=([java.lang.String, char, char], java.lang.String), var3373_isAbsolutePath/85031090=([java.lang.String], boolean), var3729-init=([], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/1864341934=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException, java.lang.String], void)}
; {var3373=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.FileUtils, var328=r12, var1839=r13, var3611=null_type, var1444=java.io.File, var1333=c0, var3160=$r0, var3076=r14, var1746=$z0, var3729=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException, var3339=$r20, var954=$r19, var472=$r9, var3895=$r10, var586=$r11}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.FileUtils=var3373, r12=var328, r13=var1839, null_type=var3611, java.io.File=var1444, c0=var1333, $r0=var3160, r14=var3076, $z0=var1746, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException=var3729, $r20=var3339, $r19=var954, $r9=var472, $r10=var3895, $r11=var586}
;seq <java.lang.String: java.lang.String replace(char,char)>;	<java.lang.String: java.lang.String replace(char,char)>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.String: java.lang.String replace(char,char)>": 2,"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r12 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.FileUtils;	r13 := @parameter0: java.lang.String;	c0 = <java.io.File: char separatorChar>;	$r0 = virtualinvoke r13.<java.lang.String: java.lang.String replace(char,char)>(47, c0);	r14 = virtualinvoke $r0.<java.lang.String: java.lang.String replace(char,char)>(92, c0);	$z0 = staticinvoke <com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.FileUtils: boolean isAbsolutePath(java.lang.String)>(r14);	if $z0 != 0 goto i1 = virtualinvoke r14.<java.lang.String: int indexOf(int)>(58);	$r20 = new com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException;	$r19 = new java.lang.StringBuilder;	specialinvoke $r19.<java.lang.StringBuilder: void <init>()>();	$r9 = virtualinvoke $r19.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r14);	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" is not an absolute path");	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r20.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException: void <init>(java.lang.String)>($r11);	throw $r20
;block_num 2