(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var324 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun enumClass/1338384268 (var324) ClassObject)
(declare-fun getName/-1958580599 (ClassObject) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var324 var324)
(declare-const var1575 var324) ; Statement: r1 := @this: com.google.javascript.jscomp.jarjar.com.google.common.base.Enums$StringConverter 
(assert (not (= var1575 null-var324)))
(define-const var2680 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2680)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2680!1 String)
(assert (= var2680!1 ""))
(assert true)
(define-const var1942 String (append/672562846 var2680!1 "Enums.stringConverter(")) ; Statement: $r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Enums.stringConverter(") 
(declare-const var2680!2 String)
(assert (= var2680!2 (str.++ var2680!1 "Enums.stringConverter(")))
(define-const var1939 ClassObject (enumClass/1338384268 var1575)) ; Statement: $r2 = r1.<com.google.javascript.jscomp.jarjar.com.google.common.base.Enums$StringConverter: java.lang.Class enumClass> 
(assert true)
(define-const var1742 String (getName/-1958580599 var1939)) ; Statement: $r3 = virtualinvoke $r2.<java.lang.Class: java.lang.String getName()>() 
(assert true)
(define-const var759 String (append/672562846 var1942 var1742)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3) 
(declare-const var1942!1 String)
(assert (= var1942!1 (str.++ var1942 var1742)))
(assert true)
(define-const var2581 String (append/672562846 var759 ".class)")) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(".class)") 
(declare-const var759!1 String)
(assert (= var759!1 (str.++ var759 ".class)")))
(assert true)
(define-const var2568 String (toString/-2075883882 var2581)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r7 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), enumClass/1338384268=([com.google.javascript.jscomp.jarjar.com.google.common.base.Enums$StringConverter], java.lang.Class), getName/-1958580599=([java.lang.Class], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var324=com.google.javascript.jscomp.jarjar.com.google.common.base.Enums$StringConverter, var1575=r1, var2680=$r0, var1942=$r4, var1939=$r2, var1742=$r3, var759=$r5, var2581=$r6, var2568=$r7}
; {com.google.javascript.jscomp.jarjar.com.google.common.base.Enums$StringConverter=var324, r1=var1575, $r0=var2680, $r4=var1942, $r2=var1939, $r3=var1742, $r5=var759, $r6=var2581, $r7=var2568}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: com.google.javascript.jscomp.jarjar.com.google.common.base.Enums$StringConverter;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Enums.stringConverter(");	$r2 = r1.<com.google.javascript.jscomp.jarjar.com.google.common.base.Enums$StringConverter: java.lang.Class enumClass>;	$r3 = virtualinvoke $r2.<java.lang.Class: java.lang.String getName()>();	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3);	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(".class)");	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>();	return $r7
;block_num 1