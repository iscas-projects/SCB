(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2167 0)
(declare-sort var3293 0)
(declare-sort var2351 0)
(declare-sort var301 0)
(declare-sort var2329 0)
(declare-sort var2913 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var2351-init () var2351)
(declare-fun <init>/-843876822 (var2351 var3293 var301) void)
(declare-fun setTime/-1821537528 (var2329 var2167) void)
(declare-fun cast-from-var2351-to-var2329 (var2351) var2329)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-fun getRawOffset/793408012 (var3293) Int)
(declare-fun String-init () String)
(declare-fun <init>/543593434 (String Int) void)
(declare-fun get/335439681 (var2329 Int) Int)
(declare-fun var2913_padInt/-157990007 (String Int Int) void)
(declare-fun append/-1166366385 (String Int) String)
(declare-fun getTimeInMillis/-1265389133 (var2329) Int)
(declare-fun getOffset/846977212 (var3293 Int) Int)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var2167 var2167)
(declare-const null-Bool Bool)
(declare-const null-var3293 var3293)
(declare-const var301-US var301)
(declare-const var1344 var2167) ; Statement: r3 := @parameter0: java.util.Date 
(assert (not (= var1344 null-var2167)))
(declare-const var2866 Bool) ; Statement: z0 := @parameter1: boolean 
(assert (not (= var2866 null-Bool)))
(declare-const var3795 var3293) ; Statement: r1 := @parameter2: java.util.TimeZone 
(assert (not (= var3795 null-var3293)))
(define-const var220 var2351 var2351-init) ; Statement: $r19 = new java.util.GregorianCalendar 
(define-const var2845 var301 var301-US) ; Statement: $r2 = <java.util.Locale: java.util.Locale US> 
(assert true)
;(assert (<init>/-843876822 var220 var3795 var2845)) ; Statement: specialinvoke $r19.<java.util.GregorianCalendar: void <init>(java.util.TimeZone,java.util.Locale)>(r1, $r2) 

(declare-const var220!1 var2351)
(declare-const var3795!1 var3293)
(declare-const var2845!1 var301)
(assert true)
;(assert (setTime/-1821537528 (cast-from-var2351-to-var2329 var220!1) var1344)) ; Statement: virtualinvoke $r19.<java.util.Calendar: void setTime(java.util.Date)>(r3) 

(declare-const var220!2 var2351)
(declare-const var1344!1 var2167)
(define-const var1237 String "yyyy-MM-ddThh:mm:ss") ; Statement: $r4 = "yyyy-MM-ddThh:mm:ss" 
(assert true)
(define-const var774 Int (length/-134980193 var1237)) ; Statement: i28 = virtualinvoke $r4.<java.lang.String: int length()>() 
 ; Statement: if z0 == 0 goto $i29 = 0 
(assert (= (ite var2866 1 0) 0)) ; Cond: z0 == 0 
(define-const var1297 Int 0) ; Statement: $i29 = 0 
(assert true) ; Non Conditional
(define-const var2549 Int (+ var774 var1297)) ; Statement: $i27 = i28 + $i29 
(assert true)
(define-const var3598 Int (getRawOffset/793408012 var3795!1)) ; Statement: $i0 = virtualinvoke r1.<java.util.TimeZone: int getRawOffset()>() 
 ; Statement: if $i0 != 0 goto $r5 = "+hh:mm" 
(assert (not (= var3598 0))) ; Cond: $i0 != 0 
(define-const var629 String "+hh:mm") ; Statement: $r5 = "+hh:mm" 
(assert true)
(define-const var2150 Int (length/-134980193 var629)) ; Statement: $i30 = virtualinvoke $r5.<java.lang.String: int length()>() 
(assert true) ; Non Conditional
(define-const var3202 Int (+ var2549 var2150)) ; Statement: $i26 = $i27 + $i30 
(define-const var2645 String String-init) ; Statement: $r20 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/543593434 var2645 var3202)) ; Statement: specialinvoke $r20.<java.lang.StringBuilder: void <init>(int)>($i26) 

(declare-const var2645!1 String)
(declare-const var3202!1 Int)
(assert true)
(define-const var3422 Int (get/335439681 (cast-from-var2351-to-var2329 var220!2) 1)) ; Statement: $i2 = virtualinvoke $r19.<java.util.Calendar: int get(int)>(1) 
(define-const var398 String "yyyy") ; Statement: $r7 = "yyyy" 
(assert true)
(define-const var3641 Int (length/-134980193 var398)) ; Statement: $i1 = virtualinvoke $r7.<java.lang.String: int length()>() 
;(assert (var2913_padInt/-157990007 var2645!1 var3422 var3641)) ; Statement: staticinvoke <com.google.gson.internal.bind.util.ISO8601Utils: void padInt(java.lang.StringBuilder,int,int)>($r20, $i2, $i1) 

(declare-const var2645!2 String)
(declare-const var3422!1 Int)
(declare-const var3641!1 Int)
(assert true)
;(assert (append/-1166366385 var2645!2 45)) ; Statement: virtualinvoke $r20.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(45) 
(declare-const var2645!3 String)
(assert (str.prefixof var2645!2 var2645!3))
(assert true)
(define-const var1454 Int (get/335439681 (cast-from-var2351-to-var2329 var220!2) 2)) ; Statement: $i3 = virtualinvoke $r19.<java.util.Calendar: int get(int)>(2) 
(define-const var2096 Int (+ var1454 1)) ; Statement: $i5 = $i3 + 1 
(define-const var1499 String "MM") ; Statement: $r8 = "MM" 
(assert true)
(define-const var3675 Int (length/-134980193 var1499)) ; Statement: $i4 = virtualinvoke $r8.<java.lang.String: int length()>() 
;(assert (var2913_padInt/-157990007 var2645!3 var2096 var3675)) ; Statement: staticinvoke <com.google.gson.internal.bind.util.ISO8601Utils: void padInt(java.lang.StringBuilder,int,int)>($r20, $i5, $i4) 

(declare-const var2645!4 String)
(declare-const var2096!1 Int)
(declare-const var3675!1 Int)
(assert true)
;(assert (append/-1166366385 var2645!4 45)) ; Statement: virtualinvoke $r20.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(45) 
(declare-const var2645!5 String)
(assert (str.prefixof var2645!4 var2645!5))
(assert true)
(define-const var2176 Int (get/335439681 (cast-from-var2351-to-var2329 var220!2) 5)) ; Statement: $i7 = virtualinvoke $r19.<java.util.Calendar: int get(int)>(5) 
(define-const var1575 String "dd") ; Statement: $r9 = "dd" 
(assert true)
(define-const var2101 Int (length/-134980193 var1575)) ; Statement: $i6 = virtualinvoke $r9.<java.lang.String: int length()>() 
;(assert (var2913_padInt/-157990007 var2645!5 var2176 var2101)) ; Statement: staticinvoke <com.google.gson.internal.bind.util.ISO8601Utils: void padInt(java.lang.StringBuilder,int,int)>($r20, $i7, $i6) 

(declare-const var2645!6 String)
(declare-const var2176!1 Int)
(declare-const var2101!1 Int)
(assert true)
;(assert (append/-1166366385 var2645!6 84)) ; Statement: virtualinvoke $r20.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(84) 
(declare-const var2645!7 String)
(assert (str.prefixof var2645!6 var2645!7))
(assert true)
(define-const var2638 Int (get/335439681 (cast-from-var2351-to-var2329 var220!2) 11)) ; Statement: $i9 = virtualinvoke $r19.<java.util.Calendar: int get(int)>(11) 
(define-const var1412 String "hh") ; Statement: $r10 = "hh" 
(assert true)
(define-const var1543 Int (length/-134980193 var1412)) ; Statement: $i8 = virtualinvoke $r10.<java.lang.String: int length()>() 
;(assert (var2913_padInt/-157990007 var2645!7 var2638 var1543)) ; Statement: staticinvoke <com.google.gson.internal.bind.util.ISO8601Utils: void padInt(java.lang.StringBuilder,int,int)>($r20, $i9, $i8) 

(declare-const var2645!8 String)
(declare-const var2638!1 Int)
(declare-const var1543!1 Int)
(assert true)
;(assert (append/-1166366385 var2645!8 58)) ; Statement: virtualinvoke $r20.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(58) 
(declare-const var2645!9 String)
(assert (str.prefixof var2645!8 var2645!9))
(assert true)
(define-const var3121 Int (get/335439681 (cast-from-var2351-to-var2329 var220!2) 12)) ; Statement: $i11 = virtualinvoke $r19.<java.util.Calendar: int get(int)>(12) 
(define-const var1054 String "mm") ; Statement: $r11 = "mm" 
(assert true)
(define-const var390 Int (length/-134980193 var1054)) ; Statement: $i10 = virtualinvoke $r11.<java.lang.String: int length()>() 
;(assert (var2913_padInt/-157990007 var2645!9 var3121 var390)) ; Statement: staticinvoke <com.google.gson.internal.bind.util.ISO8601Utils: void padInt(java.lang.StringBuilder,int,int)>($r20, $i11, $i10) 

(declare-const var2645!10 String)
(declare-const var3121!1 Int)
(declare-const var390!1 Int)
(assert true)
;(assert (append/-1166366385 var2645!10 58)) ; Statement: virtualinvoke $r20.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(58) 
(declare-const var2645!11 String)
(assert (str.prefixof var2645!10 var2645!11))
(assert true)
(define-const var3114 Int (get/335439681 (cast-from-var2351-to-var2329 var220!2) 13)) ; Statement: $i13 = virtualinvoke $r19.<java.util.Calendar: int get(int)>(13) 
(define-const var1631 String "ss") ; Statement: $r12 = "ss" 
(assert true)
(define-const var3224 Int (length/-134980193 var1631)) ; Statement: $i12 = virtualinvoke $r12.<java.lang.String: int length()>() 
;(assert (var2913_padInt/-157990007 var2645!11 var3114 var3224)) ; Statement: staticinvoke <com.google.gson.internal.bind.util.ISO8601Utils: void padInt(java.lang.StringBuilder,int,int)>($r20, $i13, $i12) 

(declare-const var2645!12 String)
(declare-const var3114!1 Int)
(declare-const var3224!1 Int)
 ; Statement: if z0 == 0 goto $l14 = virtualinvoke $r19.<java.util.Calendar: long getTimeInMillis()>() 
(assert (= (ite var2866 1 0) 0)) ; Cond: z0 == 0 
(assert true)
(define-const var3883 Int (getTimeInMillis/-1265389133 (cast-from-var2351-to-var2329 var220!2))) ; Statement: $l14 = virtualinvoke $r19.<java.util.Calendar: long getTimeInMillis()>() 
(assert true)
(define-const var3240 Int (getOffset/846977212 var3795!1 var3883)) ; Statement: $i25 = virtualinvoke r1.<java.util.TimeZone: int getOffset(long)>($l14) 
 ; Statement: if $i25 == 0 goto virtualinvoke $r20.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(90) 
(assert (= var3240 0)) ; Cond: $i25 == 0 
(assert true)
;(assert (append/-1166366385 var2645!12 90)) ; Statement: virtualinvoke $r20.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(90) 
(declare-const var2645!13 String)
(assert (str.prefixof var2645!12 var2645!13))
(assert true) ; Non Conditional
(assert true)
(define-const var586 String (toString/-2075883882 var2645!13)) ; Statement: $r13 = virtualinvoke $r20.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r13 
(check-sat)
(get-model)
(get-unsat-core)
; {var2351-init=([], java.util.GregorianCalendar), <init>/-843876822=([java.util.GregorianCalendar, java.util.TimeZone, java.util.Locale], void), setTime/-1821537528=([java.util.Calendar, java.util.Date], void), cast-from-var2351-to-var2329=([java.util.GregorianCalendar], java.util.Calendar), length/-134980193=([java.lang.String], int), getRawOffset/793408012=([java.util.TimeZone], int), String-init=([], java.lang.StringBuilder), <init>/543593434=([java.lang.StringBuilder, int], void), get/335439681=([java.util.Calendar, int], int), var2913_padInt/-157990007=([java.lang.StringBuilder, int, int], void), append/-1166366385=([java.lang.StringBuilder, char], java.lang.StringBuilder), getTimeInMillis/-1265389133=([java.util.Calendar], long), getOffset/846977212=([java.util.TimeZone, long], int), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var2167=java.util.Date, var1344=r3, var2866=z0, var3293=java.util.TimeZone, var3795=r1, var2351=java.util.GregorianCalendar, var220=$r19, var301=java.util.Locale, var2845=$r2, var2329=java.util.Calendar, var1237=$r4, var774=i28, var1297=$i29, var2549=$i27, var3598=$i0, var629=$r5, var2150=$i30, var3202=$i26, var2645=$r20, var3422=$i2, var398=$r7, var3641=$i1, var2913=com.google.gson.internal.bind.util.ISO8601Utils, var1454=$i3, var2096=$i5, var1499=$r8, var3675=$i4, var2176=$i7, var1575=$r9, var2101=$i6, var2638=$i9, var1412=$r10, var1543=$i8, var3121=$i11, var1054=$r11, var390=$i10, var3114=$i13, var1631=$r12, var3224=$i12, var3883=$l14, var3240=$i25, var586=$r13}
; {java.util.Date=var2167, r3=var1344, z0=var2866, java.util.TimeZone=var3293, r1=var3795, java.util.GregorianCalendar=var2351, $r19=var220, java.util.Locale=var301, $r2=var2845, java.util.Calendar=var2329, $r4=var1237, i28=var774, $i29=var1297, $i27=var2549, $i0=var3598, $r5=var629, $i30=var2150, $i26=var3202, $r20=var2645, $i2=var3422, $r7=var398, $i1=var3641, com.google.gson.internal.bind.util.ISO8601Utils=var2913, $i3=var1454, $i5=var2096, $r8=var1499, $i4=var3675, $i7=var2176, $r9=var1575, $i6=var2101, $i9=var2638, $r10=var1412, $i8=var1543, $i11=var3121, $r11=var1054, $i10=var390, $i13=var3114, $r12=var1631, $i12=var3224, $l14=var3883, $i25=var3240, $r13=var586}
;seq <java.lang.String: int length()>;	<java.lang.String: int length()>;	<java.lang.StringBuilder: void <init>(int)>;	<java.lang.String: int length()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.String: int length()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.String: int length()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.String: int length()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.String: int length()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.String: int length()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.String: int length()>": 8,"<java.lang.StringBuilder: void <init>(int)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(char)>": 6,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r3 := @parameter0: java.util.Date;	z0 := @parameter1: boolean;	r1 := @parameter2: java.util.TimeZone;	$r19 = new java.util.GregorianCalendar;	$r2 = <java.util.Locale: java.util.Locale US>;	specialinvoke $r19.<java.util.GregorianCalendar: void <init>(java.util.TimeZone,java.util.Locale)>(r1, $r2);	virtualinvoke $r19.<java.util.Calendar: void setTime(java.util.Date)>(r3);	$r4 = "yyyy-MM-ddThh:mm:ss";	i28 = virtualinvoke $r4.<java.lang.String: int length()>();	if z0 == 0 goto $i29 = 0;	$i29 = 0;	$i27 = i28 + $i29;	$i0 = virtualinvoke r1.<java.util.TimeZone: int getRawOffset()>();	if $i0 != 0 goto $r5 = "+hh:mm";	$r5 = "+hh:mm";	$i30 = virtualinvoke $r5.<java.lang.String: int length()>();	$i26 = $i27 + $i30;	$r20 = new java.lang.StringBuilder;	specialinvoke $r20.<java.lang.StringBuilder: void <init>(int)>($i26);	$i2 = virtualinvoke $r19.<java.util.Calendar: int get(int)>(1);	$r7 = "yyyy";	$i1 = virtualinvoke $r7.<java.lang.String: int length()>();	staticinvoke <com.google.gson.internal.bind.util.ISO8601Utils: void padInt(java.lang.StringBuilder,int,int)>($r20, $i2, $i1);	virtualinvoke $r20.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(45);	$i3 = virtualinvoke $r19.<java.util.Calendar: int get(int)>(2);	$i5 = $i3 + 1;	$r8 = "MM";	$i4 = virtualinvoke $r8.<java.lang.String: int length()>();	staticinvoke <com.google.gson.internal.bind.util.ISO8601Utils: void padInt(java.lang.StringBuilder,int,int)>($r20, $i5, $i4);	virtualinvoke $r20.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(45);	$i7 = virtualinvoke $r19.<java.util.Calendar: int get(int)>(5);	$r9 = "dd";	$i6 = virtualinvoke $r9.<java.lang.String: int length()>();	staticinvoke <com.google.gson.internal.bind.util.ISO8601Utils: void padInt(java.lang.StringBuilder,int,int)>($r20, $i7, $i6);	virtualinvoke $r20.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(84);	$i9 = virtualinvoke $r19.<java.util.Calendar: int get(int)>(11);	$r10 = "hh";	$i8 = virtualinvoke $r10.<java.lang.String: int length()>();	staticinvoke <com.google.gson.internal.bind.util.ISO8601Utils: void padInt(java.lang.StringBuilder,int,int)>($r20, $i9, $i8);	virtualinvoke $r20.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(58);	$i11 = virtualinvoke $r19.<java.util.Calendar: int get(int)>(12);	$r11 = "mm";	$i10 = virtualinvoke $r11.<java.lang.String: int length()>();	staticinvoke <com.google.gson.internal.bind.util.ISO8601Utils: void padInt(java.lang.StringBuilder,int,int)>($r20, $i11, $i10);	virtualinvoke $r20.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(58);	$i13 = virtualinvoke $r19.<java.util.Calendar: int get(int)>(13);	$r12 = "ss";	$i12 = virtualinvoke $r12.<java.lang.String: int length()>();	staticinvoke <com.google.gson.internal.bind.util.ISO8601Utils: void padInt(java.lang.StringBuilder,int,int)>($r20, $i13, $i12);	if z0 == 0 goto $l14 = virtualinvoke $r19.<java.util.Calendar: long getTimeInMillis()>();	$l14 = virtualinvoke $r19.<java.util.Calendar: long getTimeInMillis()>();	$i25 = virtualinvoke r1.<java.util.TimeZone: int getOffset(long)>($l14);	if $i25 == 0 goto virtualinvoke $r20.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(90);	virtualinvoke $r20.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(90);	$r13 = virtualinvoke $r20.<java.lang.StringBuilder: java.lang.String toString()>();	return $r13
;block_num 8