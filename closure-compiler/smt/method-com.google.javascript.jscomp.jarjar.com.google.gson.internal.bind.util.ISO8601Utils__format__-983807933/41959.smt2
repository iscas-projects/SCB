(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2218 0)
(declare-sort var2937 0)
(declare-sort var2612 0)
(declare-sort var417 0)
(declare-sort var1165 0)
(declare-sort var625 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var2612-init () var2612)
(declare-fun <init>/-843876822 (var2612 var2937 var417) void)
(declare-fun setTime/-1821537528 (var1165 var2218) void)
(declare-fun cast-from-var2612-to-var1165 (var2612) var1165)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-fun getRawOffset/793408012 (var2937) Int)
(declare-fun String-init () String)
(declare-fun <init>/543593434 (String Int) void)
(declare-fun get/335439681 (var1165 Int) Int)
(declare-fun var625_padInt/-831434310 (String Int Int) void)
(declare-fun append/-1166366385 (String Int) String)
(declare-fun getTimeInMillis/-1265389133 (var1165) Int)
(declare-fun getOffset/846977212 (var2937 Int) Int)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var2218 var2218)
(declare-const null-Bool Bool)
(declare-const null-var2937 var2937)
(declare-const var417-US var417)
(declare-const var1868 var2218) ; Statement: r3 := @parameter0: java.util.Date 
(assert (not (= var1868 null-var2218)))
(declare-const var1106 Bool) ; Statement: z0 := @parameter1: boolean 
(assert (not (= var1106 null-Bool)))
(declare-const var2997 var2937) ; Statement: r1 := @parameter2: java.util.TimeZone 
(assert (not (= var2997 null-var2937)))
(define-const var644 var2612 var2612-init) ; Statement: $r19 = new java.util.GregorianCalendar 
(define-const var3260 var417 var417-US) ; Statement: $r2 = <java.util.Locale: java.util.Locale US> 
(assert true)
;(assert (<init>/-843876822 var644 var2997 var3260)) ; Statement: specialinvoke $r19.<java.util.GregorianCalendar: void <init>(java.util.TimeZone,java.util.Locale)>(r1, $r2) 

(declare-const var644!1 var2612)
(declare-const var2997!1 var2937)
(declare-const var3260!1 var417)
(assert true)
;(assert (setTime/-1821537528 (cast-from-var2612-to-var1165 var644!1) var1868)) ; Statement: virtualinvoke $r19.<java.util.Calendar: void setTime(java.util.Date)>(r3) 

(declare-const var644!2 var2612)
(declare-const var1868!1 var2218)
(define-const var2887 String "yyyy-MM-ddThh:mm:ss") ; Statement: $r4 = "yyyy-MM-ddThh:mm:ss" 
(assert true)
(define-const var1262 Int (length/-134980193 var2887)) ; Statement: i28 = virtualinvoke $r4.<java.lang.String: int length()>() 
 ; Statement: if z0 == 0 goto $i29 = 0 
(assert (= (ite var1106 1 0) 0)) ; Cond: z0 == 0 
(define-const var396 Int 0) ; Statement: $i29 = 0 
(assert true) ; Non Conditional
(define-const var456 Int (+ var1262 var396)) ; Statement: $i27 = i28 + $i29 
(assert true)
(define-const var160 Int (getRawOffset/793408012 var2997!1)) ; Statement: $i0 = virtualinvoke r1.<java.util.TimeZone: int getRawOffset()>() 
 ; Statement: if $i0 != 0 goto $r5 = "+hh:mm" 
(assert (not (= var160 0))) ; Cond: $i0 != 0 
(define-const var3162 String "+hh:mm") ; Statement: $r5 = "+hh:mm" 
(assert true)
(define-const var2687 Int (length/-134980193 var3162)) ; Statement: $i30 = virtualinvoke $r5.<java.lang.String: int length()>() 
(assert true) ; Non Conditional
(define-const var2827 Int (+ var456 var2687)) ; Statement: $i26 = $i27 + $i30 
(define-const var830 String String-init) ; Statement: $r20 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/543593434 var830 var2827)) ; Statement: specialinvoke $r20.<java.lang.StringBuilder: void <init>(int)>($i26) 

(declare-const var830!1 String)
(declare-const var2827!1 Int)
(assert true)
(define-const var3644 Int (get/335439681 (cast-from-var2612-to-var1165 var644!2) 1)) ; Statement: $i2 = virtualinvoke $r19.<java.util.Calendar: int get(int)>(1) 
(define-const var1813 String "yyyy") ; Statement: $r7 = "yyyy" 
(assert true)
(define-const var246 Int (length/-134980193 var1813)) ; Statement: $i1 = virtualinvoke $r7.<java.lang.String: int length()>() 
;(assert (var625_padInt/-831434310 var830!1 var3644 var246)) ; Statement: staticinvoke <com.google.javascript.jscomp.jarjar.com.google.gson.internal.bind.util.ISO8601Utils: void padInt(java.lang.StringBuilder,int,int)>($r20, $i2, $i1) 

(declare-const var830!2 String)
(declare-const var3644!1 Int)
(declare-const var246!1 Int)
(assert true)
;(assert (append/-1166366385 var830!2 45)) ; Statement: virtualinvoke $r20.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(45) 
(declare-const var830!3 String)
(assert (str.prefixof var830!2 var830!3))
(assert true)
(define-const var2484 Int (get/335439681 (cast-from-var2612-to-var1165 var644!2) 2)) ; Statement: $i3 = virtualinvoke $r19.<java.util.Calendar: int get(int)>(2) 
(define-const var1443 Int (+ var2484 1)) ; Statement: $i5 = $i3 + 1 
(define-const var3297 String "MM") ; Statement: $r8 = "MM" 
(assert true)
(define-const var204 Int (length/-134980193 var3297)) ; Statement: $i4 = virtualinvoke $r8.<java.lang.String: int length()>() 
;(assert (var625_padInt/-831434310 var830!3 var1443 var204)) ; Statement: staticinvoke <com.google.javascript.jscomp.jarjar.com.google.gson.internal.bind.util.ISO8601Utils: void padInt(java.lang.StringBuilder,int,int)>($r20, $i5, $i4) 

(declare-const var830!4 String)
(declare-const var1443!1 Int)
(declare-const var204!1 Int)
(assert true)
;(assert (append/-1166366385 var830!4 45)) ; Statement: virtualinvoke $r20.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(45) 
(declare-const var830!5 String)
(assert (str.prefixof var830!4 var830!5))
(assert true)
(define-const var1775 Int (get/335439681 (cast-from-var2612-to-var1165 var644!2) 5)) ; Statement: $i7 = virtualinvoke $r19.<java.util.Calendar: int get(int)>(5) 
(define-const var1591 String "dd") ; Statement: $r9 = "dd" 
(assert true)
(define-const var1081 Int (length/-134980193 var1591)) ; Statement: $i6 = virtualinvoke $r9.<java.lang.String: int length()>() 
;(assert (var625_padInt/-831434310 var830!5 var1775 var1081)) ; Statement: staticinvoke <com.google.javascript.jscomp.jarjar.com.google.gson.internal.bind.util.ISO8601Utils: void padInt(java.lang.StringBuilder,int,int)>($r20, $i7, $i6) 

(declare-const var830!6 String)
(declare-const var1775!1 Int)
(declare-const var1081!1 Int)
(assert true)
;(assert (append/-1166366385 var830!6 84)) ; Statement: virtualinvoke $r20.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(84) 
(declare-const var830!7 String)
(assert (str.prefixof var830!6 var830!7))
(assert true)
(define-const var101 Int (get/335439681 (cast-from-var2612-to-var1165 var644!2) 11)) ; Statement: $i9 = virtualinvoke $r19.<java.util.Calendar: int get(int)>(11) 
(define-const var983 String "hh") ; Statement: $r10 = "hh" 
(assert true)
(define-const var3017 Int (length/-134980193 var983)) ; Statement: $i8 = virtualinvoke $r10.<java.lang.String: int length()>() 
;(assert (var625_padInt/-831434310 var830!7 var101 var3017)) ; Statement: staticinvoke <com.google.javascript.jscomp.jarjar.com.google.gson.internal.bind.util.ISO8601Utils: void padInt(java.lang.StringBuilder,int,int)>($r20, $i9, $i8) 

(declare-const var830!8 String)
(declare-const var101!1 Int)
(declare-const var3017!1 Int)
(assert true)
;(assert (append/-1166366385 var830!8 58)) ; Statement: virtualinvoke $r20.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(58) 
(declare-const var830!9 String)
(assert (str.prefixof var830!8 var830!9))
(assert true)
(define-const var1662 Int (get/335439681 (cast-from-var2612-to-var1165 var644!2) 12)) ; Statement: $i11 = virtualinvoke $r19.<java.util.Calendar: int get(int)>(12) 
(define-const var740 String "mm") ; Statement: $r11 = "mm" 
(assert true)
(define-const var414 Int (length/-134980193 var740)) ; Statement: $i10 = virtualinvoke $r11.<java.lang.String: int length()>() 
;(assert (var625_padInt/-831434310 var830!9 var1662 var414)) ; Statement: staticinvoke <com.google.javascript.jscomp.jarjar.com.google.gson.internal.bind.util.ISO8601Utils: void padInt(java.lang.StringBuilder,int,int)>($r20, $i11, $i10) 

(declare-const var830!10 String)
(declare-const var1662!1 Int)
(declare-const var414!1 Int)
(assert true)
;(assert (append/-1166366385 var830!10 58)) ; Statement: virtualinvoke $r20.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(58) 
(declare-const var830!11 String)
(assert (str.prefixof var830!10 var830!11))
(assert true)
(define-const var1615 Int (get/335439681 (cast-from-var2612-to-var1165 var644!2) 13)) ; Statement: $i13 = virtualinvoke $r19.<java.util.Calendar: int get(int)>(13) 
(define-const var2253 String "ss") ; Statement: $r12 = "ss" 
(assert true)
(define-const var2999 Int (length/-134980193 var2253)) ; Statement: $i12 = virtualinvoke $r12.<java.lang.String: int length()>() 
;(assert (var625_padInt/-831434310 var830!11 var1615 var2999)) ; Statement: staticinvoke <com.google.javascript.jscomp.jarjar.com.google.gson.internal.bind.util.ISO8601Utils: void padInt(java.lang.StringBuilder,int,int)>($r20, $i13, $i12) 

(declare-const var830!12 String)
(declare-const var1615!1 Int)
(declare-const var2999!1 Int)
 ; Statement: if z0 == 0 goto $l14 = virtualinvoke $r19.<java.util.Calendar: long getTimeInMillis()>() 
(assert (= (ite var1106 1 0) 0)) ; Cond: z0 == 0 
(assert true)
(define-const var2636 Int (getTimeInMillis/-1265389133 (cast-from-var2612-to-var1165 var644!2))) ; Statement: $l14 = virtualinvoke $r19.<java.util.Calendar: long getTimeInMillis()>() 
(assert true)
(define-const var1567 Int (getOffset/846977212 var2997!1 var2636)) ; Statement: $i25 = virtualinvoke r1.<java.util.TimeZone: int getOffset(long)>($l14) 
 ; Statement: if $i25 == 0 goto virtualinvoke $r20.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(90) 
(assert (= var1567 0)) ; Cond: $i25 == 0 
(assert true)
;(assert (append/-1166366385 var830!12 90)) ; Statement: virtualinvoke $r20.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(90) 
(declare-const var830!13 String)
(assert (str.prefixof var830!12 var830!13))
(assert true) ; Non Conditional
(assert true)
(define-const var73 String (toString/-2075883882 var830!13)) ; Statement: $r13 = virtualinvoke $r20.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r13 
(check-sat)
(get-model)
(get-unsat-core)
; {var2612-init=([], java.util.GregorianCalendar), <init>/-843876822=([java.util.GregorianCalendar, java.util.TimeZone, java.util.Locale], void), setTime/-1821537528=([java.util.Calendar, java.util.Date], void), cast-from-var2612-to-var1165=([java.util.GregorianCalendar], java.util.Calendar), length/-134980193=([java.lang.String], int), getRawOffset/793408012=([java.util.TimeZone], int), String-init=([], java.lang.StringBuilder), <init>/543593434=([java.lang.StringBuilder, int], void), get/335439681=([java.util.Calendar, int], int), var625_padInt/-831434310=([java.lang.StringBuilder, int, int], void), append/-1166366385=([java.lang.StringBuilder, char], java.lang.StringBuilder), getTimeInMillis/-1265389133=([java.util.Calendar], long), getOffset/846977212=([java.util.TimeZone, long], int), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var2218=java.util.Date, var1868=r3, var1106=z0, var2937=java.util.TimeZone, var2997=r1, var2612=java.util.GregorianCalendar, var644=$r19, var417=java.util.Locale, var3260=$r2, var1165=java.util.Calendar, var2887=$r4, var1262=i28, var396=$i29, var456=$i27, var160=$i0, var3162=$r5, var2687=$i30, var2827=$i26, var830=$r20, var3644=$i2, var1813=$r7, var246=$i1, var625=com.google.javascript.jscomp.jarjar.com.google.gson.internal.bind.util.ISO8601Utils, var2484=$i3, var1443=$i5, var3297=$r8, var204=$i4, var1775=$i7, var1591=$r9, var1081=$i6, var101=$i9, var983=$r10, var3017=$i8, var1662=$i11, var740=$r11, var414=$i10, var1615=$i13, var2253=$r12, var2999=$i12, var2636=$l14, var1567=$i25, var73=$r13}
; {java.util.Date=var2218, r3=var1868, z0=var1106, java.util.TimeZone=var2937, r1=var2997, java.util.GregorianCalendar=var2612, $r19=var644, java.util.Locale=var417, $r2=var3260, java.util.Calendar=var1165, $r4=var2887, i28=var1262, $i29=var396, $i27=var456, $i0=var160, $r5=var3162, $i30=var2687, $i26=var2827, $r20=var830, $i2=var3644, $r7=var1813, $i1=var246, com.google.javascript.jscomp.jarjar.com.google.gson.internal.bind.util.ISO8601Utils=var625, $i3=var2484, $i5=var1443, $r8=var3297, $i4=var204, $i7=var1775, $r9=var1591, $i6=var1081, $i9=var101, $r10=var983, $i8=var3017, $i11=var1662, $r11=var740, $i10=var414, $i13=var1615, $r12=var2253, $i12=var2999, $l14=var2636, $i25=var1567, $r13=var73}
;seq <java.lang.String: int length()>;	<java.lang.String: int length()>;	<java.lang.StringBuilder: void <init>(int)>;	<java.lang.String: int length()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.String: int length()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.String: int length()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.String: int length()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.String: int length()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.String: int length()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.String: int length()>": 8,"<java.lang.StringBuilder: void <init>(int)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(char)>": 6,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r3 := @parameter0: java.util.Date;	z0 := @parameter1: boolean;	r1 := @parameter2: java.util.TimeZone;	$r19 = new java.util.GregorianCalendar;	$r2 = <java.util.Locale: java.util.Locale US>;	specialinvoke $r19.<java.util.GregorianCalendar: void <init>(java.util.TimeZone,java.util.Locale)>(r1, $r2);	virtualinvoke $r19.<java.util.Calendar: void setTime(java.util.Date)>(r3);	$r4 = "yyyy-MM-ddThh:mm:ss";	i28 = virtualinvoke $r4.<java.lang.String: int length()>();	if z0 == 0 goto $i29 = 0;	$i29 = 0;	$i27 = i28 + $i29;	$i0 = virtualinvoke r1.<java.util.TimeZone: int getRawOffset()>();	if $i0 != 0 goto $r5 = "+hh:mm";	$r5 = "+hh:mm";	$i30 = virtualinvoke $r5.<java.lang.String: int length()>();	$i26 = $i27 + $i30;	$r20 = new java.lang.StringBuilder;	specialinvoke $r20.<java.lang.StringBuilder: void <init>(int)>($i26);	$i2 = virtualinvoke $r19.<java.util.Calendar: int get(int)>(1);	$r7 = "yyyy";	$i1 = virtualinvoke $r7.<java.lang.String: int length()>();	staticinvoke <com.google.javascript.jscomp.jarjar.com.google.gson.internal.bind.util.ISO8601Utils: void padInt(java.lang.StringBuilder,int,int)>($r20, $i2, $i1);	virtualinvoke $r20.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(45);	$i3 = virtualinvoke $r19.<java.util.Calendar: int get(int)>(2);	$i5 = $i3 + 1;	$r8 = "MM";	$i4 = virtualinvoke $r8.<java.lang.String: int length()>();	staticinvoke <com.google.javascript.jscomp.jarjar.com.google.gson.internal.bind.util.ISO8601Utils: void padInt(java.lang.StringBuilder,int,int)>($r20, $i5, $i4);	virtualinvoke $r20.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(45);	$i7 = virtualinvoke $r19.<java.util.Calendar: int get(int)>(5);	$r9 = "dd";	$i6 = virtualinvoke $r9.<java.lang.String: int length()>();	staticinvoke <com.google.javascript.jscomp.jarjar.com.google.gson.internal.bind.util.ISO8601Utils: void padInt(java.lang.StringBuilder,int,int)>($r20, $i7, $i6);	virtualinvoke $r20.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(84);	$i9 = virtualinvoke $r19.<java.util.Calendar: int get(int)>(11);	$r10 = "hh";	$i8 = virtualinvoke $r10.<java.lang.String: int length()>();	staticinvoke <com.google.javascript.jscomp.jarjar.com.google.gson.internal.bind.util.ISO8601Utils: void padInt(java.lang.StringBuilder,int,int)>($r20, $i9, $i8);	virtualinvoke $r20.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(58);	$i11 = virtualinvoke $r19.<java.util.Calendar: int get(int)>(12);	$r11 = "mm";	$i10 = virtualinvoke $r11.<java.lang.String: int length()>();	staticinvoke <com.google.javascript.jscomp.jarjar.com.google.gson.internal.bind.util.ISO8601Utils: void padInt(java.lang.StringBuilder,int,int)>($r20, $i11, $i10);	virtualinvoke $r20.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(58);	$i13 = virtualinvoke $r19.<java.util.Calendar: int get(int)>(13);	$r12 = "ss";	$i12 = virtualinvoke $r12.<java.lang.String: int length()>();	staticinvoke <com.google.javascript.jscomp.jarjar.com.google.gson.internal.bind.util.ISO8601Utils: void padInt(java.lang.StringBuilder,int,int)>($r20, $i13, $i12);	if z0 == 0 goto $l14 = virtualinvoke $r19.<java.util.Calendar: long getTimeInMillis()>();	$l14 = virtualinvoke $r19.<java.util.Calendar: long getTimeInMillis()>();	$i25 = virtualinvoke r1.<java.util.TimeZone: int getOffset(long)>($l14);	if $i25 == 0 goto virtualinvoke $r20.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(90);	virtualinvoke $r20.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(90);	$r13 = virtualinvoke $r20.<java.lang.StringBuilder: java.lang.String toString()>();	return $r13
;block_num 8