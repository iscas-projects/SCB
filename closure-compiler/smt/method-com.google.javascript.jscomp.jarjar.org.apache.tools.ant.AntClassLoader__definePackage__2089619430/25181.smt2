(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var927 0)
(declare-sort var1586 0)
(declare-sort var2872 0)
(declare-sort var1073 0)
(declare-sort var2312 0)
(declare-sort var127 0)
(declare-sort var1673 0)
(declare-sort var1344 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun replace/1524665721 ((s String) (old_char Int) (new_char Int)) String (str.replace_all s (str.from_code old_char) (str.from_code new_char)))
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun getAttributes/211083751 (var1073 String) var127)
(declare-fun getMainAttributes/1062009737 (var1073) var127)
(declare-fun definePackage/-1999735038 (var1673 String String String String String String String var2312) var1344)
(declare-fun cast-from-var927-to-var1673 (var927) var1673)
(declare-const null-var927 var927)
(declare-const null-var1586 var1586)
(declare-const null-String String)
(declare-const null-var1073 var1073)
(declare-const null-var2312 var2312)
(declare-const null-var127 var127)
(declare-const var3532 var927) ; Statement: r8 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.AntClassLoader 
(assert (not (= var3532 null-var927)))
(declare-const var1937 var1586) ; Statement: r10 := @parameter0: java.io.File 
(assert (not (= var1937 null-var1586)))
(declare-const var871 String) ; Statement: r1 := @parameter1: java.lang.String 
(assert (not (= var871 null-String)))
(declare-const var1152 var1073) ; Statement: r6 := @parameter2: java.util.jar.Manifest 
(assert (not (= var1152 null-var1073)))
(define-const var1460 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1460)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1460!1 String)
(assert (= var1460!1 ""))
(assert true)
(define-const var488 String (replace/1524665721 var871 46 47)) ; Statement: $r2 = virtualinvoke r1.<java.lang.String: java.lang.String replace(char,char)>(46, 47) 
(assert true)
(define-const var2973 String (append/672562846 var1460!1 var488)) ; Statement: $r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2) 
(declare-const var1460!2 String)
(assert (= var1460!2 (str.++ var1460!1 var488)))
(assert true)
(define-const var2915 String (append/672562846 var2973 "/")) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("/") 
(declare-const var2973!1 String)
(assert (= var2973!1 (str.++ var2973 "/")))
(assert true)
(define-const var1449 String (toString/-2075883882 var2915)) ; Statement: r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>() 
(define-const var533 String null-String) ; Statement: r30 = null 
(define-const var955 String null-String) ; Statement: r31 = null 
(define-const var2081 String null-String) ; Statement: r32 = null 
(define-const var454 String null-String) ; Statement: r33 = null 
(define-const var954 String null-String) ; Statement: r34 = null 
(define-const var3504 String null-String) ; Statement: r35 = null 
(define-const var1845 String null-String) ; Statement: r36 = null 
(define-const var206 var2312 null-var2312) ; Statement: r37 = null 
(assert true)
(define-const var184 var127 (getAttributes/211083751 var1152 var1449)) ; Statement: r7 = virtualinvoke r6.<java.util.jar.Manifest: java.util.jar.Attributes getAttributes(java.lang.String)>(r5) 
 ; Statement: if r7 == null goto $r28 = virtualinvoke r6.<java.util.jar.Manifest: java.util.jar.Attributes getMainAttributes()>() 
(assert (= var184 null-var127)) ; Cond: r7 == null 
(assert true)
(define-const var1963 var127 (getMainAttributes/1062009737 var1152)) ; Statement: $r28 = virtualinvoke r6.<java.util.jar.Manifest: java.util.jar.Attributes getMainAttributes()>() 
 ; Statement: if $r28 == null goto (branch) 
(assert (= var1963 null-var127)) ; Cond: $r28 == null 
 ; Statement: if r36 == null goto virtualinvoke r8.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.AntClassLoader: java.lang.Package definePackage(java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.net.URL)>(r1, r30, r32, r31, r33, r35, r34, r37) 
(assert (= var1845 null-String)) ; Cond: r36 == null 
(assert true)
;(assert (definePackage/-1999735038 (cast-from-var927-to-var1673 var3532) var871 var533 var2081 var955 var454 var3504 var954 var206)) ; Statement: virtualinvoke r8.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.AntClassLoader: java.lang.Package definePackage(java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.net.URL)>(r1, r30, r32, r31, r33, r35, r34, r37) 

(declare-const var3532!1 var927)
(declare-const var871!1 String)
(declare-const var533!1 String)
(declare-const var2081!1 String)
(declare-const var955!1 String)
(declare-const var454!1 String)
(declare-const var3504!1 String)
(declare-const var954!1 String)
(declare-const var206!1 var2312)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), replace/1524665721=([java.lang.String, char, char], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), getAttributes/211083751=([java.util.jar.Manifest, java.lang.String], java.util.jar.Attributes), getMainAttributes/1062009737=([java.util.jar.Manifest], java.util.jar.Attributes), definePackage/-1999735038=([java.lang.ClassLoader, java.lang.String, java.lang.String, java.lang.String, java.lang.String, java.lang.String, java.lang.String, java.lang.String, java.net.URL], java.lang.Package), cast-from-var927-to-var1673=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.AntClassLoader], java.lang.ClassLoader)}
; {var927=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.AntClassLoader, var3532=r8, var1586=java.io.File, var1937=r10, var871=r1, var2872=null_type, var1073=java.util.jar.Manifest, var1152=r6, var1460=$r0, var488=$r2, var2973=$r3, var2915=$r4, var1449=r5, var533=r30, var955=r31, var2081=r32, var454=r33, var954=r34, var3504=r35, var1845=r36, var2312=java.net.URL, var206=r37, var127=java.util.jar.Attributes, var184=r7, var1963=$r28, var1673=java.lang.ClassLoader, var1344=java.lang.Package}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.AntClassLoader=var927, r8=var3532, java.io.File=var1586, r10=var1937, r1=var871, null_type=var2872, java.util.jar.Manifest=var1073, r6=var1152, $r0=var1460, $r2=var488, $r3=var2973, $r4=var2915, r5=var1449, r30=var533, r31=var955, r32=var2081, r33=var454, r34=var954, r35=var3504, r36=var1845, java.net.URL=var2312, r37=var206, java.util.jar.Attributes=var127, r7=var184, $r28=var1963, java.lang.ClassLoader=var1673, java.lang.Package=var1344}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.String: java.lang.String replace(char,char)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.String: java.lang.String replace(char,char)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r8 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.AntClassLoader;	r10 := @parameter0: java.io.File;	r1 := @parameter1: java.lang.String;	r6 := @parameter2: java.util.jar.Manifest;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r2 = virtualinvoke r1.<java.lang.String: java.lang.String replace(char,char)>(46, 47);	$r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2);	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("/");	r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>();	r30 = null;	r31 = null;	r32 = null;	r33 = null;	r34 = null;	r35 = null;	r36 = null;	r37 = null;	r7 = virtualinvoke r6.<java.util.jar.Manifest: java.util.jar.Attributes getAttributes(java.lang.String)>(r5);	if r7 == null goto $r28 = virtualinvoke r6.<java.util.jar.Manifest: java.util.jar.Attributes getMainAttributes()>();	$r28 = virtualinvoke r6.<java.util.jar.Manifest: java.util.jar.Attributes getMainAttributes()>();	if $r28 == null goto (branch);	if r36 == null goto virtualinvoke r8.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.AntClassLoader: java.lang.Package definePackage(java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.net.URL)>(r1, r30, r32, r31, r33, r35, r34, r37);	virtualinvoke r8.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.AntClassLoader: java.lang.Package definePackage(java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.net.URL)>(r1, r30, r32, r31, r33, r35, r34, r37);	return
;block_num 4