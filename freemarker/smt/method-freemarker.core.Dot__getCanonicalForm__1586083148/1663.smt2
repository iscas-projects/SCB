(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var105 0)
(declare-sort var3703 0)
(declare-sort var694 0)
(declare-sort var1943 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun target/-1597374046 (var105) var3703)
(declare-fun getCanonicalForm/-1714059646 (var694) String)
(declare-fun cast-from-var3703-to-var694 (var3703) var694)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getNodeTypeSymbol/1066682850 (var105) String)
(declare-fun key/-1597374046 (var105) String)
(declare-fun var1943_toFTLIdentifierReferenceAfterDot/870250886 (String) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var105 var105)
(declare-const var1114 var105) ; Statement: r1 := @this: freemarker.core.Dot 
(assert (not (= var1114 null-var105)))
(define-const var335 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var335)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var335!1 String)
(assert (= var335!1 ""))
(define-const var1354 var3703 (target/-1597374046 var1114)) ; Statement: $r2 = r1.<freemarker.core.Dot: freemarker.core.Expression target> 
(assert true)
(define-const var3492 String (getCanonicalForm/-1714059646 (cast-from-var3703-to-var694 var1354))) ; Statement: $r3 = virtualinvoke $r2.<freemarker.core.Expression: java.lang.String getCanonicalForm()>() 
(assert true)
(define-const var3983 String (append/672562846 var335!1 var3492)) ; Statement: $r5 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3) 
(declare-const var335!2 String)
(assert (= var335!2 (str.++ var335!1 var3492)))
(assert true)
(define-const var2822 String (getNodeTypeSymbol/1066682850 var1114)) ; Statement: $r4 = virtualinvoke r1.<freemarker.core.Dot: java.lang.String getNodeTypeSymbol()>() 
(assert true)
(define-const var312 String (append/672562846 var3983 var2822)) ; Statement: $r8 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r4) 
(declare-const var3983!1 String)
(assert (= var3983!1 (str.++ var3983 var2822)))
(define-const var1899 String (key/-1597374046 var1114)) ; Statement: $r6 = r1.<freemarker.core.Dot: java.lang.String key> 
(define-const var1946 String (var1943_toFTLIdentifierReferenceAfterDot/870250886 var1899)) ; Statement: $r7 = staticinvoke <freemarker.core._CoreStringUtils: java.lang.String toFTLIdentifierReferenceAfterDot(java.lang.String)>($r6) 
(assert true)
(define-const var1764 String (append/672562846 var312 var1946)) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r7) 
(declare-const var312!1 String)
(assert (= var312!1 (str.++ var312 var1946)))
(assert true)
(define-const var3151 String (toString/-2075883882 var1764)) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r10 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), target/-1597374046=([freemarker.core.Dot], freemarker.core.Expression), getCanonicalForm/-1714059646=([freemarker.core.TemplateObject], java.lang.String), cast-from-var3703-to-var694=([freemarker.core.Expression], freemarker.core.TemplateObject), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), getNodeTypeSymbol/1066682850=([freemarker.core.Dot], java.lang.String), key/-1597374046=([freemarker.core.Dot], java.lang.String), var1943_toFTLIdentifierReferenceAfterDot/870250886=([java.lang.String], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var105=freemarker.core.Dot, var1114=r1, var335=$r0, var3703=freemarker.core.Expression, var1354=$r2, var694=freemarker.core.TemplateObject, var3492=$r3, var3983=$r5, var2822=$r4, var312=$r8, var1899=$r6, var1943=freemarker.core._CoreStringUtils, var1946=$r7, var1764=$r9, var3151=$r10}
; {freemarker.core.Dot=var105, r1=var1114, $r0=var335, freemarker.core.Expression=var3703, $r2=var1354, freemarker.core.TemplateObject=var694, $r3=var3492, $r5=var3983, $r4=var2822, $r8=var312, $r6=var1899, freemarker.core._CoreStringUtils=var1943, $r7=var1946, $r9=var1764, $r10=var3151}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: freemarker.core.Dot;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r2 = r1.<freemarker.core.Dot: freemarker.core.Expression target>;	$r3 = virtualinvoke $r2.<freemarker.core.Expression: java.lang.String getCanonicalForm()>();	$r5 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3);	$r4 = virtualinvoke r1.<freemarker.core.Dot: java.lang.String getNodeTypeSymbol()>();	$r8 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r4);	$r6 = r1.<freemarker.core.Dot: java.lang.String key>;	$r7 = staticinvoke <freemarker.core._CoreStringUtils: java.lang.String toFTLIdentifierReferenceAfterDot(java.lang.String)>($r6);	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r7);	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.String toString()>();	return $r10
;block_num 1