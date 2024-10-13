(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3890 0)
(declare-sort var848 0)
(declare-sort var347 0)
(declare-sort var449 0)
(declare-sort var1760 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var449-init () var449)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getCanonicalForm/-1714059646 (var1760) String)
(declare-fun cast-from-var848-to-var1760 (var848) var1760)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-667416467 (var449 String var1760) void)
(declare-const null-var3890 var3890)
(declare-const null-var848 var848)
(declare-const null-String String)
(declare-const var531 var3890) ; Statement: r10 := @this: freemarker.core.FMParser 
(assert (not (= var531 null-var3890)))
(declare-const var3252 var848) ; Statement: r0 := @parameter0: freemarker.core.Expression 
(assert (not (= var3252 null-var848)))
(declare-const var3013 String) ; Statement: r6 := @parameter1: java.lang.String 
(assert (not (= var3013 null-String)))
(define-const var383 Bool false) ; Statement: $z0 = r0 instanceof freemarker.core.ListLiteral 
 ; Statement: if $z0 == 0 goto return 
(assert (not (= (ite var383 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var783 var449 var449-init) ; Statement: $r1 = new freemarker.core.ParseException 
(define-const var1243 String String-init) ; Statement: $r2 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1243)) ; Statement: specialinvoke $r2.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1243!1 String)
(assert (= var1243!1 ""))
(assert true)
(define-const var2221 String (append/672562846 var1243!1 "Found list literal: ")) ; Statement: $r4 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Found list literal: ") 
(declare-const var1243!2 String)
(assert (= var1243!2 (str.++ var1243!1 "Found list literal: ")))
(assert true)
(define-const var2255 String (getCanonicalForm/-1714059646 (cast-from-var848-to-var1760 var3252))) ; Statement: $r3 = virtualinvoke r0.<freemarker.core.Expression: java.lang.String getCanonicalForm()>() 
(assert true)
(define-const var1312 String (append/672562846 var2221 var2255)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3) 
(declare-const var2221!1 String)
(assert (= var2221!1 (str.++ var2221 var2255)))
(assert true)
(define-const var928 String (append/672562846 var1312 ". Expecting ")) ; Statement: $r7 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(". Expecting ") 
(declare-const var1312!1 String)
(assert (= var1312!1 (str.++ var1312 ". Expecting ")))
(assert true)
(define-const var859 String (append/672562846 var928 var3013)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r6) 
(declare-const var928!1 String)
(assert (= var928!1 (str.++ var928 var3013)))
(assert true)
(define-const var3231 String (toString/-2075883882 var859)) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-667416467 var783 var3231 (cast-from-var848-to-var1760 var3252))) ; Statement: specialinvoke $r1.<freemarker.core.ParseException: void <init>(java.lang.String,freemarker.core.TemplateObject)>($r9, r0) 

(declare-const var783!1 var449)
(declare-const var3231!1 String)
(declare-const var3252!1 var848)
 ; Statement: throw $r1 
(check-sat)
(get-model)
(get-unsat-core)
; {var449-init=([], freemarker.core.ParseException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), getCanonicalForm/-1714059646=([freemarker.core.TemplateObject], java.lang.String), cast-from-var848-to-var1760=([freemarker.core.Expression], freemarker.core.TemplateObject), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-667416467=([freemarker.core.ParseException, java.lang.String, freemarker.core.TemplateObject], void)}
; {var3890=freemarker.core.FMParser, var531=r10, var848=freemarker.core.Expression, var3252=r0, var3013=r6, var347=null_type, var383=$z0, var449=freemarker.core.ParseException, var783=$r1, var1243=$r2, var2221=$r4, var1760=freemarker.core.TemplateObject, var2255=$r3, var1312=$r5, var928=$r7, var859=$r8, var3231=$r9}
; {freemarker.core.FMParser=var3890, r10=var531, freemarker.core.Expression=var848, r0=var3252, r6=var3013, null_type=var347, $z0=var383, freemarker.core.ParseException=var449, $r1=var783, $r2=var1243, $r4=var2221, freemarker.core.TemplateObject=var1760, $r3=var2255, $r5=var1312, $r7=var928, $r8=var859, $r9=var3231}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 4,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r10 := @this: freemarker.core.FMParser;	r0 := @parameter0: freemarker.core.Expression;	r6 := @parameter1: java.lang.String;	$z0 = r0 instanceof freemarker.core.ListLiteral;	if $z0 == 0 goto return;	$r1 = new freemarker.core.ParseException;	$r2 = new java.lang.StringBuilder;	specialinvoke $r2.<java.lang.StringBuilder: void <init>()>();	$r4 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Found list literal: ");	$r3 = virtualinvoke r0.<freemarker.core.Expression: java.lang.String getCanonicalForm()>();	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3);	$r7 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(". Expecting ");	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r6);	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r1.<freemarker.core.ParseException: void <init>(java.lang.String,freemarker.core.TemplateObject)>($r9, r0);	throw $r1
;block_num 2