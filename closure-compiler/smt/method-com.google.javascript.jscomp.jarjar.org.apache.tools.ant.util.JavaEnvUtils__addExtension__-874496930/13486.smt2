(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var94 0)
(declare-sort var1573 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-String String)
(declare-const var1573-IS_DOS Bool)
(declare-const var3565 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var3565 null-String)))
(define-const var1513 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1513)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1513!1 String)
(assert (= var1513!1 ""))
(assert true)
(define-const var3721 String (append/672562846 var1513!1 var3565)) ; Statement: $r2 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1) 
(declare-const var1513!2 String)
(assert (= var1513!2 (str.++ var1513!1 var3565)))
(define-const var2114 Bool var1573-IS_DOS) ; Statement: $z0 = <com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.JavaEnvUtils: boolean IS_DOS> 
 ; Statement: if $z0 == 0 goto $r5 = "" 
(assert (not (= (ite var2114 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var2414 String ".exe") ; Statement: $r5 = ".exe" 
 ; Statement: goto [?= $r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r5)] 
(assert true) ; Non Conditional
(assert true)
(define-const var1302 String (append/672562846 var3721 var2414)) ; Statement: $r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r5) 
(declare-const var3721!1 String)
(assert (= var3721!1 (str.++ var3721 var2414)))
(assert true)
(define-const var2374 String (toString/-2075883882 var1302)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r4 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var3565=r1, var94=null_type, var1513=$r0, var3721=$r2, var1573=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.JavaEnvUtils, var2114=$z0, var2414=$r5, var1302=$r3, var2374=$r4}
; {r1=var3565, null_type=var94, $r0=var1513, $r2=var3721, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.JavaEnvUtils=var1573, $z0=var2114, $r5=var2414, $r3=var1302, $r4=var2374}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @parameter0: java.lang.String;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r2 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1);	$z0 = <com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.JavaEnvUtils: boolean IS_DOS>;	if $z0 == 0 goto $r5 = "";	$r5 = ".exe";	goto [?= $r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r5)];	$r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r5);	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.String toString()>();	return $r4
;block_num 3