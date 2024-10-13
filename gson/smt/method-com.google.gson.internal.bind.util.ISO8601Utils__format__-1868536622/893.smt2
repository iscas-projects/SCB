(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2654 0)
(declare-sort var116 0)
(declare-sort var3237 0)
(declare-sort var1306 0)
(declare-sort var2825 0)
(declare-sort var38 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var3237-init () var3237)
(declare-fun <init>/-843876822 (var3237 var116 var1306) void)
(declare-fun setTime/-1821537528 (var2825 var2654) void)
(declare-fun cast-from-var3237-to-var2825 (var3237) var2825)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-fun getRawOffset/793408012 (var116) Int)
(declare-fun String-init () String)
(declare-fun <init>/543593434 (String Int) void)
(declare-fun get/335439681 (var2825 Int) Int)
(declare-fun var38_padInt/-157990007 (String Int Int) void)
(declare-fun append/-1166366385 (String Int) String)
(declare-fun getTimeInMillis/-1265389133 (var2825) Int)
(declare-fun getOffset/846977212 (var116 Int) Int)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var2654 var2654)
(declare-const null-Bool Bool)
(declare-const null-var116 var116)
(declare-const var1306-US var1306)
(declare-const var1154 var2654) ; Statement: r3 := @parameter0: java.util.Date 
(assert (not (= var1154 null-var2654)))
(declare-const var3758 Bool) ; Statement: z0 := @parameter1: boolean 
(assert (not (= var3758 null-Bool)))
(declare-const var3899 var116) ; Statement: r1 := @parameter2: java.util.TimeZone 
(assert (not (= var3899 null-var116)))
(define-const var494 var3237 var3237-init) ; Statement: $r19 = new java.util.GregorianCalendar 
(define-const var3458 var1306 var1306-US) ; Statement: $r2 = <java.util.Locale: java.util.Locale US> 
(assert true)
;(assert (<init>/-843876822 var494 var3899 var3458)) ; Statement: specialinvoke $r19.<java.util.GregorianCalendar: void <init>(java.util.TimeZone,java.util.Locale)>(r1, $r2) 

(declare-const var494!1 var3237)
(declare-const var3899!1 var116)
(declare-const var3458!1 var1306)
(assert true)
;(assert (setTime/-1821537528 (cast-from-var3237-to-var2825 var494!1) var1154)) ; Statement: virtualinvoke $r19.<java.util.Calendar: void setTime(java.util.Date)>(r3) 

(declare-const var494!2 var3237)
(declare-const var1154!1 var2654)
(define-const var2802 String "yyyy-MM-ddThh:mm:ss") ; Statement: $r4 = "yyyy-MM-ddThh:mm:ss" 
(assert true)
(define-const var1753 Int (length/-134980193 var2802)) ; Statement: i28 = virtualinvoke $r4.<java.lang.String: int length()>() 
 ; Statement: if z0 == 0 goto $i29 = 0 
(assert (= (ite var3758 1 0) 0)) ; Cond: z0 == 0 
(define-const var1411 Int 0) ; Statement: $i29 = 0 
(assert true) ; Non Conditional
(define-const var305 Int (+ var1753 var1411)) ; Statement: $i27 = i28 + $i29 
(assert true)
(define-const var2558 Int (getRawOffset/793408012 var3899!1)) ; Statement: $i0 = virtualinvoke r1.<java.util.TimeZone: int getRawOffset()>() 
 ; Statement: if $i0 != 0 goto $r5 = "+hh:mm" 
(assert (not (not (= var2558 0)))) ; Negate: Cond: $i0 != 0  
(define-const var1495 String "Z") ; Statement: $r17 = "Z" 
(assert true)
(define-const var317 Int (length/-134980193 var1495)) ; Statement: $i30 = virtualinvoke $r17.<java.lang.String: int length()>() 
 ; Statement: goto [?= $i26 = $i27 + $i30] 
(assert true) ; Non Conditional
(define-const var912 Int (+ var305 var317)) ; Statement: $i26 = $i27 + $i30 
(define-const var1262 String String-init) ; Statement: $r20 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/543593434 var1262 var912)) ; Statement: specialinvoke $r20.<java.lang.StringBuilder: void <init>(int)>($i26) 

(declare-const var1262!1 String)
(declare-const var912!1 Int)
(assert true)
(define-const var2062 Int (get/335439681 (cast-from-var3237-to-var2825 var494!2) 1)) ; Statement: $i2 = virtualinvoke $r19.<java.util.Calendar: int get(int)>(1) 
(define-const var1104 String "yyyy") ; Statement: $r7 = "yyyy" 
(assert true)
(define-const var3683 Int (length/-134980193 var1104)) ; Statement: $i1 = virtualinvoke $r7.<java.lang.String: int length()>() 
;(assert (var38_padInt/-157990007 var1262!1 var2062 var3683)) ; Statement: staticinvoke <com.google.gson.internal.bind.util.ISO8601Utils: void padInt(java.lang.StringBuilder,int,int)>($r20, $i2, $i1) 

(declare-const var1262!2 String)
(declare-const var2062!1 Int)
(declare-const var3683!1 Int)
(assert true)
;(assert (append/-1166366385 var1262!2 45)) ; Statement: virtualinvoke $r20.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(45) 
(declare-const var1262!3 String)
(assert (str.prefixof var1262!2 var1262!3))
(assert true)
(define-const var506 Int (get/335439681 (cast-from-var3237-to-var2825 var494!2) 2)) ; Statement: $i3 = virtualinvoke $r19.<java.util.Calendar: int get(int)>(2) 
(define-const var1123 Int (+ var506 1)) ; Statement: $i5 = $i3 + 1 
(define-const var2694 String "MM") ; Statement: $r8 = "MM" 
(assert true)
(define-const var1778 Int (length/-134980193 var2694)) ; Statement: $i4 = virtualinvoke $r8.<java.lang.String: int length()>() 
;(assert (var38_padInt/-157990007 var1262!3 var1123 var1778)) ; Statement: staticinvoke <com.google.gson.internal.bind.util.ISO8601Utils: void padInt(java.lang.StringBuilder,int,int)>($r20, $i5, $i4) 

(declare-const var1262!4 String)
(declare-const var1123!1 Int)
(declare-const var1778!1 Int)
(assert true)
;(assert (append/-1166366385 var1262!4 45)) ; Statement: virtualinvoke $r20.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(45) 
(declare-const var1262!5 String)
(assert (str.prefixof var1262!4 var1262!5))
(assert true)
(define-const var1367 Int (get/335439681 (cast-from-var3237-to-var2825 var494!2) 5)) ; Statement: $i7 = virtualinvoke $r19.<java.util.Calendar: int get(int)>(5) 
(define-const var445 String "dd") ; Statement: $r9 = "dd" 
(assert true)
(define-const var2588 Int (length/-134980193 var445)) ; Statement: $i6 = virtualinvoke $r9.<java.lang.String: int length()>() 
;(assert (var38_padInt/-157990007 var1262!5 var1367 var2588)) ; Statement: staticinvoke <com.google.gson.internal.bind.util.ISO8601Utils: void padInt(java.lang.StringBuilder,int,int)>($r20, $i7, $i6) 

(declare-const var1262!6 String)
(declare-const var1367!1 Int)
(declare-const var2588!1 Int)
(assert true)
;(assert (append/-1166366385 var1262!6 84)) ; Statement: virtualinvoke $r20.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(84) 
(declare-const var1262!7 String)
(assert (str.prefixof var1262!6 var1262!7))
(assert true)
(define-const var515 Int (get/335439681 (cast-from-var3237-to-var2825 var494!2) 11)) ; Statement: $i9 = virtualinvoke $r19.<java.util.Calendar: int get(int)>(11) 
(define-const var191 String "hh") ; Statement: $r10 = "hh" 
(assert true)
(define-const var1243 Int (length/-134980193 var191)) ; Statement: $i8 = virtualinvoke $r10.<java.lang.String: int length()>() 
;(assert (var38_padInt/-157990007 var1262!7 var515 var1243)) ; Statement: staticinvoke <com.google.gson.internal.bind.util.ISO8601Utils: void padInt(java.lang.StringBuilder,int,int)>($r20, $i9, $i8) 

(declare-const var1262!8 String)
(declare-const var515!1 Int)
(declare-const var1243!1 Int)
(assert true)
;(assert (append/-1166366385 var1262!8 58)) ; Statement: virtualinvoke $r20.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(58) 
(declare-const var1262!9 String)
(assert (str.prefixof var1262!8 var1262!9))
(assert true)
(define-const var1792 Int (get/335439681 (cast-from-var3237-to-var2825 var494!2) 12)) ; Statement: $i11 = virtualinvoke $r19.<java.util.Calendar: int get(int)>(12) 
(define-const var1694 String "mm") ; Statement: $r11 = "mm" 
(assert true)
(define-const var1744 Int (length/-134980193 var1694)) ; Statement: $i10 = virtualinvoke $r11.<java.lang.String: int length()>() 
;(assert (var38_padInt/-157990007 var1262!9 var1792 var1744)) ; Statement: staticinvoke <com.google.gson.internal.bind.util.ISO8601Utils: void padInt(java.lang.StringBuilder,int,int)>($r20, $i11, $i10) 

(declare-const var1262!10 String)
(declare-const var1792!1 Int)
(declare-const var1744!1 Int)
(assert true)
;(assert (append/-1166366385 var1262!10 58)) ; Statement: virtualinvoke $r20.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(58) 
(declare-const var1262!11 String)
(assert (str.prefixof var1262!10 var1262!11))
(assert true)
(define-const var1352 Int (get/335439681 (cast-from-var3237-to-var2825 var494!2) 13)) ; Statement: $i13 = virtualinvoke $r19.<java.util.Calendar: int get(int)>(13) 
(define-const var1872 String "ss") ; Statement: $r12 = "ss" 
(assert true)
(define-const var1946 Int (length/-134980193 var1872)) ; Statement: $i12 = virtualinvoke $r12.<java.lang.String: int length()>() 
;(assert (var38_padInt/-157990007 var1262!11 var1352 var1946)) ; Statement: staticinvoke <com.google.gson.internal.bind.util.ISO8601Utils: void padInt(java.lang.StringBuilder,int,int)>($r20, $i13, $i12) 

(declare-const var1262!12 String)
(declare-const var1352!1 Int)
(declare-const var1946!1 Int)
 ; Statement: if z0 == 0 goto $l14 = virtualinvoke $r19.<java.util.Calendar: long getTimeInMillis()>() 
(assert (= (ite var3758 1 0) 0)) ; Cond: z0 == 0 
(assert true)
(define-const var2658 Int (getTimeInMillis/-1265389133 (cast-from-var3237-to-var2825 var494!2))) ; Statement: $l14 = virtualinvoke $r19.<java.util.Calendar: long getTimeInMillis()>() 
(assert true)
(define-const var1031 Int (getOffset/846977212 var3899!1 var2658)) ; Statement: $i25 = virtualinvoke r1.<java.util.TimeZone: int getOffset(long)>($l14) 
 ; Statement: if $i25 == 0 goto virtualinvoke $r20.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(90) 
(assert (= var1031 0)) ; Cond: $i25 == 0 
(assert true)
;(assert (append/-1166366385 var1262!12 90)) ; Statement: virtualinvoke $r20.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(90) 
(declare-const var1262!13 String)
(assert (str.prefixof var1262!12 var1262!13))
(assert true) ; Non Conditional
(assert true)
(define-const var2389 String (toString/-2075883882 var1262!13)) ; Statement: $r13 = virtualinvoke $r20.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r13 
(check-sat)
(get-model)
(get-unsat-core)
; {var3237-init=([], java.util.GregorianCalendar), <init>/-843876822=([java.util.GregorianCalendar, java.util.TimeZone, java.util.Locale], void), setTime/-1821537528=([java.util.Calendar, java.util.Date], void), cast-from-var3237-to-var2825=([java.util.GregorianCalendar], java.util.Calendar), length/-134980193=([java.lang.String], int), getRawOffset/793408012=([java.util.TimeZone], int), String-init=([], java.lang.StringBuilder), <init>/543593434=([java.lang.StringBuilder, int], void), get/335439681=([java.util.Calendar, int], int), var38_padInt/-157990007=([java.lang.StringBuilder, int, int], void), append/-1166366385=([java.lang.StringBuilder, char], java.lang.StringBuilder), getTimeInMillis/-1265389133=([java.util.Calendar], long), getOffset/846977212=([java.util.TimeZone, long], int), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var2654=java.util.Date, var1154=r3, var3758=z0, var116=java.util.TimeZone, var3899=r1, var3237=java.util.GregorianCalendar, var494=$r19, var1306=java.util.Locale, var3458=$r2, var2825=java.util.Calendar, var2802=$r4, var1753=i28, var1411=$i29, var305=$i27, var2558=$i0, var1495=$r17, var317=$i30, var912=$i26, var1262=$r20, var2062=$i2, var1104=$r7, var3683=$i1, var38=com.google.gson.internal.bind.util.ISO8601Utils, var506=$i3, var1123=$i5, var2694=$r8, var1778=$i4, var1367=$i7, var445=$r9, var2588=$i6, var515=$i9, var191=$r10, var1243=$i8, var1792=$i11, var1694=$r11, var1744=$i10, var1352=$i13, var1872=$r12, var1946=$i12, var2658=$l14, var1031=$i25, var2389=$r13}
; {java.util.Date=var2654, r3=var1154, z0=var3758, java.util.TimeZone=var116, r1=var3899, java.util.GregorianCalendar=var3237, $r19=var494, java.util.Locale=var1306, $r2=var3458, java.util.Calendar=var2825, $r4=var2802, i28=var1753, $i29=var1411, $i27=var305, $i0=var2558, $r17=var1495, $i30=var317, $i26=var912, $r20=var1262, $i2=var2062, $r7=var1104, $i1=var3683, com.google.gson.internal.bind.util.ISO8601Utils=var38, $i3=var506, $i5=var1123, $r8=var2694, $i4=var1778, $i7=var1367, $r9=var445, $i6=var2588, $i9=var515, $r10=var191, $i8=var1243, $i11=var1792, $r11=var1694, $i10=var1744, $i13=var1352, $r12=var1872, $i12=var1946, $l14=var2658, $i25=var1031, $r13=var2389}
;seq <java.lang.String: int length()>;	<java.lang.String: int length()>;	<java.lang.StringBuilder: void <init>(int)>;	<java.lang.String: int length()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.String: int length()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.String: int length()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.String: int length()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.String: int length()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.String: int length()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.String: int length()>": 8,"<java.lang.StringBuilder: void <init>(int)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(char)>": 6,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r3 := @parameter0: java.util.Date;	z0 := @parameter1: boolean;	r1 := @parameter2: java.util.TimeZone;	$r19 = new java.util.GregorianCalendar;	$r2 = <java.util.Locale: java.util.Locale US>;	specialinvoke $r19.<java.util.GregorianCalendar: void <init>(java.util.TimeZone,java.util.Locale)>(r1, $r2);	virtualinvoke $r19.<java.util.Calendar: void setTime(java.util.Date)>(r3);	$r4 = "yyyy-MM-ddThh:mm:ss";	i28 = virtualinvoke $r4.<java.lang.String: int length()>();	if z0 == 0 goto $i29 = 0;	$i29 = 0;	$i27 = i28 + $i29;	$i0 = virtualinvoke r1.<java.util.TimeZone: int getRawOffset()>();	if $i0 != 0 goto $r5 = "+hh:mm";	$r17 = "Z";	$i30 = virtualinvoke $r17.<java.lang.String: int length()>();	goto [?= $i26 = $i27 + $i30];	$i26 = $i27 + $i30;	$r20 = new java.lang.StringBuilder;	specialinvoke $r20.<java.lang.StringBuilder: void <init>(int)>($i26);	$i2 = virtualinvoke $r19.<java.util.Calendar: int get(int)>(1);	$r7 = "yyyy";	$i1 = virtualinvoke $r7.<java.lang.String: int length()>();	staticinvoke <com.google.gson.internal.bind.util.ISO8601Utils: void padInt(java.lang.StringBuilder,int,int)>($r20, $i2, $i1);	virtualinvoke $r20.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(45);	$i3 = virtualinvoke $r19.<java.util.Calendar: int get(int)>(2);	$i5 = $i3 + 1;	$r8 = "MM";	$i4 = virtualinvoke $r8.<java.lang.String: int length()>();	staticinvoke <com.google.gson.internal.bind.util.ISO8601Utils: void padInt(java.lang.StringBuilder,int,int)>($r20, $i5, $i4);	virtualinvoke $r20.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(45);	$i7 = virtualinvoke $r19.<java.util.Calendar: int get(int)>(5);	$r9 = "dd";	$i6 = virtualinvoke $r9.<java.lang.String: int length()>();	staticinvoke <com.google.gson.internal.bind.util.ISO8601Utils: void padInt(java.lang.StringBuilder,int,int)>($r20, $i7, $i6);	virtualinvoke $r20.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(84);	$i9 = virtualinvoke $r19.<java.util.Calendar: int get(int)>(11);	$r10 = "hh";	$i8 = virtualinvoke $r10.<java.lang.String: int length()>();	staticinvoke <com.google.gson.internal.bind.util.ISO8601Utils: void padInt(java.lang.StringBuilder,int,int)>($r20, $i9, $i8);	virtualinvoke $r20.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(58);	$i11 = virtualinvoke $r19.<java.util.Calendar: int get(int)>(12);	$r11 = "mm";	$i10 = virtualinvoke $r11.<java.lang.String: int length()>();	staticinvoke <com.google.gson.internal.bind.util.ISO8601Utils: void padInt(java.lang.StringBuilder,int,int)>($r20, $i11, $i10);	virtualinvoke $r20.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(58);	$i13 = virtualinvoke $r19.<java.util.Calendar: int get(int)>(13);	$r12 = "ss";	$i12 = virtualinvoke $r12.<java.lang.String: int length()>();	staticinvoke <com.google.gson.internal.bind.util.ISO8601Utils: void padInt(java.lang.StringBuilder,int,int)>($r20, $i13, $i12);	if z0 == 0 goto $l14 = virtualinvoke $r19.<java.util.Calendar: long getTimeInMillis()>();	$l14 = virtualinvoke $r19.<java.util.Calendar: long getTimeInMillis()>();	$i25 = virtualinvoke r1.<java.util.TimeZone: int getOffset(long)>($l14);	if $i25 == 0 goto virtualinvoke $r20.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(90);	virtualinvoke $r20.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(90);	$r13 = virtualinvoke $r20.<java.lang.StringBuilder: java.lang.String toString()>();	return $r13
;block_num 8