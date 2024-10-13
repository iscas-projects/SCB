(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2957 0)
(declare-sort var1623 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-String String)
(declare-const var1623-IS_DOS Bool)
(declare-const var2025 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var2025 null-String)))
(define-const var158 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var158)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var158!1 String)
(assert (= var158!1 ""))
(assert true)
(define-const var1253 String (append/672562846 var158!1 var2025)) ; Statement: $r2 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1) 
(declare-const var158!2 String)
(assert (= var158!2 (str.++ var158!1 var2025)))
(define-const var3814 Bool var1623-IS_DOS) ; Statement: $z0 = <com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.JavaEnvUtils: boolean IS_DOS> 
 ; Statement: if $z0 == 0 goto $r5 = "" 
(assert (= (ite var3814 1 0) 0)) ; Cond: $z0 == 0 
(define-const var3042 String "") ; Statement: $r5 = "" 
(assert true) ; Non Conditional
(assert true)
(define-const var391 String (append/672562846 var1253 var3042)) ; Statement: $r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r5) 
(declare-const var1253!1 String)
(assert (= var1253!1 (str.++ var1253 var3042)))
(assert true)
(define-const var3921 String (toString/-2075883882 var391)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r4 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var2025=r1, var2957=null_type, var158=$r0, var1253=$r2, var1623=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.JavaEnvUtils, var3814=$z0, var3042=$r5, var391=$r3, var3921=$r4}
; {r1=var2025, null_type=var2957, $r0=var158, $r2=var1253, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.JavaEnvUtils=var1623, $z0=var3814, $r5=var3042, $r3=var391, $r4=var3921}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @parameter0: java.lang.String;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r2 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1);	$z0 = <com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.JavaEnvUtils: boolean IS_DOS>;	if $z0 == 0 goto $r5 = "";	$r5 = "";	$r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r5);	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.String toString()>();	return $r4
;block_num 3