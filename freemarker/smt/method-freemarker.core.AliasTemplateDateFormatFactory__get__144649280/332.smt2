(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2636 0)
(declare-sort var1749 0)
(declare-sort var3385 0)
(declare-sort var1304 0)
(declare-sort var2795 0)
(declare-sort var793 0)
(declare-sort var2125 0)
(declare-sort var2181 0)
(declare-sort var558 0)
(declare-sort var1999 0)
(declare-sort var1359 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var793_checkHasNoParameters/52850389 (String) void)
(declare-fun localizedTargetFormatStrings/666875458 (var2636) var2125)
(declare-fun var558-init () var558)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun var1999_jQuote/1315253176 (String) String)
(declare-fun getMessage/849299655 (var1359) String)
(declare-fun cast-from-var2181-to-var1359 (var2181) var1359)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-181811351 (var558 String var1359) void)
(declare-const null-var2636 var2636)
(declare-const null-String String)
(declare-const null-Int Int)
(declare-const null-var3385 var3385)
(declare-const null-var1304 var1304)
(declare-const null-Bool Bool)
(declare-const null-var2795 var2795)
(declare-const null-var2125 var2125)
(declare-const null-var2181 var2181)
(declare-const var767 var2636) ; Statement: r1 := @this: freemarker.core.AliasTemplateDateFormatFactory 
(assert (not (= var767 null-var2636)))
(declare-const var3055 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var3055 null-String)))
(declare-const var2871 Int) ; Statement: i0 := @parameter1: int 
(assert (not (= var2871 null-Int)))
(declare-const var3410 var3385) ; Statement: r4 := @parameter2: java.util.Locale 
(assert (not (= var3410 null-var3385)))
(declare-const var2620 var1304) ; Statement: r5 := @parameter3: java.util.TimeZone 
(assert (not (= var2620 null-var1304)))
(declare-const var3678 Bool) ; Statement: z0 := @parameter4: boolean 
(assert (not (= var3678 null-Bool)))
(declare-const var3387 var2795) ; Statement: r3 := @parameter5: freemarker.core.Environment 
(assert (not (= var3387 null-var2795)))
;(assert (var793_checkHasNoParameters/52850389 var3055)) ; Statement: staticinvoke <freemarker.core.TemplateFormatUtil: void checkHasNoParameters(java.lang.String)>(r0) 

(declare-const var3055!1 String)
(define-const var1820 var2125 (localizedTargetFormatStrings/666875458 var767)) ; Statement: $r2 = r1.<freemarker.core.AliasTemplateDateFormatFactory: java.util.Map localizedTargetFormatStrings> 
 ; Statement: if $r2 == null goto r23 = null 
(assert (not (= var1820 null-var2125))) ; Negate: Cond: $r2 == null  
(define-const var551 var3385 var3410) ; Statement: r22 = r4 
(define-const var1178 var2125 (localizedTargetFormatStrings/666875458 var767)) ; Statement: $r7 = r1.<freemarker.core.AliasTemplateDateFormatFactory: java.util.Map localizedTargetFormatStrings> 
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var2337 var2181) ; Statement: $r12 := @caughtexception 
(assert (not (= var2337 null-var2181)))
(define-const var1198 var558 var558-init) ; Statement: $r13 = new freemarker.core.AliasTargetTemplateValueFormatException 
(define-const var2317 String String-init) ; Statement: $r14 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2317)) ; Statement: specialinvoke $r14.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2317!1 String)
(assert (= var2317!1 ""))
(assert true)
(define-const var1234 String (append/672562846 var2317!1 "Failed to create format based on target format string,  ")) ; Statement: $r16 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Failed to create format based on target format string,  ") 
(declare-const var2317!2 String)
(assert (= var2317!2 (str.++ var2317!1 "Failed to create format based on target format string,  ")))
(define-const var158 String (var1999_jQuote/1315253176 var3055!1)) ; Statement: $r15 = staticinvoke <freemarker.template.utility.StringUtil: java.lang.String jQuote(java.lang.String)>(r0) 
(assert true)
(define-const var949 String (append/672562846 var1234 var158)) ; Statement: $r17 = virtualinvoke $r16.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r15) 
(declare-const var1234!1 String)
(assert (= var1234!1 (str.++ var1234 var158)))
(assert true)
(define-const var2929 String (append/672562846 var949 ". Reason given: ")) ; Statement: $r19 = virtualinvoke $r17.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(". Reason given: ") 
(declare-const var949!1 String)
(assert (= var949!1 (str.++ var949 ". Reason given: ")))
(assert true)
(define-const var3123 String (getMessage/849299655 (cast-from-var2181-to-var1359 var2337))) ; Statement: $r18 = virtualinvoke $r12.<freemarker.core.TemplateValueFormatException: java.lang.String getMessage()>() 
(assert true)
(define-const var820 String (append/672562846 var2929 var3123)) ; Statement: $r20 = virtualinvoke $r19.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r18) 
(declare-const var2929!1 String)
(assert (= var2929!1 (str.++ var2929 var3123)))
(assert true)
(define-const var1170 String (toString/-2075883882 var820)) ; Statement: $r21 = virtualinvoke $r20.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-181811351 var1198 var1170 (cast-from-var2181-to-var1359 var2337))) ; Statement: specialinvoke $r13.<freemarker.core.AliasTargetTemplateValueFormatException: void <init>(java.lang.String,java.lang.Throwable)>($r21, $r12) 

(declare-const var1198!1 var558)
(declare-const var1170!1 String)
(declare-const var2337!1 var2181)
 ; Statement: throw $r13 
(check-sat)
(get-model)
(get-unsat-core)
; {var793_checkHasNoParameters/52850389=([java.lang.String], void), localizedTargetFormatStrings/666875458=([freemarker.core.AliasTemplateDateFormatFactory], java.util.Map), var558-init=([], freemarker.core.AliasTargetTemplateValueFormatException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), var1999_jQuote/1315253176=([java.lang.String], java.lang.String), getMessage/849299655=([java.lang.Throwable], java.lang.String), cast-from-var2181-to-var1359=([freemarker.core.TemplateValueFormatException], java.lang.Throwable), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-181811351=([freemarker.core.AliasTargetTemplateValueFormatException, java.lang.String, java.lang.Throwable], void)}
; {var2636=freemarker.core.AliasTemplateDateFormatFactory, var767=r1, var3055=r0, var1749=null_type, var2871=i0, var3385=java.util.Locale, var3410=r4, var1304=java.util.TimeZone, var2620=r5, var3678=z0, var2795=freemarker.core.Environment, var3387=r3, var793=freemarker.core.TemplateFormatUtil, var2125=java.util.Map, var1820=$r2, var551=r22, var1178=$r7, var2181=freemarker.core.TemplateValueFormatException, var2337=$r12, var558=freemarker.core.AliasTargetTemplateValueFormatException, var1198=$r13, var2317=$r14, var1234=$r16, var1999=freemarker.template.utility.StringUtil, var158=$r15, var949=$r17, var2929=$r19, var1359=java.lang.Throwable, var3123=$r18, var820=$r20, var1170=$r21}
; {freemarker.core.AliasTemplateDateFormatFactory=var2636, r1=var767, r0=var3055, null_type=var1749, i0=var2871, java.util.Locale=var3385, r4=var3410, java.util.TimeZone=var1304, r5=var2620, z0=var3678, freemarker.core.Environment=var2795, r3=var3387, freemarker.core.TemplateFormatUtil=var793, java.util.Map=var2125, $r2=var1820, r22=var551, $r7=var1178, freemarker.core.TemplateValueFormatException=var2181, $r12=var2337, freemarker.core.AliasTargetTemplateValueFormatException=var558, $r13=var1198, $r14=var2317, $r16=var1234, freemarker.template.utility.StringUtil=var1999, $r15=var158, $r17=var949, $r19=var2929, java.lang.Throwable=var1359, $r18=var3123, $r20=var820, $r21=var1170}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 4,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: freemarker.core.AliasTemplateDateFormatFactory;	r0 := @parameter0: java.lang.String;	i0 := @parameter1: int;	r4 := @parameter2: java.util.Locale;	r5 := @parameter3: java.util.TimeZone;	z0 := @parameter4: boolean;	r3 := @parameter5: freemarker.core.Environment;	staticinvoke <freemarker.core.TemplateFormatUtil: void checkHasNoParameters(java.lang.String)>(r0);	$r2 = r1.<freemarker.core.AliasTemplateDateFormatFactory: java.util.Map localizedTargetFormatStrings>;	if $r2 == null goto r23 = null;	r22 = r4;	$r7 = r1.<freemarker.core.AliasTemplateDateFormatFactory: java.util.Map localizedTargetFormatStrings>;	$r12 := @caughtexception;	$r13 = new freemarker.core.AliasTargetTemplateValueFormatException;	$r14 = new java.lang.StringBuilder;	specialinvoke $r14.<java.lang.StringBuilder: void <init>()>();	$r16 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Failed to create format based on target format string,  ");	$r15 = staticinvoke <freemarker.template.utility.StringUtil: java.lang.String jQuote(java.lang.String)>(r0);	$r17 = virtualinvoke $r16.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r15);	$r19 = virtualinvoke $r17.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(". Reason given: ");	$r18 = virtualinvoke $r12.<freemarker.core.TemplateValueFormatException: java.lang.String getMessage()>();	$r20 = virtualinvoke $r19.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r18);	$r21 = virtualinvoke $r20.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r13.<freemarker.core.AliasTargetTemplateValueFormatException: void <init>(java.lang.String,java.lang.Throwable)>($r21, $r12);	throw $r13
;block_num 3