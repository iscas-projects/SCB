(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1673 0)
(declare-sort var2156 0)
(declare-sort var935 0)
(declare-sort var3294 0)
(declare-sort var3881 0)
(declare-sort var3742 0)
(declare-sort var3408 0)
(declare-sort var1178 0)
(declare-sort var694 0)
(declare-sort var3373 0)
(declare-sort var3615 0)
(declare-sort var2898 0)
(declare-sort var1499 0)
(declare-sort var3628 0)
(declare-sort var2608 0)
(declare-sort var2824 0)
(declare-sort var2633 0)
(declare-sort var113 0)
(declare-sort var2378 0)
(declare-sort var2104 0)
(declare-sort var2808 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun <init>/-279557996 (var935) void)
(declare-fun cast-from-var1673-to-var935 (var1673) var935)
(declare-fun var3294_checkVersionNotNullAndSupported/-863992419 (var2156) void)
(declare-fun parent/-2041385216 (var1673) var1673)
(declare-fun var3881-init () var3881)
(declare-fun <init>/964458484 (var3881) void)
(declare-fun properties/-2041385216 (var1673) var3881)
(declare-fun var3294_getDefaultLocale/-1915824735 () var3742)
(declare-fun locale/-2041385216 (var1673) var3742)
(declare-fun toString/207920178 (var3742) String)
(declare-fun setProperty/703705272 (var3881 String String) var935)
(declare-fun var3294_getDefaultTimeZone/-1940672319 () var3408)
(declare-fun timeZone/-2041385216 (var1673) var3408)
(declare-fun getID/-1323510388 (var3408) String)
(declare-fun sqlDataAndTimeTimeZone/-2041385216 (var1673) var3408)
(declare-fun String_valueOf/-333372740 (var935) String)
(declare-fun cast-from-var3408-to-var935 (var3408) var935)
(declare-fun numberFormat/-2041385216 (var1673) String)
(declare-fun timeFormat/-2041385216 (var1673) String)
(declare-fun dateFormat/-2041385216 (var1673) String)
(declare-fun dateTimeFormat/-2041385216 (var1673) String)
(declare-fun var3294_getDefaultCFormat/-172649748 (var2156) var1178)
(declare-fun cFormat/-2041385216 (var1673) var1178)
(declare-fun Int_valueOf/-1371140006 (Int) Int)
(declare-fun classicCompatible/-2041385216 (var1673) Int)
(declare-fun toString/483301002 (Int) String)
(declare-fun var3294_getDefaultTemplateExceptionHandler/-225037975 (var2156) var694)
(declare-fun templateExceptionHandler/-2041385216 (var1673) var694)
(declare-fun getClass/1258963082 (var935) ClassObject)
(declare-fun cast-from-var694-to-var935 (var694) var935)
(declare-fun getName/-1958580599 (ClassObject) String)
(declare-fun var3294_getDefaultWrapUncheckedExceptions/208528687 (var2156) Bool)
(declare-fun var3373_valueOf/1602327315 (Bool) var3373)
(declare-fun wrapUncheckedExceptions/-2041385216 (var1673) var3373)
(declare-fun var3294_getDefaultAttemptExceptionReporter/155384489 (var2156) var3615)
(declare-fun attemptExceptionReporter/-2041385216 (var1673) var3615)
(declare-fun cast-from-var2898-to-var1499 (var2898) var1499)
(declare-fun arithmeticEngine/-2041385216 (var1673) var1499)
(declare-fun cast-from-var1499-to-var935 (var1499) var935)
(declare-fun var2608_getDefaultObjectWrapper/529201078 (var2156) var3628)
(declare-fun objectWrapper/-2041385216 (var1673) var3628)
(declare-fun autoFlush/-2041385216 (var1673) var3373)
(declare-fun toString/1090915316 (var3373) String)
(declare-fun newBuiltinClassResolver/-2041385216 (var1673) var2824)
(declare-fun cast-from-var2824-to-var935 (var2824) var935)
(declare-fun cast-from-var2633-to-var113 (var2633) var113)
(declare-fun truncateBuiltinAlgorithm/-2041385216 (var1673) var113)
(declare-fun showErrorTips/-2041385216 (var1673) var3373)
(declare-fun apiBuiltinEnabled/-2041385216 (var1673) var3373)
(declare-fun var3294_getDefaultLogTemplateExceptions/1166774473 (var2156) Bool)
(declare-fun logTemplateExceptions/-2041385216 (var1673) var3373)
(declare-fun setBooleanFormat/1350624059 (var1673 String) void)
(declare-fun var2378-init () var2378)
(declare-fun <init>/-201242697 (var2378) void)
(declare-fun customAttributes/-2041385216 (var1673) var2378)
(declare-fun var2808_emptyMap/401053835 () var2104)
(declare-fun customDateFormats/-2041385216 (var1673) var2104)
(declare-fun customNumberFormats/-2041385216 (var1673) var2104)
(declare-fun lazyImports/-2041385216 (var1673) var3373)
(declare-fun lazyAutoImportsSet/-2041385216 (var1673) Bool)
(declare-fun initAutoImportsMap/1092156486 (var1673) void)
(declare-fun initAutoIncludesList/2015365547 (var1673) void)
(declare-const null-var1673 var1673)
(declare-const null-var2156 var2156)
(declare-const null-var3408 var3408)
(declare-const var1499-BIGDECIMAL_ENGINE var2898)
(declare-const var3373-TRUE var3373)
(declare-const var2824-UNRESTRICTED_RESOLVER var2824)
(declare-const var2633-ASCII_INSTANCE var2633)
(declare-const var3373-FALSE var3373)
(declare-const var736 var1673) ; Statement: r0 := @this: freemarker.core.Configurable 
(assert (not (= var736 null-var1673)))
(declare-const var3828 var2156) ; Statement: r1 := @parameter0: freemarker.template.Version 
(assert (not (= var3828 null-var2156)))
(assert true)
;(assert (<init>/-279557996 (cast-from-var1673-to-var935 var736))) ; Statement: specialinvoke r0.<java.lang.Object: void <init>()>() 

(declare-const var736!1 var1673)
;(assert (var3294_checkVersionNotNullAndSupported/-863992419 var3828)) ; Statement: staticinvoke <freemarker.template._TemplateAPI: void checkVersionNotNullAndSupported(freemarker.template.Version)>(r1) 

(declare-const var3828!1 var2156)
(declare-const var736!2 var1673)
(assert (not (= var736!2 null-var1673)))
(assert (= (parent/-2041385216 var736!2) null-var1673)) ; Statement: r0.<freemarker.core.Configurable: freemarker.core.Configurable parent> = null 
(define-const var381 var3881 var3881-init) ; Statement: $r2 = new java.util.Properties 
(assert true)
;(assert (<init>/964458484 var381)) ; Statement: specialinvoke $r2.<java.util.Properties: void <init>()>() 

(declare-const var381!1 var3881)
(declare-const var736!3 var1673)
(assert (not (= var736!3 null-var1673)))
(assert (= (properties/-2041385216 var736!3) var381!1)) ; Statement: r0.<freemarker.core.Configurable: java.util.Properties properties> = $r2 
(define-const var2143 var3742 var3294_getDefaultLocale/-1915824735) ; Statement: $r3 = staticinvoke <freemarker.template._TemplateAPI: java.util.Locale getDefaultLocale()>() 
(declare-const var736!4 var1673)
(assert (not (= var736!4 null-var1673)))
(assert (= (locale/-2041385216 var736!4) var2143)) ; Statement: r0.<freemarker.core.Configurable: java.util.Locale locale> = $r3 
(define-const var3748 var3881 (properties/-2041385216 var736!4)) ; Statement: $r5 = r0.<freemarker.core.Configurable: java.util.Properties properties> 
(define-const var3351 var3742 (locale/-2041385216 var736!4)) ; Statement: $r4 = r0.<freemarker.core.Configurable: java.util.Locale locale> 
(assert true)
(define-const var2908 String (toString/207920178 var3351)) ; Statement: $r6 = virtualinvoke $r4.<java.util.Locale: java.lang.String toString()>() 
(assert true)
;(assert (setProperty/703705272 var3748 "locale" var2908)) ; Statement: virtualinvoke $r5.<java.util.Properties: java.lang.Object setProperty(java.lang.String,java.lang.String)>("locale", $r6) 

(declare-const var3748!1 var3881)
(declare-const var3435 String)
(declare-const var2908!1 String)
(define-const var1121 var3408 var3294_getDefaultTimeZone/-1940672319) ; Statement: $r7 = staticinvoke <freemarker.template._TemplateAPI: java.util.TimeZone getDefaultTimeZone()>() 
(declare-const var736!5 var1673)
(assert (not (= var736!5 null-var1673)))
(assert (= (timeZone/-2041385216 var736!5) var1121)) ; Statement: r0.<freemarker.core.Configurable: java.util.TimeZone timeZone> = $r7 
(define-const var752 var3881 (properties/-2041385216 var736!5)) ; Statement: $r9 = r0.<freemarker.core.Configurable: java.util.Properties properties> 
(define-const var868 var3408 (timeZone/-2041385216 var736!5)) ; Statement: $r8 = r0.<freemarker.core.Configurable: java.util.TimeZone timeZone> 
(assert true)
(define-const var3018 String (getID/-1323510388 var868)) ; Statement: $r10 = virtualinvoke $r8.<java.util.TimeZone: java.lang.String getID()>() 
(assert true)
;(assert (setProperty/703705272 var752 "time_zone" var3018)) ; Statement: virtualinvoke $r9.<java.util.Properties: java.lang.Object setProperty(java.lang.String,java.lang.String)>("time_zone", $r10) 

(declare-const var752!1 var3881)
(declare-const var2273 String)
(declare-const var3018!1 String)
(declare-const var736!6 var1673)
(assert (not (= var736!6 null-var1673)))
(assert (= (sqlDataAndTimeTimeZone/-2041385216 var736!6) null-var3408)) ; Statement: r0.<freemarker.core.Configurable: java.util.TimeZone sqlDataAndTimeTimeZone> = null 
(define-const var2715 var3881 (properties/-2041385216 var736!6)) ; Statement: $r12 = r0.<freemarker.core.Configurable: java.util.Properties properties> 
(define-const var997 var3408 (sqlDataAndTimeTimeZone/-2041385216 var736!6)) ; Statement: $r11 = r0.<freemarker.core.Configurable: java.util.TimeZone sqlDataAndTimeTimeZone> 
(define-const var663 String (String_valueOf/-333372740 (cast-from-var3408-to-var935 var997))) ; Statement: $r13 = staticinvoke <java.lang.String: java.lang.String valueOf(java.lang.Object)>($r11) 
(assert true)
;(assert (setProperty/703705272 var2715 "sql_date_and_time_time_zone" var663)) ; Statement: virtualinvoke $r12.<java.util.Properties: java.lang.Object setProperty(java.lang.String,java.lang.String)>("sql_date_and_time_time_zone", $r13) 

(declare-const var2715!1 var3881)
(declare-const var1917 String)
(declare-const var663!1 String)
(declare-const var736!7 var1673)
(assert (not (= var736!7 null-var1673)))
(assert (= (numberFormat/-2041385216 var736!7) "number")) ; Statement: r0.<freemarker.core.Configurable: java.lang.String numberFormat> = "number" 
(define-const var2160 var3881 (properties/-2041385216 var736!7)) ; Statement: $r15 = r0.<freemarker.core.Configurable: java.util.Properties properties> 
(define-const var3955 String (numberFormat/-2041385216 var736!7)) ; Statement: $r14 = r0.<freemarker.core.Configurable: java.lang.String numberFormat> 
(assert true)
;(assert (setProperty/703705272 var2160 "number_format" var3955)) ; Statement: virtualinvoke $r15.<java.util.Properties: java.lang.Object setProperty(java.lang.String,java.lang.String)>("number_format", $r14) 

(declare-const var2160!1 var3881)
(declare-const var1035 String)
(declare-const var3955!1 String)
(declare-const var736!8 var1673)
(assert (not (= var736!8 null-var1673)))
(assert (= (timeFormat/-2041385216 var736!8) "")) ; Statement: r0.<freemarker.core.Configurable: java.lang.String timeFormat> = "" 
(define-const var3112 var3881 (properties/-2041385216 var736!8)) ; Statement: $r17 = r0.<freemarker.core.Configurable: java.util.Properties properties> 
(define-const var3119 String (timeFormat/-2041385216 var736!8)) ; Statement: $r16 = r0.<freemarker.core.Configurable: java.lang.String timeFormat> 
(assert true)
;(assert (setProperty/703705272 var3112 "time_format" var3119)) ; Statement: virtualinvoke $r17.<java.util.Properties: java.lang.Object setProperty(java.lang.String,java.lang.String)>("time_format", $r16) 

(declare-const var3112!1 var3881)
(declare-const var349 String)
(declare-const var3119!1 String)
(declare-const var736!9 var1673)
(assert (not (= var736!9 null-var1673)))
(assert (= (dateFormat/-2041385216 var736!9) "")) ; Statement: r0.<freemarker.core.Configurable: java.lang.String dateFormat> = "" 
(define-const var1022 var3881 (properties/-2041385216 var736!9)) ; Statement: $r19 = r0.<freemarker.core.Configurable: java.util.Properties properties> 
(define-const var3193 String (dateFormat/-2041385216 var736!9)) ; Statement: $r18 = r0.<freemarker.core.Configurable: java.lang.String dateFormat> 
(assert true)
;(assert (setProperty/703705272 var1022 "date_format" var3193)) ; Statement: virtualinvoke $r19.<java.util.Properties: java.lang.Object setProperty(java.lang.String,java.lang.String)>("date_format", $r18) 

(declare-const var1022!1 var3881)
(declare-const var3067 String)
(declare-const var3193!1 String)
(declare-const var736!10 var1673)
(assert (not (= var736!10 null-var1673)))
(assert (= (dateTimeFormat/-2041385216 var736!10) "")) ; Statement: r0.<freemarker.core.Configurable: java.lang.String dateTimeFormat> = "" 
(define-const var3992 var3881 (properties/-2041385216 var736!10)) ; Statement: $r21 = r0.<freemarker.core.Configurable: java.util.Properties properties> 
(define-const var2712 String (dateTimeFormat/-2041385216 var736!10)) ; Statement: $r20 = r0.<freemarker.core.Configurable: java.lang.String dateTimeFormat> 
(assert true)
;(assert (setProperty/703705272 var3992 "datetime_format" var2712)) ; Statement: virtualinvoke $r21.<java.util.Properties: java.lang.Object setProperty(java.lang.String,java.lang.String)>("datetime_format", $r20) 

(declare-const var3992!1 var3881)
(declare-const var3840 String)
(declare-const var2712!1 String)
(define-const var245 var1178 (var3294_getDefaultCFormat/-172649748 var3828!1)) ; Statement: $r22 = staticinvoke <freemarker.template._TemplateAPI: freemarker.core.CFormat getDefaultCFormat(freemarker.template.Version)>(r1) 
(declare-const var736!11 var1673)
(assert (not (= var736!11 null-var1673)))
(assert (= (cFormat/-2041385216 var736!11) var245)) ; Statement: r0.<freemarker.core.Configurable: freemarker.core.CFormat cFormat> = $r22 
(define-const var1274 Int (Int_valueOf/-1371140006 0)) ; Statement: $r23 = staticinvoke <java.lang.Integer: java.lang.Integer valueOf(int)>(0) 
(declare-const var736!12 var1673)
(assert (not (= var736!12 null-var1673)))
(assert (= (classicCompatible/-2041385216 var736!12) var1274)) ; Statement: r0.<freemarker.core.Configurable: java.lang.Integer classicCompatible> = $r23 
(define-const var3829 var3881 (properties/-2041385216 var736!12)) ; Statement: $r25 = r0.<freemarker.core.Configurable: java.util.Properties properties> 
(define-const var1072 Int (classicCompatible/-2041385216 var736!12)) ; Statement: $r24 = r0.<freemarker.core.Configurable: java.lang.Integer classicCompatible> 
(assert true)
(define-const var2878 String (toString/483301002 var1072)) ; Statement: $r26 = virtualinvoke $r24.<java.lang.Integer: java.lang.String toString()>() 
(assert true)
;(assert (setProperty/703705272 var3829 "classic_compatible" var2878)) ; Statement: virtualinvoke $r25.<java.util.Properties: java.lang.Object setProperty(java.lang.String,java.lang.String)>("classic_compatible", $r26) 

(declare-const var3829!1 var3881)
(declare-const var2305 String)
(declare-const var2878!1 String)
(define-const var726 var694 (var3294_getDefaultTemplateExceptionHandler/-225037975 var3828!1)) ; Statement: $r27 = staticinvoke <freemarker.template._TemplateAPI: freemarker.template.TemplateExceptionHandler getDefaultTemplateExceptionHandler(freemarker.template.Version)>(r1) 
(declare-const var736!13 var1673)
(assert (not (= var736!13 null-var1673)))
(assert (= (templateExceptionHandler/-2041385216 var736!13) var726)) ; Statement: r0.<freemarker.core.Configurable: freemarker.template.TemplateExceptionHandler templateExceptionHandler> = $r27 
(define-const var2740 var3881 (properties/-2041385216 var736!13)) ; Statement: $r29 = r0.<freemarker.core.Configurable: java.util.Properties properties> 
(define-const var414 var694 (templateExceptionHandler/-2041385216 var736!13)) ; Statement: $r28 = r0.<freemarker.core.Configurable: freemarker.template.TemplateExceptionHandler templateExceptionHandler> 
(assert true)
(define-const var1862 ClassObject (getClass/1258963082 (cast-from-var694-to-var935 var414))) ; Statement: $r30 = virtualinvoke $r28.<java.lang.Object: java.lang.Class getClass()>() 
(assert true)
(define-const var1995 String (getName/-1958580599 var1862)) ; Statement: $r31 = virtualinvoke $r30.<java.lang.Class: java.lang.String getName()>() 
(assert true)
;(assert (setProperty/703705272 var2740 "template_exception_handler" var1995)) ; Statement: virtualinvoke $r29.<java.util.Properties: java.lang.Object setProperty(java.lang.String,java.lang.String)>("template_exception_handler", $r31) 

(declare-const var2740!1 var3881)
(declare-const var2912 String)
(declare-const var1995!1 String)
(define-const var2199 Bool (var3294_getDefaultWrapUncheckedExceptions/208528687 var3828!1)) ; Statement: $z0 = staticinvoke <freemarker.template._TemplateAPI: boolean getDefaultWrapUncheckedExceptions(freemarker.template.Version)>(r1) 
(define-const var102 var3373 (var3373_valueOf/1602327315 var2199)) ; Statement: $r32 = staticinvoke <java.lang.Boolean: java.lang.Boolean valueOf(boolean)>($z0) 
(declare-const var736!14 var1673)
(assert (not (= var736!14 null-var1673)))
(assert (= (wrapUncheckedExceptions/-2041385216 var736!14) var102)) ; Statement: r0.<freemarker.core.Configurable: java.lang.Boolean wrapUncheckedExceptions> = $r32 
(define-const var2231 var3615 (var3294_getDefaultAttemptExceptionReporter/155384489 var3828!1)) ; Statement: $r33 = staticinvoke <freemarker.template._TemplateAPI: freemarker.template.AttemptExceptionReporter getDefaultAttemptExceptionReporter(freemarker.template.Version)>(r1) 
(declare-const var736!15 var1673)
(assert (not (= var736!15 null-var1673)))
(assert (= (attemptExceptionReporter/-2041385216 var736!15) var2231)) ; Statement: r0.<freemarker.core.Configurable: freemarker.template.AttemptExceptionReporter attemptExceptionReporter> = $r33 
(define-const var1841 var2898 var1499-BIGDECIMAL_ENGINE) ; Statement: $r34 = <freemarker.core.ArithmeticEngine: freemarker.core.ArithmeticEngine$BigDecimalEngine BIGDECIMAL_ENGINE> 
(declare-const var736!16 var1673)
(assert (not (= var736!16 null-var1673)))
(assert (= (arithmeticEngine/-2041385216 var736!16) (cast-from-var2898-to-var1499 var1841))) ; Statement: r0.<freemarker.core.Configurable: freemarker.core.ArithmeticEngine arithmeticEngine> = $r34 
(define-const var240 var3881 (properties/-2041385216 var736!16)) ; Statement: $r36 = r0.<freemarker.core.Configurable: java.util.Properties properties> 
(define-const var1516 var1499 (arithmeticEngine/-2041385216 var736!16)) ; Statement: $r35 = r0.<freemarker.core.Configurable: freemarker.core.ArithmeticEngine arithmeticEngine> 
(assert true)
(define-const var2655 ClassObject (getClass/1258963082 (cast-from-var1499-to-var935 var1516))) ; Statement: $r37 = virtualinvoke $r35.<java.lang.Object: java.lang.Class getClass()>() 
(assert true)
(define-const var1458 String (getName/-1958580599 var2655)) ; Statement: $r38 = virtualinvoke $r37.<java.lang.Class: java.lang.String getName()>() 
(assert true)
;(assert (setProperty/703705272 var240 "arithmetic_engine" var1458)) ; Statement: virtualinvoke $r36.<java.util.Properties: java.lang.Object setProperty(java.lang.String,java.lang.String)>("arithmetic_engine", $r38) 

(declare-const var240!1 var3881)
(declare-const var1456 String)
(declare-const var1458!1 String)
(define-const var1517 var3628 (var2608_getDefaultObjectWrapper/529201078 var3828!1)) ; Statement: $r39 = staticinvoke <freemarker.template.Configuration: freemarker.template.ObjectWrapper getDefaultObjectWrapper(freemarker.template.Version)>(r1) 
(declare-const var736!17 var1673)
(assert (not (= var736!17 null-var1673)))
(assert (= (objectWrapper/-2041385216 var736!17) var1517)) ; Statement: r0.<freemarker.core.Configurable: freemarker.template.ObjectWrapper objectWrapper> = $r39 
(define-const var1879 var3373 var3373-TRUE) ; Statement: $r40 = <java.lang.Boolean: java.lang.Boolean TRUE> 
(declare-const var736!18 var1673)
(assert (not (= var736!18 null-var1673)))
(assert (= (autoFlush/-2041385216 var736!18) var1879)) ; Statement: r0.<freemarker.core.Configurable: java.lang.Boolean autoFlush> = $r40 
(define-const var2341 var3881 (properties/-2041385216 var736!18)) ; Statement: $r42 = r0.<freemarker.core.Configurable: java.util.Properties properties> 
(define-const var2536 var3373 (autoFlush/-2041385216 var736!18)) ; Statement: $r41 = r0.<freemarker.core.Configurable: java.lang.Boolean autoFlush> 
(assert true)
(define-const var3545 String (toString/1090915316 var2536)) ; Statement: $r43 = virtualinvoke $r41.<java.lang.Boolean: java.lang.String toString()>() 
(assert true)
;(assert (setProperty/703705272 var2341 "auto_flush" var3545)) ; Statement: virtualinvoke $r42.<java.util.Properties: java.lang.Object setProperty(java.lang.String,java.lang.String)>("auto_flush", $r43) 

(declare-const var2341!1 var3881)
(declare-const var2224 String)
(declare-const var3545!1 String)
(define-const var2144 var2824 var2824-UNRESTRICTED_RESOLVER) ; Statement: $r44 = <freemarker.core.TemplateClassResolver: freemarker.core.TemplateClassResolver UNRESTRICTED_RESOLVER> 
(declare-const var736!19 var1673)
(assert (not (= var736!19 null-var1673)))
(assert (= (newBuiltinClassResolver/-2041385216 var736!19) var2144)) ; Statement: r0.<freemarker.core.Configurable: freemarker.core.TemplateClassResolver newBuiltinClassResolver> = $r44 
(define-const var782 var3881 (properties/-2041385216 var736!19)) ; Statement: $r46 = r0.<freemarker.core.Configurable: java.util.Properties properties> 
(define-const var2406 var2824 (newBuiltinClassResolver/-2041385216 var736!19)) ; Statement: $r45 = r0.<freemarker.core.Configurable: freemarker.core.TemplateClassResolver newBuiltinClassResolver> 
(assert true)
(define-const var358 ClassObject (getClass/1258963082 (cast-from-var2824-to-var935 var2406))) ; Statement: $r47 = virtualinvoke $r45.<java.lang.Object: java.lang.Class getClass()>() 
(assert true)
(define-const var3291 String (getName/-1958580599 var358)) ; Statement: $r48 = virtualinvoke $r47.<java.lang.Class: java.lang.String getName()>() 
(assert true)
;(assert (setProperty/703705272 var782 "new_builtin_class_resolver" var3291)) ; Statement: virtualinvoke $r46.<java.util.Properties: java.lang.Object setProperty(java.lang.String,java.lang.String)>("new_builtin_class_resolver", $r48) 

(declare-const var782!1 var3881)
(declare-const var3661 String)
(declare-const var3291!1 String)
(define-const var1220 var2633 var2633-ASCII_INSTANCE) ; Statement: $r49 = <freemarker.core.DefaultTruncateBuiltinAlgorithm: freemarker.core.DefaultTruncateBuiltinAlgorithm ASCII_INSTANCE> 
(declare-const var736!20 var1673)
(assert (not (= var736!20 null-var1673)))
(assert (= (truncateBuiltinAlgorithm/-2041385216 var736!20) (cast-from-var2633-to-var113 var1220))) ; Statement: r0.<freemarker.core.Configurable: freemarker.core.TruncateBuiltinAlgorithm truncateBuiltinAlgorithm> = $r49 
(define-const var254 var3373 var3373-TRUE) ; Statement: $r50 = <java.lang.Boolean: java.lang.Boolean TRUE> 
(declare-const var736!21 var1673)
(assert (not (= var736!21 null-var1673)))
(assert (= (showErrorTips/-2041385216 var736!21) var254)) ; Statement: r0.<freemarker.core.Configurable: java.lang.Boolean showErrorTips> = $r50 
(define-const var1522 var3881 (properties/-2041385216 var736!21)) ; Statement: $r52 = r0.<freemarker.core.Configurable: java.util.Properties properties> 
(define-const var1009 var3373 (showErrorTips/-2041385216 var736!21)) ; Statement: $r51 = r0.<freemarker.core.Configurable: java.lang.Boolean showErrorTips> 
(assert true)
(define-const var3773 String (toString/1090915316 var1009)) ; Statement: $r53 = virtualinvoke $r51.<java.lang.Boolean: java.lang.String toString()>() 
(assert true)
;(assert (setProperty/703705272 var1522 "show_error_tips" var3773)) ; Statement: virtualinvoke $r52.<java.util.Properties: java.lang.Object setProperty(java.lang.String,java.lang.String)>("show_error_tips", $r53) 

(declare-const var1522!1 var3881)
(declare-const var3991 String)
(declare-const var3773!1 String)
(define-const var152 var3373 var3373-FALSE) ; Statement: $r54 = <java.lang.Boolean: java.lang.Boolean FALSE> 
(declare-const var736!22 var1673)
(assert (not (= var736!22 null-var1673)))
(assert (= (apiBuiltinEnabled/-2041385216 var736!22) var152)) ; Statement: r0.<freemarker.core.Configurable: java.lang.Boolean apiBuiltinEnabled> = $r54 
(define-const var661 var3881 (properties/-2041385216 var736!22)) ; Statement: $r56 = r0.<freemarker.core.Configurable: java.util.Properties properties> 
(define-const var3022 var3373 (apiBuiltinEnabled/-2041385216 var736!22)) ; Statement: $r55 = r0.<freemarker.core.Configurable: java.lang.Boolean apiBuiltinEnabled> 
(assert true)
(define-const var3622 String (toString/1090915316 var3022)) ; Statement: $r57 = virtualinvoke $r55.<java.lang.Boolean: java.lang.String toString()>() 
(assert true)
;(assert (setProperty/703705272 var661 "api_builtin_enabled" var3622)) ; Statement: virtualinvoke $r56.<java.util.Properties: java.lang.Object setProperty(java.lang.String,java.lang.String)>("api_builtin_enabled", $r57) 

(declare-const var661!1 var3881)
(declare-const var1173 String)
(declare-const var3622!1 String)
(define-const var2894 Bool (var3294_getDefaultLogTemplateExceptions/1166774473 var3828!1)) ; Statement: $z1 = staticinvoke <freemarker.template._TemplateAPI: boolean getDefaultLogTemplateExceptions(freemarker.template.Version)>(r1) 
(define-const var2240 var3373 (var3373_valueOf/1602327315 var2894)) ; Statement: $r58 = staticinvoke <java.lang.Boolean: java.lang.Boolean valueOf(boolean)>($z1) 
(declare-const var736!23 var1673)
(assert (not (= var736!23 null-var1673)))
(assert (= (logTemplateExceptions/-2041385216 var736!23) var2240)) ; Statement: r0.<freemarker.core.Configurable: java.lang.Boolean logTemplateExceptions> = $r58 
(define-const var1650 var3881 (properties/-2041385216 var736!23)) ; Statement: $r60 = r0.<freemarker.core.Configurable: java.util.Properties properties> 
(define-const var1909 var3373 (logTemplateExceptions/-2041385216 var736!23)) ; Statement: $r59 = r0.<freemarker.core.Configurable: java.lang.Boolean logTemplateExceptions> 
(assert true)
(define-const var1183 String (toString/1090915316 var1909)) ; Statement: $r61 = virtualinvoke $r59.<java.lang.Boolean: java.lang.String toString()>() 
(assert true)
;(assert (setProperty/703705272 var1650 "log_template_exceptions" var1183)) ; Statement: virtualinvoke $r60.<java.util.Properties: java.lang.Object setProperty(java.lang.String,java.lang.String)>("log_template_exceptions", $r61) 

(declare-const var1650!1 var3881)
(declare-const var1110 String)
(declare-const var1183!1 String)
(assert true)
;(assert (setBooleanFormat/1350624059 var736!23 "true,false")) ; Statement: virtualinvoke r0.<freemarker.core.Configurable: void setBooleanFormat(java.lang.String)>("true,false") 

(declare-const var736!24 var1673)
(declare-const var1361 String)
(define-const var3714 var2378 var2378-init) ; Statement: $r62 = new java.util.HashMap 
(assert true)
;(assert (<init>/-201242697 var3714)) ; Statement: specialinvoke $r62.<java.util.HashMap: void <init>()>() 

(declare-const var3714!1 var2378)
(declare-const var736!25 var1673)
(assert (not (= var736!25 null-var1673)))
(assert (= (customAttributes/-2041385216 var736!25) var3714!1)) ; Statement: r0.<freemarker.core.Configurable: java.util.HashMap customAttributes> = $r62 
(define-const var1505 var2104 var2808_emptyMap/401053835) ; Statement: $r63 = staticinvoke <java.util.Collections: java.util.Map emptyMap()>() 
(declare-const var736!26 var1673)
(assert (not (= var736!26 null-var1673)))
(assert (= (customDateFormats/-2041385216 var736!26) var1505)) ; Statement: r0.<freemarker.core.Configurable: java.util.Map customDateFormats> = $r63 
(define-const var986 var2104 var2808_emptyMap/401053835) ; Statement: $r64 = staticinvoke <java.util.Collections: java.util.Map emptyMap()>() 
(declare-const var736!27 var1673)
(assert (not (= var736!27 null-var1673)))
(assert (= (customNumberFormats/-2041385216 var736!27) var986)) ; Statement: r0.<freemarker.core.Configurable: java.util.Map customNumberFormats> = $r64 
(define-const var1754 var3373 (var3373_valueOf/1602327315 (ite (= 1 0) true false))) ; Statement: $r65 = staticinvoke <java.lang.Boolean: java.lang.Boolean valueOf(boolean)>(0) 
(declare-const var736!28 var1673)
(assert (not (= var736!28 null-var1673)))
(assert (= (lazyImports/-2041385216 var736!28) var1754)) ; Statement: r0.<freemarker.core.Configurable: java.lang.Boolean lazyImports> = $r65 
(declare-const var736!29 var1673)
(assert (not (= var736!29 null-var1673)))
(assert (= (lazyAutoImportsSet/-2041385216 var736!29) (ite (= 1 1) true false))) ; Statement: r0.<freemarker.core.Configurable: boolean lazyAutoImportsSet> = 1 
(assert true)
;(assert (initAutoImportsMap/1092156486 var736!29)) ; Statement: specialinvoke r0.<freemarker.core.Configurable: void initAutoImportsMap()>() 

(declare-const var736!30 var1673)
(assert true)
;(assert (initAutoIncludesList/2015365547 var736!30)) ; Statement: specialinvoke r0.<freemarker.core.Configurable: void initAutoIncludesList()>() 

(declare-const var736!31 var1673)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {<init>/-279557996=([java.lang.Object], void), cast-from-var1673-to-var935=([freemarker.core.Configurable], java.lang.Object), var3294_checkVersionNotNullAndSupported/-863992419=([freemarker.template.Version], void), parent/-2041385216=([freemarker.core.Configurable], freemarker.core.Configurable), var3881-init=([], java.util.Properties), <init>/964458484=([java.util.Properties], void), properties/-2041385216=([freemarker.core.Configurable], java.util.Properties), var3294_getDefaultLocale/-1915824735=([], java.util.Locale), locale/-2041385216=([freemarker.core.Configurable], java.util.Locale), toString/207920178=([java.util.Locale], java.lang.String), setProperty/703705272=([java.util.Properties, java.lang.String, java.lang.String], java.lang.Object), var3294_getDefaultTimeZone/-1940672319=([], java.util.TimeZone), timeZone/-2041385216=([freemarker.core.Configurable], java.util.TimeZone), getID/-1323510388=([java.util.TimeZone], java.lang.String), sqlDataAndTimeTimeZone/-2041385216=([freemarker.core.Configurable], java.util.TimeZone), String_valueOf/-333372740=([java.lang.Object], java.lang.String), cast-from-var3408-to-var935=([java.util.TimeZone], java.lang.Object), numberFormat/-2041385216=([freemarker.core.Configurable], java.lang.String), timeFormat/-2041385216=([freemarker.core.Configurable], java.lang.String), dateFormat/-2041385216=([freemarker.core.Configurable], java.lang.String), dateTimeFormat/-2041385216=([freemarker.core.Configurable], java.lang.String), var3294_getDefaultCFormat/-172649748=([freemarker.template.Version], freemarker.core.CFormat), cFormat/-2041385216=([freemarker.core.Configurable], freemarker.core.CFormat), Int_valueOf/-1371140006=([int], java.lang.Integer), classicCompatible/-2041385216=([freemarker.core.Configurable], java.lang.Integer), toString/483301002=([java.lang.Integer], java.lang.String), var3294_getDefaultTemplateExceptionHandler/-225037975=([freemarker.template.Version], freemarker.template.TemplateExceptionHandler), templateExceptionHandler/-2041385216=([freemarker.core.Configurable], freemarker.template.TemplateExceptionHandler), getClass/1258963082=([java.lang.Object], java.lang.Class), cast-from-var694-to-var935=([freemarker.template.TemplateExceptionHandler], java.lang.Object), getName/-1958580599=([java.lang.Class], java.lang.String), var3294_getDefaultWrapUncheckedExceptions/208528687=([freemarker.template.Version], boolean), var3373_valueOf/1602327315=([boolean], java.lang.Boolean), wrapUncheckedExceptions/-2041385216=([freemarker.core.Configurable], java.lang.Boolean), var3294_getDefaultAttemptExceptionReporter/155384489=([freemarker.template.Version], freemarker.template.AttemptExceptionReporter), attemptExceptionReporter/-2041385216=([freemarker.core.Configurable], freemarker.template.AttemptExceptionReporter), cast-from-var2898-to-var1499=([freemarker.core.ArithmeticEngine$BigDecimalEngine], freemarker.core.ArithmeticEngine), arithmeticEngine/-2041385216=([freemarker.core.Configurable], freemarker.core.ArithmeticEngine), cast-from-var1499-to-var935=([freemarker.core.ArithmeticEngine], java.lang.Object), var2608_getDefaultObjectWrapper/529201078=([freemarker.template.Version], freemarker.template.ObjectWrapper), objectWrapper/-2041385216=([freemarker.core.Configurable], freemarker.template.ObjectWrapper), autoFlush/-2041385216=([freemarker.core.Configurable], java.lang.Boolean), toString/1090915316=([java.lang.Boolean], java.lang.String), newBuiltinClassResolver/-2041385216=([freemarker.core.Configurable], freemarker.core.TemplateClassResolver), cast-from-var2824-to-var935=([freemarker.core.TemplateClassResolver], java.lang.Object), cast-from-var2633-to-var113=([freemarker.core.DefaultTruncateBuiltinAlgorithm], freemarker.core.TruncateBuiltinAlgorithm), truncateBuiltinAlgorithm/-2041385216=([freemarker.core.Configurable], freemarker.core.TruncateBuiltinAlgorithm), showErrorTips/-2041385216=([freemarker.core.Configurable], java.lang.Boolean), apiBuiltinEnabled/-2041385216=([freemarker.core.Configurable], java.lang.Boolean), var3294_getDefaultLogTemplateExceptions/1166774473=([freemarker.template.Version], boolean), logTemplateExceptions/-2041385216=([freemarker.core.Configurable], java.lang.Boolean), setBooleanFormat/1350624059=([freemarker.core.Configurable, java.lang.String], void), var2378-init=([], java.util.HashMap), <init>/-201242697=([java.util.HashMap], void), customAttributes/-2041385216=([freemarker.core.Configurable], java.util.HashMap), var2808_emptyMap/401053835=([], java.util.Map), customDateFormats/-2041385216=([freemarker.core.Configurable], java.util.Map), customNumberFormats/-2041385216=([freemarker.core.Configurable], java.util.Map), lazyImports/-2041385216=([freemarker.core.Configurable], java.lang.Boolean), lazyAutoImportsSet/-2041385216=([freemarker.core.Configurable], boolean), initAutoImportsMap/1092156486=([freemarker.core.Configurable], void), initAutoIncludesList/2015365547=([freemarker.core.Configurable], void)}
; {var1673=freemarker.core.Configurable, var736=r0, var2156=freemarker.template.Version, var3828=r1, var935=java.lang.Object, var3294=freemarker.template._TemplateAPI, var3881=java.util.Properties, var381=$r2, var3742=java.util.Locale, var2143=$r3, var3748=$r5, var3351=$r4, var2908=$r6, var3435="locale", var3408=java.util.TimeZone, var1121=$r7, var752=$r9, var868=$r8, var3018=$r10, var2273="time_zone", var2715=$r12, var997=$r11, var663=$r13, var1917="sql_date_and_time_time_zone", var2160=$r15, var3955=$r14, var1035="number_format", var3112=$r17, var3119=$r16, var349="time_format", var1022=$r19, var3193=$r18, var3067="date_format", var3992=$r21, var2712=$r20, var3840="datetime_format", var1178=freemarker.core.CFormat, var245=$r22, var1274=$r23, var3829=$r25, var1072=$r24, var2878=$r26, var2305="classic_compatible", var694=freemarker.template.TemplateExceptionHandler, var726=$r27, var2740=$r29, var414=$r28, var1862=$r30, var1995=$r31, var2912="template_exception_handler", var2199=$z0, var3373=java.lang.Boolean, var102=$r32, var3615=freemarker.template.AttemptExceptionReporter, var2231=$r33, var2898=freemarker.core.ArithmeticEngine$BigDecimalEngine, var1499=freemarker.core.ArithmeticEngine, var1841=$r34, var240=$r36, var1516=$r35, var2655=$r37, var1458=$r38, var1456="arithmetic_engine", var3628=freemarker.template.ObjectWrapper, var2608=freemarker.template.Configuration, var1517=$r39, var1879=$r40, var2341=$r42, var2536=$r41, var3545=$r43, var2224="auto_flush", var2824=freemarker.core.TemplateClassResolver, var2144=$r44, var782=$r46, var2406=$r45, var358=$r47, var3291=$r48, var3661="new_builtin_class_resolver", var2633=freemarker.core.DefaultTruncateBuiltinAlgorithm, var1220=$r49, var113=freemarker.core.TruncateBuiltinAlgorithm, var254=$r50, var1522=$r52, var1009=$r51, var3773=$r53, var3991="show_error_tips", var152=$r54, var661=$r56, var3022=$r55, var3622=$r57, var1173="api_builtin_enabled", var2894=$z1, var2240=$r58, var1650=$r60, var1909=$r59, var1183=$r61, var1110="log_template_exceptions", var1361="true,false", var2378=java.util.HashMap, var3714=$r62, var2104=java.util.Map, var2808=java.util.Collections, var1505=$r63, var986=$r64, var1754=$r65}
; {freemarker.core.Configurable=var1673, r0=var736, freemarker.template.Version=var2156, r1=var3828, java.lang.Object=var935, freemarker.template._TemplateAPI=var3294, java.util.Properties=var3881, $r2=var381, java.util.Locale=var3742, $r3=var2143, $r5=var3748, $r4=var3351, $r6=var2908, "locale"=var3435, java.util.TimeZone=var3408, $r7=var1121, $r9=var752, $r8=var868, $r10=var3018, "time_zone"=var2273, $r12=var2715, $r11=var997, $r13=var663, "sql_date_and_time_time_zone"=var1917, $r15=var2160, $r14=var3955, "number_format"=var1035, $r17=var3112, $r16=var3119, "time_format"=var349, $r19=var1022, $r18=var3193, "date_format"=var3067, $r21=var3992, $r20=var2712, "datetime_format"=var3840, freemarker.core.CFormat=var1178, $r22=var245, $r23=var1274, $r25=var3829, $r24=var1072, $r26=var2878, "classic_compatible"=var2305, freemarker.template.TemplateExceptionHandler=var694, $r27=var726, $r29=var2740, $r28=var414, $r30=var1862, $r31=var1995, "template_exception_handler"=var2912, $z0=var2199, java.lang.Boolean=var3373, $r32=var102, freemarker.template.AttemptExceptionReporter=var3615, $r33=var2231, freemarker.core.ArithmeticEngine$BigDecimalEngine=var2898, freemarker.core.ArithmeticEngine=var1499, $r34=var1841, $r36=var240, $r35=var1516, $r37=var2655, $r38=var1458, "arithmetic_engine"=var1456, freemarker.template.ObjectWrapper=var3628, freemarker.template.Configuration=var2608, $r39=var1517, $r40=var1879, $r42=var2341, $r41=var2536, $r43=var3545, "auto_flush"=var2224, freemarker.core.TemplateClassResolver=var2824, $r44=var2144, $r46=var782, $r45=var2406, $r47=var358, $r48=var3291, "new_builtin_class_resolver"=var3661, freemarker.core.DefaultTruncateBuiltinAlgorithm=var2633, $r49=var1220, freemarker.core.TruncateBuiltinAlgorithm=var113, $r50=var254, $r52=var1522, $r51=var1009, $r53=var3773, "show_error_tips"=var3991, $r54=var152, $r56=var661, $r55=var3022, $r57=var3622, "api_builtin_enabled"=var1173, $z1=var2894, $r58=var2240, $r60=var1650, $r59=var1909, $r61=var1183, "log_template_exceptions"=var1110, "true,false"=var1361, java.util.HashMap=var2378, $r62=var3714, java.util.Map=var2104, java.util.Collections=var2808, $r63=var1505, $r64=var986, $r65=var1754}
;seq <java.util.Locale: java.lang.String toString()>;	<java.lang.String: java.lang.String valueOf(java.lang.Object)>;	<java.lang.Integer: java.lang.String toString()>;	<java.lang.Boolean: java.lang.String toString()>;	<java.lang.Boolean: java.lang.String toString()>;	<java.lang.Boolean: java.lang.String toString()>;	<java.lang.Boolean: java.lang.String toString()>
;cnt {"<java.lang.String: java.lang.String valueOf(java.lang.Object)>": 1}
;stmts r0 := @this: freemarker.core.Configurable;	r1 := @parameter0: freemarker.template.Version;	specialinvoke r0.<java.lang.Object: void <init>()>();	staticinvoke <freemarker.template._TemplateAPI: void checkVersionNotNullAndSupported(freemarker.template.Version)>(r1);	r0.<freemarker.core.Configurable: freemarker.core.Configurable parent> = null;	$r2 = new java.util.Properties;	specialinvoke $r2.<java.util.Properties: void <init>()>();	r0.<freemarker.core.Configurable: java.util.Properties properties> = $r2;	$r3 = staticinvoke <freemarker.template._TemplateAPI: java.util.Locale getDefaultLocale()>();	r0.<freemarker.core.Configurable: java.util.Locale locale> = $r3;	$r5 = r0.<freemarker.core.Configurable: java.util.Properties properties>;	$r4 = r0.<freemarker.core.Configurable: java.util.Locale locale>;	$r6 = virtualinvoke $r4.<java.util.Locale: java.lang.String toString()>();	virtualinvoke $r5.<java.util.Properties: java.lang.Object setProperty(java.lang.String,java.lang.String)>("locale", $r6);	$r7 = staticinvoke <freemarker.template._TemplateAPI: java.util.TimeZone getDefaultTimeZone()>();	r0.<freemarker.core.Configurable: java.util.TimeZone timeZone> = $r7;	$r9 = r0.<freemarker.core.Configurable: java.util.Properties properties>;	$r8 = r0.<freemarker.core.Configurable: java.util.TimeZone timeZone>;	$r10 = virtualinvoke $r8.<java.util.TimeZone: java.lang.String getID()>();	virtualinvoke $r9.<java.util.Properties: java.lang.Object setProperty(java.lang.String,java.lang.String)>("time_zone", $r10);	r0.<freemarker.core.Configurable: java.util.TimeZone sqlDataAndTimeTimeZone> = null;	$r12 = r0.<freemarker.core.Configurable: java.util.Properties properties>;	$r11 = r0.<freemarker.core.Configurable: java.util.TimeZone sqlDataAndTimeTimeZone>;	$r13 = staticinvoke <java.lang.String: java.lang.String valueOf(java.lang.Object)>($r11);	virtualinvoke $r12.<java.util.Properties: java.lang.Object setProperty(java.lang.String,java.lang.String)>("sql_date_and_time_time_zone", $r13);	r0.<freemarker.core.Configurable: java.lang.String numberFormat> = "number";	$r15 = r0.<freemarker.core.Configurable: java.util.Properties properties>;	$r14 = r0.<freemarker.core.Configurable: java.lang.String numberFormat>;	virtualinvoke $r15.<java.util.Properties: java.lang.Object setProperty(java.lang.String,java.lang.String)>("number_format", $r14);	r0.<freemarker.core.Configurable: java.lang.String timeFormat> = "";	$r17 = r0.<freemarker.core.Configurable: java.util.Properties properties>;	$r16 = r0.<freemarker.core.Configurable: java.lang.String timeFormat>;	virtualinvoke $r17.<java.util.Properties: java.lang.Object setProperty(java.lang.String,java.lang.String)>("time_format", $r16);	r0.<freemarker.core.Configurable: java.lang.String dateFormat> = "";	$r19 = r0.<freemarker.core.Configurable: java.util.Properties properties>;	$r18 = r0.<freemarker.core.Configurable: java.lang.String dateFormat>;	virtualinvoke $r19.<java.util.Properties: java.lang.Object setProperty(java.lang.String,java.lang.String)>("date_format", $r18);	r0.<freemarker.core.Configurable: java.lang.String dateTimeFormat> = "";	$r21 = r0.<freemarker.core.Configurable: java.util.Properties properties>;	$r20 = r0.<freemarker.core.Configurable: java.lang.String dateTimeFormat>;	virtualinvoke $r21.<java.util.Properties: java.lang.Object setProperty(java.lang.String,java.lang.String)>("datetime_format", $r20);	$r22 = staticinvoke <freemarker.template._TemplateAPI: freemarker.core.CFormat getDefaultCFormat(freemarker.template.Version)>(r1);	r0.<freemarker.core.Configurable: freemarker.core.CFormat cFormat> = $r22;	$r23 = staticinvoke <java.lang.Integer: java.lang.Integer valueOf(int)>(0);	r0.<freemarker.core.Configurable: java.lang.Integer classicCompatible> = $r23;	$r25 = r0.<freemarker.core.Configurable: java.util.Properties properties>;	$r24 = r0.<freemarker.core.Configurable: java.lang.Integer classicCompatible>;	$r26 = virtualinvoke $r24.<java.lang.Integer: java.lang.String toString()>();	virtualinvoke $r25.<java.util.Properties: java.lang.Object setProperty(java.lang.String,java.lang.String)>("classic_compatible", $r26);	$r27 = staticinvoke <freemarker.template._TemplateAPI: freemarker.template.TemplateExceptionHandler getDefaultTemplateExceptionHandler(freemarker.template.Version)>(r1);	r0.<freemarker.core.Configurable: freemarker.template.TemplateExceptionHandler templateExceptionHandler> = $r27;	$r29 = r0.<freemarker.core.Configurable: java.util.Properties properties>;	$r28 = r0.<freemarker.core.Configurable: freemarker.template.TemplateExceptionHandler templateExceptionHandler>;	$r30 = virtualinvoke $r28.<java.lang.Object: java.lang.Class getClass()>();	$r31 = virtualinvoke $r30.<java.lang.Class: java.lang.String getName()>();	virtualinvoke $r29.<java.util.Properties: java.lang.Object setProperty(java.lang.String,java.lang.String)>("template_exception_handler", $r31);	$z0 = staticinvoke <freemarker.template._TemplateAPI: boolean getDefaultWrapUncheckedExceptions(freemarker.template.Version)>(r1);	$r32 = staticinvoke <java.lang.Boolean: java.lang.Boolean valueOf(boolean)>($z0);	r0.<freemarker.core.Configurable: java.lang.Boolean wrapUncheckedExceptions> = $r32;	$r33 = staticinvoke <freemarker.template._TemplateAPI: freemarker.template.AttemptExceptionReporter getDefaultAttemptExceptionReporter(freemarker.template.Version)>(r1);	r0.<freemarker.core.Configurable: freemarker.template.AttemptExceptionReporter attemptExceptionReporter> = $r33;	$r34 = <freemarker.core.ArithmeticEngine: freemarker.core.ArithmeticEngine$BigDecimalEngine BIGDECIMAL_ENGINE>;	r0.<freemarker.core.Configurable: freemarker.core.ArithmeticEngine arithmeticEngine> = $r34;	$r36 = r0.<freemarker.core.Configurable: java.util.Properties properties>;	$r35 = r0.<freemarker.core.Configurable: freemarker.core.ArithmeticEngine arithmeticEngine>;	$r37 = virtualinvoke $r35.<java.lang.Object: java.lang.Class getClass()>();	$r38 = virtualinvoke $r37.<java.lang.Class: java.lang.String getName()>();	virtualinvoke $r36.<java.util.Properties: java.lang.Object setProperty(java.lang.String,java.lang.String)>("arithmetic_engine", $r38);	$r39 = staticinvoke <freemarker.template.Configuration: freemarker.template.ObjectWrapper getDefaultObjectWrapper(freemarker.template.Version)>(r1);	r0.<freemarker.core.Configurable: freemarker.template.ObjectWrapper objectWrapper> = $r39;	$r40 = <java.lang.Boolean: java.lang.Boolean TRUE>;	r0.<freemarker.core.Configurable: java.lang.Boolean autoFlush> = $r40;	$r42 = r0.<freemarker.core.Configurable: java.util.Properties properties>;	$r41 = r0.<freemarker.core.Configurable: java.lang.Boolean autoFlush>;	$r43 = virtualinvoke $r41.<java.lang.Boolean: java.lang.String toString()>();	virtualinvoke $r42.<java.util.Properties: java.lang.Object setProperty(java.lang.String,java.lang.String)>("auto_flush", $r43);	$r44 = <freemarker.core.TemplateClassResolver: freemarker.core.TemplateClassResolver UNRESTRICTED_RESOLVER>;	r0.<freemarker.core.Configurable: freemarker.core.TemplateClassResolver newBuiltinClassResolver> = $r44;	$r46 = r0.<freemarker.core.Configurable: java.util.Properties properties>;	$r45 = r0.<freemarker.core.Configurable: freemarker.core.TemplateClassResolver newBuiltinClassResolver>;	$r47 = virtualinvoke $r45.<java.lang.Object: java.lang.Class getClass()>();	$r48 = virtualinvoke $r47.<java.lang.Class: java.lang.String getName()>();	virtualinvoke $r46.<java.util.Properties: java.lang.Object setProperty(java.lang.String,java.lang.String)>("new_builtin_class_resolver", $r48);	$r49 = <freemarker.core.DefaultTruncateBuiltinAlgorithm: freemarker.core.DefaultTruncateBuiltinAlgorithm ASCII_INSTANCE>;	r0.<freemarker.core.Configurable: freemarker.core.TruncateBuiltinAlgorithm truncateBuiltinAlgorithm> = $r49;	$r50 = <java.lang.Boolean: java.lang.Boolean TRUE>;	r0.<freemarker.core.Configurable: java.lang.Boolean showErrorTips> = $r50;	$r52 = r0.<freemarker.core.Configurable: java.util.Properties properties>;	$r51 = r0.<freemarker.core.Configurable: java.lang.Boolean showErrorTips>;	$r53 = virtualinvoke $r51.<java.lang.Boolean: java.lang.String toString()>();	virtualinvoke $r52.<java.util.Properties: java.lang.Object setProperty(java.lang.String,java.lang.String)>("show_error_tips", $r53);	$r54 = <java.lang.Boolean: java.lang.Boolean FALSE>;	r0.<freemarker.core.Configurable: java.lang.Boolean apiBuiltinEnabled> = $r54;	$r56 = r0.<freemarker.core.Configurable: java.util.Properties properties>;	$r55 = r0.<freemarker.core.Configurable: java.lang.Boolean apiBuiltinEnabled>;	$r57 = virtualinvoke $r55.<java.lang.Boolean: java.lang.String toString()>();	virtualinvoke $r56.<java.util.Properties: java.lang.Object setProperty(java.lang.String,java.lang.String)>("api_builtin_enabled", $r57);	$z1 = staticinvoke <freemarker.template._TemplateAPI: boolean getDefaultLogTemplateExceptions(freemarker.template.Version)>(r1);	$r58 = staticinvoke <java.lang.Boolean: java.lang.Boolean valueOf(boolean)>($z1);	r0.<freemarker.core.Configurable: java.lang.Boolean logTemplateExceptions> = $r58;	$r60 = r0.<freemarker.core.Configurable: java.util.Properties properties>;	$r59 = r0.<freemarker.core.Configurable: java.lang.Boolean logTemplateExceptions>;	$r61 = virtualinvoke $r59.<java.lang.Boolean: java.lang.String toString()>();	virtualinvoke $r60.<java.util.Properties: java.lang.Object setProperty(java.lang.String,java.lang.String)>("log_template_exceptions", $r61);	virtualinvoke r0.<freemarker.core.Configurable: void setBooleanFormat(java.lang.String)>("true,false");	$r62 = new java.util.HashMap;	specialinvoke $r62.<java.util.HashMap: void <init>()>();	r0.<freemarker.core.Configurable: java.util.HashMap customAttributes> = $r62;	$r63 = staticinvoke <java.util.Collections: java.util.Map emptyMap()>();	r0.<freemarker.core.Configurable: java.util.Map customDateFormats> = $r63;	$r64 = staticinvoke <java.util.Collections: java.util.Map emptyMap()>();	r0.<freemarker.core.Configurable: java.util.Map customNumberFormats> = $r64;	$r65 = staticinvoke <java.lang.Boolean: java.lang.Boolean valueOf(boolean)>(0);	r0.<freemarker.core.Configurable: java.lang.Boolean lazyImports> = $r65;	r0.<freemarker.core.Configurable: boolean lazyAutoImportsSet> = 1;	specialinvoke r0.<freemarker.core.Configurable: void initAutoImportsMap()>();	specialinvoke r0.<freemarker.core.Configurable: void initAutoIncludesList()>();	return
;block_num 1