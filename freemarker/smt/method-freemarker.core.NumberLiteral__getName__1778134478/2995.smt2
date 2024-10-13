(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var686 0)
(declare-sort var3965 0)
(declare-sort var3841 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun value/-365368769 (var686) var3965)
(declare-fun append/-1031950772 (String var3841) String)
(declare-fun cast-from-var3965-to-var3841 (var3965) var3841)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var686 var686)
(declare-const var3766 var686) ; Statement: r1 := @this: freemarker.core.NumberLiteral 
(assert (not (= var3766 null-var686)))
(define-const var3067 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3067)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3067!1 String)
(assert (= var3067!1 ""))
(assert true)
(define-const var1228 String (append/672562846 var3067!1 "the number: \u0027")) ; Statement: $r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("the number: \'") 
(declare-const var3067!2 String)
(assert (= var3067!2 (str.++ var3067!1 "the number: \u0027")))
(define-const var1486 var3965 (value/-365368769 var3766)) ; Statement: $r2 = r1.<freemarker.core.NumberLiteral: java.lang.Number value> 
(assert true)
(define-const var2361 String (append/-1031950772 var1228 (cast-from-var3965-to-var3841 var1486))) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r2) 
(declare-const var1228!1 String)
(assert (str.prefixof var1228 var1228!1))
(assert true)
(define-const var1726 String (append/672562846 var2361 "\u0027")) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\'") 
(declare-const var2361!1 String)
(assert (= var2361!1 (str.++ var2361 "\u0027")))
(assert true)
(define-const var3755 String (toString/-2075883882 var1726)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r6 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), value/-365368769=([freemarker.core.NumberLiteral], java.lang.Number), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-var3965-to-var3841=([java.lang.Number], java.lang.Object), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var686=freemarker.core.NumberLiteral, var3766=r1, var3067=$r0, var1228=$r3, var3965=java.lang.Number, var1486=$r2, var3841=java.lang.Object, var2361=$r4, var1726=$r5, var3755=$r6}
; {freemarker.core.NumberLiteral=var686, r1=var3766, $r0=var3067, $r3=var1228, java.lang.Number=var3965, $r2=var1486, java.lang.Object=var3841, $r4=var2361, $r5=var1726, $r6=var3755}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: freemarker.core.NumberLiteral;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("the number: \'");	$r2 = r1.<freemarker.core.NumberLiteral: java.lang.Number value>;	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r2);	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\'");	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>();	return $r6
;block_num 1