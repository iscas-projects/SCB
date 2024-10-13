(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1584 0)
(declare-sort var1700 0)
(declare-sort var2506 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun equivalence/2056714474 (var1584) var1700)
(declare-fun append/-1031950772 (String var2506) String)
(declare-fun cast-from-var1700-to-var2506 (var1700) var2506)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun reference/2056714474 (var1584) var2506)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var1584 var1584)
(declare-const var3813 var1584) ; Statement: r1 := @this: com.google.javascript.jscomp.jarjar.com.google.common.base.Equivalence$Wrapper 
(assert (not (= var3813 null-var1584)))
(define-const var2456 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2456)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2456!1 String)
(assert (= var2456!1 ""))
(define-const var993 var1700 (equivalence/2056714474 var3813)) ; Statement: $r2 = r1.<com.google.javascript.jscomp.jarjar.com.google.common.base.Equivalence$Wrapper: com.google.javascript.jscomp.jarjar.com.google.common.base.Equivalence equivalence> 
(assert true)
(define-const var2259 String (append/-1031950772 var2456!1 (cast-from-var1700-to-var2506 var993))) ; Statement: $r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r2) 
(declare-const var2456!2 String)
(assert (str.prefixof var2456!1 var2456!2))
(assert true)
(define-const var128 String (append/672562846 var2259 ".wrap(")) ; Statement: $r5 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(".wrap(") 
(declare-const var2259!1 String)
(assert (= var2259!1 (str.++ var2259 ".wrap(")))
(define-const var2698 var2506 (reference/2056714474 var3813)) ; Statement: $r4 = r1.<com.google.javascript.jscomp.jarjar.com.google.common.base.Equivalence$Wrapper: java.lang.Object reference> 
(assert true)
(define-const var3719 String (append/-1031950772 var128 var2698)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r4) 
(declare-const var128!1 String)
(assert (str.prefixof var128 var128!1))
(assert true)
(define-const var1286 String (append/672562846 var3719 ")")) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(")") 
(declare-const var3719!1 String)
(assert (= var3719!1 (str.++ var3719 ")")))
(assert true)
(define-const var3329 String (toString/-2075883882 var1286)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r8 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), equivalence/2056714474=([com.google.javascript.jscomp.jarjar.com.google.common.base.Equivalence$Wrapper], com.google.javascript.jscomp.jarjar.com.google.common.base.Equivalence), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-var1700-to-var2506=([com.google.javascript.jscomp.jarjar.com.google.common.base.Equivalence], java.lang.Object), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), reference/2056714474=([com.google.javascript.jscomp.jarjar.com.google.common.base.Equivalence$Wrapper], java.lang.Object), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var1584=com.google.javascript.jscomp.jarjar.com.google.common.base.Equivalence$Wrapper, var3813=r1, var2456=$r0, var1700=com.google.javascript.jscomp.jarjar.com.google.common.base.Equivalence, var993=$r2, var2506=java.lang.Object, var2259=$r3, var128=$r5, var2698=$r4, var3719=$r6, var1286=$r7, var3329=$r8}
; {com.google.javascript.jscomp.jarjar.com.google.common.base.Equivalence$Wrapper=var1584, r1=var3813, $r0=var2456, com.google.javascript.jscomp.jarjar.com.google.common.base.Equivalence=var1700, $r2=var993, java.lang.Object=var2506, $r3=var2259, $r5=var128, $r4=var2698, $r6=var3719, $r7=var1286, $r8=var3329}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: com.google.javascript.jscomp.jarjar.com.google.common.base.Equivalence$Wrapper;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r2 = r1.<com.google.javascript.jscomp.jarjar.com.google.common.base.Equivalence$Wrapper: com.google.javascript.jscomp.jarjar.com.google.common.base.Equivalence equivalence>;	$r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r2);	$r5 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(".wrap(");	$r4 = r1.<com.google.javascript.jscomp.jarjar.com.google.common.base.Equivalence$Wrapper: java.lang.Object reference>;	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r4);	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(")");	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>();	return $r8
;block_num 1