(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1219 0)
(declare-sort var1514 0)
(declare-sort var223 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun getClass/1258963082 (var1514) ClassObject)
(declare-fun cast-from-var1219-to-var1514 (var1219) var1514)
(declare-fun getSimpleName/-390194377 (ClassObject) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun pattern/443652580 (var1219) var223)
(declare-fun append/-1031950772 (String var1514) String)
(declare-fun cast-from-var223-to-var1514 (var223) var1514)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var1219 var1219)
(declare-const var1768 var1219) ; Statement: r1 := @this: org.apache.commons.lang3.time.FastDateParser$PatternStrategy 
(assert (not (= var1768 null-var1219)))
(define-const var1159 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1159)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1159!1 String)
(assert (= var1159!1 ""))
(assert true)
(define-const var44 ClassObject (getClass/1258963082 (cast-from-var1219-to-var1514 var1768))) ; Statement: $r2 = virtualinvoke r1.<java.lang.Object: java.lang.Class getClass()>() 
(assert true)
(define-const var1529 String (getSimpleName/-390194377 var44)) ; Statement: $r3 = virtualinvoke $r2.<java.lang.Class: java.lang.String getSimpleName()>() 
(assert true)
(define-const var3485 String (append/672562846 var1159!1 var1529)) ; Statement: $r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3) 
(declare-const var1159!2 String)
(assert (= var1159!2 (str.++ var1159!1 var1529)))
(assert true)
(define-const var2527 String (append/672562846 var3485 " [pattern=")) ; Statement: $r6 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" [pattern=") 
(declare-const var3485!1 String)
(assert (= var3485!1 (str.++ var3485 " [pattern=")))
(define-const var2742 var223 (pattern/443652580 var1768)) ; Statement: $r5 = r1.<org.apache.commons.lang3.time.FastDateParser$PatternStrategy: java.util.regex.Pattern pattern> 
(assert true)
(define-const var680 String (append/-1031950772 var2527 (cast-from-var223-to-var1514 var2742))) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r5) 
(declare-const var2527!1 String)
(assert (str.prefixof var2527 var2527!1))
(assert true)
(define-const var1651 String (append/672562846 var680 "]")) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("]") 
(declare-const var680!1 String)
(assert (= var680!1 (str.++ var680 "]")))
(assert true)
(define-const var1851 String (toString/-2075883882 var1651)) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r9 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), getClass/1258963082=([java.lang.Object], java.lang.Class), cast-from-var1219-to-var1514=([org.apache.commons.lang3.time.FastDateParser$PatternStrategy], java.lang.Object), getSimpleName/-390194377=([java.lang.Class], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), pattern/443652580=([org.apache.commons.lang3.time.FastDateParser$PatternStrategy], java.util.regex.Pattern), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-var223-to-var1514=([java.util.regex.Pattern], java.lang.Object), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var1219=org.apache.commons.lang3.time.FastDateParser$PatternStrategy, var1768=r1, var1159=$r0, var1514=java.lang.Object, var44=$r2, var1529=$r3, var3485=$r4, var2527=$r6, var223=java.util.regex.Pattern, var2742=$r5, var680=$r7, var1651=$r8, var1851=$r9}
; {org.apache.commons.lang3.time.FastDateParser$PatternStrategy=var1219, r1=var1768, $r0=var1159, java.lang.Object=var1514, $r2=var44, $r3=var1529, $r4=var3485, $r6=var2527, java.util.regex.Pattern=var223, $r5=var2742, $r7=var680, $r8=var1651, $r9=var1851}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: org.apache.commons.lang3.time.FastDateParser$PatternStrategy;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r2 = virtualinvoke r1.<java.lang.Object: java.lang.Class getClass()>();	$r3 = virtualinvoke $r2.<java.lang.Class: java.lang.String getSimpleName()>();	$r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3);	$r6 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" [pattern=");	$r5 = r1.<org.apache.commons.lang3.time.FastDateParser$PatternStrategy: java.util.regex.Pattern pattern>;	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r5);	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("]");	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>();	return $r9
;block_num 1