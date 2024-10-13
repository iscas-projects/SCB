(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2307 0)
(declare-sort var2467 0)
(declare-sort var1541 0)
(declare-sort var3405 0)
(declare-sort var2682 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun jj_consume_token/-1662239344 (var2307 Int) var2467)
(declare-fun Expression/1135211635 (var2307) var1541)
(declare-fun isLiteral/-1876674223 (var1541) Bool)
(declare-fun var3405-init () var3405)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getCanonicalForm/-1714059646 (var2682) String)
(declare-fun cast-from-var1541-to-var2682 (var1541) var2682)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-667416467 (var3405 String var2682) void)
(declare-const null-var2307 var2307)
(declare-const var2777 var2307) ; Statement: r0 := @this: freemarker.core.FMParser 
(assert (not (= var2777 null-var2307)))
(assert true)
(define-const var2946 var2467 (jj_consume_token/-1662239344 var2777 29)) ; Statement: r1 = specialinvoke r0.<freemarker.core.FMParser: freemarker.core.Token jj_consume_token(int)>(29) 
(assert true)
(define-const var888 var1541 (Expression/1135211635 var2777)) ; Statement: r2 = virtualinvoke r0.<freemarker.core.FMParser: freemarker.core.Expression Expression()>() 
(assert true)
;(assert (jj_consume_token/-1662239344 var2777 148)) ; Statement: specialinvoke r0.<freemarker.core.FMParser: freemarker.core.Token jj_consume_token(int)>(148) 

(declare-const var2777!1 var2307)
(declare-const var2055 Int)
(assert true)
(define-const var1707 Bool (isLiteral/-1876674223 var888)) ; Statement: $z0 = virtualinvoke r2.<freemarker.core.Expression: boolean isLiteral()>() 
 ; Statement: if $z0 != 0 goto r3 = virtualinvoke r2.<freemarker.core.Expression: freemarker.template.TemplateModel eval(freemarker.core.Environment)>(null) 
(assert (not (not (= (ite var1707 1 0) 0)))) ; Negate: Cond: $z0 != 0  
(define-const var2766 var3405 var3405-init) ; Statement: $r47 = new freemarker.core.ParseException 
(define-const var2176 String String-init) ; Statement: $r48 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2176)) ; Statement: specialinvoke $r48.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2176!1 String)
(assert (= var2176!1 ""))
(assert true)
(define-const var1987 String (append/672562846 var2176!1 "Parameter expression must be parse-time evaluable (constant): ")) ; Statement: $r50 = virtualinvoke $r48.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Parameter expression must be parse-time evaluable (constant): ") 
(declare-const var2176!2 String)
(assert (= var2176!2 (str.++ var2176!1 "Parameter expression must be parse-time evaluable (constant): ")))
(assert true)
(define-const var187 String (getCanonicalForm/-1714059646 (cast-from-var1541-to-var2682 var888))) ; Statement: $r49 = virtualinvoke r2.<freemarker.core.Expression: java.lang.String getCanonicalForm()>() 
(assert true)
(define-const var693 String (append/672562846 var1987 var187)) ; Statement: $r51 = virtualinvoke $r50.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r49) 
(declare-const var1987!1 String)
(assert (= var1987!1 (str.++ var1987 var187)))
(assert true)
(define-const var2585 String (toString/-2075883882 var693)) ; Statement: $r52 = virtualinvoke $r51.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-667416467 var2766 var2585 (cast-from-var1541-to-var2682 var888))) ; Statement: specialinvoke $r47.<freemarker.core.ParseException: void <init>(java.lang.String,freemarker.core.TemplateObject)>($r52, r2) 

(declare-const var2766!1 var3405)
(declare-const var2585!1 String)
(declare-const var888!1 var1541)
 ; Statement: throw $r47 
(check-sat)
(get-model)
(get-unsat-core)
; {jj_consume_token/-1662239344=([freemarker.core.FMParser, int], freemarker.core.Token), Expression/1135211635=([freemarker.core.FMParser], freemarker.core.Expression), isLiteral/-1876674223=([freemarker.core.Expression], boolean), var3405-init=([], freemarker.core.ParseException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), getCanonicalForm/-1714059646=([freemarker.core.TemplateObject], java.lang.String), cast-from-var1541-to-var2682=([freemarker.core.Expression], freemarker.core.TemplateObject), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-667416467=([freemarker.core.ParseException, java.lang.String, freemarker.core.TemplateObject], void)}
; {var2307=freemarker.core.FMParser, var2777=r0, var2467=freemarker.core.Token, var2946=r1, var1541=freemarker.core.Expression, var888=r2, var2055=148, var1707=$z0, var3405=freemarker.core.ParseException, var2766=$r47, var2176=$r48, var1987=$r50, var2682=freemarker.core.TemplateObject, var187=$r49, var693=$r51, var2585=$r52}
; {freemarker.core.FMParser=var2307, r0=var2777, freemarker.core.Token=var2467, r1=var2946, freemarker.core.Expression=var1541, r2=var888, 148=var2055, $z0=var1707, freemarker.core.ParseException=var3405, $r47=var2766, $r48=var2176, $r50=var1987, freemarker.core.TemplateObject=var2682, $r49=var187, $r51=var693, $r52=var2585}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: freemarker.core.FMParser;	r1 = specialinvoke r0.<freemarker.core.FMParser: freemarker.core.Token jj_consume_token(int)>(29);	r2 = virtualinvoke r0.<freemarker.core.FMParser: freemarker.core.Expression Expression()>();	specialinvoke r0.<freemarker.core.FMParser: freemarker.core.Token jj_consume_token(int)>(148);	$z0 = virtualinvoke r2.<freemarker.core.Expression: boolean isLiteral()>();	if $z0 != 0 goto r3 = virtualinvoke r2.<freemarker.core.Expression: freemarker.template.TemplateModel eval(freemarker.core.Environment)>(null);	$r47 = new freemarker.core.ParseException;	$r48 = new java.lang.StringBuilder;	specialinvoke $r48.<java.lang.StringBuilder: void <init>()>();	$r50 = virtualinvoke $r48.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Parameter expression must be parse-time evaluable (constant): ");	$r49 = virtualinvoke r2.<freemarker.core.Expression: java.lang.String getCanonicalForm()>();	$r51 = virtualinvoke $r50.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r49);	$r52 = virtualinvoke $r51.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r47.<freemarker.core.ParseException: void <init>(java.lang.String,freemarker.core.TemplateObject)>($r52, r2);	throw $r47
;block_num 2