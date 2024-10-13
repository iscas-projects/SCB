(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3418 0)
(declare-sort var1926 0)
(declare-sort var3530 0)
(declare-sort var3993 0)
(declare-sort var2170 0)
(declare-sort var3126 0)
(declare-sort var2362 0)
(declare-sort var3778 0)
(declare-sort var878 0)
(declare-sort var2722 0)
(declare-sort var31 0)
(declare-sort var2249 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun <init>/959096143 (var3530 var3993) void)
(declare-fun cast-from-var3418-to-var3530 (var3418) var3530)
(declare-fun var3126-init () var3126)
(declare-fun <init>/-201242697 (var3126) void)
(declare-fun cast-from-var3126-to-var2362 (var3126) var2362)
(declare-fun tzNames/-1573264985 (var3418) var2362)
(declare-fun locale/-1573264985 (var3418) var1926)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun var3778-init () var3778)
(declare-fun var2722_access$700/-234580593 () var878)
(declare-fun <init>/1802593091 (var3778 var878) void)
(declare-fun var31_getInstance/2052282742 (var1926) var31)
(declare-fun getZoneStrings/-1822190447 (var31) (Array Int (Array Int String)))
(declare-fun getLength-Arr-String-2 ((Array Int (Array Int String))) Int)
(declare-fun var2249_iterator/1911472585 (var2249) Iterator)
(declare-fun cast-from-var3778-to-var2249 (var3778) var2249)
(declare-fun Iterator_hasNext/-1669924200 (Iterator) Bool)
(declare-fun createPattern/-378143075 (var3530 String) void)
(declare-const null-var3418 var3418)
(declare-const null-var1926 var1926)
(declare-const null-NullType var2170)
(declare-const null-var3993 var3993)
(declare-const var1930 var3418) ; Statement: r0 := @this: cn.hutool.core.date.format.FastDateParser$TimeZoneStrategy 
(assert (not (= var1930 null-var3418)))
(declare-const var1559 var1926) ; Statement: r2 := @parameter0: java.util.Locale 
(assert (not (= var1559 null-var1926)))
(assert true)
;(assert (<init>/959096143 (cast-from-var3418-to-var3530 var1930) null-var3993)) ; Statement: specialinvoke r0.<cn.hutool.core.date.format.FastDateParser$PatternStrategy: void <init>(cn.hutool.core.date.format.FastDateParser$1)>(null) 

(declare-const var1930!1 var3418)
(declare-const var3115 var2170)
(define-const var2558 var3126 var3126-init) ; Statement: $r1 = new java.util.HashMap 
(assert true)
;(assert (<init>/-201242697 var2558)) ; Statement: specialinvoke $r1.<java.util.HashMap: void <init>()>() 

(declare-const var2558!1 var3126)
(declare-const var1930!2 var3418)
(assert (not (= var1930!2 null-var3418)))
(assert (= (tzNames/-1573264985 var1930!2) (cast-from-var3126-to-var2362 var2558!1))) ; Statement: r0.<cn.hutool.core.date.format.FastDateParser$TimeZoneStrategy: java.util.Map tzNames> = $r1 
(declare-const var1930!3 var3418)
(assert (not (= var1930!3 null-var3418)))
(assert (= (locale/-1573264985 var1930!3) var1559)) ; Statement: r0.<cn.hutool.core.date.format.FastDateParser$TimeZoneStrategy: java.util.Locale locale> = r2 
(define-const var3845 String String-init) ; Statement: $r3 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3845)) ; Statement: specialinvoke $r3.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3845!1 String)
(assert (= var3845!1 ""))
(assert true)
;(assert (append/672562846 var3845!1 "((?iu)[+-]\u005cd{4}|[+-]\u005cd{2}:\u005cd{2}|GMT[+-]\u005cd{1,2}:\u005cd{2}")) ; Statement: virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("((?iu)[+-]\\d{4}|[+-]\\d{2}:\\d{2}|GMT[+-]\\d{1,2}:\\d{2}") 
(declare-const var3845!2 String)
(assert (= var3845!2 (str.++ var3845!1 "((?iu)[+-]\u005cd{4}|[+-]\u005cd{2}:\u005cd{2}|GMT[+-]\u005cd{1,2}:\u005cd{2}")))
(define-const var2339 var3778 var3778-init) ; Statement: $r4 = new java.util.TreeSet 
(define-const var1289 var878 var2722_access$700/-234580593) ; Statement: $r5 = staticinvoke <cn.hutool.core.date.format.FastDateParser: java.util.Comparator access$700()>() 
(assert true)
;(assert (<init>/1802593091 var2339 var1289)) ; Statement: specialinvoke $r4.<java.util.TreeSet: void <init>(java.util.Comparator)>($r5) 

(declare-const var2339!1 var3778)
(declare-const var1289!1 var878)
(define-const var253 var31 (var31_getInstance/2052282742 var1559)) ; Statement: $r6 = staticinvoke <java.text.DateFormatSymbols: java.text.DateFormatSymbols getInstance(java.util.Locale)>(r2) 
(assert true)
(define-const var3179 (Array Int (Array Int String)) (getZoneStrings/-1822190447 var253)) ; Statement: r7 = virtualinvoke $r6.<java.text.DateFormatSymbols: java.lang.String[][] getZoneStrings()>() 
(define-const var2037 Int (getLength-Arr-String-2 var3179)) ; Statement: i1 = lengthof r7 
(define-const var3191 Int 0) ; Statement: i2 = 0 
(assert true) ; Non Conditional
 ; Statement: if i2 >= i1 goto r21 = interfaceinvoke $r4.<java.util.Set: java.util.Iterator iterator()>() 
(assert (>= var3191 var2037)) ; Cond: i2 >= i1 
(define-const var2738 Iterator (var2249_iterator/1911472585 (cast-from-var3778-to-var2249 var2339!1))) ; Statement: r21 = interfaceinvoke $r4.<java.util.Set: java.util.Iterator iterator()>() 
(assert true) ; Non Conditional
(define-const var2717 Bool (Iterator_hasNext/-1669924200 var2738)) ; Statement: $z0 = interfaceinvoke r21.<java.util.Iterator: boolean hasNext()>() 
 ; Statement: if $z0 == 0 goto virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(")") 
(assert (= (ite var2717 1 0) 0)) ; Cond: $z0 == 0 
(assert true)
;(assert (append/672562846 var3845!2 ")")) ; Statement: virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(")") 
(declare-const var3845!3 String)
(assert (= var3845!3 (str.++ var3845!2 ")")))
(assert true)
;(assert (createPattern/-378143075 (cast-from-var3418-to-var3530 var1930!3) var3845!3)) ; Statement: virtualinvoke r0.<cn.hutool.core.date.format.FastDateParser$TimeZoneStrategy: void createPattern(java.lang.StringBuilder)>($r3) 

(declare-const var1930!4 var3418)
(declare-const var3845!4 String)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {<init>/959096143=([cn.hutool.core.date.format.FastDateParser$PatternStrategy, cn.hutool.core.date.format.FastDateParser$1], void), cast-from-var3418-to-var3530=([cn.hutool.core.date.format.FastDateParser$TimeZoneStrategy], cn.hutool.core.date.format.FastDateParser$PatternStrategy), var3126-init=([], java.util.HashMap), <init>/-201242697=([java.util.HashMap], void), cast-from-var3126-to-var2362=([java.util.HashMap], java.util.Map), tzNames/-1573264985=([cn.hutool.core.date.format.FastDateParser$TimeZoneStrategy], java.util.Map), locale/-1573264985=([cn.hutool.core.date.format.FastDateParser$TimeZoneStrategy], java.util.Locale), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), var3778-init=([], java.util.TreeSet), var2722_access$700/-234580593=([], java.util.Comparator), <init>/1802593091=([java.util.TreeSet, java.util.Comparator], void), var31_getInstance/2052282742=([java.util.Locale], java.text.DateFormatSymbols), getZoneStrings/-1822190447=([java.text.DateFormatSymbols], java.lang.String[][]), getLength-Arr-String-2=([java.lang.String[][]], int), var2249_iterator/1911472585=([java.util.Set], java.util.Iterator), cast-from-var3778-to-var2249=([java.util.TreeSet], java.util.Set), Iterator_hasNext/-1669924200=([java.util.Iterator], boolean), createPattern/-378143075=([cn.hutool.core.date.format.FastDateParser$PatternStrategy, java.lang.StringBuilder], void)}
; {var3418=cn.hutool.core.date.format.FastDateParser$TimeZoneStrategy, var1930=r0, var1926=java.util.Locale, var1559=r2, var3530=cn.hutool.core.date.format.FastDateParser$PatternStrategy, var3993=cn.hutool.core.date.format.FastDateParser$1, var3115=null, var2170=null_type, var3126=java.util.HashMap, var2558=$r1, var2362=java.util.Map, var3845=$r3, var3778=java.util.TreeSet, var2339=$r4, var878=java.util.Comparator, var2722=cn.hutool.core.date.format.FastDateParser, var1289=$r5, var31=java.text.DateFormatSymbols, var253=$r6, var3179=r7, var2037=i1, var3191=i2, var2249=java.util.Set, var2738=r21, var2717=$z0}
; {cn.hutool.core.date.format.FastDateParser$TimeZoneStrategy=var3418, r0=var1930, java.util.Locale=var1926, r2=var1559, cn.hutool.core.date.format.FastDateParser$PatternStrategy=var3530, cn.hutool.core.date.format.FastDateParser$1=var3993, null=var3115, null_type=var2170, java.util.HashMap=var3126, $r1=var2558, java.util.Map=var2362, $r3=var3845, java.util.TreeSet=var3778, $r4=var2339, java.util.Comparator=var878, cn.hutool.core.date.format.FastDateParser=var2722, $r5=var1289, java.text.DateFormatSymbols=var31, $r6=var253, r7=var3179, i1=var2037, i2=var3191, java.util.Set=var2249, r21=var2738, $z0=var2717}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2}
;stmts r0 := @this: cn.hutool.core.date.format.FastDateParser$TimeZoneStrategy;	r2 := @parameter0: java.util.Locale;	specialinvoke r0.<cn.hutool.core.date.format.FastDateParser$PatternStrategy: void <init>(cn.hutool.core.date.format.FastDateParser$1)>(null);	$r1 = new java.util.HashMap;	specialinvoke $r1.<java.util.HashMap: void <init>()>();	r0.<cn.hutool.core.date.format.FastDateParser$TimeZoneStrategy: java.util.Map tzNames> = $r1;	r0.<cn.hutool.core.date.format.FastDateParser$TimeZoneStrategy: java.util.Locale locale> = r2;	$r3 = new java.lang.StringBuilder;	specialinvoke $r3.<java.lang.StringBuilder: void <init>()>();	virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("((?iu)[+-]\\d{4}|[+-]\\d{2}:\\d{2}|GMT[+-]\\d{1,2}:\\d{2}");	$r4 = new java.util.TreeSet;	$r5 = staticinvoke <cn.hutool.core.date.format.FastDateParser: java.util.Comparator access$700()>();	specialinvoke $r4.<java.util.TreeSet: void <init>(java.util.Comparator)>($r5);	$r6 = staticinvoke <java.text.DateFormatSymbols: java.text.DateFormatSymbols getInstance(java.util.Locale)>(r2);	r7 = virtualinvoke $r6.<java.text.DateFormatSymbols: java.lang.String[][] getZoneStrings()>();	i1 = lengthof r7;	i2 = 0;	if i2 >= i1 goto r21 = interfaceinvoke $r4.<java.util.Set: java.util.Iterator iterator()>();	r21 = interfaceinvoke $r4.<java.util.Set: java.util.Iterator iterator()>();	$z0 = interfaceinvoke r21.<java.util.Iterator: boolean hasNext()>();	if $z0 == 0 goto virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(")");	virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(")");	virtualinvoke r0.<cn.hutool.core.date.format.FastDateParser$TimeZoneStrategy: void createPattern(java.lang.StringBuilder)>($r3);	return
;block_num 5