(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2114 0)
(declare-sort var1976 0)
(declare-sort var1342 0)
(declare-sort var993 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun replace/1524665721 ((s String) (old_char Int) (new_char Int)) String (str.replace_all s (str.from_code old_char) (str.from_code new_char)))
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun sourcePath/-364972035 (var2114) var1342)
(declare-fun list/-271712823 (var1342) (Array Int String))
(declare-fun getResourceContainer/-1968069415 (var2114 String (Array Int String)) var993)
(declare-const null-var2114 var2114)
(declare-const null-String String)
(declare-const var1400 var2114) ; Statement: r6 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.depend.AbstractAnalyzer 
(assert (not (= var1400 null-var2114)))
(declare-const var1833 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var1833 null-String)))
(define-const var3896 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3896)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3896!1 String)
(assert (= var3896!1 ""))
(assert true)
(define-const var354 String (replace/1524665721 var1833 46 47)) ; Statement: $r2 = virtualinvoke r1.<java.lang.String: java.lang.String replace(char,char)>(46, 47) 
(assert true)
(define-const var3834 String (append/672562846 var3896!1 var354)) ; Statement: $r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2) 
(declare-const var3896!2 String)
(assert (= var3896!2 (str.++ var3896!1 var354)))
(assert true)
(define-const var1306 String (append/672562846 var3834 ".java")) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(".java") 
(declare-const var3834!1 String)
(assert (= var3834!1 (str.++ var3834 ".java")))
(assert true)
(define-const var3908 String (toString/-2075883882 var1306)) ; Statement: r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>() 
(define-const var1526 var1342 (sourcePath/-364972035 var1400)) ; Statement: $r7 = r6.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.depend.AbstractAnalyzer: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Path sourcePath> 
(assert true)
(define-const var998 (Array Int String) (list/-271712823 var1526)) ; Statement: $r8 = virtualinvoke $r7.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Path: java.lang.String[] list()>() 
(assert true)
(define-const var3900 var993 (getResourceContainer/-1968069415 var1400 var3908 var998)) ; Statement: $r9 = specialinvoke r6.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.depend.AbstractAnalyzer: java.io.File getResourceContainer(java.lang.String,java.lang.String[])>(r5, $r8) 
 ; Statement: return $r9 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), replace/1524665721=([java.lang.String, char, char], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), sourcePath/-364972035=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.depend.AbstractAnalyzer], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Path), list/-271712823=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Path], java.lang.String[]), getResourceContainer/-1968069415=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.depend.AbstractAnalyzer, java.lang.String, java.lang.String[]], java.io.File)}
; {var2114=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.depend.AbstractAnalyzer, var1400=r6, var1833=r1, var1976=null_type, var3896=$r0, var354=$r2, var3834=$r3, var1306=$r4, var3908=r5, var1342=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Path, var1526=$r7, var998=$r8, var993=java.io.File, var3900=$r9}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.depend.AbstractAnalyzer=var2114, r6=var1400, r1=var1833, null_type=var1976, $r0=var3896, $r2=var354, $r3=var3834, $r4=var1306, r5=var3908, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Path=var1342, $r7=var1526, $r8=var998, java.io.File=var993, $r9=var3900}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.String: java.lang.String replace(char,char)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.String: java.lang.String replace(char,char)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r6 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.depend.AbstractAnalyzer;	r1 := @parameter0: java.lang.String;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r2 = virtualinvoke r1.<java.lang.String: java.lang.String replace(char,char)>(46, 47);	$r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2);	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(".java");	r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>();	$r7 = r6.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.depend.AbstractAnalyzer: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Path sourcePath>;	$r8 = virtualinvoke $r7.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Path: java.lang.String[] list()>();	$r9 = specialinvoke r6.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.depend.AbstractAnalyzer: java.io.File getResourceContainer(java.lang.String,java.lang.String[])>(r5, $r8);	return $r9
;block_num 1