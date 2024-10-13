(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1290 0)
(declare-sort var647 0)
(declare-sort var850 0)
(declare-sort var3629 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getOutputFormat/1287781761 (var1290 String) var850)
(declare-fun var3629-init () var3629)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/875830710 (var3629 String) void)
(declare-const null-var1290 var1290)
(declare-const null-String String)
(declare-const var3191 var1290) ; Statement: r0 := @this: freemarker.template.Configuration 
(assert (not (= var3191 null-var1290)))
(declare-const var556 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var556 null-String)))
(assert true)
(define-const var1749 var850 (getOutputFormat/1287781761 var3191 var556)) ; Statement: r2 = virtualinvoke r0.<freemarker.template.Configuration: freemarker.core.OutputFormat getOutputFormat(java.lang.String)>(r1) 
(define-const var3387 Bool false) ; Statement: $z0 = r2 instanceof freemarker.core.MarkupOutputFormat 
 ; Statement: if $z0 != 0 goto r3 = (freemarker.core.MarkupOutputFormat) r2 
(assert (not (not (= (ite var3387 1 0) 0)))) ; Negate: Cond: $z0 != 0  
(define-const var3202 var3629 var3629-init) ; Statement: $r4 = new java.lang.IllegalArgumentException 
(define-const var842 String String-init) ; Statement: $r5 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var842)) ; Statement: specialinvoke $r5.<java.lang.StringBuilder: void <init>()>() 
(declare-const var842!1 String)
(assert (= var842!1 ""))
(assert true)
(define-const var2724 String (append/672562846 var842!1 "The \u0022")) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("The \"") 
(declare-const var842!2 String)
(assert (= var842!2 (str.++ var842!1 "The \u0022")))
(assert true)
(define-const var2730 String (append/672562846 var2724 var556)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1) 
(declare-const var2724!1 String)
(assert (= var2724!1 (str.++ var2724 var556)))
(assert true)
(define-const var3797 String (append/672562846 var2730 "\u0022 output format can\u0027t be used in ...{...} expression, because it\u0027s not a markup format.")) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\" output format can\'t be used in ...{...} expression, because it\'s not a markup format.") 
(declare-const var2730!1 String)
(assert (= var2730!1 (str.++ var2730 "\u0022 output format can\u0027t be used in ...{...} expression, because it\u0027s not a markup format.")))
(assert true)
(define-const var3140 String (toString/-2075883882 var3797)) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/875830710 var3202 var3140)) ; Statement: specialinvoke $r4.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r9) 

(declare-const var3202!1 var3629)
(declare-const var3140!1 String)
 ; Statement: throw $r4 
(check-sat)
(get-model)
(get-unsat-core)
; {getOutputFormat/1287781761=([freemarker.template.Configuration, java.lang.String], freemarker.core.OutputFormat), var3629-init=([], java.lang.IllegalArgumentException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/875830710=([java.lang.IllegalArgumentException, java.lang.String], void)}
; {var1290=freemarker.template.Configuration, var3191=r0, var556=r1, var647=null_type, var850=freemarker.core.OutputFormat, var1749=r2, var3387=$z0, var3629=java.lang.IllegalArgumentException, var3202=$r4, var842=$r5, var2724=$r6, var2730=$r7, var3797=$r8, var3140=$r9}
; {freemarker.template.Configuration=var1290, r0=var3191, r1=var556, null_type=var647, freemarker.core.OutputFormat=var850, r2=var1749, $z0=var3387, java.lang.IllegalArgumentException=var3629, $r4=var3202, $r5=var842, $r6=var2724, $r7=var2730, $r8=var3797, $r9=var3140}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: freemarker.template.Configuration;	r1 := @parameter0: java.lang.String;	r2 = virtualinvoke r0.<freemarker.template.Configuration: freemarker.core.OutputFormat getOutputFormat(java.lang.String)>(r1);	$z0 = r2 instanceof freemarker.core.MarkupOutputFormat;	if $z0 != 0 goto r3 = (freemarker.core.MarkupOutputFormat) r2;	$r4 = new java.lang.IllegalArgumentException;	$r5 = new java.lang.StringBuilder;	specialinvoke $r5.<java.lang.StringBuilder: void <init>()>();	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("The \"");	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1);	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\" output format can\'t be used in ...{...} expression, because it\'s not a markup format.");	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r4.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r9);	throw $r4
;block_num 2