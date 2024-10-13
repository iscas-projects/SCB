(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1186 0)
(declare-sort var467 0)
(declare-sort var113 0)
(declare-sort var275 0)
(declare-sort var338 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var467-init () var467)
(declare-fun locale/63795614 (var275) var113)
(declare-fun cast-from-var1186-to-var275 (var1186) var275)
(declare-fun <init>/-1553082332 (var467 var113) void)
(declare-fun var338-init () var338)
(declare-fun <init>/-325640736 (var338) void)
(declare-fun getEras/-1456756074 (var467) (Array Int String))
(declare-fun getMonths/746086338 (var467) (Array Int String))
(declare-fun getShortMonths/-832875722 (var467) (Array Int String))
(declare-fun getWeekdays/1793337962 (var467) (Array Int String))
(declare-fun getShortWeekdays/534253790 (var467) (Array Int String))
(declare-fun getAmPmStrings/-64599668 (var467) (Array Int String))
(declare-fun pattern/63795614 (var275) String)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-fun arr-Int-init () (Array Int Int))
(declare-const null-var1186 var1186)
(declare-const var3119 var1186) ; Statement: r1 := @this: cn.hutool.core.date.format.FastDatePrinter 
(assert (not (= var3119 null-var1186)))
(define-const var1965 var467 var467-init) ; Statement: $r43 = new java.text.DateFormatSymbols 
(define-const var2635 var113 (locale/63795614 (cast-from-var1186-to-var275 var3119))) ; Statement: $r2 = r1.<cn.hutool.core.date.format.FastDatePrinter: java.util.Locale locale> 
(assert true)
;(assert (<init>/-1553082332 var1965 var2635)) ; Statement: specialinvoke $r43.<java.text.DateFormatSymbols: void <init>(java.util.Locale)>($r2) 

(declare-const var1965!1 var467)
(declare-const var2635!1 var113)
(define-const var2139 var338 var338-init) ; Statement: $r44 = new java.util.ArrayList 
(assert true)
;(assert (<init>/-325640736 var2139)) ; Statement: specialinvoke $r44.<java.util.ArrayList: void <init>()>() 

(declare-const var2139!1 var338)
(assert true)
(define-const var40 (Array Int String) (getEras/-1456756074 var1965!1)) ; Statement: r4 = virtualinvoke $r43.<java.text.DateFormatSymbols: java.lang.String[] getEras()>() 
(assert true)
(define-const var3975 (Array Int String) (getMonths/746086338 var1965!1)) ; Statement: r5 = virtualinvoke $r43.<java.text.DateFormatSymbols: java.lang.String[] getMonths()>() 
(assert true)
(define-const var733 (Array Int String) (getShortMonths/-832875722 var1965!1)) ; Statement: r6 = virtualinvoke $r43.<java.text.DateFormatSymbols: java.lang.String[] getShortMonths()>() 
(assert true)
(define-const var2193 (Array Int String) (getWeekdays/1793337962 var1965!1)) ; Statement: r7 = virtualinvoke $r43.<java.text.DateFormatSymbols: java.lang.String[] getWeekdays()>() 
(assert true)
(define-const var2166 (Array Int String) (getShortWeekdays/534253790 var1965!1)) ; Statement: r8 = virtualinvoke $r43.<java.text.DateFormatSymbols: java.lang.String[] getShortWeekdays()>() 
(assert true)
(define-const var2466 (Array Int String) (getAmPmStrings/-64599668 var1965!1)) ; Statement: r9 = virtualinvoke $r43.<java.text.DateFormatSymbols: java.lang.String[] getAmPmStrings()>() 
(define-const var2612 String (pattern/63795614 (cast-from-var1186-to-var275 var3119))) ; Statement: $r10 = r1.<cn.hutool.core.date.format.FastDatePrinter: java.lang.String pattern> 
(assert true)
(define-const var2658 Int (length/-134980193 var2612)) ; Statement: i0 = virtualinvoke $r10.<java.lang.String: int length()>() 
(define-const var2937 (Array Int Int) arr-Int-init) ; Statement: r11 = newarray (int)[1] 
(define-const var1762 Int 0) ; Statement: i6 = 0 
(assert true) ; Non Conditional
 ; Statement: if i6 >= i0 goto return $r44 
(assert (>= var1762 var2658)) ; Cond: i6 >= i0 
 ; Statement: return $r44 
(check-sat)
(get-model)
(get-unsat-core)
; {var467-init=([], java.text.DateFormatSymbols), locale/63795614=([cn.hutool.core.date.format.AbstractDateBasic], java.util.Locale), cast-from-var1186-to-var275=([cn.hutool.core.date.format.FastDatePrinter], cn.hutool.core.date.format.AbstractDateBasic), <init>/-1553082332=([java.text.DateFormatSymbols, java.util.Locale], void), var338-init=([], java.util.ArrayList), <init>/-325640736=([java.util.ArrayList], void), getEras/-1456756074=([java.text.DateFormatSymbols], java.lang.String[]), getMonths/746086338=([java.text.DateFormatSymbols], java.lang.String[]), getShortMonths/-832875722=([java.text.DateFormatSymbols], java.lang.String[]), getWeekdays/1793337962=([java.text.DateFormatSymbols], java.lang.String[]), getShortWeekdays/534253790=([java.text.DateFormatSymbols], java.lang.String[]), getAmPmStrings/-64599668=([java.text.DateFormatSymbols], java.lang.String[]), pattern/63795614=([cn.hutool.core.date.format.AbstractDateBasic], java.lang.String), length/-134980193=([java.lang.String], int), arr-Int-init=([], int[])}
; {var1186=cn.hutool.core.date.format.FastDatePrinter, var3119=r1, var467=java.text.DateFormatSymbols, var1965=$r43, var113=java.util.Locale, var275=cn.hutool.core.date.format.AbstractDateBasic, var2635=$r2, var338=java.util.ArrayList, var2139=$r44, var40=r4, var3975=r5, var733=r6, var2193=r7, var2166=r8, var2466=r9, var2612=$r10, var2658=i0, var2937=r11, var1762=i6}
; {cn.hutool.core.date.format.FastDatePrinter=var1186, r1=var3119, java.text.DateFormatSymbols=var467, $r43=var1965, java.util.Locale=var113, cn.hutool.core.date.format.AbstractDateBasic=var275, $r2=var2635, java.util.ArrayList=var338, $r44=var2139, r4=var40, r5=var3975, r6=var733, r7=var2193, r8=var2166, r9=var2466, $r10=var2612, i0=var2658, r11=var2937, i6=var1762}
;seq <java.lang.String: int length()>
;cnt {"<java.lang.String: int length()>": 1}
;stmts r1 := @this: cn.hutool.core.date.format.FastDatePrinter;	$r43 = new java.text.DateFormatSymbols;	$r2 = r1.<cn.hutool.core.date.format.FastDatePrinter: java.util.Locale locale>;	specialinvoke $r43.<java.text.DateFormatSymbols: void <init>(java.util.Locale)>($r2);	$r44 = new java.util.ArrayList;	specialinvoke $r44.<java.util.ArrayList: void <init>()>();	r4 = virtualinvoke $r43.<java.text.DateFormatSymbols: java.lang.String[] getEras()>();	r5 = virtualinvoke $r43.<java.text.DateFormatSymbols: java.lang.String[] getMonths()>();	r6 = virtualinvoke $r43.<java.text.DateFormatSymbols: java.lang.String[] getShortMonths()>();	r7 = virtualinvoke $r43.<java.text.DateFormatSymbols: java.lang.String[] getWeekdays()>();	r8 = virtualinvoke $r43.<java.text.DateFormatSymbols: java.lang.String[] getShortWeekdays()>();	r9 = virtualinvoke $r43.<java.text.DateFormatSymbols: java.lang.String[] getAmPmStrings()>();	$r10 = r1.<cn.hutool.core.date.format.FastDatePrinter: java.lang.String pattern>;	i0 = virtualinvoke $r10.<java.lang.String: int length()>();	r11 = newarray (int)[1];	i6 = 0;	if i6 >= i0 goto return $r44;	return $r44
;block_num 3