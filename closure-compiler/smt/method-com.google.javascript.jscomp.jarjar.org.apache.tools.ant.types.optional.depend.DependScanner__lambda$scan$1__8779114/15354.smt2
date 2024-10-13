(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1420 0)
(declare-sort var524 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun replace/1524665721 ((s String) (old_char Int) (new_char Int)) String (str.replace_all s (str.from_code old_char) (str.from_code new_char)))
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-String String)
(declare-const var524-separatorChar Int)
(declare-const var3756 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var3756 null-String)))
(define-const var3700 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3700)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3700!1 String)
(assert (= var3700!1 ""))
(define-const var1713 Int var524-separatorChar) ; Statement: $c0 = <java.io.File: char separatorChar> 
(assert true)
(define-const var2653 String (replace/1524665721 var3756 46 var1713)) ; Statement: $r2 = virtualinvoke r1.<java.lang.String: java.lang.String replace(char,char)>(46, $c0) 
(assert true)
(define-const var2977 String (append/672562846 var3700!1 var2653)) ; Statement: $r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2) 
(declare-const var3700!2 String)
(assert (= var3700!2 (str.++ var3700!1 var2653)))
(assert true)
(define-const var2378 String (append/672562846 var2977 ".class")) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(".class") 
(declare-const var2977!1 String)
(assert (= var2977!1 (str.++ var2977 ".class")))
(assert true)
(define-const var185 String (toString/-2075883882 var2378)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r5 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), replace/1524665721=([java.lang.String, char, char], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var3756=r1, var1420=null_type, var3700=$r0, var524=java.io.File, var1713=$c0, var2653=$r2, var2977=$r3, var2378=$r4, var185=$r5}
; {r1=var3756, null_type=var1420, $r0=var3700, java.io.File=var524, $c0=var1713, $r2=var2653, $r3=var2977, $r4=var2378, $r5=var185}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.String: java.lang.String replace(char,char)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.String: java.lang.String replace(char,char)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @parameter0: java.lang.String;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$c0 = <java.io.File: char separatorChar>;	$r2 = virtualinvoke r1.<java.lang.String: java.lang.String replace(char,char)>(46, $c0);	$r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2);	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(".class");	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>();	return $r5
;block_num 1