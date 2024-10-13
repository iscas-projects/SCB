(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2652 0)
(declare-sort var3521 0)
(declare-sort var420 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun nested/-440628093 (var2652) var3521)
(declare-fun getCanonicalForm/-1714059646 (var420) String)
(declare-fun cast-from-var3521-to-var420 (var3521) var420)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var2652 var2652)
(declare-const var1234 var2652) ; Statement: r1 := @this: freemarker.core.ParentheticalExpression 
(assert (not (= var1234 null-var2652)))
(define-const var577 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var577)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var577!1 String)
(assert (= var577!1 ""))
(assert true)
(define-const var1098 String (append/672562846 var577!1 "(")) ; Statement: $r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("(") 
(declare-const var577!2 String)
(assert (= var577!2 (str.++ var577!1 "(")))
(define-const var475 var3521 (nested/-440628093 var1234)) ; Statement: $r2 = r1.<freemarker.core.ParentheticalExpression: freemarker.core.Expression nested> 
(assert true)
(define-const var2180 String (getCanonicalForm/-1714059646 (cast-from-var3521-to-var420 var475))) ; Statement: $r3 = virtualinvoke $r2.<freemarker.core.Expression: java.lang.String getCanonicalForm()>() 
(assert true)
(define-const var3317 String (append/672562846 var1098 var2180)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3) 
(declare-const var1098!1 String)
(assert (= var1098!1 (str.++ var1098 var2180)))
(assert true)
(define-const var3766 String (append/672562846 var3317 ")")) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(")") 
(declare-const var3317!1 String)
(assert (= var3317!1 (str.++ var3317 ")")))
(assert true)
(define-const var164 String (toString/-2075883882 var3766)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r7 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), nested/-440628093=([freemarker.core.ParentheticalExpression], freemarker.core.Expression), getCanonicalForm/-1714059646=([freemarker.core.TemplateObject], java.lang.String), cast-from-var3521-to-var420=([freemarker.core.Expression], freemarker.core.TemplateObject), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var2652=freemarker.core.ParentheticalExpression, var1234=r1, var577=$r0, var1098=$r4, var3521=freemarker.core.Expression, var475=$r2, var420=freemarker.core.TemplateObject, var2180=$r3, var3317=$r5, var3766=$r6, var164=$r7}
; {freemarker.core.ParentheticalExpression=var2652, r1=var1234, $r0=var577, $r4=var1098, freemarker.core.Expression=var3521, $r2=var475, freemarker.core.TemplateObject=var420, $r3=var2180, $r5=var3317, $r6=var3766, $r7=var164}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: freemarker.core.ParentheticalExpression;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("(");	$r2 = r1.<freemarker.core.ParentheticalExpression: freemarker.core.Expression nested>;	$r3 = virtualinvoke $r2.<freemarker.core.Expression: java.lang.String getCanonicalForm()>();	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3);	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(")");	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>();	return $r7
;block_num 1