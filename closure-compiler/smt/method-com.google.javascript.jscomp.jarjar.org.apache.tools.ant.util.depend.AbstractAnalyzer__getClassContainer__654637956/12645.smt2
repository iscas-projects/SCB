(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1010 0)
(declare-sort var2600 0)
(declare-sort var3232 0)
(declare-sort var743 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun replace/1524665721 ((s String) (old_char Int) (new_char Int)) String (str.replace_all s (str.from_code old_char) (str.from_code new_char)))
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun classPath/-364972035 (var1010) var3232)
(declare-fun list/-271712823 (var3232) (Array Int String))
(declare-fun getResourceContainer/-1968069415 (var1010 String (Array Int String)) var743)
(declare-const null-var1010 var1010)
(declare-const null-String String)
(declare-const var640 var1010) ; Statement: r6 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.depend.AbstractAnalyzer 
(assert (not (= var640 null-var1010)))
(declare-const var860 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var860 null-String)))
(define-const var2376 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2376)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2376!1 String)
(assert (= var2376!1 ""))
(assert true)
(define-const var611 String (replace/1524665721 var860 46 47)) ; Statement: $r2 = virtualinvoke r1.<java.lang.String: java.lang.String replace(char,char)>(46, 47) 
(assert true)
(define-const var3581 String (append/672562846 var2376!1 var611)) ; Statement: $r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2) 
(declare-const var2376!2 String)
(assert (= var2376!2 (str.++ var2376!1 var611)))
(assert true)
(define-const var178 String (append/672562846 var3581 ".class")) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(".class") 
(declare-const var3581!1 String)
(assert (= var3581!1 (str.++ var3581 ".class")))
(assert true)
(define-const var649 String (toString/-2075883882 var178)) ; Statement: r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>() 
(define-const var1559 var3232 (classPath/-364972035 var640)) ; Statement: $r7 = r6.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.depend.AbstractAnalyzer: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Path classPath> 
(assert true)
(define-const var630 (Array Int String) (list/-271712823 var1559)) ; Statement: $r8 = virtualinvoke $r7.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Path: java.lang.String[] list()>() 
(assert true)
(define-const var1670 var743 (getResourceContainer/-1968069415 var640 var649 var630)) ; Statement: $r9 = specialinvoke r6.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.depend.AbstractAnalyzer: java.io.File getResourceContainer(java.lang.String,java.lang.String[])>(r5, $r8) 
 ; Statement: return $r9 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), replace/1524665721=([java.lang.String, char, char], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), classPath/-364972035=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.depend.AbstractAnalyzer], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Path), list/-271712823=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Path], java.lang.String[]), getResourceContainer/-1968069415=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.depend.AbstractAnalyzer, java.lang.String, java.lang.String[]], java.io.File)}
; {var1010=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.depend.AbstractAnalyzer, var640=r6, var860=r1, var2600=null_type, var2376=$r0, var611=$r2, var3581=$r3, var178=$r4, var649=r5, var3232=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Path, var1559=$r7, var630=$r8, var743=java.io.File, var1670=$r9}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.depend.AbstractAnalyzer=var1010, r6=var640, r1=var860, null_type=var2600, $r0=var2376, $r2=var611, $r3=var3581, $r4=var178, r5=var649, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Path=var3232, $r7=var1559, $r8=var630, java.io.File=var743, $r9=var1670}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.String: java.lang.String replace(char,char)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.String: java.lang.String replace(char,char)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r6 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.depend.AbstractAnalyzer;	r1 := @parameter0: java.lang.String;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r2 = virtualinvoke r1.<java.lang.String: java.lang.String replace(char,char)>(46, 47);	$r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2);	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(".class");	r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>();	$r7 = r6.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.depend.AbstractAnalyzer: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Path classPath>;	$r8 = virtualinvoke $r7.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Path: java.lang.String[] list()>();	$r9 = specialinvoke r6.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.depend.AbstractAnalyzer: java.io.File getResourceContainer(java.lang.String,java.lang.String[])>(r5, $r8);	return $r9
;block_num 1