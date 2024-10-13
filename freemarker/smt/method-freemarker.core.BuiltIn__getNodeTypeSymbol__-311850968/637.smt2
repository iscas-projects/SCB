(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1049 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun key/-489369572 (var1049) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var1049 var1049)
(declare-const var15 var1049) ; Statement: r1 := @this: freemarker.core.BuiltIn 
(assert (not (= var15 null-var1049)))
(define-const var1589 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1589)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1589!1 String)
(assert (= var1589!1 ""))
(assert true)
(define-const var1441 String (append/672562846 var1589!1 "?")) ; Statement: $r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("?") 
(declare-const var1589!2 String)
(assert (= var1589!2 (str.++ var1589!1 "?")))
(define-const var3273 String (key/-489369572 var15)) ; Statement: $r2 = r1.<freemarker.core.BuiltIn: java.lang.String key> 
(assert true)
(define-const var2570 String (append/672562846 var1441 var3273)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2) 
(declare-const var1441!1 String)
(assert (= var1441!1 (str.++ var1441 var3273)))
(assert true)
(define-const var3808 String (toString/-2075883882 var2570)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r5 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), key/-489369572=([freemarker.core.BuiltIn], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var1049=freemarker.core.BuiltIn, var15=r1, var1589=$r0, var1441=$r3, var3273=$r2, var2570=$r4, var3808=$r5}
; {freemarker.core.BuiltIn=var1049, r1=var15, $r0=var1589, $r3=var1441, $r2=var3273, $r4=var2570, $r5=var3808}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: freemarker.core.BuiltIn;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("?");	$r2 = r1.<freemarker.core.BuiltIn: java.lang.String key>;	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2);	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>();	return $r5
;block_num 1