(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3758 0)
(declare-sort var3341 0)
(declare-sort var2934 0)
(declare-sort var239 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var3341-init () var3341)
(declare-fun locale/1549876084 (var3758) var2934)
(declare-fun <init>/-1553082332 (var3341 var2934) void)
(declare-fun var239-init () var239)
(declare-fun <init>/-325640736 (var239) void)
(declare-fun getEras/-1456756074 (var3341) (Array Int String))
(declare-fun getMonths/746086338 (var3341) (Array Int String))
(declare-fun getShortMonths/-832875722 (var3341) (Array Int String))
(declare-fun getWeekdays/1793337962 (var3341) (Array Int String))
(declare-fun getShortWeekdays/534253790 (var3341) (Array Int String))
(declare-fun getAmPmStrings/-64599668 (var3341) (Array Int String))
(declare-fun pattern/1549876084 (var3758) String)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-fun arr-Int-init () (Array Int Int))
(declare-const null-var3758 var3758)
(declare-const var2906 var3758) ; Statement: r1 := @this: org.apache.commons.lang3.time.FastDatePrinter 
(assert (not (= var2906 null-var3758)))
(define-const var764 var3341 var3341-init) ; Statement: $r51 = new java.text.DateFormatSymbols 
(define-const var3498 var2934 (locale/1549876084 var2906)) ; Statement: $r2 = r1.<org.apache.commons.lang3.time.FastDatePrinter: java.util.Locale locale> 
(assert true)
;(assert (<init>/-1553082332 var764 var3498)) ; Statement: specialinvoke $r51.<java.text.DateFormatSymbols: void <init>(java.util.Locale)>($r2) 

(declare-const var764!1 var3341)
(declare-const var3498!1 var2934)
(define-const var1942 var239 var239-init) ; Statement: $r52 = new java.util.ArrayList 
(assert true)
;(assert (<init>/-325640736 var1942)) ; Statement: specialinvoke $r52.<java.util.ArrayList: void <init>()>() 

(declare-const var1942!1 var239)
(assert true)
(define-const var31 (Array Int String) (getEras/-1456756074 var764!1)) ; Statement: r4 = virtualinvoke $r51.<java.text.DateFormatSymbols: java.lang.String[] getEras()>() 
(assert true)
(define-const var3843 (Array Int String) (getMonths/746086338 var764!1)) ; Statement: r5 = virtualinvoke $r51.<java.text.DateFormatSymbols: java.lang.String[] getMonths()>() 
(assert true)
(define-const var469 (Array Int String) (getShortMonths/-832875722 var764!1)) ; Statement: r6 = virtualinvoke $r51.<java.text.DateFormatSymbols: java.lang.String[] getShortMonths()>() 
(assert true)
(define-const var32 (Array Int String) (getWeekdays/1793337962 var764!1)) ; Statement: r7 = virtualinvoke $r51.<java.text.DateFormatSymbols: java.lang.String[] getWeekdays()>() 
(assert true)
(define-const var3782 (Array Int String) (getShortWeekdays/534253790 var764!1)) ; Statement: r8 = virtualinvoke $r51.<java.text.DateFormatSymbols: java.lang.String[] getShortWeekdays()>() 
(assert true)
(define-const var3917 (Array Int String) (getAmPmStrings/-64599668 var764!1)) ; Statement: r9 = virtualinvoke $r51.<java.text.DateFormatSymbols: java.lang.String[] getAmPmStrings()>() 
(define-const var3268 String (pattern/1549876084 var2906)) ; Statement: $r10 = r1.<org.apache.commons.lang3.time.FastDatePrinter: java.lang.String pattern> 
(assert true)
(define-const var3812 Int (length/-134980193 var3268)) ; Statement: i0 = virtualinvoke $r10.<java.lang.String: int length()>() 
(define-const var1537 (Array Int Int) arr-Int-init) ; Statement: r11 = newarray (int)[1] 
(define-const var3892 Int 0) ; Statement: i6 = 0 
(assert true) ; Non Conditional
 ; Statement: if i6 >= i0 goto return $r52 
(assert (>= var3892 var3812)) ; Cond: i6 >= i0 
 ; Statement: return $r52 
(check-sat)
(get-model)
(get-unsat-core)
; {var3341-init=([], java.text.DateFormatSymbols), locale/1549876084=([org.apache.commons.lang3.time.FastDatePrinter], java.util.Locale), <init>/-1553082332=([java.text.DateFormatSymbols, java.util.Locale], void), var239-init=([], java.util.ArrayList), <init>/-325640736=([java.util.ArrayList], void), getEras/-1456756074=([java.text.DateFormatSymbols], java.lang.String[]), getMonths/746086338=([java.text.DateFormatSymbols], java.lang.String[]), getShortMonths/-832875722=([java.text.DateFormatSymbols], java.lang.String[]), getWeekdays/1793337962=([java.text.DateFormatSymbols], java.lang.String[]), getShortWeekdays/534253790=([java.text.DateFormatSymbols], java.lang.String[]), getAmPmStrings/-64599668=([java.text.DateFormatSymbols], java.lang.String[]), pattern/1549876084=([org.apache.commons.lang3.time.FastDatePrinter], java.lang.String), length/-134980193=([java.lang.String], int), arr-Int-init=([], int[])}
; {var3758=org.apache.commons.lang3.time.FastDatePrinter, var2906=r1, var3341=java.text.DateFormatSymbols, var764=$r51, var2934=java.util.Locale, var3498=$r2, var239=java.util.ArrayList, var1942=$r52, var31=r4, var3843=r5, var469=r6, var32=r7, var3782=r8, var3917=r9, var3268=$r10, var3812=i0, var1537=r11, var3892=i6}
; {org.apache.commons.lang3.time.FastDatePrinter=var3758, r1=var2906, java.text.DateFormatSymbols=var3341, $r51=var764, java.util.Locale=var2934, $r2=var3498, java.util.ArrayList=var239, $r52=var1942, r4=var31, r5=var3843, r6=var469, r7=var32, r8=var3782, r9=var3917, $r10=var3268, i0=var3812, r11=var1537, i6=var3892}
;seq <java.lang.String: int length()>
;cnt {"<java.lang.String: int length()>": 1}
;stmts r1 := @this: org.apache.commons.lang3.time.FastDatePrinter;	$r51 = new java.text.DateFormatSymbols;	$r2 = r1.<org.apache.commons.lang3.time.FastDatePrinter: java.util.Locale locale>;	specialinvoke $r51.<java.text.DateFormatSymbols: void <init>(java.util.Locale)>($r2);	$r52 = new java.util.ArrayList;	specialinvoke $r52.<java.util.ArrayList: void <init>()>();	r4 = virtualinvoke $r51.<java.text.DateFormatSymbols: java.lang.String[] getEras()>();	r5 = virtualinvoke $r51.<java.text.DateFormatSymbols: java.lang.String[] getMonths()>();	r6 = virtualinvoke $r51.<java.text.DateFormatSymbols: java.lang.String[] getShortMonths()>();	r7 = virtualinvoke $r51.<java.text.DateFormatSymbols: java.lang.String[] getWeekdays()>();	r8 = virtualinvoke $r51.<java.text.DateFormatSymbols: java.lang.String[] getShortWeekdays()>();	r9 = virtualinvoke $r51.<java.text.DateFormatSymbols: java.lang.String[] getAmPmStrings()>();	$r10 = r1.<org.apache.commons.lang3.time.FastDatePrinter: java.lang.String pattern>;	i0 = virtualinvoke $r10.<java.lang.String: int length()>();	r11 = newarray (int)[1];	i6 = 0;	if i6 >= i0 goto return $r52;	return $r52
;block_num 3