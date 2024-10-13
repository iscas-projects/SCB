(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3575 0)
(declare-sort var205 0)
(declare-sort var1124 0)
(declare-sort var3785 0)
(declare-sort var469 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var3785-init () var3785)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getCanonicalForm/-1714059646 (var469) String)
(declare-fun cast-from-var205-to-var469 (var205) var469)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-667416467 (var3785 String var469) void)
(declare-const null-var3575 var3575)
(declare-const null-var205 var205)
(declare-const null-String String)
(declare-const var3336 var3575) ; Statement: r10 := @this: freemarker.core.FMParser 
(assert (not (= var3336 null-var3575)))
(declare-const var2486 var205) ; Statement: r0 := @parameter0: freemarker.core.Expression 
(assert (not (= var2486 null-var205)))
(declare-const var2185 String) ; Statement: r6 := @parameter1: java.lang.String 
(assert (not (= var2185 null-String)))
(define-const var1049 Bool false) ; Statement: $z0 = r0 instanceof freemarker.core.NumberLiteral 
 ; Statement: if $z0 == 0 goto return 
(assert (not (= (ite var1049 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var2608 var3785 var3785-init) ; Statement: $r1 = new freemarker.core.ParseException 
(define-const var941 String String-init) ; Statement: $r2 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var941)) ; Statement: specialinvoke $r2.<java.lang.StringBuilder: void <init>()>() 
(declare-const var941!1 String)
(assert (= var941!1 ""))
(assert true)
(define-const var1906 String (append/672562846 var941!1 "Found number literal: ")) ; Statement: $r4 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Found number literal: ") 
(declare-const var941!2 String)
(assert (= var941!2 (str.++ var941!1 "Found number literal: ")))
(assert true)
(define-const var399 String (getCanonicalForm/-1714059646 (cast-from-var205-to-var469 var2486))) ; Statement: $r3 = virtualinvoke r0.<freemarker.core.Expression: java.lang.String getCanonicalForm()>() 
(assert true)
(define-const var2684 String (append/672562846 var1906 var399)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3) 
(declare-const var1906!1 String)
(assert (= var1906!1 (str.++ var1906 var399)))
(assert true)
(define-const var3607 String (append/672562846 var2684 ". Expecting ")) ; Statement: $r7 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(". Expecting ") 
(declare-const var2684!1 String)
(assert (= var2684!1 (str.++ var2684 ". Expecting ")))
(assert true)
(define-const var1422 String (append/672562846 var3607 var2185)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r6) 
(declare-const var3607!1 String)
(assert (= var3607!1 (str.++ var3607 var2185)))
(assert true)
(define-const var3997 String (toString/-2075883882 var1422)) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-667416467 var2608 var3997 (cast-from-var205-to-var469 var2486))) ; Statement: specialinvoke $r1.<freemarker.core.ParseException: void <init>(java.lang.String,freemarker.core.TemplateObject)>($r9, r0) 

(declare-const var2608!1 var3785)
(declare-const var3997!1 String)
(declare-const var2486!1 var205)
 ; Statement: throw $r1 
(check-sat)
(get-model)
(get-unsat-core)
; {var3785-init=([], freemarker.core.ParseException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), getCanonicalForm/-1714059646=([freemarker.core.TemplateObject], java.lang.String), cast-from-var205-to-var469=([freemarker.core.Expression], freemarker.core.TemplateObject), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-667416467=([freemarker.core.ParseException, java.lang.String, freemarker.core.TemplateObject], void)}
; {var3575=freemarker.core.FMParser, var3336=r10, var205=freemarker.core.Expression, var2486=r0, var2185=r6, var1124=null_type, var1049=$z0, var3785=freemarker.core.ParseException, var2608=$r1, var941=$r2, var1906=$r4, var469=freemarker.core.TemplateObject, var399=$r3, var2684=$r5, var3607=$r7, var1422=$r8, var3997=$r9}
; {freemarker.core.FMParser=var3575, r10=var3336, freemarker.core.Expression=var205, r0=var2486, r6=var2185, null_type=var1124, $z0=var1049, freemarker.core.ParseException=var3785, $r1=var2608, $r2=var941, $r4=var1906, freemarker.core.TemplateObject=var469, $r3=var399, $r5=var2684, $r7=var3607, $r8=var1422, $r9=var3997}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 4,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r10 := @this: freemarker.core.FMParser;	r0 := @parameter0: freemarker.core.Expression;	r6 := @parameter1: java.lang.String;	$z0 = r0 instanceof freemarker.core.NumberLiteral;	if $z0 == 0 goto return;	$r1 = new freemarker.core.ParseException;	$r2 = new java.lang.StringBuilder;	specialinvoke $r2.<java.lang.StringBuilder: void <init>()>();	$r4 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Found number literal: ");	$r3 = virtualinvoke r0.<freemarker.core.Expression: java.lang.String getCanonicalForm()>();	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3);	$r7 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(". Expecting ");	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r6);	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r1.<freemarker.core.ParseException: void <init>(java.lang.String,freemarker.core.TemplateObject)>($r9, r0);	throw $r1
;block_num 2