(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2359 0)
(declare-sort var1517 0)
(declare-sort var2553 0)
(declare-sort var2218 0)
(declare-sort var965 0)
(declare-sort var444 0)
(declare-sort var3445 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun <init>/-1549513696 (var965) void)
(declare-fun cast-from-var2359-to-var965 (var2359) var965)
(declare-fun image/-1758362606 (var1517) String)
(declare-fun parseTimeValue/-485601640 (var2359) var2218)
(declare-fun var444_binarySearch/1265302445 ((Array Int var3445) var3445) Int)
(declare-fun cast-from-__Array__Int__String__-to-__Array__Int__var3445__ ((Array Int String)) (Array Int var3445))
(declare-fun cast-from-String-to-var3445 (String) var3445)
(declare-fun intern/-1326102057 (String) String)
(declare-fun name/-485601640 (var2359) String)
(declare-const null-var2359 var2359)
(declare-const null-var1517 var1517)
(declare-const null-var2553 var2553)
(declare-const null-var2218 var2218)
(declare-const var2359-SPEC_VAR_NAMES (Array Int String))
(declare-const var249 var2359) ; Statement: r0 := @this: freemarker.core.BuiltinVariable 
(assert (not (= var249 null-var2359)))
(declare-const var1858 var1517) ; Statement: r1 := @parameter0: freemarker.core.Token 
(assert (not (= var1858 null-var1517)))
(declare-const var1016 var2553) ; Statement: r9 := @parameter1: freemarker.core.FMParserTokenManager 
(assert (not (= var1016 null-var2553)))
(declare-const var3309 var2218) ; Statement: r3 := @parameter2: freemarker.template.TemplateModel 
(assert (not (= var3309 null-var2218)))
(assert true)
;(assert (<init>/-1549513696 (cast-from-var2359-to-var965 var249))) ; Statement: specialinvoke r0.<freemarker.core.Expression: void <init>()>() 

(declare-const var249!1 var2359)
(define-const var2194 String (image/-1758362606 var1858)) ; Statement: r2 = r1.<freemarker.core.Token: java.lang.String image> 
(declare-const var249!2 var2359)
(assert (not (= var249!2 null-var2359)))
(assert (= (parseTimeValue/-485601640 var249!2) var3309)) ; Statement: r0.<freemarker.core.BuiltinVariable: freemarker.template.TemplateModel parseTimeValue> = r3 
(define-const var2682 (Array Int String) var2359-SPEC_VAR_NAMES) ; Statement: $r4 = <freemarker.core.BuiltinVariable: java.lang.String[] SPEC_VAR_NAMES> 
(define-const var2055 Int (var444_binarySearch/1265302445 (cast-from-__Array__Int__String__-to-__Array__Int__var3445__ var2682) (cast-from-String-to-var3445 var2194))) ; Statement: $i0 = staticinvoke <java.util.Arrays: int binarySearch(java.lang.Object[],java.lang.Object)>($r4, r2) 
 ; Statement: if $i0 >= 0 goto $r5 = virtualinvoke r2.<java.lang.String: java.lang.String intern()>() 
(assert (>= var2055 0)) ; Cond: $i0 >= 0 
(assert true)
(define-const var567 String (intern/-1326102057 var2194)) ; Statement: $r5 = virtualinvoke r2.<java.lang.String: java.lang.String intern()>() 
(declare-const var249!3 var2359)
(assert (not (= var249!3 null-var2359)))
(assert (= (name/-485601640 var249!3) var567)) ; Statement: r0.<freemarker.core.BuiltinVariable: java.lang.String name> = $r5 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {<init>/-1549513696=([freemarker.core.Expression], void), cast-from-var2359-to-var965=([freemarker.core.BuiltinVariable], freemarker.core.Expression), image/-1758362606=([freemarker.core.Token], java.lang.String), parseTimeValue/-485601640=([freemarker.core.BuiltinVariable], freemarker.template.TemplateModel), var444_binarySearch/1265302445=([java.lang.Object[], java.lang.Object], int), cast-from-__Array__Int__String__-to-__Array__Int__var3445__=([java.lang.String[]], java.lang.Object[]), cast-from-String-to-var3445=([java.lang.String], java.lang.Object), intern/-1326102057=([java.lang.String], java.lang.String), name/-485601640=([freemarker.core.BuiltinVariable], java.lang.String)}
; {var2359=freemarker.core.BuiltinVariable, var249=r0, var1517=freemarker.core.Token, var1858=r1, var2553=freemarker.core.FMParserTokenManager, var1016=r9, var2218=freemarker.template.TemplateModel, var3309=r3, var965=freemarker.core.Expression, var2194=r2, var2682=$r4, var444=java.util.Arrays, var3445=java.lang.Object, var2055=$i0, var567=$r5}
; {freemarker.core.BuiltinVariable=var2359, r0=var249, freemarker.core.Token=var1517, r1=var1858, freemarker.core.FMParserTokenManager=var2553, r9=var1016, freemarker.template.TemplateModel=var2218, r3=var3309, freemarker.core.Expression=var965, r2=var2194, $r4=var2682, java.util.Arrays=var444, java.lang.Object=var3445, $i0=var2055, $r5=var567}
;seq <java.lang.String: java.lang.String intern()>
;cnt {"<java.lang.String: java.lang.String intern()>": 1}
;stmts r0 := @this: freemarker.core.BuiltinVariable;	r1 := @parameter0: freemarker.core.Token;	r9 := @parameter1: freemarker.core.FMParserTokenManager;	r3 := @parameter2: freemarker.template.TemplateModel;	specialinvoke r0.<freemarker.core.Expression: void <init>()>();	r2 = r1.<freemarker.core.Token: java.lang.String image>;	r0.<freemarker.core.BuiltinVariable: freemarker.template.TemplateModel parseTimeValue> = r3;	$r4 = <freemarker.core.BuiltinVariable: java.lang.String[] SPEC_VAR_NAMES>;	$i0 = staticinvoke <java.util.Arrays: int binarySearch(java.lang.Object[],java.lang.Object)>($r4, r2);	if $i0 >= 0 goto $r5 = virtualinvoke r2.<java.lang.String: java.lang.String intern()>();	$r5 = virtualinvoke r2.<java.lang.String: java.lang.String intern()>();	r0.<freemarker.core.BuiltinVariable: java.lang.String name> = $r5;	return
;block_num 2