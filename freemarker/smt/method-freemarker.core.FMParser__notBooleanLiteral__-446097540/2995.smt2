(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2106 0)
(declare-sort var197 0)
(declare-sort var2013 0)
(declare-sort var2314 0)
(declare-sort var1858 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var2314-init () var2314)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getCanonicalForm/-1714059646 (var1858) String)
(declare-fun cast-from-var197-to-var1858 (var197) var1858)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-667416467 (var2314 String var1858) void)
(declare-const null-var2106 var2106)
(declare-const null-var197 var197)
(declare-const null-String String)
(declare-const var3280 var2106) ; Statement: r10 := @this: freemarker.core.FMParser 
(assert (not (= var3280 null-var2106)))
(declare-const var540 var197) ; Statement: r0 := @parameter0: freemarker.core.Expression 
(assert (not (= var540 null-var197)))
(declare-const var1992 String) ; Statement: r6 := @parameter1: java.lang.String 
(assert (not (= var1992 null-String)))
(define-const var545 Bool false) ; Statement: $z0 = r0 instanceof freemarker.core.BooleanLiteral 
 ; Statement: if $z0 == 0 goto return 
(assert (not (= (ite var545 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var1427 var2314 var2314-init) ; Statement: $r1 = new freemarker.core.ParseException 
(define-const var1941 String String-init) ; Statement: $r2 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1941)) ; Statement: specialinvoke $r2.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1941!1 String)
(assert (= var1941!1 ""))
(assert true)
(define-const var2857 String (append/672562846 var1941!1 "Found: ")) ; Statement: $r4 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Found: ") 
(declare-const var1941!2 String)
(assert (= var1941!2 (str.++ var1941!1 "Found: ")))
(assert true)
(define-const var1489 String (getCanonicalForm/-1714059646 (cast-from-var197-to-var1858 var540))) ; Statement: $r3 = virtualinvoke r0.<freemarker.core.Expression: java.lang.String getCanonicalForm()>() 
(assert true)
(define-const var1305 String (append/672562846 var2857 var1489)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3) 
(declare-const var2857!1 String)
(assert (= var2857!1 (str.++ var2857 var1489)))
(assert true)
(define-const var542 String (append/672562846 var1305 " literal. Expecting ")) ; Statement: $r7 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" literal. Expecting ") 
(declare-const var1305!1 String)
(assert (= var1305!1 (str.++ var1305 " literal. Expecting ")))
(assert true)
(define-const var783 String (append/672562846 var542 var1992)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r6) 
(declare-const var542!1 String)
(assert (= var542!1 (str.++ var542 var1992)))
(assert true)
(define-const var2557 String (toString/-2075883882 var783)) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-667416467 var1427 var2557 (cast-from-var197-to-var1858 var540))) ; Statement: specialinvoke $r1.<freemarker.core.ParseException: void <init>(java.lang.String,freemarker.core.TemplateObject)>($r9, r0) 

(declare-const var1427!1 var2314)
(declare-const var2557!1 String)
(declare-const var540!1 var197)
 ; Statement: throw $r1 
(check-sat)
(get-model)
(get-unsat-core)
; {var2314-init=([], freemarker.core.ParseException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), getCanonicalForm/-1714059646=([freemarker.core.TemplateObject], java.lang.String), cast-from-var197-to-var1858=([freemarker.core.Expression], freemarker.core.TemplateObject), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-667416467=([freemarker.core.ParseException, java.lang.String, freemarker.core.TemplateObject], void)}
; {var2106=freemarker.core.FMParser, var3280=r10, var197=freemarker.core.Expression, var540=r0, var1992=r6, var2013=null_type, var545=$z0, var2314=freemarker.core.ParseException, var1427=$r1, var1941=$r2, var2857=$r4, var1858=freemarker.core.TemplateObject, var1489=$r3, var1305=$r5, var542=$r7, var783=$r8, var2557=$r9}
; {freemarker.core.FMParser=var2106, r10=var3280, freemarker.core.Expression=var197, r0=var540, r6=var1992, null_type=var2013, $z0=var545, freemarker.core.ParseException=var2314, $r1=var1427, $r2=var1941, $r4=var2857, freemarker.core.TemplateObject=var1858, $r3=var1489, $r5=var1305, $r7=var542, $r8=var783, $r9=var2557}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 4,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r10 := @this: freemarker.core.FMParser;	r0 := @parameter0: freemarker.core.Expression;	r6 := @parameter1: java.lang.String;	$z0 = r0 instanceof freemarker.core.BooleanLiteral;	if $z0 == 0 goto return;	$r1 = new freemarker.core.ParseException;	$r2 = new java.lang.StringBuilder;	specialinvoke $r2.<java.lang.StringBuilder: void <init>()>();	$r4 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Found: ");	$r3 = virtualinvoke r0.<freemarker.core.Expression: java.lang.String getCanonicalForm()>();	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3);	$r7 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" literal. Expecting ");	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r6);	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r1.<freemarker.core.ParseException: void <init>(java.lang.String,freemarker.core.TemplateObject)>($r9, r0);	throw $r1
;block_num 2