(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var130 0)
(declare-sort var1977 0)
(declare-sort var1241 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun target/-489369572 (var130) var1977)
(declare-fun getCanonicalForm/-1714059646 (var1241) String)
(declare-fun cast-from-var1977-to-var1241 (var1977) var1241)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun key/-489369572 (var130) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var130 var130)
(declare-const var968 var130) ; Statement: r1 := @this: freemarker.core.BuiltIn 
(assert (not (= var968 null-var130)))
(define-const var3149 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3149)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3149!1 String)
(assert (= var3149!1 ""))
(define-const var2953 var1977 (target/-489369572 var968)) ; Statement: $r2 = r1.<freemarker.core.BuiltIn: freemarker.core.Expression target> 
(assert true)
(define-const var1197 String (getCanonicalForm/-1714059646 (cast-from-var1977-to-var1241 var2953))) ; Statement: $r3 = virtualinvoke $r2.<freemarker.core.Expression: java.lang.String getCanonicalForm()>() 
(assert true)
(define-const var327 String (append/672562846 var3149!1 var1197)) ; Statement: $r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3) 
(declare-const var3149!2 String)
(assert (= var3149!2 (str.++ var3149!1 var1197)))
(assert true)
(define-const var1787 String (append/672562846 var327 "?")) ; Statement: $r6 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("?") 
(declare-const var327!1 String)
(assert (= var327!1 (str.++ var327 "?")))
(define-const var1713 String (key/-489369572 var968)) ; Statement: $r5 = r1.<freemarker.core.BuiltIn: java.lang.String key> 
(assert true)
(define-const var2390 String (append/672562846 var1787 var1713)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r5) 
(declare-const var1787!1 String)
(assert (= var1787!1 (str.++ var1787 var1713)))
(assert true)
(define-const var3761 String (toString/-2075883882 var2390)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r8 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), target/-489369572=([freemarker.core.BuiltIn], freemarker.core.Expression), getCanonicalForm/-1714059646=([freemarker.core.TemplateObject], java.lang.String), cast-from-var1977-to-var1241=([freemarker.core.Expression], freemarker.core.TemplateObject), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), key/-489369572=([freemarker.core.BuiltIn], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var130=freemarker.core.BuiltIn, var968=r1, var3149=$r0, var1977=freemarker.core.Expression, var2953=$r2, var1241=freemarker.core.TemplateObject, var1197=$r3, var327=$r4, var1787=$r6, var1713=$r5, var2390=$r7, var3761=$r8}
; {freemarker.core.BuiltIn=var130, r1=var968, $r0=var3149, freemarker.core.Expression=var1977, $r2=var2953, freemarker.core.TemplateObject=var1241, $r3=var1197, $r4=var327, $r6=var1787, $r5=var1713, $r7=var2390, $r8=var3761}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: freemarker.core.BuiltIn;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r2 = r1.<freemarker.core.BuiltIn: freemarker.core.Expression target>;	$r3 = virtualinvoke $r2.<freemarker.core.Expression: java.lang.String getCanonicalForm()>();	$r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3);	$r6 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("?");	$r5 = r1.<freemarker.core.BuiltIn: java.lang.String key>;	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r5);	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>();	return $r8
;block_num 1