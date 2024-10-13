(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var236 0)
(declare-sort var1620 0)
(declare-sort var2843 0)
(declare-sort var788 0)
(declare-sort var100 0)
(declare-sort var3095 0)
(declare-sort var3394 0)
(declare-sort var1501 0)
(declare-sort var1729 0)
(declare-sort var3866 0)
(declare-sort var3535 0)
(declare-sort var3891 0)
(declare-sort var33 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun <init>/-1415091452 (var3095) void)
(declare-fun cast-from-var236-to-var3095 (var236) var3095)
(declare-fun image/-1758362606 (var1620) String)
(declare-fun var3394_binarySearch/1265302445 ((Array Int var1501) var1501) Int)
(declare-fun cast-from-__Array__Int__String__-to-__Array__Int__var1501__ ((Array Int String)) (Array Int var1501))
(declare-fun cast-from-String-to-var1501 (String) var1501)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun var3866_getConfigurationSettingNames/-2091678056 (var100 Bool) var1729)
(declare-fun var1729_contains/1636690605 (var1729 var1501) Bool)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun var3535-init () var3535)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-549569735 (var3535 String var3891 var1620) void)
(declare-const null-var236 var236)
(declare-const null-var1620 var1620)
(declare-const null-var2843 var2843)
(declare-const null-var788 var788)
(declare-const null-var100 var100)
(declare-const var236-SETTING_NAMES (Array Int String))
(declare-const null-NullType var33)
(declare-const null-var3891 var3891)
(declare-const var3158 var236) ; Statement: r0 := @this: freemarker.core.PropertySetting 
(assert (not (= var3158 null-var236)))
(declare-const var3883 var1620) ; Statement: r1 := @parameter0: freemarker.core.Token 
(assert (not (= var3883 null-var1620)))
(declare-const var3426 var2843) ; Statement: r14 := @parameter1: freemarker.core.FMParserTokenManager 
(assert (not (= var3426 null-var2843)))
(declare-const var3238 var788) ; Statement: r4 := @parameter2: freemarker.core.Expression 
(assert (not (= var3238 null-var788)))
(declare-const var3446 var100) ; Statement: r7 := @parameter3: freemarker.template.Configuration 
(assert (not (= var3446 null-var100)))
(assert true)
;(assert (<init>/-1415091452 (cast-from-var236-to-var3095 var3158))) ; Statement: specialinvoke r0.<freemarker.core.TemplateElement: void <init>()>() 

(declare-const var3158!1 var236)
(define-const var1166 String (image/-1758362606 var3883)) ; Statement: r2 = r1.<freemarker.core.Token: java.lang.String image> 
(define-const var156 (Array Int String) var236-SETTING_NAMES) ; Statement: $r3 = <freemarker.core.PropertySetting: java.lang.String[] SETTING_NAMES> 
(define-const var715 Int (var3394_binarySearch/1265302445 (cast-from-__Array__Int__String__-to-__Array__Int__var1501__ var156) (cast-from-String-to-var1501 var1166))) ; Statement: $i0 = staticinvoke <java.util.Arrays: int binarySearch(java.lang.Object[],java.lang.Object)>($r3, r2) 
 ; Statement: if $i0 >= 0 goto r0.<freemarker.core.PropertySetting: java.lang.String key> = r2 
(assert (not (>= var715 0))) ; Negate: Cond: $i0 >= 0  
(define-const var2158 String String-init) ; Statement: $r6 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2158)) ; Statement: specialinvoke $r6.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2158!1 String)
(assert (= var2158!1 ""))
(define-const var2975 var1729 (var3866_getConfigurationSettingNames/-2091678056 var3446 (ite (= 1 1) true false))) ; Statement: $r8 = staticinvoke <freemarker.template._TemplateAPI: java.util.Set getConfigurationSettingNames(freemarker.template.Configuration,boolean)>(r7, 1) 
(define-const var3809 Bool (var1729_contains/1636690605 var2975 (cast-from-String-to-var1501 var1166))) ; Statement: $z2 = interfaceinvoke $r8.<java.util.Set: boolean contains(java.lang.Object)>(r2) 
 ; Statement: if $z2 != 0 goto virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("The setting name is recognized, but changing this setting from inside a template isn\'t supported.") 
(assert (not (= (ite var3809 1 0) 0))) ; Cond: $z2 != 0 
(assert true)
;(assert (append/672562846 var2158!1 "The setting name is recognized, but changing this setting from inside a template isn\u0027t supported.")) ; Statement: virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("The setting name is recognized, but changing this setting from inside a template isn\'t supported.") 
(declare-const var2158!2 String)
(assert (= var2158!2 (str.++ var2158!1 "The setting name is recognized, but changing this setting from inside a template isn\u0027t supported.")))
 ; Statement: goto [?= $r9 = new freemarker.core.ParseException] 
(assert true) ; Non Conditional
(define-const var166 var3535 var3535-init) ; Statement: $r9 = new freemarker.core.ParseException 
(assert true)
(define-const var3910 String (toString/-2075883882 var2158!2)) ; Statement: $r10 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-549569735 var166 var3910 null-var3891 var3883)) ; Statement: specialinvoke $r9.<freemarker.core.ParseException: void <init>(java.lang.String,freemarker.template.Template,freemarker.core.Token)>($r10, null, r1) 

(declare-const var166!1 var3535)
(declare-const var3910!1 String)
(declare-const var1393 var33)
(declare-const var3883!1 var1620)
 ; Statement: throw $r9 
(check-sat)
(get-model)
(get-unsat-core)
; {<init>/-1415091452=([freemarker.core.TemplateElement], void), cast-from-var236-to-var3095=([freemarker.core.PropertySetting], freemarker.core.TemplateElement), image/-1758362606=([freemarker.core.Token], java.lang.String), var3394_binarySearch/1265302445=([java.lang.Object[], java.lang.Object], int), cast-from-__Array__Int__String__-to-__Array__Int__var1501__=([java.lang.String[]], java.lang.Object[]), cast-from-String-to-var1501=([java.lang.String], java.lang.Object), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), var3866_getConfigurationSettingNames/-2091678056=([freemarker.template.Configuration, boolean], java.util.Set), var1729_contains/1636690605=([java.util.Set, java.lang.Object], boolean), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), var3535-init=([], freemarker.core.ParseException), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-549569735=([freemarker.core.ParseException, java.lang.String, freemarker.template.Template, freemarker.core.Token], void)}
; {var236=freemarker.core.PropertySetting, var3158=r0, var1620=freemarker.core.Token, var3883=r1, var2843=freemarker.core.FMParserTokenManager, var3426=r14, var788=freemarker.core.Expression, var3238=r4, var100=freemarker.template.Configuration, var3446=r7, var3095=freemarker.core.TemplateElement, var1166=r2, var156=$r3, var3394=java.util.Arrays, var1501=java.lang.Object, var715=$i0, var2158=$r6, var1729=java.util.Set, var3866=freemarker.template._TemplateAPI, var2975=$r8, var3809=$z2, var3535=freemarker.core.ParseException, var166=$r9, var3910=$r10, var3891=freemarker.template.Template, var1393=null, var33=null_type}
; {freemarker.core.PropertySetting=var236, r0=var3158, freemarker.core.Token=var1620, r1=var3883, freemarker.core.FMParserTokenManager=var2843, r14=var3426, freemarker.core.Expression=var788, r4=var3238, freemarker.template.Configuration=var100, r7=var3446, freemarker.core.TemplateElement=var3095, r2=var1166, $r3=var156, java.util.Arrays=var3394, java.lang.Object=var1501, $i0=var715, $r6=var2158, java.util.Set=var1729, freemarker.template._TemplateAPI=var3866, $r8=var2975, $z2=var3809, freemarker.core.ParseException=var3535, $r9=var166, $r10=var3910, freemarker.template.Template=var3891, null=var1393, null_type=var33}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: freemarker.core.PropertySetting;	r1 := @parameter0: freemarker.core.Token;	r14 := @parameter1: freemarker.core.FMParserTokenManager;	r4 := @parameter2: freemarker.core.Expression;	r7 := @parameter3: freemarker.template.Configuration;	specialinvoke r0.<freemarker.core.TemplateElement: void <init>()>();	r2 = r1.<freemarker.core.Token: java.lang.String image>;	$r3 = <freemarker.core.PropertySetting: java.lang.String[] SETTING_NAMES>;	$i0 = staticinvoke <java.util.Arrays: int binarySearch(java.lang.Object[],java.lang.Object)>($r3, r2);	if $i0 >= 0 goto r0.<freemarker.core.PropertySetting: java.lang.String key> = r2;	$r6 = new java.lang.StringBuilder;	specialinvoke $r6.<java.lang.StringBuilder: void <init>()>();	$r8 = staticinvoke <freemarker.template._TemplateAPI: java.util.Set getConfigurationSettingNames(freemarker.template.Configuration,boolean)>(r7, 1);	$z2 = interfaceinvoke $r8.<java.util.Set: boolean contains(java.lang.Object)>(r2);	if $z2 != 0 goto virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("The setting name is recognized, but changing this setting from inside a template isn\'t supported.");	virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("The setting name is recognized, but changing this setting from inside a template isn\'t supported.");	goto [?= $r9 = new freemarker.core.ParseException];	$r9 = new freemarker.core.ParseException;	$r10 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r9.<freemarker.core.ParseException: void <init>(java.lang.String,freemarker.template.Template,freemarker.core.Token)>($r10, null, r1);	throw $r9
;block_num 4