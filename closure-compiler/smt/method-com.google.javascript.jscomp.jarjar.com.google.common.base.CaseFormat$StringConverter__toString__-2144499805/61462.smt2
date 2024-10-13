(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var738 0)
(declare-sort var2876 0)
(declare-sort var295 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun sourceFormat/-526546365 (var738) var2876)
(declare-fun append/-1031950772 (String var295) String)
(declare-fun cast-from-var2876-to-var295 (var2876) var295)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun targetFormat/-526546365 (var738) var2876)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var738 var738)
(declare-const var3999 var738) ; Statement: r1 := @this: com.google.javascript.jscomp.jarjar.com.google.common.base.CaseFormat$StringConverter 
(assert (not (= var3999 null-var738)))
(define-const var1492 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1492)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1492!1 String)
(assert (= var1492!1 ""))
(define-const var2523 var2876 (sourceFormat/-526546365 var3999)) ; Statement: $r2 = r1.<com.google.javascript.jscomp.jarjar.com.google.common.base.CaseFormat$StringConverter: com.google.javascript.jscomp.jarjar.com.google.common.base.CaseFormat sourceFormat> 
(assert true)
(define-const var2835 String (append/-1031950772 var1492!1 (cast-from-var2876-to-var295 var2523))) ; Statement: $r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r2) 
(declare-const var1492!2 String)
(assert (str.prefixof var1492!1 var1492!2))
(assert true)
(define-const var131 String (append/672562846 var2835 ".converterTo(")) ; Statement: $r5 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(".converterTo(") 
(declare-const var2835!1 String)
(assert (= var2835!1 (str.++ var2835 ".converterTo(")))
(define-const var3623 var2876 (targetFormat/-526546365 var3999)) ; Statement: $r4 = r1.<com.google.javascript.jscomp.jarjar.com.google.common.base.CaseFormat$StringConverter: com.google.javascript.jscomp.jarjar.com.google.common.base.CaseFormat targetFormat> 
(assert true)
(define-const var2139 String (append/-1031950772 var131 (cast-from-var2876-to-var295 var3623))) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r4) 
(declare-const var131!1 String)
(assert (str.prefixof var131 var131!1))
(assert true)
(define-const var2374 String (append/672562846 var2139 ")")) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(")") 
(declare-const var2139!1 String)
(assert (= var2139!1 (str.++ var2139 ")")))
(assert true)
(define-const var517 String (toString/-2075883882 var2374)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r8 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), sourceFormat/-526546365=([com.google.javascript.jscomp.jarjar.com.google.common.base.CaseFormat$StringConverter], com.google.javascript.jscomp.jarjar.com.google.common.base.CaseFormat), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-var2876-to-var295=([com.google.javascript.jscomp.jarjar.com.google.common.base.CaseFormat], java.lang.Object), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), targetFormat/-526546365=([com.google.javascript.jscomp.jarjar.com.google.common.base.CaseFormat$StringConverter], com.google.javascript.jscomp.jarjar.com.google.common.base.CaseFormat), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var738=com.google.javascript.jscomp.jarjar.com.google.common.base.CaseFormat$StringConverter, var3999=r1, var1492=$r0, var2876=com.google.javascript.jscomp.jarjar.com.google.common.base.CaseFormat, var2523=$r2, var295=java.lang.Object, var2835=$r3, var131=$r5, var3623=$r4, var2139=$r6, var2374=$r7, var517=$r8}
; {com.google.javascript.jscomp.jarjar.com.google.common.base.CaseFormat$StringConverter=var738, r1=var3999, $r0=var1492, com.google.javascript.jscomp.jarjar.com.google.common.base.CaseFormat=var2876, $r2=var2523, java.lang.Object=var295, $r3=var2835, $r5=var131, $r4=var3623, $r6=var2139, $r7=var2374, $r8=var517}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: com.google.javascript.jscomp.jarjar.com.google.common.base.CaseFormat$StringConverter;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r2 = r1.<com.google.javascript.jscomp.jarjar.com.google.common.base.CaseFormat$StringConverter: com.google.javascript.jscomp.jarjar.com.google.common.base.CaseFormat sourceFormat>;	$r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r2);	$r5 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(".converterTo(");	$r4 = r1.<com.google.javascript.jscomp.jarjar.com.google.common.base.CaseFormat$StringConverter: com.google.javascript.jscomp.jarjar.com.google.common.base.CaseFormat targetFormat>;	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r4);	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(")");	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>();	return $r8
;block_num 1