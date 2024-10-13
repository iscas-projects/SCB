(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var697 0)
(declare-sort var766 0)
(declare-sort var3996 0)
(declare-sort var2549 0)
(declare-sort var734 0)
(declare-sort var245 0)
(declare-sort var1359 0)
(declare-sort var1416 0)
(declare-sort var338 0)
(declare-sort var2640 0)
(declare-sort var2069 0)
(declare-sort var3909 0)
(declare-sort var2257 0)
(declare-sort var2745 0)
(declare-sort var1205 0)
(declare-sort var3046 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun <init>/1132792119 (var3996 var2549) void)
(declare-fun cast-from-var697-to-var3996 (var697) var3996)
(declare-fun var245-init () var245)
(declare-fun <init>/-201242697 (var245) void)
(declare-fun cast-from-var245-to-var1359 (var245) var1359)
(declare-fun tzNames/-580305909 (var697) var1359)
(declare-fun var1416_toLocale/455255440 (var766) var766)
(declare-fun locale/-580305909 (var697) var766)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun var338-init () var338)
(declare-fun var2069_access$600/1366746884 () var2640)
(declare-fun <init>/1802593091 (var338 var2640) void)
(declare-fun var3909_getInstance/2052282742 (var766) var3909)
(declare-fun getZoneStrings/-1822190447 (var3909) (Array Int (Array Int String)))
(declare-fun getLength-Arr-String-2 ((Array Int (Array Int String))) Int)
(declare-fun var2257_getAvailableIDs/-1200039018 () (Array Int String))
(declare-fun getLength-Arr-String-1 ((Array Int String)) Int)
(declare-fun var1205_bootstrap$/-1445299401 (String) var2745)
(declare-fun var3046_forEach/-1836413473 (var3046 var2745) void)
(declare-fun cast-from-var338-to-var3046 (var338) var3046)
(declare-fun createPattern/1592915889 (var3996 String) void)
(declare-const null-var697 var697)
(declare-const null-var766 var766)
(declare-const null-NullType var734)
(declare-const null-var2549 var2549)
(declare-const var1586 var697) ; Statement: r0 := @this: org.apache.commons.lang3.time.FastDateParser$TimeZoneStrategy 
(assert (not (= var1586 null-var697)))
(declare-const var3160 var766) ; Statement: r2 := @parameter0: java.util.Locale 
(assert (not (= var3160 null-var766)))
(assert true)
;(assert (<init>/1132792119 (cast-from-var697-to-var3996 var1586) null-var2549)) ; Statement: specialinvoke r0.<org.apache.commons.lang3.time.FastDateParser$PatternStrategy: void <init>(org.apache.commons.lang3.time.FastDateParser$1)>(null) 

(declare-const var1586!1 var697)
(declare-const var627 var734)
(define-const var3225 var245 var245-init) ; Statement: $r1 = new java.util.HashMap 
(assert true)
;(assert (<init>/-201242697 var3225)) ; Statement: specialinvoke $r1.<java.util.HashMap: void <init>()>() 

(declare-const var3225!1 var245)
(declare-const var1586!2 var697)
(assert (not (= var1586!2 null-var697)))
(assert (= (tzNames/-580305909 var1586!2) (cast-from-var245-to-var1359 var3225!1))) ; Statement: r0.<org.apache.commons.lang3.time.FastDateParser$TimeZoneStrategy: java.util.Map tzNames> = $r1 
(define-const var2519 var766 (var1416_toLocale/455255440 var3160)) ; Statement: $r3 = staticinvoke <org.apache.commons.lang3.LocaleUtils: java.util.Locale toLocale(java.util.Locale)>(r2) 
(declare-const var1586!3 var697)
(assert (not (= var1586!3 null-var697)))
(assert (= (locale/-580305909 var1586!3) var2519)) ; Statement: r0.<org.apache.commons.lang3.time.FastDateParser$TimeZoneStrategy: java.util.Locale locale> = $r3 
(define-const var888 String String-init) ; Statement: $r4 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var888)) ; Statement: specialinvoke $r4.<java.lang.StringBuilder: void <init>()>() 
(declare-const var888!1 String)
(assert (= var888!1 ""))
(assert true)
;(assert (append/672562846 var888!1 "((?iu)[+-]\u005cd{4}|GMT[+-]\u005cd{1,2}:\u005cd{2}")) ; Statement: virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("((?iu)[+-]\\d{4}|GMT[+-]\\d{1,2}:\\d{2}") 
(declare-const var888!2 String)
(assert (= var888!2 (str.++ var888!1 "((?iu)[+-]\u005cd{4}|GMT[+-]\u005cd{1,2}:\u005cd{2}")))
(define-const var3979 var338 var338-init) ; Statement: $r5 = new java.util.TreeSet 
(define-const var92 var2640 var2069_access$600/1366746884) ; Statement: $r6 = staticinvoke <org.apache.commons.lang3.time.FastDateParser: java.util.Comparator access$600()>() 
(assert true)
;(assert (<init>/1802593091 var3979 var92)) ; Statement: specialinvoke $r5.<java.util.TreeSet: void <init>(java.util.Comparator)>($r6) 

(declare-const var3979!1 var338)
(declare-const var92!1 var2640)
(define-const var2274 var3909 (var3909_getInstance/2052282742 var3160)) ; Statement: $r7 = staticinvoke <java.text.DateFormatSymbols: java.text.DateFormatSymbols getInstance(java.util.Locale)>(r2) 
(assert true)
(define-const var2283 (Array Int (Array Int String)) (getZoneStrings/-1822190447 var2274)) ; Statement: r8 = virtualinvoke $r7.<java.text.DateFormatSymbols: java.lang.String[][] getZoneStrings()>() 
(define-const var1710 Int (getLength-Arr-String-2 var2283)) ; Statement: i1 = lengthof r8 
(define-const var3024 Int 0) ; Statement: i2 = 0 
(assert true) ; Non Conditional
 ; Statement: if i2 >= i1 goto r21 = staticinvoke <java.util.TimeZone: java.lang.String[] getAvailableIDs()>() 
(assert (>= var3024 var1710)) ; Cond: i2 >= i1 
(define-const var272 (Array Int String) var2257_getAvailableIDs/-1200039018) ; Statement: r21 = staticinvoke <java.util.TimeZone: java.lang.String[] getAvailableIDs()>() 
(define-const var2969 Int (getLength-Arr-String-1 var272)) ; Statement: i4 = lengthof r21 
(define-const var864 Int 0) ; Statement: i5 = 0 
(assert true) ; Non Conditional
 ; Statement: if i5 >= i4 goto $r9 = staticinvoke <org.apache.commons.lang3.time.FastDateParser$TimeZoneStrategy$lambda_new_0__266: java.util.function.Consumer bootstrap$(java.lang.StringBuilder)>($r4) 
(assert (>= var864 var2969)) ; Cond: i5 >= i4 
(define-const var2233 var2745 (var1205_bootstrap$/-1445299401 var888!2)) ; Statement: $r9 = staticinvoke <org.apache.commons.lang3.time.FastDateParser$TimeZoneStrategy$lambda_new_0__266: java.util.function.Consumer bootstrap$(java.lang.StringBuilder)>($r4) 
;(assert (var3046_forEach/-1836413473 (cast-from-var338-to-var3046 var3979!1) var2233)) ; Statement: interfaceinvoke $r5.<java.util.Set: void forEach(java.util.function.Consumer)>($r9) 

(declare-const var3979!2 var338)
(declare-const var2233!1 var2745)
(assert true)
;(assert (append/672562846 var888!2 ")")) ; Statement: virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(")") 
(declare-const var888!3 String)
(assert (= var888!3 (str.++ var888!2 ")")))
(assert true)
;(assert (createPattern/1592915889 (cast-from-var697-to-var3996 var1586!3) var888!3)) ; Statement: virtualinvoke r0.<org.apache.commons.lang3.time.FastDateParser$TimeZoneStrategy: void createPattern(java.lang.StringBuilder)>($r4) 

(declare-const var1586!4 var697)
(declare-const var888!4 String)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {<init>/1132792119=([org.apache.commons.lang3.time.FastDateParser$PatternStrategy, org.apache.commons.lang3.time.FastDateParser$1], void), cast-from-var697-to-var3996=([org.apache.commons.lang3.time.FastDateParser$TimeZoneStrategy], org.apache.commons.lang3.time.FastDateParser$PatternStrategy), var245-init=([], java.util.HashMap), <init>/-201242697=([java.util.HashMap], void), cast-from-var245-to-var1359=([java.util.HashMap], java.util.Map), tzNames/-580305909=([org.apache.commons.lang3.time.FastDateParser$TimeZoneStrategy], java.util.Map), var1416_toLocale/455255440=([java.util.Locale], java.util.Locale), locale/-580305909=([org.apache.commons.lang3.time.FastDateParser$TimeZoneStrategy], java.util.Locale), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), var338-init=([], java.util.TreeSet), var2069_access$600/1366746884=([], java.util.Comparator), <init>/1802593091=([java.util.TreeSet, java.util.Comparator], void), var3909_getInstance/2052282742=([java.util.Locale], java.text.DateFormatSymbols), getZoneStrings/-1822190447=([java.text.DateFormatSymbols], java.lang.String[][]), getLength-Arr-String-2=([java.lang.String[][]], int), var2257_getAvailableIDs/-1200039018=([], java.lang.String[]), getLength-Arr-String-1=([java.lang.String[]], int), var1205_bootstrap$/-1445299401=([java.lang.StringBuilder], java.util.function.Consumer), var3046_forEach/-1836413473=([java.lang.Iterable, java.util.function.Consumer], void), cast-from-var338-to-var3046=([java.util.TreeSet], java.lang.Iterable), createPattern/1592915889=([org.apache.commons.lang3.time.FastDateParser$PatternStrategy, java.lang.StringBuilder], void)}
; {var697=org.apache.commons.lang3.time.FastDateParser$TimeZoneStrategy, var1586=r0, var766=java.util.Locale, var3160=r2, var3996=org.apache.commons.lang3.time.FastDateParser$PatternStrategy, var2549=org.apache.commons.lang3.time.FastDateParser$1, var627=null, var734=null_type, var245=java.util.HashMap, var3225=$r1, var1359=java.util.Map, var1416=org.apache.commons.lang3.LocaleUtils, var2519=$r3, var888=$r4, var338=java.util.TreeSet, var3979=$r5, var2640=java.util.Comparator, var2069=org.apache.commons.lang3.time.FastDateParser, var92=$r6, var3909=java.text.DateFormatSymbols, var2274=$r7, var2283=r8, var1710=i1, var3024=i2, var2257=java.util.TimeZone, var272=r21, var2969=i4, var864=i5, var2745=java.util.function.Consumer, var1205=org.apache.commons.lang3.time.FastDateParser$TimeZoneStrategy$lambda_new_0__266, var2233=$r9, var3046=java.lang.Iterable}
; {org.apache.commons.lang3.time.FastDateParser$TimeZoneStrategy=var697, r0=var1586, java.util.Locale=var766, r2=var3160, org.apache.commons.lang3.time.FastDateParser$PatternStrategy=var3996, org.apache.commons.lang3.time.FastDateParser$1=var2549, null=var627, null_type=var734, java.util.HashMap=var245, $r1=var3225, java.util.Map=var1359, org.apache.commons.lang3.LocaleUtils=var1416, $r3=var2519, $r4=var888, java.util.TreeSet=var338, $r5=var3979, java.util.Comparator=var2640, org.apache.commons.lang3.time.FastDateParser=var2069, $r6=var92, java.text.DateFormatSymbols=var3909, $r7=var2274, r8=var2283, i1=var1710, i2=var3024, java.util.TimeZone=var2257, r21=var272, i4=var2969, i5=var864, java.util.function.Consumer=var2745, org.apache.commons.lang3.time.FastDateParser$TimeZoneStrategy$lambda_new_0__266=var1205, $r9=var2233, java.lang.Iterable=var3046}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2}
;stmts r0 := @this: org.apache.commons.lang3.time.FastDateParser$TimeZoneStrategy;	r2 := @parameter0: java.util.Locale;	specialinvoke r0.<org.apache.commons.lang3.time.FastDateParser$PatternStrategy: void <init>(org.apache.commons.lang3.time.FastDateParser$1)>(null);	$r1 = new java.util.HashMap;	specialinvoke $r1.<java.util.HashMap: void <init>()>();	r0.<org.apache.commons.lang3.time.FastDateParser$TimeZoneStrategy: java.util.Map tzNames> = $r1;	$r3 = staticinvoke <org.apache.commons.lang3.LocaleUtils: java.util.Locale toLocale(java.util.Locale)>(r2);	r0.<org.apache.commons.lang3.time.FastDateParser$TimeZoneStrategy: java.util.Locale locale> = $r3;	$r4 = new java.lang.StringBuilder;	specialinvoke $r4.<java.lang.StringBuilder: void <init>()>();	virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("((?iu)[+-]\\d{4}|GMT[+-]\\d{1,2}:\\d{2}");	$r5 = new java.util.TreeSet;	$r6 = staticinvoke <org.apache.commons.lang3.time.FastDateParser: java.util.Comparator access$600()>();	specialinvoke $r5.<java.util.TreeSet: void <init>(java.util.Comparator)>($r6);	$r7 = staticinvoke <java.text.DateFormatSymbols: java.text.DateFormatSymbols getInstance(java.util.Locale)>(r2);	r8 = virtualinvoke $r7.<java.text.DateFormatSymbols: java.lang.String[][] getZoneStrings()>();	i1 = lengthof r8;	i2 = 0;	if i2 >= i1 goto r21 = staticinvoke <java.util.TimeZone: java.lang.String[] getAvailableIDs()>();	r21 = staticinvoke <java.util.TimeZone: java.lang.String[] getAvailableIDs()>();	i4 = lengthof r21;	i5 = 0;	if i5 >= i4 goto $r9 = staticinvoke <org.apache.commons.lang3.time.FastDateParser$TimeZoneStrategy$lambda_new_0__266: java.util.function.Consumer bootstrap$(java.lang.StringBuilder)>($r4);	$r9 = staticinvoke <org.apache.commons.lang3.time.FastDateParser$TimeZoneStrategy$lambda_new_0__266: java.util.function.Consumer bootstrap$(java.lang.StringBuilder)>($r4);	interfaceinvoke $r5.<java.util.Set: void forEach(java.util.function.Consumer)>($r9);	virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(")");	virtualinvoke r0.<org.apache.commons.lang3.time.FastDateParser$TimeZoneStrategy: void createPattern(java.lang.StringBuilder)>($r4);	return
;block_num 5