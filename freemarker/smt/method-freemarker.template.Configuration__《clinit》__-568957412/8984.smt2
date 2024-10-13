(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2134 0)
(declare-sort var605 0)
(declare-sort var2342 0)
(declare-sort var1977 0)
(declare-sort var3592 0)
(declare-sort var1550 0)
(declare-sort var3331 0)
(declare-sort var2549 0)
(declare-sort var1621 0)
(declare-sort var2926 0)
(declare-sort var1381 0)
(declare-sort var1441 0)
(declare-sort var93 0)
(declare-sort var1634 0)
(declare-sort var1170 0)
(declare-sort var2370 0)
(declare-sort var2520 0)
(declare-sort var3057 0)
(declare-sort var1851 0)
(declare-sort var219 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-const var1977!class ClassObject)
(declare-fun var2134_getLogger/-1078495866 (String) var2134)
(declare-fun arr-String-init () (Array Int String))
(declare-fun var605-init () var605)
(declare-fun <init>/-201242697 (var605) void)
(declare-fun cast-from-var605-to-var2342 (var605) var2342)
(declare-fun getName/843802988 (var3592) String)
(declare-fun var2342_put/1464166817 (var2342 var1550 var1550) var1550)
(declare-fun cast-from-String-to-var1550 (String) var1550)
(declare-fun cast-from-var3592-to-var1550 (var3592) var1550)
(declare-fun getName/1070110763 (var3331) String)
(declare-fun cast-from-var3331-to-var1550 (var3331) var1550)
(declare-fun getName/-1610536583 (var2549) String)
(declare-fun cast-from-var2549-to-var1550 (var2549) var1550)
(declare-fun getName/-1197647675 (var1621) String)
(declare-fun cast-from-var1621-to-var1550 (var1621) var1550)
(declare-fun getName/1065199896 (var2926) String)
(declare-fun cast-from-var2926-to-var1550 (var2926) var1550)
(declare-fun getName/1608251525 (var1381) String)
(declare-fun cast-from-var1381-to-var1550 (var1381) var1550)
(declare-fun getName/1317388377 (var1441) String)
(declare-fun cast-from-var1441-to-var1550 (var1441) var1550)
(declare-fun getName/-1672278359 (var93) String)
(declare-fun cast-from-var93-to-var1550 (var93) var1550)
(declare-fun getName/-1955923058 (var1634) String)
(declare-fun cast-from-var1634-to-var1550 (var1634) var1550)
(declare-fun var1170-init () var1170)
(declare-fun <init>/-1384012918 (var1170 Int Int Int) void)
(declare-fun toString/-165910740 (var1170) String)
(declare-fun intValue/1676201972 (var1170) Int)
(declare-fun var2520_loadProperties/1811284346 (ClassObject String) var2370)
(declare-fun var1977_getRequiredVersionProperty/899891722 (var2370 String) String)
(define-fun endsWith/985337093 ((s String) (suffix String)) Bool (str.suffixof suffix s))
(declare-fun var1851-init () var1851)
(declare-fun <init>/1642269841 (var1851 String var219) void)
(declare-fun cast-from-var3057-to-var219 (var3057) var219)
(declare-const null-__Array__Int__String__ (Array Int String))
(declare-const var1977-STANDARD_OUTPUT_FORMATS var2342)
(declare-const var3592-INSTANCE var3592)
(declare-const var3331-INSTANCE var3331)
(declare-const var2549-INSTANCE var2549)
(declare-const var1621-INSTANCE var1621)
(declare-const var2926-INSTANCE var2926)
(declare-const var1381-INSTANCE var1381)
(declare-const var1441-INSTANCE var1441)
(declare-const var93-INSTANCE var93)
(declare-const var1634-INSTANCE var1634)
(declare-const var1977-VERSION_2_3_0 var1170)
(declare-const var1977-DEFAULT_INCOMPATIBLE_IMPROVEMENTS var1170)
(declare-const null-var3057 var3057)
(define-const var2403 var2134 (var2134_getLogger/-1078495866 "freemarker.cache")) ; Statement: $r0 = staticinvoke <freemarker.log.Logger: freemarker.log.Logger getLogger(java.lang.String)>("freemarker.cache") 
(define-const var2202 var2134 var2403) ; Statement: <freemarker.template.Configuration: freemarker.log.Logger CACHE_LOG> = $r0 
(define-const var1045 (Array Int String) arr-String-init) ; Statement: $r1 = newarray (java.lang.String)[20] 
(declare-const var1045!1 (Array Int String))
(assert (not (= var1045!1 null-__Array__Int__String__)))
(assert (= (select var1045!1 0) "auto_escaping_policy")) ; Statement: $r1[0] = "auto_escaping_policy" 
(declare-const var1045!2 (Array Int String))
(assert (not (= var1045!2 null-__Array__Int__String__)))
(assert (= (select var1045!2 1) "cache_storage")) ; Statement: $r1[1] = "cache_storage" 
(declare-const var1045!3 (Array Int String))
(assert (not (= var1045!3 null-__Array__Int__String__)))
(assert (= (select var1045!3 2) "default_encoding")) ; Statement: $r1[2] = "default_encoding" 
(declare-const var1045!4 (Array Int String))
(assert (not (= var1045!4 null-__Array__Int__String__)))
(assert (= (select var1045!4 3) "fallback_on_null_loop_variable")) ; Statement: $r1[3] = "fallback_on_null_loop_variable" 
(declare-const var1045!5 (Array Int String))
(assert (not (= var1045!5 null-__Array__Int__String__)))
(assert (= (select var1045!5 4) "incompatible_improvements")) ; Statement: $r1[4] = "incompatible_improvements" 
(declare-const var1045!6 (Array Int String))
(assert (not (= var1045!6 null-__Array__Int__String__)))
(assert (= (select var1045!6 5) "interpolation_syntax")) ; Statement: $r1[5] = "interpolation_syntax" 
(declare-const var1045!7 (Array Int String))
(assert (not (= var1045!7 null-__Array__Int__String__)))
(assert (= (select var1045!7 6) "localized_lookup")) ; Statement: $r1[6] = "localized_lookup" 
(declare-const var1045!8 (Array Int String))
(assert (not (= var1045!8 null-__Array__Int__String__)))
(assert (= (select var1045!8 7) "naming_convention")) ; Statement: $r1[7] = "naming_convention" 
(declare-const var1045!9 (Array Int String))
(assert (not (= var1045!9 null-__Array__Int__String__)))
(assert (= (select var1045!9 8) "output_format")) ; Statement: $r1[8] = "output_format" 
(declare-const var1045!10 (Array Int String))
(assert (not (= var1045!10 null-__Array__Int__String__)))
(assert (= (select var1045!10 9) "recognize_standard_file_extensions")) ; Statement: $r1[9] = "recognize_standard_file_extensions" 
(declare-const var1045!11 (Array Int String))
(assert (not (= var1045!11 null-__Array__Int__String__)))
(assert (= (select var1045!11 10) "registered_custom_output_formats")) ; Statement: $r1[10] = "registered_custom_output_formats" 
(declare-const var1045!12 (Array Int String))
(assert (not (= var1045!12 null-__Array__Int__String__)))
(assert (= (select var1045!12 11) "strict_syntax")) ; Statement: $r1[11] = "strict_syntax" 
(declare-const var1045!13 (Array Int String))
(assert (not (= var1045!13 null-__Array__Int__String__)))
(assert (= (select var1045!13 12) "tab_size")) ; Statement: $r1[12] = "tab_size" 
(declare-const var1045!14 (Array Int String))
(assert (not (= var1045!14 null-__Array__Int__String__)))
(assert (= (select var1045!14 13) "tag_syntax")) ; Statement: $r1[13] = "tag_syntax" 
(declare-const var1045!15 (Array Int String))
(assert (not (= var1045!15 null-__Array__Int__String__)))
(assert (= (select var1045!15 14) "template_configurations")) ; Statement: $r1[14] = "template_configurations" 
(declare-const var1045!16 (Array Int String))
(assert (not (= var1045!16 null-__Array__Int__String__)))
(assert (= (select var1045!16 15) "template_loader")) ; Statement: $r1[15] = "template_loader" 
(declare-const var1045!17 (Array Int String))
(assert (not (= var1045!17 null-__Array__Int__String__)))
(assert (= (select var1045!17 16) "template_lookup_strategy")) ; Statement: $r1[16] = "template_lookup_strategy" 
(declare-const var1045!18 (Array Int String))
(assert (not (= var1045!18 null-__Array__Int__String__)))
(assert (= (select var1045!18 17) "template_name_format")) ; Statement: $r1[17] = "template_name_format" 
(declare-const var1045!19 (Array Int String))
(assert (not (= var1045!19 null-__Array__Int__String__)))
(assert (= (select var1045!19 18) "template_update_delay")) ; Statement: $r1[18] = "template_update_delay" 
(declare-const var1045!20 (Array Int String))
(assert (not (= var1045!20 null-__Array__Int__String__)))
(assert (= (select var1045!20 19) "whitespace_stripping")) ; Statement: $r1[19] = "whitespace_stripping" 
(define-const var3214 (Array Int String) var1045!20) ; Statement: <freemarker.template.Configuration: java.lang.String[] SETTING_NAMES_SNAKE_CASE> = $r1 
(define-const var3236 (Array Int String) arr-String-init) ; Statement: $r2 = newarray (java.lang.String)[20] 
(declare-const var3236!1 (Array Int String))
(assert (not (= var3236!1 null-__Array__Int__String__)))
(assert (= (select var3236!1 0) "autoEscapingPolicy")) ; Statement: $r2[0] = "autoEscapingPolicy" 
(declare-const var3236!2 (Array Int String))
(assert (not (= var3236!2 null-__Array__Int__String__)))
(assert (= (select var3236!2 1) "cacheStorage")) ; Statement: $r2[1] = "cacheStorage" 
(declare-const var3236!3 (Array Int String))
(assert (not (= var3236!3 null-__Array__Int__String__)))
(assert (= (select var3236!3 2) "defaultEncoding")) ; Statement: $r2[2] = "defaultEncoding" 
(declare-const var3236!4 (Array Int String))
(assert (not (= var3236!4 null-__Array__Int__String__)))
(assert (= (select var3236!4 3) "fallbackOnNullLoopVariable")) ; Statement: $r2[3] = "fallbackOnNullLoopVariable" 
(declare-const var3236!5 (Array Int String))
(assert (not (= var3236!5 null-__Array__Int__String__)))
(assert (= (select var3236!5 4) "incompatibleImprovements")) ; Statement: $r2[4] = "incompatibleImprovements" 
(declare-const var3236!6 (Array Int String))
(assert (not (= var3236!6 null-__Array__Int__String__)))
(assert (= (select var3236!6 5) "interpolationSyntax")) ; Statement: $r2[5] = "interpolationSyntax" 
(declare-const var3236!7 (Array Int String))
(assert (not (= var3236!7 null-__Array__Int__String__)))
(assert (= (select var3236!7 6) "localizedLookup")) ; Statement: $r2[6] = "localizedLookup" 
(declare-const var3236!8 (Array Int String))
(assert (not (= var3236!8 null-__Array__Int__String__)))
(assert (= (select var3236!8 7) "namingConvention")) ; Statement: $r2[7] = "namingConvention" 
(declare-const var3236!9 (Array Int String))
(assert (not (= var3236!9 null-__Array__Int__String__)))
(assert (= (select var3236!9 8) "outputFormat")) ; Statement: $r2[8] = "outputFormat" 
(declare-const var3236!10 (Array Int String))
(assert (not (= var3236!10 null-__Array__Int__String__)))
(assert (= (select var3236!10 9) "recognizeStandardFileExtensions")) ; Statement: $r2[9] = "recognizeStandardFileExtensions" 
(declare-const var3236!11 (Array Int String))
(assert (not (= var3236!11 null-__Array__Int__String__)))
(assert (= (select var3236!11 10) "registeredCustomOutputFormats")) ; Statement: $r2[10] = "registeredCustomOutputFormats" 
(declare-const var3236!12 (Array Int String))
(assert (not (= var3236!12 null-__Array__Int__String__)))
(assert (= (select var3236!12 11) "strictSyntax")) ; Statement: $r2[11] = "strictSyntax" 
(declare-const var3236!13 (Array Int String))
(assert (not (= var3236!13 null-__Array__Int__String__)))
(assert (= (select var3236!13 12) "tabSize")) ; Statement: $r2[12] = "tabSize" 
(declare-const var3236!14 (Array Int String))
(assert (not (= var3236!14 null-__Array__Int__String__)))
(assert (= (select var3236!14 13) "tagSyntax")) ; Statement: $r2[13] = "tagSyntax" 
(declare-const var3236!15 (Array Int String))
(assert (not (= var3236!15 null-__Array__Int__String__)))
(assert (= (select var3236!15 14) "templateConfigurations")) ; Statement: $r2[14] = "templateConfigurations" 
(declare-const var3236!16 (Array Int String))
(assert (not (= var3236!16 null-__Array__Int__String__)))
(assert (= (select var3236!16 15) "templateLoader")) ; Statement: $r2[15] = "templateLoader" 
(declare-const var3236!17 (Array Int String))
(assert (not (= var3236!17 null-__Array__Int__String__)))
(assert (= (select var3236!17 16) "templateLookupStrategy")) ; Statement: $r2[16] = "templateLookupStrategy" 
(declare-const var3236!18 (Array Int String))
(assert (not (= var3236!18 null-__Array__Int__String__)))
(assert (= (select var3236!18 17) "templateNameFormat")) ; Statement: $r2[17] = "templateNameFormat" 
(declare-const var3236!19 (Array Int String))
(assert (not (= var3236!19 null-__Array__Int__String__)))
(assert (= (select var3236!19 18) "templateUpdateDelay")) ; Statement: $r2[18] = "templateUpdateDelay" 
(declare-const var3236!20 (Array Int String))
(assert (not (= var3236!20 null-__Array__Int__String__)))
(assert (= (select var3236!20 19) "whitespaceStripping")) ; Statement: $r2[19] = "whitespaceStripping" 
(define-const var277 (Array Int String) var3236!20) ; Statement: <freemarker.template.Configuration: java.lang.String[] SETTING_NAMES_CAMEL_CASE> = $r2 
(define-const var2426 var605 var605-init) ; Statement: $r3 = new java.util.HashMap 
(assert true)
;(assert (<init>/-201242697 var2426)) ; Statement: specialinvoke $r3.<java.util.HashMap: void <init>()>() 

(declare-const var2426!1 var605)
(define-const var1601 var2342 (cast-from-var605-to-var2342 var2426!1)) ; Statement: <freemarker.template.Configuration: java.util.Map STANDARD_OUTPUT_FORMATS> = $r3 
(define-const var2819 var2342 var1977-STANDARD_OUTPUT_FORMATS) ; Statement: $r5 = <freemarker.template.Configuration: java.util.Map STANDARD_OUTPUT_FORMATS> 
(define-const var622 var3592 var3592-INSTANCE) ; Statement: $r4 = <freemarker.core.UndefinedOutputFormat: freemarker.core.UndefinedOutputFormat INSTANCE> 
(assert true)
(define-const var1599 String (getName/843802988 var622)) ; Statement: $r7 = virtualinvoke $r4.<freemarker.core.UndefinedOutputFormat: java.lang.String getName()>() 
(define-const var3454 var3592 var3592-INSTANCE) ; Statement: $r6 = <freemarker.core.UndefinedOutputFormat: freemarker.core.UndefinedOutputFormat INSTANCE> 
;(assert (var2342_put/1464166817 var2819 (cast-from-String-to-var1550 var1599) (cast-from-var3592-to-var1550 var3454))) ; Statement: interfaceinvoke $r5.<java.util.Map: java.lang.Object put(java.lang.Object,java.lang.Object)>($r7, $r6) 

(declare-const var2819!1 var2342)
(declare-const var1599!1 String)
(declare-const var3454!1 var3592)
(define-const var1842 var2342 var1977-STANDARD_OUTPUT_FORMATS) ; Statement: $r9 = <freemarker.template.Configuration: java.util.Map STANDARD_OUTPUT_FORMATS> 
(define-const var2899 var3331 var3331-INSTANCE) ; Statement: $r8 = <freemarker.core.HTMLOutputFormat: freemarker.core.HTMLOutputFormat INSTANCE> 
(assert true)
(define-const var975 String (getName/1070110763 var2899)) ; Statement: $r11 = virtualinvoke $r8.<freemarker.core.HTMLOutputFormat: java.lang.String getName()>() 
(define-const var3122 var3331 var3331-INSTANCE) ; Statement: $r10 = <freemarker.core.HTMLOutputFormat: freemarker.core.HTMLOutputFormat INSTANCE> 
;(assert (var2342_put/1464166817 var1842 (cast-from-String-to-var1550 var975) (cast-from-var3331-to-var1550 var3122))) ; Statement: interfaceinvoke $r9.<java.util.Map: java.lang.Object put(java.lang.Object,java.lang.Object)>($r11, $r10) 

(declare-const var1842!1 var2342)
(declare-const var975!1 String)
(declare-const var3122!1 var3331)
(define-const var1642 var2342 var1977-STANDARD_OUTPUT_FORMATS) ; Statement: $r13 = <freemarker.template.Configuration: java.util.Map STANDARD_OUTPUT_FORMATS> 
(define-const var1721 var2549 var2549-INSTANCE) ; Statement: $r12 = <freemarker.core.XHTMLOutputFormat: freemarker.core.XHTMLOutputFormat INSTANCE> 
(assert true)
(define-const var653 String (getName/-1610536583 var1721)) ; Statement: $r15 = virtualinvoke $r12.<freemarker.core.XHTMLOutputFormat: java.lang.String getName()>() 
(define-const var42 var2549 var2549-INSTANCE) ; Statement: $r14 = <freemarker.core.XHTMLOutputFormat: freemarker.core.XHTMLOutputFormat INSTANCE> 
;(assert (var2342_put/1464166817 var1642 (cast-from-String-to-var1550 var653) (cast-from-var2549-to-var1550 var42))) ; Statement: interfaceinvoke $r13.<java.util.Map: java.lang.Object put(java.lang.Object,java.lang.Object)>($r15, $r14) 

(declare-const var1642!1 var2342)
(declare-const var653!1 String)
(declare-const var42!1 var2549)
(define-const var808 var2342 var1977-STANDARD_OUTPUT_FORMATS) ; Statement: $r17 = <freemarker.template.Configuration: java.util.Map STANDARD_OUTPUT_FORMATS> 
(define-const var452 var1621 var1621-INSTANCE) ; Statement: $r16 = <freemarker.core.XMLOutputFormat: freemarker.core.XMLOutputFormat INSTANCE> 
(assert true)
(define-const var875 String (getName/-1197647675 var452)) ; Statement: $r19 = virtualinvoke $r16.<freemarker.core.XMLOutputFormat: java.lang.String getName()>() 
(define-const var1311 var1621 var1621-INSTANCE) ; Statement: $r18 = <freemarker.core.XMLOutputFormat: freemarker.core.XMLOutputFormat INSTANCE> 
;(assert (var2342_put/1464166817 var808 (cast-from-String-to-var1550 var875) (cast-from-var1621-to-var1550 var1311))) ; Statement: interfaceinvoke $r17.<java.util.Map: java.lang.Object put(java.lang.Object,java.lang.Object)>($r19, $r18) 

(declare-const var808!1 var2342)
(declare-const var875!1 String)
(declare-const var1311!1 var1621)
(define-const var749 var2342 var1977-STANDARD_OUTPUT_FORMATS) ; Statement: $r21 = <freemarker.template.Configuration: java.util.Map STANDARD_OUTPUT_FORMATS> 
(define-const var1431 var2926 var2926-INSTANCE) ; Statement: $r20 = <freemarker.core.RTFOutputFormat: freemarker.core.RTFOutputFormat INSTANCE> 
(assert true)
(define-const var2651 String (getName/1065199896 var1431)) ; Statement: $r23 = virtualinvoke $r20.<freemarker.core.RTFOutputFormat: java.lang.String getName()>() 
(define-const var2406 var2926 var2926-INSTANCE) ; Statement: $r22 = <freemarker.core.RTFOutputFormat: freemarker.core.RTFOutputFormat INSTANCE> 
;(assert (var2342_put/1464166817 var749 (cast-from-String-to-var1550 var2651) (cast-from-var2926-to-var1550 var2406))) ; Statement: interfaceinvoke $r21.<java.util.Map: java.lang.Object put(java.lang.Object,java.lang.Object)>($r23, $r22) 

(declare-const var749!1 var2342)
(declare-const var2651!1 String)
(declare-const var2406!1 var2926)
(define-const var2913 var2342 var1977-STANDARD_OUTPUT_FORMATS) ; Statement: $r25 = <freemarker.template.Configuration: java.util.Map STANDARD_OUTPUT_FORMATS> 
(define-const var1485 var1381 var1381-INSTANCE) ; Statement: $r24 = <freemarker.core.PlainTextOutputFormat: freemarker.core.PlainTextOutputFormat INSTANCE> 
(assert true)
(define-const var3221 String (getName/1608251525 var1485)) ; Statement: $r27 = virtualinvoke $r24.<freemarker.core.PlainTextOutputFormat: java.lang.String getName()>() 
(define-const var1583 var1381 var1381-INSTANCE) ; Statement: $r26 = <freemarker.core.PlainTextOutputFormat: freemarker.core.PlainTextOutputFormat INSTANCE> 
;(assert (var2342_put/1464166817 var2913 (cast-from-String-to-var1550 var3221) (cast-from-var1381-to-var1550 var1583))) ; Statement: interfaceinvoke $r25.<java.util.Map: java.lang.Object put(java.lang.Object,java.lang.Object)>($r27, $r26) 

(declare-const var2913!1 var2342)
(declare-const var3221!1 String)
(declare-const var1583!1 var1381)
(define-const var3625 var2342 var1977-STANDARD_OUTPUT_FORMATS) ; Statement: $r29 = <freemarker.template.Configuration: java.util.Map STANDARD_OUTPUT_FORMATS> 
(define-const var2981 var1441 var1441-INSTANCE) ; Statement: $r28 = <freemarker.core.CSSOutputFormat: freemarker.core.CSSOutputFormat INSTANCE> 
(assert true)
(define-const var2676 String (getName/1317388377 var2981)) ; Statement: $r31 = virtualinvoke $r28.<freemarker.core.CSSOutputFormat: java.lang.String getName()>() 
(define-const var2935 var1441 var1441-INSTANCE) ; Statement: $r30 = <freemarker.core.CSSOutputFormat: freemarker.core.CSSOutputFormat INSTANCE> 
;(assert (var2342_put/1464166817 var3625 (cast-from-String-to-var1550 var2676) (cast-from-var1441-to-var1550 var2935))) ; Statement: interfaceinvoke $r29.<java.util.Map: java.lang.Object put(java.lang.Object,java.lang.Object)>($r31, $r30) 

(declare-const var3625!1 var2342)
(declare-const var2676!1 String)
(declare-const var2935!1 var1441)
(define-const var886 var2342 var1977-STANDARD_OUTPUT_FORMATS) ; Statement: $r33 = <freemarker.template.Configuration: java.util.Map STANDARD_OUTPUT_FORMATS> 
(define-const var3771 var93 var93-INSTANCE) ; Statement: $r32 = <freemarker.core.JavaScriptOutputFormat: freemarker.core.JavaScriptOutputFormat INSTANCE> 
(assert true)
(define-const var118 String (getName/-1672278359 var3771)) ; Statement: $r35 = virtualinvoke $r32.<freemarker.core.JavaScriptOutputFormat: java.lang.String getName()>() 
(define-const var1427 var93 var93-INSTANCE) ; Statement: $r34 = <freemarker.core.JavaScriptOutputFormat: freemarker.core.JavaScriptOutputFormat INSTANCE> 
;(assert (var2342_put/1464166817 var886 (cast-from-String-to-var1550 var118) (cast-from-var93-to-var1550 var1427))) ; Statement: interfaceinvoke $r33.<java.util.Map: java.lang.Object put(java.lang.Object,java.lang.Object)>($r35, $r34) 

(declare-const var886!1 var2342)
(declare-const var118!1 String)
(declare-const var1427!1 var93)
(define-const var3034 var2342 var1977-STANDARD_OUTPUT_FORMATS) ; Statement: $r37 = <freemarker.template.Configuration: java.util.Map STANDARD_OUTPUT_FORMATS> 
(define-const var1964 var1634 var1634-INSTANCE) ; Statement: $r36 = <freemarker.core.JSONOutputFormat: freemarker.core.JSONOutputFormat INSTANCE> 
(assert true)
(define-const var3895 String (getName/-1955923058 var1964)) ; Statement: $r39 = virtualinvoke $r36.<freemarker.core.JSONOutputFormat: java.lang.String getName()>() 
(define-const var1707 var1634 var1634-INSTANCE) ; Statement: $r38 = <freemarker.core.JSONOutputFormat: freemarker.core.JSONOutputFormat INSTANCE> 
;(assert (var2342_put/1464166817 var3034 (cast-from-String-to-var1550 var3895) (cast-from-var1634-to-var1550 var1707))) ; Statement: interfaceinvoke $r37.<java.util.Map: java.lang.Object put(java.lang.Object,java.lang.Object)>($r39, $r38) 

(declare-const var3034!1 var2342)
(declare-const var3895!1 String)
(declare-const var1707!1 var1634)
(define-const var841 var1170 var1170-init) ; Statement: $r40 = new freemarker.template.Version 
(assert true)
;(assert (<init>/-1384012918 var841 2 3 0)) ; Statement: specialinvoke $r40.<freemarker.template.Version: void <init>(int,int,int)>(2, 3, 0) 

(declare-const var841!1 var1170)
(declare-const var3633 Int)
(declare-const var1331 Int)
(declare-const var2096 Int)
(define-const var581 var1170 var841!1) ; Statement: <freemarker.template.Configuration: freemarker.template.Version VERSION_2_3_0> = $r40 
(define-const var2036 var1170 var1170-init) ; Statement: $r41 = new freemarker.template.Version 
(assert true)
;(assert (<init>/-1384012918 var2036 2 3 19)) ; Statement: specialinvoke $r41.<freemarker.template.Version: void <init>(int,int,int)>(2, 3, 19) 

(declare-const var2036!1 var1170)
(declare-const var3633!1 Int)
(declare-const var1331!1 Int)
(declare-const var1266 Int)
(define-const var163 var1170 var2036!1) ; Statement: <freemarker.template.Configuration: freemarker.template.Version VERSION_2_3_19> = $r41 
(define-const var3147 var1170 var1170-init) ; Statement: $r42 = new freemarker.template.Version 
(assert true)
;(assert (<init>/-1384012918 var3147 2 3 20)) ; Statement: specialinvoke $r42.<freemarker.template.Version: void <init>(int,int,int)>(2, 3, 20) 

(declare-const var3147!1 var1170)
(declare-const var3633!2 Int)
(declare-const var1331!2 Int)
(declare-const var604 Int)
(define-const var2171 var1170 var3147!1) ; Statement: <freemarker.template.Configuration: freemarker.template.Version VERSION_2_3_20> = $r42 
(define-const var631 var1170 var1170-init) ; Statement: $r43 = new freemarker.template.Version 
(assert true)
;(assert (<init>/-1384012918 var631 2 3 21)) ; Statement: specialinvoke $r43.<freemarker.template.Version: void <init>(int,int,int)>(2, 3, 21) 

(declare-const var631!1 var1170)
(declare-const var3633!3 Int)
(declare-const var1331!3 Int)
(declare-const var1617 Int)
(define-const var1156 var1170 var631!1) ; Statement: <freemarker.template.Configuration: freemarker.template.Version VERSION_2_3_21> = $r43 
(define-const var2918 var1170 var1170-init) ; Statement: $r44 = new freemarker.template.Version 
(assert true)
;(assert (<init>/-1384012918 var2918 2 3 22)) ; Statement: specialinvoke $r44.<freemarker.template.Version: void <init>(int,int,int)>(2, 3, 22) 

(declare-const var2918!1 var1170)
(declare-const var3633!4 Int)
(declare-const var1331!4 Int)
(declare-const var645 Int)
(define-const var3101 var1170 var2918!1) ; Statement: <freemarker.template.Configuration: freemarker.template.Version VERSION_2_3_22> = $r44 
(define-const var1399 var1170 var1170-init) ; Statement: $r45 = new freemarker.template.Version 
(assert true)
;(assert (<init>/-1384012918 var1399 2 3 23)) ; Statement: specialinvoke $r45.<freemarker.template.Version: void <init>(int,int,int)>(2, 3, 23) 

(declare-const var1399!1 var1170)
(declare-const var3633!5 Int)
(declare-const var1331!5 Int)
(declare-const var3889 Int)
(define-const var2282 var1170 var1399!1) ; Statement: <freemarker.template.Configuration: freemarker.template.Version VERSION_2_3_23> = $r45 
(define-const var2514 var1170 var1170-init) ; Statement: $r46 = new freemarker.template.Version 
(assert true)
;(assert (<init>/-1384012918 var2514 2 3 24)) ; Statement: specialinvoke $r46.<freemarker.template.Version: void <init>(int,int,int)>(2, 3, 24) 

(declare-const var2514!1 var1170)
(declare-const var3633!6 Int)
(declare-const var1331!6 Int)
(declare-const var721 Int)
(define-const var1603 var1170 var2514!1) ; Statement: <freemarker.template.Configuration: freemarker.template.Version VERSION_2_3_24> = $r46 
(define-const var1232 var1170 var1170-init) ; Statement: $r47 = new freemarker.template.Version 
(assert true)
;(assert (<init>/-1384012918 var1232 2 3 25)) ; Statement: specialinvoke $r47.<freemarker.template.Version: void <init>(int,int,int)>(2, 3, 25) 

(declare-const var1232!1 var1170)
(declare-const var3633!7 Int)
(declare-const var1331!7 Int)
(declare-const var453 Int)
(define-const var818 var1170 var1232!1) ; Statement: <freemarker.template.Configuration: freemarker.template.Version VERSION_2_3_25> = $r47 
(define-const var1065 var1170 var1170-init) ; Statement: $r48 = new freemarker.template.Version 
(assert true)
;(assert (<init>/-1384012918 var1065 2 3 26)) ; Statement: specialinvoke $r48.<freemarker.template.Version: void <init>(int,int,int)>(2, 3, 26) 

(declare-const var1065!1 var1170)
(declare-const var3633!8 Int)
(declare-const var1331!8 Int)
(declare-const var1459 Int)
(define-const var1980 var1170 var1065!1) ; Statement: <freemarker.template.Configuration: freemarker.template.Version VERSION_2_3_26> = $r48 
(define-const var3739 var1170 var1170-init) ; Statement: $r49 = new freemarker.template.Version 
(assert true)
;(assert (<init>/-1384012918 var3739 2 3 27)) ; Statement: specialinvoke $r49.<freemarker.template.Version: void <init>(int,int,int)>(2, 3, 27) 

(declare-const var3739!1 var1170)
(declare-const var3633!9 Int)
(declare-const var1331!9 Int)
(declare-const var2776 Int)
(define-const var1635 var1170 var3739!1) ; Statement: <freemarker.template.Configuration: freemarker.template.Version VERSION_2_3_27> = $r49 
(define-const var3700 var1170 var1170-init) ; Statement: $r50 = new freemarker.template.Version 
(assert true)
;(assert (<init>/-1384012918 var3700 2 3 28)) ; Statement: specialinvoke $r50.<freemarker.template.Version: void <init>(int,int,int)>(2, 3, 28) 

(declare-const var3700!1 var1170)
(declare-const var3633!10 Int)
(declare-const var1331!10 Int)
(declare-const var3901 Int)
(define-const var1061 var1170 var3700!1) ; Statement: <freemarker.template.Configuration: freemarker.template.Version VERSION_2_3_28> = $r50 
(define-const var740 var1170 var1170-init) ; Statement: $r51 = new freemarker.template.Version 
(assert true)
;(assert (<init>/-1384012918 var740 2 3 29)) ; Statement: specialinvoke $r51.<freemarker.template.Version: void <init>(int,int,int)>(2, 3, 29) 

(declare-const var740!1 var1170)
(declare-const var3633!11 Int)
(declare-const var1331!11 Int)
(declare-const var2304 Int)
(define-const var836 var1170 var740!1) ; Statement: <freemarker.template.Configuration: freemarker.template.Version VERSION_2_3_29> = $r51 
(define-const var3167 var1170 var1170-init) ; Statement: $r52 = new freemarker.template.Version 
(assert true)
;(assert (<init>/-1384012918 var3167 2 3 30)) ; Statement: specialinvoke $r52.<freemarker.template.Version: void <init>(int,int,int)>(2, 3, 30) 

(declare-const var3167!1 var1170)
(declare-const var3633!12 Int)
(declare-const var1331!12 Int)
(declare-const var1966 Int)
(define-const var2619 var1170 var3167!1) ; Statement: <freemarker.template.Configuration: freemarker.template.Version VERSION_2_3_30> = $r52 
(define-const var1704 var1170 var1170-init) ; Statement: $r53 = new freemarker.template.Version 
(assert true)
;(assert (<init>/-1384012918 var1704 2 3 31)) ; Statement: specialinvoke $r53.<freemarker.template.Version: void <init>(int,int,int)>(2, 3, 31) 

(declare-const var1704!1 var1170)
(declare-const var3633!13 Int)
(declare-const var1331!13 Int)
(declare-const var537 Int)
(define-const var3872 var1170 var1704!1) ; Statement: <freemarker.template.Configuration: freemarker.template.Version VERSION_2_3_31> = $r53 
(define-const var3202 var1170 var1170-init) ; Statement: $r54 = new freemarker.template.Version 
(assert true)
;(assert (<init>/-1384012918 var3202 2 3 32)) ; Statement: specialinvoke $r54.<freemarker.template.Version: void <init>(int,int,int)>(2, 3, 32) 

(declare-const var3202!1 var1170)
(declare-const var3633!14 Int)
(declare-const var1331!14 Int)
(declare-const var987 Int)
(define-const var2720 var1170 var3202!1) ; Statement: <freemarker.template.Configuration: freemarker.template.Version VERSION_2_3_32> = $r54 
(define-const var3747 var1170 var1977-VERSION_2_3_0) ; Statement: $r55 = <freemarker.template.Configuration: freemarker.template.Version VERSION_2_3_0> 
(define-const var661 var1170 var3747) ; Statement: <freemarker.template.Configuration: freemarker.template.Version DEFAULT_INCOMPATIBLE_IMPROVEMENTS> = $r55 
(define-const var3372 var1170 var1977-DEFAULT_INCOMPATIBLE_IMPROVEMENTS) ; Statement: $r56 = <freemarker.template.Configuration: freemarker.template.Version DEFAULT_INCOMPATIBLE_IMPROVEMENTS> 
(assert true)
(define-const var590 String (toString/-165910740 var3372)) ; Statement: $r57 = virtualinvoke $r56.<freemarker.template.Version: java.lang.String toString()>() 
(define-const var221 String var590) ; Statement: <freemarker.template.Configuration: java.lang.String DEFAULT_INCOMPATIBLE_ENHANCEMENTS> = $r57 
(define-const var112 var1170 var1977-DEFAULT_INCOMPATIBLE_IMPROVEMENTS) ; Statement: $r58 = <freemarker.template.Configuration: freemarker.template.Version DEFAULT_INCOMPATIBLE_IMPROVEMENTS> 
(assert true)
(define-const var2428 Int (intValue/1676201972 var112)) ; Statement: $i0 = virtualinvoke $r58.<freemarker.template.Version: int intValue()>() 
(define-const var2833 Int var2428) ; Statement: <freemarker.template.Configuration: int PARSED_DEFAULT_INCOMPATIBLE_ENHANCEMENTS> = $i0 
(assert true) ; Non Conditional
(define-const var138 var2370 (var2520_loadProperties/1811284346 var1977!class "/freemarker/version.properties")) ; Statement: r74 = staticinvoke <freemarker.template.utility.ClassUtil: java.util.Properties loadProperties(java.lang.Class,java.lang.String)>(class "Lfreemarker/template/Configuration;", "/freemarker/version.properties") 
(assert true) ; Non Conditional
(define-const var2948 String (var1977_getRequiredVersionProperty/899891722 var138 "version")) ; Statement: r75 = staticinvoke <freemarker.template.Configuration: java.lang.String getRequiredVersionProperty(java.util.Properties,java.lang.String)>(r74, "version") 
(assert true) ; Non Conditional
(define-const var800 String (var1977_getRequiredVersionProperty/899891722 var138 "buildTimestamp")) ; Statement: r76 = staticinvoke <freemarker.template.Configuration: java.lang.String getRequiredVersionProperty(java.util.Properties,java.lang.String)>(r74, "buildTimestamp") 
(assert true) ; Non Conditional
(assert true)
(define-const var2269 Bool (endsWith/985337093 var800 "Z")) ; Statement: $z0 = virtualinvoke r76.<java.lang.String: boolean endsWith(java.lang.String)>("Z") 
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var1800 var3057) ; Statement: $r70 := @caughtexception 
(assert (not (= var1800 null-var3057)))
(define-const var945 var1851 var1851-init) ; Statement: $r71 = new java.lang.RuntimeException 
(assert true)
;(assert (<init>/1642269841 var945 "Failed to load and parse /freemarker/version.properties" (cast-from-var3057-to-var219 var1800))) ; Statement: specialinvoke $r71.<java.lang.RuntimeException: void <init>(java.lang.String,java.lang.Throwable)>("Failed to load and parse /freemarker/version.properties", $r70) 

(declare-const var945!1 var1851)
(declare-const var168 String)
(declare-const var1800!1 var3057)
 ; Statement: throw $r71 
(check-sat)
(get-model)
(get-unsat-core)
; {var2134_getLogger/-1078495866=([java.lang.String], freemarker.log.Logger), arr-String-init=([], java.lang.String[]), var605-init=([], java.util.HashMap), <init>/-201242697=([java.util.HashMap], void), cast-from-var605-to-var2342=([java.util.HashMap], java.util.Map), getName/843802988=([freemarker.core.UndefinedOutputFormat], java.lang.String), var2342_put/1464166817=([java.util.Map, java.lang.Object, java.lang.Object], java.lang.Object), cast-from-String-to-var1550=([java.lang.String], java.lang.Object), cast-from-var3592-to-var1550=([freemarker.core.UndefinedOutputFormat], java.lang.Object), getName/1070110763=([freemarker.core.HTMLOutputFormat], java.lang.String), cast-from-var3331-to-var1550=([freemarker.core.HTMLOutputFormat], java.lang.Object), getName/-1610536583=([freemarker.core.XHTMLOutputFormat], java.lang.String), cast-from-var2549-to-var1550=([freemarker.core.XHTMLOutputFormat], java.lang.Object), getName/-1197647675=([freemarker.core.XMLOutputFormat], java.lang.String), cast-from-var1621-to-var1550=([freemarker.core.XMLOutputFormat], java.lang.Object), getName/1065199896=([freemarker.core.RTFOutputFormat], java.lang.String), cast-from-var2926-to-var1550=([freemarker.core.RTFOutputFormat], java.lang.Object), getName/1608251525=([freemarker.core.PlainTextOutputFormat], java.lang.String), cast-from-var1381-to-var1550=([freemarker.core.PlainTextOutputFormat], java.lang.Object), getName/1317388377=([freemarker.core.CSSOutputFormat], java.lang.String), cast-from-var1441-to-var1550=([freemarker.core.CSSOutputFormat], java.lang.Object), getName/-1672278359=([freemarker.core.JavaScriptOutputFormat], java.lang.String), cast-from-var93-to-var1550=([freemarker.core.JavaScriptOutputFormat], java.lang.Object), getName/-1955923058=([freemarker.core.JSONOutputFormat], java.lang.String), cast-from-var1634-to-var1550=([freemarker.core.JSONOutputFormat], java.lang.Object), var1170-init=([], freemarker.template.Version), <init>/-1384012918=([freemarker.template.Version, int, int, int], void), toString/-165910740=([freemarker.template.Version], java.lang.String), intValue/1676201972=([freemarker.template.Version], int), var2520_loadProperties/1811284346=([java.lang.Class, java.lang.String], java.util.Properties), var1977_getRequiredVersionProperty/899891722=([java.util.Properties, java.lang.String], java.lang.String), endsWith/985337093=([java.lang.String, java.lang.String], boolean), var1851-init=([], java.lang.RuntimeException), <init>/1642269841=([java.lang.RuntimeException, java.lang.String, java.lang.Throwable], void), cast-from-var3057-to-var219=([java.io.IOException], java.lang.Throwable)}
; {var2134=freemarker.log.Logger, var2403=$r0, var2202=<freemarker.template.Configuration: freemarker.log.Logger CACHE_LOG>, var1045=$r1, var3214=<freemarker.template.Configuration: java.lang.String[] SETTING_NAMES_SNAKE_CASE>, var3236=$r2, var277=<freemarker.template.Configuration: java.lang.String[] SETTING_NAMES_CAMEL_CASE>, var605=java.util.HashMap, var2426=$r3, var2342=java.util.Map, var1601=<freemarker.template.Configuration: java.util.Map STANDARD_OUTPUT_FORMATS>, var1977=freemarker.template.Configuration, var2819=$r5, var3592=freemarker.core.UndefinedOutputFormat, var622=$r4, var1599=$r7, var3454=$r6, var1550=java.lang.Object, var1842=$r9, var3331=freemarker.core.HTMLOutputFormat, var2899=$r8, var975=$r11, var3122=$r10, var1642=$r13, var2549=freemarker.core.XHTMLOutputFormat, var1721=$r12, var653=$r15, var42=$r14, var808=$r17, var1621=freemarker.core.XMLOutputFormat, var452=$r16, var875=$r19, var1311=$r18, var749=$r21, var2926=freemarker.core.RTFOutputFormat, var1431=$r20, var2651=$r23, var2406=$r22, var2913=$r25, var1381=freemarker.core.PlainTextOutputFormat, var1485=$r24, var3221=$r27, var1583=$r26, var3625=$r29, var1441=freemarker.core.CSSOutputFormat, var2981=$r28, var2676=$r31, var2935=$r30, var886=$r33, var93=freemarker.core.JavaScriptOutputFormat, var3771=$r32, var118=$r35, var1427=$r34, var3034=$r37, var1634=freemarker.core.JSONOutputFormat, var1964=$r36, var3895=$r39, var1707=$r38, var1170=freemarker.template.Version, var841=$r40, var3633=2, var1331=3, var2096=0, var581=<freemarker.template.Configuration: freemarker.template.Version VERSION_2_3_0>, var2036=$r41, var1266=19, var163=<freemarker.template.Configuration: freemarker.template.Version VERSION_2_3_19>, var3147=$r42, var604=20, var2171=<freemarker.template.Configuration: freemarker.template.Version VERSION_2_3_20>, var631=$r43, var1617=21, var1156=<freemarker.template.Configuration: freemarker.template.Version VERSION_2_3_21>, var2918=$r44, var645=22, var3101=<freemarker.template.Configuration: freemarker.template.Version VERSION_2_3_22>, var1399=$r45, var3889=23, var2282=<freemarker.template.Configuration: freemarker.template.Version VERSION_2_3_23>, var2514=$r46, var721=24, var1603=<freemarker.template.Configuration: freemarker.template.Version VERSION_2_3_24>, var1232=$r47, var453=25, var818=<freemarker.template.Configuration: freemarker.template.Version VERSION_2_3_25>, var1065=$r48, var1459=26, var1980=<freemarker.template.Configuration: freemarker.template.Version VERSION_2_3_26>, var3739=$r49, var2776=27, var1635=<freemarker.template.Configuration: freemarker.template.Version VERSION_2_3_27>, var3700=$r50, var3901=28, var1061=<freemarker.template.Configuration: freemarker.template.Version VERSION_2_3_28>, var740=$r51, var2304=29, var836=<freemarker.template.Configuration: freemarker.template.Version VERSION_2_3_29>, var3167=$r52, var1966=30, var2619=<freemarker.template.Configuration: freemarker.template.Version VERSION_2_3_30>, var1704=$r53, var537=31, var3872=<freemarker.template.Configuration: freemarker.template.Version VERSION_2_3_31>, var3202=$r54, var987=32, var2720=<freemarker.template.Configuration: freemarker.template.Version VERSION_2_3_32>, var3747=$r55, var661=<freemarker.template.Configuration: freemarker.template.Version DEFAULT_INCOMPATIBLE_IMPROVEMENTS>, var3372=$r56, var590=$r57, var221=<freemarker.template.Configuration: java.lang.String DEFAULT_INCOMPATIBLE_ENHANCEMENTS>, var112=$r58, var2428=$i0, var2833=<freemarker.template.Configuration: int PARSED_DEFAULT_INCOMPATIBLE_ENHANCEMENTS>, var2370=java.util.Properties, var2520=freemarker.template.utility.ClassUtil, var138=r74, var2948=r75, var800=r76, var2269=$z0, var3057=java.io.IOException, var1800=$r70, var1851=java.lang.RuntimeException, var945=$r71, var219=java.lang.Throwable, var168="Failed to load and parse /freemarker/version.properties"}
; {freemarker.log.Logger=var2134, $r0=var2403, <freemarker.template.Configuration: freemarker.log.Logger CACHE_LOG>=var2202, $r1=var1045, <freemarker.template.Configuration: java.lang.String[] SETTING_NAMES_SNAKE_CASE>=var3214, $r2=var3236, <freemarker.template.Configuration: java.lang.String[] SETTING_NAMES_CAMEL_CASE>=var277, java.util.HashMap=var605, $r3=var2426, java.util.Map=var2342, <freemarker.template.Configuration: java.util.Map STANDARD_OUTPUT_FORMATS>=var1601, freemarker.template.Configuration=var1977, $r5=var2819, freemarker.core.UndefinedOutputFormat=var3592, $r4=var622, $r7=var1599, $r6=var3454, java.lang.Object=var1550, $r9=var1842, freemarker.core.HTMLOutputFormat=var3331, $r8=var2899, $r11=var975, $r10=var3122, $r13=var1642, freemarker.core.XHTMLOutputFormat=var2549, $r12=var1721, $r15=var653, $r14=var42, $r17=var808, freemarker.core.XMLOutputFormat=var1621, $r16=var452, $r19=var875, $r18=var1311, $r21=var749, freemarker.core.RTFOutputFormat=var2926, $r20=var1431, $r23=var2651, $r22=var2406, $r25=var2913, freemarker.core.PlainTextOutputFormat=var1381, $r24=var1485, $r27=var3221, $r26=var1583, $r29=var3625, freemarker.core.CSSOutputFormat=var1441, $r28=var2981, $r31=var2676, $r30=var2935, $r33=var886, freemarker.core.JavaScriptOutputFormat=var93, $r32=var3771, $r35=var118, $r34=var1427, $r37=var3034, freemarker.core.JSONOutputFormat=var1634, $r36=var1964, $r39=var3895, $r38=var1707, freemarker.template.Version=var1170, $r40=var841, 2=var3633, 3=var1331, 0=var2096, <freemarker.template.Configuration: freemarker.template.Version VERSION_2_3_0>=var581, $r41=var2036, 19=var1266, <freemarker.template.Configuration: freemarker.template.Version VERSION_2_3_19>=var163, $r42=var3147, 20=var604, <freemarker.template.Configuration: freemarker.template.Version VERSION_2_3_20>=var2171, $r43=var631, 21=var1617, <freemarker.template.Configuration: freemarker.template.Version VERSION_2_3_21>=var1156, $r44=var2918, 22=var645, <freemarker.template.Configuration: freemarker.template.Version VERSION_2_3_22>=var3101, $r45=var1399, 23=var3889, <freemarker.template.Configuration: freemarker.template.Version VERSION_2_3_23>=var2282, $r46=var2514, 24=var721, <freemarker.template.Configuration: freemarker.template.Version VERSION_2_3_24>=var1603, $r47=var1232, 25=var453, <freemarker.template.Configuration: freemarker.template.Version VERSION_2_3_25>=var818, $r48=var1065, 26=var1459, <freemarker.template.Configuration: freemarker.template.Version VERSION_2_3_26>=var1980, $r49=var3739, 27=var2776, <freemarker.template.Configuration: freemarker.template.Version VERSION_2_3_27>=var1635, $r50=var3700, 28=var3901, <freemarker.template.Configuration: freemarker.template.Version VERSION_2_3_28>=var1061, $r51=var740, 29=var2304, <freemarker.template.Configuration: freemarker.template.Version VERSION_2_3_29>=var836, $r52=var3167, 30=var1966, <freemarker.template.Configuration: freemarker.template.Version VERSION_2_3_30>=var2619, $r53=var1704, 31=var537, <freemarker.template.Configuration: freemarker.template.Version VERSION_2_3_31>=var3872, $r54=var3202, 32=var987, <freemarker.template.Configuration: freemarker.template.Version VERSION_2_3_32>=var2720, $r55=var3747, <freemarker.template.Configuration: freemarker.template.Version DEFAULT_INCOMPATIBLE_IMPROVEMENTS>=var661, $r56=var3372, $r57=var590, <freemarker.template.Configuration: java.lang.String DEFAULT_INCOMPATIBLE_ENHANCEMENTS>=var221, $r58=var112, $i0=var2428, <freemarker.template.Configuration: int PARSED_DEFAULT_INCOMPATIBLE_ENHANCEMENTS>=var2833, java.util.Properties=var2370, freemarker.template.utility.ClassUtil=var2520, r74=var138, r75=var2948, r76=var800, $z0=var2269, java.io.IOException=var3057, $r70=var1800, java.lang.RuntimeException=var1851, $r71=var945, java.lang.Throwable=var219, "Failed to load and parse /freemarker/version.properties"=var168}
;seq <freemarker.template.Version: java.lang.String toString()>;	<java.lang.String: boolean endsWith(java.lang.String)>
;cnt {"<java.lang.String: boolean endsWith(java.lang.String)>": 1}
;stmts $r0 = staticinvoke <freemarker.log.Logger: freemarker.log.Logger getLogger(java.lang.String)>("freemarker.cache");	<freemarker.template.Configuration: freemarker.log.Logger CACHE_LOG> = $r0;	$r1 = newarray (java.lang.String)[20];	$r1[0] = "auto_escaping_policy";	$r1[1] = "cache_storage";	$r1[2] = "default_encoding";	$r1[3] = "fallback_on_null_loop_variable";	$r1[4] = "incompatible_improvements";	$r1[5] = "interpolation_syntax";	$r1[6] = "localized_lookup";	$r1[7] = "naming_convention";	$r1[8] = "output_format";	$r1[9] = "recognize_standard_file_extensions";	$r1[10] = "registered_custom_output_formats";	$r1[11] = "strict_syntax";	$r1[12] = "tab_size";	$r1[13] = "tag_syntax";	$r1[14] = "template_configurations";	$r1[15] = "template_loader";	$r1[16] = "template_lookup_strategy";	$r1[17] = "template_name_format";	$r1[18] = "template_update_delay";	$r1[19] = "whitespace_stripping";	<freemarker.template.Configuration: java.lang.String[] SETTING_NAMES_SNAKE_CASE> = $r1;	$r2 = newarray (java.lang.String)[20];	$r2[0] = "autoEscapingPolicy";	$r2[1] = "cacheStorage";	$r2[2] = "defaultEncoding";	$r2[3] = "fallbackOnNullLoopVariable";	$r2[4] = "incompatibleImprovements";	$r2[5] = "interpolationSyntax";	$r2[6] = "localizedLookup";	$r2[7] = "namingConvention";	$r2[8] = "outputFormat";	$r2[9] = "recognizeStandardFileExtensions";	$r2[10] = "registeredCustomOutputFormats";	$r2[11] = "strictSyntax";	$r2[12] = "tabSize";	$r2[13] = "tagSyntax";	$r2[14] = "templateConfigurations";	$r2[15] = "templateLoader";	$r2[16] = "templateLookupStrategy";	$r2[17] = "templateNameFormat";	$r2[18] = "templateUpdateDelay";	$r2[19] = "whitespaceStripping";	<freemarker.template.Configuration: java.lang.String[] SETTING_NAMES_CAMEL_CASE> = $r2;	$r3 = new java.util.HashMap;	specialinvoke $r3.<java.util.HashMap: void <init>()>();	<freemarker.template.Configuration: java.util.Map STANDARD_OUTPUT_FORMATS> = $r3;	$r5 = <freemarker.template.Configuration: java.util.Map STANDARD_OUTPUT_FORMATS>;	$r4 = <freemarker.core.UndefinedOutputFormat: freemarker.core.UndefinedOutputFormat INSTANCE>;	$r7 = virtualinvoke $r4.<freemarker.core.UndefinedOutputFormat: java.lang.String getName()>();	$r6 = <freemarker.core.UndefinedOutputFormat: freemarker.core.UndefinedOutputFormat INSTANCE>;	interfaceinvoke $r5.<java.util.Map: java.lang.Object put(java.lang.Object,java.lang.Object)>($r7, $r6);	$r9 = <freemarker.template.Configuration: java.util.Map STANDARD_OUTPUT_FORMATS>;	$r8 = <freemarker.core.HTMLOutputFormat: freemarker.core.HTMLOutputFormat INSTANCE>;	$r11 = virtualinvoke $r8.<freemarker.core.HTMLOutputFormat: java.lang.String getName()>();	$r10 = <freemarker.core.HTMLOutputFormat: freemarker.core.HTMLOutputFormat INSTANCE>;	interfaceinvoke $r9.<java.util.Map: java.lang.Object put(java.lang.Object,java.lang.Object)>($r11, $r10);	$r13 = <freemarker.template.Configuration: java.util.Map STANDARD_OUTPUT_FORMATS>;	$r12 = <freemarker.core.XHTMLOutputFormat: freemarker.core.XHTMLOutputFormat INSTANCE>;	$r15 = virtualinvoke $r12.<freemarker.core.XHTMLOutputFormat: java.lang.String getName()>();	$r14 = <freemarker.core.XHTMLOutputFormat: freemarker.core.XHTMLOutputFormat INSTANCE>;	interfaceinvoke $r13.<java.util.Map: java.lang.Object put(java.lang.Object,java.lang.Object)>($r15, $r14);	$r17 = <freemarker.template.Configuration: java.util.Map STANDARD_OUTPUT_FORMATS>;	$r16 = <freemarker.core.XMLOutputFormat: freemarker.core.XMLOutputFormat INSTANCE>;	$r19 = virtualinvoke $r16.<freemarker.core.XMLOutputFormat: java.lang.String getName()>();	$r18 = <freemarker.core.XMLOutputFormat: freemarker.core.XMLOutputFormat INSTANCE>;	interfaceinvoke $r17.<java.util.Map: java.lang.Object put(java.lang.Object,java.lang.Object)>($r19, $r18);	$r21 = <freemarker.template.Configuration: java.util.Map STANDARD_OUTPUT_FORMATS>;	$r20 = <freemarker.core.RTFOutputFormat: freemarker.core.RTFOutputFormat INSTANCE>;	$r23 = virtualinvoke $r20.<freemarker.core.RTFOutputFormat: java.lang.String getName()>();	$r22 = <freemarker.core.RTFOutputFormat: freemarker.core.RTFOutputFormat INSTANCE>;	interfaceinvoke $r21.<java.util.Map: java.lang.Object put(java.lang.Object,java.lang.Object)>($r23, $r22);	$r25 = <freemarker.template.Configuration: java.util.Map STANDARD_OUTPUT_FORMATS>;	$r24 = <freemarker.core.PlainTextOutputFormat: freemarker.core.PlainTextOutputFormat INSTANCE>;	$r27 = virtualinvoke $r24.<freemarker.core.PlainTextOutputFormat: java.lang.String getName()>();	$r26 = <freemarker.core.PlainTextOutputFormat: freemarker.core.PlainTextOutputFormat INSTANCE>;	interfaceinvoke $r25.<java.util.Map: java.lang.Object put(java.lang.Object,java.lang.Object)>($r27, $r26);	$r29 = <freemarker.template.Configuration: java.util.Map STANDARD_OUTPUT_FORMATS>;	$r28 = <freemarker.core.CSSOutputFormat: freemarker.core.CSSOutputFormat INSTANCE>;	$r31 = virtualinvoke $r28.<freemarker.core.CSSOutputFormat: java.lang.String getName()>();	$r30 = <freemarker.core.CSSOutputFormat: freemarker.core.CSSOutputFormat INSTANCE>;	interfaceinvoke $r29.<java.util.Map: java.lang.Object put(java.lang.Object,java.lang.Object)>($r31, $r30);	$r33 = <freemarker.template.Configuration: java.util.Map STANDARD_OUTPUT_FORMATS>;	$r32 = <freemarker.core.JavaScriptOutputFormat: freemarker.core.JavaScriptOutputFormat INSTANCE>;	$r35 = virtualinvoke $r32.<freemarker.core.JavaScriptOutputFormat: java.lang.String getName()>();	$r34 = <freemarker.core.JavaScriptOutputFormat: freemarker.core.JavaScriptOutputFormat INSTANCE>;	interfaceinvoke $r33.<java.util.Map: java.lang.Object put(java.lang.Object,java.lang.Object)>($r35, $r34);	$r37 = <freemarker.template.Configuration: java.util.Map STANDARD_OUTPUT_FORMATS>;	$r36 = <freemarker.core.JSONOutputFormat: freemarker.core.JSONOutputFormat INSTANCE>;	$r39 = virtualinvoke $r36.<freemarker.core.JSONOutputFormat: java.lang.String getName()>();	$r38 = <freemarker.core.JSONOutputFormat: freemarker.core.JSONOutputFormat INSTANCE>;	interfaceinvoke $r37.<java.util.Map: java.lang.Object put(java.lang.Object,java.lang.Object)>($r39, $r38);	$r40 = new freemarker.template.Version;	specialinvoke $r40.<freemarker.template.Version: void <init>(int,int,int)>(2, 3, 0);	<freemarker.template.Configuration: freemarker.template.Version VERSION_2_3_0> = $r40;	$r41 = new freemarker.template.Version;	specialinvoke $r41.<freemarker.template.Version: void <init>(int,int,int)>(2, 3, 19);	<freemarker.template.Configuration: freemarker.template.Version VERSION_2_3_19> = $r41;	$r42 = new freemarker.template.Version;	specialinvoke $r42.<freemarker.template.Version: void <init>(int,int,int)>(2, 3, 20);	<freemarker.template.Configuration: freemarker.template.Version VERSION_2_3_20> = $r42;	$r43 = new freemarker.template.Version;	specialinvoke $r43.<freemarker.template.Version: void <init>(int,int,int)>(2, 3, 21);	<freemarker.template.Configuration: freemarker.template.Version VERSION_2_3_21> = $r43;	$r44 = new freemarker.template.Version;	specialinvoke $r44.<freemarker.template.Version: void <init>(int,int,int)>(2, 3, 22);	<freemarker.template.Configuration: freemarker.template.Version VERSION_2_3_22> = $r44;	$r45 = new freemarker.template.Version;	specialinvoke $r45.<freemarker.template.Version: void <init>(int,int,int)>(2, 3, 23);	<freemarker.template.Configuration: freemarker.template.Version VERSION_2_3_23> = $r45;	$r46 = new freemarker.template.Version;	specialinvoke $r46.<freemarker.template.Version: void <init>(int,int,int)>(2, 3, 24);	<freemarker.template.Configuration: freemarker.template.Version VERSION_2_3_24> = $r46;	$r47 = new freemarker.template.Version;	specialinvoke $r47.<freemarker.template.Version: void <init>(int,int,int)>(2, 3, 25);	<freemarker.template.Configuration: freemarker.template.Version VERSION_2_3_25> = $r47;	$r48 = new freemarker.template.Version;	specialinvoke $r48.<freemarker.template.Version: void <init>(int,int,int)>(2, 3, 26);	<freemarker.template.Configuration: freemarker.template.Version VERSION_2_3_26> = $r48;	$r49 = new freemarker.template.Version;	specialinvoke $r49.<freemarker.template.Version: void <init>(int,int,int)>(2, 3, 27);	<freemarker.template.Configuration: freemarker.template.Version VERSION_2_3_27> = $r49;	$r50 = new freemarker.template.Version;	specialinvoke $r50.<freemarker.template.Version: void <init>(int,int,int)>(2, 3, 28);	<freemarker.template.Configuration: freemarker.template.Version VERSION_2_3_28> = $r50;	$r51 = new freemarker.template.Version;	specialinvoke $r51.<freemarker.template.Version: void <init>(int,int,int)>(2, 3, 29);	<freemarker.template.Configuration: freemarker.template.Version VERSION_2_3_29> = $r51;	$r52 = new freemarker.template.Version;	specialinvoke $r52.<freemarker.template.Version: void <init>(int,int,int)>(2, 3, 30);	<freemarker.template.Configuration: freemarker.template.Version VERSION_2_3_30> = $r52;	$r53 = new freemarker.template.Version;	specialinvoke $r53.<freemarker.template.Version: void <init>(int,int,int)>(2, 3, 31);	<freemarker.template.Configuration: freemarker.template.Version VERSION_2_3_31> = $r53;	$r54 = new freemarker.template.Version;	specialinvoke $r54.<freemarker.template.Version: void <init>(int,int,int)>(2, 3, 32);	<freemarker.template.Configuration: freemarker.template.Version VERSION_2_3_32> = $r54;	$r55 = <freemarker.template.Configuration: freemarker.template.Version VERSION_2_3_0>;	<freemarker.template.Configuration: freemarker.template.Version DEFAULT_INCOMPATIBLE_IMPROVEMENTS> = $r55;	$r56 = <freemarker.template.Configuration: freemarker.template.Version DEFAULT_INCOMPATIBLE_IMPROVEMENTS>;	$r57 = virtualinvoke $r56.<freemarker.template.Version: java.lang.String toString()>();	<freemarker.template.Configuration: java.lang.String DEFAULT_INCOMPATIBLE_ENHANCEMENTS> = $r57;	$r58 = <freemarker.template.Configuration: freemarker.template.Version DEFAULT_INCOMPATIBLE_IMPROVEMENTS>;	$i0 = virtualinvoke $r58.<freemarker.template.Version: int intValue()>();	<freemarker.template.Configuration: int PARSED_DEFAULT_INCOMPATIBLE_ENHANCEMENTS> = $i0;	r74 = staticinvoke <freemarker.template.utility.ClassUtil: java.util.Properties loadProperties(java.lang.Class,java.lang.String)>(class "Lfreemarker/template/Configuration;", "/freemarker/version.properties");	r75 = staticinvoke <freemarker.template.Configuration: java.lang.String getRequiredVersionProperty(java.util.Properties,java.lang.String)>(r74, "version");	r76 = staticinvoke <freemarker.template.Configuration: java.lang.String getRequiredVersionProperty(java.util.Properties,java.lang.String)>(r74, "buildTimestamp");	$z0 = virtualinvoke r76.<java.lang.String: boolean endsWith(java.lang.String)>("Z");	$r70 := @caughtexception;	$r71 = new java.lang.RuntimeException;	specialinvoke $r71.<java.lang.RuntimeException: void <init>(java.lang.String,java.lang.Throwable)>("Failed to load and parse /freemarker/version.properties", $r70);	throw $r71
;block_num 6