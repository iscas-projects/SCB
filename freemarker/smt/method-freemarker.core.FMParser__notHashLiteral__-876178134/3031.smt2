(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3385 0)
(declare-sort var3502 0)
(declare-sort var1629 0)
(declare-sort var3605 0)
(declare-sort var2463 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var3605-init () var3605)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getCanonicalForm/-1714059646 (var2463) String)
(declare-fun cast-from-var3502-to-var2463 (var3502) var2463)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-667416467 (var3605 String var2463) void)
(declare-const null-var3385 var3385)
(declare-const null-var3502 var3502)
(declare-const null-String String)
(declare-const var3891 var3385) ; Statement: r10 := @this: freemarker.core.FMParser 
(assert (not (= var3891 null-var3385)))
(declare-const var1412 var3502) ; Statement: r0 := @parameter0: freemarker.core.Expression 
(assert (not (= var1412 null-var3502)))
(declare-const var2894 String) ; Statement: r6 := @parameter1: java.lang.String 
(assert (not (= var2894 null-String)))
(define-const var765 Bool false) ; Statement: $z0 = r0 instanceof freemarker.core.HashLiteral 
 ; Statement: if $z0 == 0 goto return 
(assert (not (= (ite var765 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var2598 var3605 var3605-init) ; Statement: $r1 = new freemarker.core.ParseException 
(define-const var3442 String String-init) ; Statement: $r2 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3442)) ; Statement: specialinvoke $r2.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3442!1 String)
(assert (= var3442!1 ""))
(assert true)
(define-const var1226 String (append/672562846 var3442!1 "Found hash literal: ")) ; Statement: $r4 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Found hash literal: ") 
(declare-const var3442!2 String)
(assert (= var3442!2 (str.++ var3442!1 "Found hash literal: ")))
(assert true)
(define-const var2996 String (getCanonicalForm/-1714059646 (cast-from-var3502-to-var2463 var1412))) ; Statement: $r3 = virtualinvoke r0.<freemarker.core.Expression: java.lang.String getCanonicalForm()>() 
(assert true)
(define-const var3977 String (append/672562846 var1226 var2996)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3) 
(declare-const var1226!1 String)
(assert (= var1226!1 (str.++ var1226 var2996)))
(assert true)
(define-const var214 String (append/672562846 var3977 ". Expecting ")) ; Statement: $r7 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(". Expecting ") 
(declare-const var3977!1 String)
(assert (= var3977!1 (str.++ var3977 ". Expecting ")))
(assert true)
(define-const var344 String (append/672562846 var214 var2894)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r6) 
(declare-const var214!1 String)
(assert (= var214!1 (str.++ var214 var2894)))
(assert true)
(define-const var2870 String (toString/-2075883882 var344)) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-667416467 var2598 var2870 (cast-from-var3502-to-var2463 var1412))) ; Statement: specialinvoke $r1.<freemarker.core.ParseException: void <init>(java.lang.String,freemarker.core.TemplateObject)>($r9, r0) 

(declare-const var2598!1 var3605)
(declare-const var2870!1 String)
(declare-const var1412!1 var3502)
 ; Statement: throw $r1 
(check-sat)
(get-model)
(get-unsat-core)
; {var3605-init=([], freemarker.core.ParseException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), getCanonicalForm/-1714059646=([freemarker.core.TemplateObject], java.lang.String), cast-from-var3502-to-var2463=([freemarker.core.Expression], freemarker.core.TemplateObject), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-667416467=([freemarker.core.ParseException, java.lang.String, freemarker.core.TemplateObject], void)}
; {var3385=freemarker.core.FMParser, var3891=r10, var3502=freemarker.core.Expression, var1412=r0, var2894=r6, var1629=null_type, var765=$z0, var3605=freemarker.core.ParseException, var2598=$r1, var3442=$r2, var1226=$r4, var2463=freemarker.core.TemplateObject, var2996=$r3, var3977=$r5, var214=$r7, var344=$r8, var2870=$r9}
; {freemarker.core.FMParser=var3385, r10=var3891, freemarker.core.Expression=var3502, r0=var1412, r6=var2894, null_type=var1629, $z0=var765, freemarker.core.ParseException=var3605, $r1=var2598, $r2=var3442, $r4=var1226, freemarker.core.TemplateObject=var2463, $r3=var2996, $r5=var3977, $r7=var214, $r8=var344, $r9=var2870}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 4,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r10 := @this: freemarker.core.FMParser;	r0 := @parameter0: freemarker.core.Expression;	r6 := @parameter1: java.lang.String;	$z0 = r0 instanceof freemarker.core.HashLiteral;	if $z0 == 0 goto return;	$r1 = new freemarker.core.ParseException;	$r2 = new java.lang.StringBuilder;	specialinvoke $r2.<java.lang.StringBuilder: void <init>()>();	$r4 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Found hash literal: ");	$r3 = virtualinvoke r0.<freemarker.core.Expression: java.lang.String getCanonicalForm()>();	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3);	$r7 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(". Expecting ");	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r6);	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r1.<freemarker.core.ParseException: void <init>(java.lang.String,freemarker.core.TemplateObject)>($r9, r0);	throw $r1
;block_num 2