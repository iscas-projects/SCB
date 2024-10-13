(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2118 0)
(declare-sort var2077 0)
(declare-sort var903 0)
(declare-sort var3159 0)
(declare-sort var1333 0)
(declare-sort var1476 0)
(declare-sort var3342 0)
(declare-sort var130 0)
(declare-sort var2683 0)
(declare-sort var52 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun <init>/-1415091452 (var1476) void)
(declare-fun cast-from-var2118-to-var1476 (var2118) var1476)
(declare-fun image/-1758362606 (var2077) String)
(declare-fun var3342_binarySearch/1265302445 ((Array Int var130) var130) Int)
(declare-fun cast-from-__Array__Int__String__-to-__Array__Int__var130__ ((Array Int String)) (Array Int var130))
(declare-fun cast-from-String-to-var130 (String) var130)
(declare-fun key/1841118612 (var2118) String)
(declare-fun value/1841118612 (var2118) var3159)
(declare-fun var2683-init () var2683)
(declare-fun <init>/1963716967 (var2683 var2118 String) void)
(declare-fun cast-from-var2683-to-var52 (var2683) var52)
(declare-fun valueSafetyChecker/1841118612 (var2118) var52)
(declare-const null-var2118 var2118)
(declare-const null-var2077 var2077)
(declare-const null-var903 var903)
(declare-const null-var3159 var3159)
(declare-const null-var1333 var1333)
(declare-const var2118-SETTING_NAMES (Array Int String))
(declare-const var361 var2118) ; Statement: r0 := @this: freemarker.core.PropertySetting 
(assert (not (= var361 null-var2118)))
(declare-const var674 var2077) ; Statement: r1 := @parameter0: freemarker.core.Token 
(assert (not (= var674 null-var2077)))
(declare-const var1295 var903) ; Statement: r14 := @parameter1: freemarker.core.FMParserTokenManager 
(assert (not (= var1295 null-var903)))
(declare-const var1246 var3159) ; Statement: r4 := @parameter2: freemarker.core.Expression 
(assert (not (= var1246 null-var3159)))
(declare-const var1648 var1333) ; Statement: r7 := @parameter3: freemarker.template.Configuration 
(assert (not (= var1648 null-var1333)))
(assert true)
;(assert (<init>/-1415091452 (cast-from-var2118-to-var1476 var361))) ; Statement: specialinvoke r0.<freemarker.core.TemplateElement: void <init>()>() 

(declare-const var361!1 var2118)
(define-const var3962 String (image/-1758362606 var674)) ; Statement: r2 = r1.<freemarker.core.Token: java.lang.String image> 
(define-const var2943 (Array Int String) var2118-SETTING_NAMES) ; Statement: $r3 = <freemarker.core.PropertySetting: java.lang.String[] SETTING_NAMES> 
(define-const var3455 Int (var3342_binarySearch/1265302445 (cast-from-__Array__Int__String__-to-__Array__Int__var130__ var2943) (cast-from-String-to-var130 var3962))) ; Statement: $i0 = staticinvoke <java.util.Arrays: int binarySearch(java.lang.Object[],java.lang.Object)>($r3, r2) 
 ; Statement: if $i0 >= 0 goto r0.<freemarker.core.PropertySetting: java.lang.String key> = r2 
(assert (>= var3455 0)) ; Cond: $i0 >= 0 
(declare-const var361!2 var2118)
(assert (not (= var361!2 null-var2118)))
(assert (= (key/1841118612 var361!2) var3962)) ; Statement: r0.<freemarker.core.PropertySetting: java.lang.String key> = r2 
(declare-const var361!3 var2118)
(assert (not (= var361!3 null-var2118)))
(assert (= (value/1841118612 var361!3) var1246)) ; Statement: r0.<freemarker.core.PropertySetting: freemarker.core.Expression value> = r4 
(assert true)
(define-const var3452 Bool (= var3962 "c_format")) ; Statement: $z0 = virtualinvoke r2.<java.lang.String: boolean equals(java.lang.Object)>("c_format") 
 ; Statement: if $z0 != 0 goto $r5 = new freemarker.core.PropertySetting$1 
(assert (not (= (ite var3452 1 0) 0))) ; Cond: $z0 != 0 
(define-const var998 var2683 var2683-init) ; Statement: $r5 = new freemarker.core.PropertySetting$1 
(assert true)
;(assert (<init>/1963716967 var998 var361!3 var3962)) ; Statement: specialinvoke $r5.<freemarker.core.PropertySetting$1: void <init>(freemarker.core.PropertySetting,java.lang.String)>(r0, r2) 

(declare-const var998!1 var2683)
(declare-const var361!4 var2118)
(declare-const var3962!1 String)
(declare-const var361!5 var2118)
(assert (not (= var361!5 null-var2118)))
(assert (= (valueSafetyChecker/1841118612 var361!5) (cast-from-var2683-to-var52 var998!1))) ; Statement: r0.<freemarker.core.PropertySetting: freemarker.core.PropertySetting$ValueSafetyChecker valueSafetyChecker> = $r5 
 ; Statement: goto [?= return] 
(assert true) ; Non Conditional
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {<init>/-1415091452=([freemarker.core.TemplateElement], void), cast-from-var2118-to-var1476=([freemarker.core.PropertySetting], freemarker.core.TemplateElement), image/-1758362606=([freemarker.core.Token], java.lang.String), var3342_binarySearch/1265302445=([java.lang.Object[], java.lang.Object], int), cast-from-__Array__Int__String__-to-__Array__Int__var130__=([java.lang.String[]], java.lang.Object[]), cast-from-String-to-var130=([java.lang.String], java.lang.Object), key/1841118612=([freemarker.core.PropertySetting], java.lang.String), value/1841118612=([freemarker.core.PropertySetting], freemarker.core.Expression), var2683-init=([], freemarker.core.PropertySetting$1), <init>/1963716967=([freemarker.core.PropertySetting$1, freemarker.core.PropertySetting, java.lang.String], void), cast-from-var2683-to-var52=([freemarker.core.PropertySetting$1], freemarker.core.PropertySetting$ValueSafetyChecker), valueSafetyChecker/1841118612=([freemarker.core.PropertySetting], freemarker.core.PropertySetting$ValueSafetyChecker)}
; {var2118=freemarker.core.PropertySetting, var361=r0, var2077=freemarker.core.Token, var674=r1, var903=freemarker.core.FMParserTokenManager, var1295=r14, var3159=freemarker.core.Expression, var1246=r4, var1333=freemarker.template.Configuration, var1648=r7, var1476=freemarker.core.TemplateElement, var3962=r2, var2943=$r3, var3342=java.util.Arrays, var130=java.lang.Object, var3455=$i0, var3452=$z0, var2683=freemarker.core.PropertySetting$1, var998=$r5, var52=freemarker.core.PropertySetting$ValueSafetyChecker}
; {freemarker.core.PropertySetting=var2118, r0=var361, freemarker.core.Token=var2077, r1=var674, freemarker.core.FMParserTokenManager=var903, r14=var1295, freemarker.core.Expression=var3159, r4=var1246, freemarker.template.Configuration=var1333, r7=var1648, freemarker.core.TemplateElement=var1476, r2=var3962, $r3=var2943, java.util.Arrays=var3342, java.lang.Object=var130, $i0=var3455, $z0=var3452, freemarker.core.PropertySetting$1=var2683, $r5=var998, freemarker.core.PropertySetting$ValueSafetyChecker=var52}
;seq <java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r0 := @this: freemarker.core.PropertySetting;	r1 := @parameter0: freemarker.core.Token;	r14 := @parameter1: freemarker.core.FMParserTokenManager;	r4 := @parameter2: freemarker.core.Expression;	r7 := @parameter3: freemarker.template.Configuration;	specialinvoke r0.<freemarker.core.TemplateElement: void <init>()>();	r2 = r1.<freemarker.core.Token: java.lang.String image>;	$r3 = <freemarker.core.PropertySetting: java.lang.String[] SETTING_NAMES>;	$i0 = staticinvoke <java.util.Arrays: int binarySearch(java.lang.Object[],java.lang.Object)>($r3, r2);	if $i0 >= 0 goto r0.<freemarker.core.PropertySetting: java.lang.String key> = r2;	r0.<freemarker.core.PropertySetting: java.lang.String key> = r2;	r0.<freemarker.core.PropertySetting: freemarker.core.Expression value> = r4;	$z0 = virtualinvoke r2.<java.lang.String: boolean equals(java.lang.Object)>("c_format");	if $z0 != 0 goto $r5 = new freemarker.core.PropertySetting$1;	$r5 = new freemarker.core.PropertySetting$1;	specialinvoke $r5.<freemarker.core.PropertySetting$1: void <init>(freemarker.core.PropertySetting,java.lang.String)>(r0, r2);	r0.<freemarker.core.PropertySetting: freemarker.core.PropertySetting$ValueSafetyChecker valueSafetyChecker> = $r5;	goto [?= return];	return
;block_num 4