(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3588 0)
(declare-sort var3578 0)
(declare-sort var3952 0)
(declare-sort var934 0)
(declare-sort var2917 0)
(declare-sort var2893 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var934-init () var934)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1031950772 (String var2917) String)
(declare-fun cast-from-var3578-to-var2917 (var3578) var2917)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-667416467 (var934 String var2893) void)
(declare-fun cast-from-var3578-to-var2893 (var3578) var2893)
(declare-const null-var3588 var3588)
(declare-const null-var3578 var3578)
(declare-const null-String String)
(declare-const var3179 var3588) ; Statement: r9 := @this: freemarker.core.FMParser 
(assert (not (= var3179 null-var3588)))
(declare-const var2291 var3578) ; Statement: r0 := @parameter0: freemarker.core.Expression 
(assert (not (= var2291 null-var3578)))
(declare-const var3561 String) ; Statement: r5 := @parameter1: java.lang.String 
(assert (not (= var3561 null-String)))
(define-const var626 Bool false) ; Statement: $z0 = r0 instanceof freemarker.core.StringLiteral 
 ; Statement: if $z0 == 0 goto return 
(assert (not (= (ite var626 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var2431 var934 var934-init) ; Statement: $r1 = new freemarker.core.ParseException 
(define-const var3923 String String-init) ; Statement: $r2 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3923)) ; Statement: specialinvoke $r2.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3923!1 String)
(assert (= var3923!1 ""))
(assert true)
(define-const var2311 String (append/672562846 var3923!1 "Found string literal: ")) ; Statement: $r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Found string literal: ") 
(declare-const var3923!2 String)
(assert (= var3923!2 (str.++ var3923!1 "Found string literal: ")))
(assert true)
(define-const var1957 String (append/-1031950772 var2311 (cast-from-var3578-to-var2917 var2291))) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r0) 
(declare-const var2311!1 String)
(assert (str.prefixof var2311 var2311!1))
(assert true)
(define-const var426 String (append/672562846 var1957 ". Expecting: ")) ; Statement: $r6 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(". Expecting: ") 
(declare-const var1957!1 String)
(assert (= var1957!1 (str.++ var1957 ". Expecting: ")))
(assert true)
(define-const var2142 String (append/672562846 var426 var3561)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r5) 
(declare-const var426!1 String)
(assert (= var426!1 (str.++ var426 var3561)))
(assert true)
(define-const var1832 String (toString/-2075883882 var2142)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-667416467 var2431 var1832 (cast-from-var3578-to-var2893 var2291))) ; Statement: specialinvoke $r1.<freemarker.core.ParseException: void <init>(java.lang.String,freemarker.core.TemplateObject)>($r8, r0) 

(declare-const var2431!1 var934)
(declare-const var1832!1 String)
(declare-const var2291!1 var3578)
 ; Statement: throw $r1 
(check-sat)
(get-model)
(get-unsat-core)
; {var934-init=([], freemarker.core.ParseException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-var3578-to-var2917=([freemarker.core.Expression], java.lang.Object), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-667416467=([freemarker.core.ParseException, java.lang.String, freemarker.core.TemplateObject], void), cast-from-var3578-to-var2893=([freemarker.core.Expression], freemarker.core.TemplateObject)}
; {var3588=freemarker.core.FMParser, var3179=r9, var3578=freemarker.core.Expression, var2291=r0, var3561=r5, var3952=null_type, var626=$z0, var934=freemarker.core.ParseException, var2431=$r1, var3923=$r2, var2311=$r3, var2917=java.lang.Object, var1957=$r4, var426=$r6, var2142=$r7, var1832=$r8, var2893=freemarker.core.TemplateObject}
; {freemarker.core.FMParser=var3588, r9=var3179, freemarker.core.Expression=var3578, r0=var2291, r5=var3561, null_type=var3952, $z0=var626, freemarker.core.ParseException=var934, $r1=var2431, $r2=var3923, $r3=var2311, java.lang.Object=var2917, $r4=var1957, $r6=var426, $r7=var2142, $r8=var1832, freemarker.core.TemplateObject=var2893}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r9 := @this: freemarker.core.FMParser;	r0 := @parameter0: freemarker.core.Expression;	r5 := @parameter1: java.lang.String;	$z0 = r0 instanceof freemarker.core.StringLiteral;	if $z0 == 0 goto return;	$r1 = new freemarker.core.ParseException;	$r2 = new java.lang.StringBuilder;	specialinvoke $r2.<java.lang.StringBuilder: void <init>()>();	$r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Found string literal: ");	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r0);	$r6 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(". Expecting: ");	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r5);	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r1.<freemarker.core.ParseException: void <init>(java.lang.String,freemarker.core.TemplateObject)>($r8, r0);	throw $r1
;block_num 2