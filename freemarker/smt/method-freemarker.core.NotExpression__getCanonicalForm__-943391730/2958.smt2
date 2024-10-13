(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3681 0)
(declare-sort var375 0)
(declare-sort var3551 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun target/648122084 (var3681) var375)
(declare-fun getCanonicalForm/-1714059646 (var3551) String)
(declare-fun cast-from-var375-to-var3551 (var375) var3551)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var3681 var3681)
(declare-const var1320 var3681) ; Statement: r1 := @this: freemarker.core.NotExpression 
(assert (not (= var1320 null-var3681)))
(define-const var3579 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3579)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3579!1 String)
(assert (= var3579!1 ""))
(assert true)
(define-const var723 String (append/672562846 var3579!1 "!")) ; Statement: $r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("!") 
(declare-const var3579!2 String)
(assert (= var3579!2 (str.++ var3579!1 "!")))
(define-const var85 var375 (target/648122084 var1320)) ; Statement: $r2 = r1.<freemarker.core.NotExpression: freemarker.core.Expression target> 
(assert true)
(define-const var2304 String (getCanonicalForm/-1714059646 (cast-from-var375-to-var3551 var85))) ; Statement: $r3 = virtualinvoke $r2.<freemarker.core.Expression: java.lang.String getCanonicalForm()>() 
(assert true)
(define-const var720 String (append/672562846 var723 var2304)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3) 
(declare-const var723!1 String)
(assert (= var723!1 (str.++ var723 var2304)))
(assert true)
(define-const var1745 String (toString/-2075883882 var720)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r6 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), target/648122084=([freemarker.core.NotExpression], freemarker.core.Expression), getCanonicalForm/-1714059646=([freemarker.core.TemplateObject], java.lang.String), cast-from-var375-to-var3551=([freemarker.core.Expression], freemarker.core.TemplateObject), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var3681=freemarker.core.NotExpression, var1320=r1, var3579=$r0, var723=$r4, var375=freemarker.core.Expression, var85=$r2, var3551=freemarker.core.TemplateObject, var2304=$r3, var720=$r5, var1745=$r6}
; {freemarker.core.NotExpression=var3681, r1=var1320, $r0=var3579, $r4=var723, freemarker.core.Expression=var375, $r2=var85, freemarker.core.TemplateObject=var3551, $r3=var2304, $r5=var720, $r6=var1745}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: freemarker.core.NotExpression;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("!");	$r2 = r1.<freemarker.core.NotExpression: freemarker.core.Expression target>;	$r3 = virtualinvoke $r2.<freemarker.core.Expression: java.lang.String getCanonicalForm()>();	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3);	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>();	return $r6
;block_num 1