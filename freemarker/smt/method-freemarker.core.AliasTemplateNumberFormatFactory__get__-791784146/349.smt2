(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var106 0)
(declare-sort var2764 0)
(declare-sort var1637 0)
(declare-sort var2894 0)
(declare-sort var146 0)
(declare-sort var2583 0)
(declare-sort var2347 0)
(declare-sort var2808 0)
(declare-sort var2380 0)
(declare-sort var2147 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var146_checkHasNoParameters/52850389 (String) void)
(declare-fun localizedTargetFormatStrings/-933616825 (var106) var2583)
(declare-fun var2808-init () var2808)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun var2380_jQuote/1315253176 (String) String)
(declare-fun getMessage/849299655 (var2147) String)
(declare-fun cast-from-var2347-to-var2147 (var2347) var2147)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-181811351 (var2808 String var2147) void)
(declare-const null-var106 var106)
(declare-const null-String String)
(declare-const null-var1637 var1637)
(declare-const null-var2894 var2894)
(declare-const null-var2583 var2583)
(declare-const null-var2347 var2347)
(declare-const var830 var106) ; Statement: r1 := @this: freemarker.core.AliasTemplateNumberFormatFactory 
(assert (not (= var830 null-var106)))
(declare-const var1334 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var1334 null-String)))
(declare-const var1235 var1637) ; Statement: r4 := @parameter1: java.util.Locale 
(assert (not (= var1235 null-var1637)))
(declare-const var3294 var2894) ; Statement: r3 := @parameter2: freemarker.core.Environment 
(assert (not (= var3294 null-var2894)))
;(assert (var146_checkHasNoParameters/52850389 var1334)) ; Statement: staticinvoke <freemarker.core.TemplateFormatUtil: void checkHasNoParameters(java.lang.String)>(r0) 

(declare-const var1334!1 String)
(define-const var1362 var2583 (localizedTargetFormatStrings/-933616825 var830)) ; Statement: $r2 = r1.<freemarker.core.AliasTemplateNumberFormatFactory: java.util.Map localizedTargetFormatStrings> 
 ; Statement: if $r2 == null goto r22 = null 
(assert (not (= var1362 null-var2583))) ; Negate: Cond: $r2 == null  
(define-const var1864 var1637 var1235) ; Statement: r21 = r4 
(define-const var720 var2583 (localizedTargetFormatStrings/-933616825 var830)) ; Statement: $r6 = r1.<freemarker.core.AliasTemplateNumberFormatFactory: java.util.Map localizedTargetFormatStrings> 
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var1022 var2347) ; Statement: $r11 := @caughtexception 
(assert (not (= var1022 null-var2347)))
(define-const var2766 var2808 var2808-init) ; Statement: $r12 = new freemarker.core.AliasTargetTemplateValueFormatException 
(define-const var3608 String String-init) ; Statement: $r13 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3608)) ; Statement: specialinvoke $r13.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3608!1 String)
(assert (= var3608!1 ""))
(assert true)
(define-const var1605 String (append/672562846 var3608!1 "Failed to create format based on target format string,  ")) ; Statement: $r15 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Failed to create format based on target format string,  ") 
(declare-const var3608!2 String)
(assert (= var3608!2 (str.++ var3608!1 "Failed to create format based on target format string,  ")))
(define-const var2703 String (var2380_jQuote/1315253176 var1334!1)) ; Statement: $r14 = staticinvoke <freemarker.template.utility.StringUtil: java.lang.String jQuote(java.lang.String)>(r0) 
(assert true)
(define-const var3001 String (append/672562846 var1605 var2703)) ; Statement: $r16 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r14) 
(declare-const var1605!1 String)
(assert (= var1605!1 (str.++ var1605 var2703)))
(assert true)
(define-const var1029 String (append/672562846 var3001 ". Reason given: ")) ; Statement: $r18 = virtualinvoke $r16.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(". Reason given: ") 
(declare-const var3001!1 String)
(assert (= var3001!1 (str.++ var3001 ". Reason given: ")))
(assert true)
(define-const var1424 String (getMessage/849299655 (cast-from-var2347-to-var2147 var1022))) ; Statement: $r17 = virtualinvoke $r11.<freemarker.core.TemplateValueFormatException: java.lang.String getMessage()>() 
(assert true)
(define-const var3070 String (append/672562846 var1029 var1424)) ; Statement: $r19 = virtualinvoke $r18.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r17) 
(declare-const var1029!1 String)
(assert (= var1029!1 (str.++ var1029 var1424)))
(assert true)
(define-const var563 String (toString/-2075883882 var3070)) ; Statement: $r20 = virtualinvoke $r19.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-181811351 var2766 var563 (cast-from-var2347-to-var2147 var1022))) ; Statement: specialinvoke $r12.<freemarker.core.AliasTargetTemplateValueFormatException: void <init>(java.lang.String,java.lang.Throwable)>($r20, $r11) 

(declare-const var2766!1 var2808)
(declare-const var563!1 String)
(declare-const var1022!1 var2347)
 ; Statement: throw $r12 
(check-sat)
(get-model)
(get-unsat-core)
; {var146_checkHasNoParameters/52850389=([java.lang.String], void), localizedTargetFormatStrings/-933616825=([freemarker.core.AliasTemplateNumberFormatFactory], java.util.Map), var2808-init=([], freemarker.core.AliasTargetTemplateValueFormatException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), var2380_jQuote/1315253176=([java.lang.String], java.lang.String), getMessage/849299655=([java.lang.Throwable], java.lang.String), cast-from-var2347-to-var2147=([freemarker.core.TemplateValueFormatException], java.lang.Throwable), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-181811351=([freemarker.core.AliasTargetTemplateValueFormatException, java.lang.String, java.lang.Throwable], void)}
; {var106=freemarker.core.AliasTemplateNumberFormatFactory, var830=r1, var1334=r0, var2764=null_type, var1637=java.util.Locale, var1235=r4, var2894=freemarker.core.Environment, var3294=r3, var146=freemarker.core.TemplateFormatUtil, var2583=java.util.Map, var1362=$r2, var1864=r21, var720=$r6, var2347=freemarker.core.TemplateValueFormatException, var1022=$r11, var2808=freemarker.core.AliasTargetTemplateValueFormatException, var2766=$r12, var3608=$r13, var1605=$r15, var2380=freemarker.template.utility.StringUtil, var2703=$r14, var3001=$r16, var1029=$r18, var2147=java.lang.Throwable, var1424=$r17, var3070=$r19, var563=$r20}
; {freemarker.core.AliasTemplateNumberFormatFactory=var106, r1=var830, r0=var1334, null_type=var2764, java.util.Locale=var1637, r4=var1235, freemarker.core.Environment=var2894, r3=var3294, freemarker.core.TemplateFormatUtil=var146, java.util.Map=var2583, $r2=var1362, r21=var1864, $r6=var720, freemarker.core.TemplateValueFormatException=var2347, $r11=var1022, freemarker.core.AliasTargetTemplateValueFormatException=var2808, $r12=var2766, $r13=var3608, $r15=var1605, freemarker.template.utility.StringUtil=var2380, $r14=var2703, $r16=var3001, $r18=var1029, java.lang.Throwable=var2147, $r17=var1424, $r19=var3070, $r20=var563}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 4,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: freemarker.core.AliasTemplateNumberFormatFactory;	r0 := @parameter0: java.lang.String;	r4 := @parameter1: java.util.Locale;	r3 := @parameter2: freemarker.core.Environment;	staticinvoke <freemarker.core.TemplateFormatUtil: void checkHasNoParameters(java.lang.String)>(r0);	$r2 = r1.<freemarker.core.AliasTemplateNumberFormatFactory: java.util.Map localizedTargetFormatStrings>;	if $r2 == null goto r22 = null;	r21 = r4;	$r6 = r1.<freemarker.core.AliasTemplateNumberFormatFactory: java.util.Map localizedTargetFormatStrings>;	$r11 := @caughtexception;	$r12 = new freemarker.core.AliasTargetTemplateValueFormatException;	$r13 = new java.lang.StringBuilder;	specialinvoke $r13.<java.lang.StringBuilder: void <init>()>();	$r15 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Failed to create format based on target format string,  ");	$r14 = staticinvoke <freemarker.template.utility.StringUtil: java.lang.String jQuote(java.lang.String)>(r0);	$r16 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r14);	$r18 = virtualinvoke $r16.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(". Reason given: ");	$r17 = virtualinvoke $r11.<freemarker.core.TemplateValueFormatException: java.lang.String getMessage()>();	$r19 = virtualinvoke $r18.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r17);	$r20 = virtualinvoke $r19.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r12.<freemarker.core.AliasTargetTemplateValueFormatException: void <init>(java.lang.String,java.lang.Throwable)>($r20, $r11);	throw $r12
;block_num 3