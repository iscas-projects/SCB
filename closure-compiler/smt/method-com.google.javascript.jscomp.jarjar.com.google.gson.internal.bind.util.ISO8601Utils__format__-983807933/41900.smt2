(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2625 0)
(declare-sort var2019 0)
(declare-sort var1199 0)
(declare-sort var1444 0)
(declare-sort var2541 0)
(declare-sort var2366 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var1199-init () var1199)
(declare-fun <init>/-843876822 (var1199 var2019 var1444) void)
(declare-fun setTime/-1821537528 (var2541 var2625) void)
(declare-fun cast-from-var1199-to-var2541 (var1199) var2541)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-fun getRawOffset/793408012 (var2019) Int)
(declare-fun String-init () String)
(declare-fun <init>/543593434 (String Int) void)
(declare-fun get/335439681 (var2541 Int) Int)
(declare-fun var2366_padInt/-831434310 (String Int Int) void)
(declare-fun append/-1166366385 (String Int) String)
(declare-fun getTimeInMillis/-1265389133 (var2541) Int)
(declare-fun getOffset/846977212 (var2019 Int) Int)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var2625 var2625)
(declare-const null-Bool Bool)
(declare-const null-var2019 var2019)
(declare-const var1444-US var1444)
(declare-const var2964 var2625) ; Statement: r3 := @parameter0: java.util.Date 
(assert (not (= var2964 null-var2625)))
(declare-const var1503 Bool) ; Statement: z0 := @parameter1: boolean 
(assert (not (= var1503 null-Bool)))
(declare-const var1633 var2019) ; Statement: r1 := @parameter2: java.util.TimeZone 
(assert (not (= var1633 null-var2019)))
(define-const var443 var1199 var1199-init) ; Statement: $r19 = new java.util.GregorianCalendar 
(define-const var1768 var1444 var1444-US) ; Statement: $r2 = <java.util.Locale: java.util.Locale US> 
(assert true)
;(assert (<init>/-843876822 var443 var1633 var1768)) ; Statement: specialinvoke $r19.<java.util.GregorianCalendar: void <init>(java.util.TimeZone,java.util.Locale)>(r1, $r2) 

(declare-const var443!1 var1199)
(declare-const var1633!1 var2019)
(declare-const var1768!1 var1444)
(assert true)
;(assert (setTime/-1821537528 (cast-from-var1199-to-var2541 var443!1) var2964)) ; Statement: virtualinvoke $r19.<java.util.Calendar: void setTime(java.util.Date)>(r3) 

(declare-const var443!2 var1199)
(declare-const var2964!1 var2625)
(define-const var3221 String "yyyy-MM-ddThh:mm:ss") ; Statement: $r4 = "yyyy-MM-ddThh:mm:ss" 
(assert true)
(define-const var196 Int (length/-134980193 var3221)) ; Statement: i28 = virtualinvoke $r4.<java.lang.String: int length()>() 
 ; Statement: if z0 == 0 goto $i29 = 0 
(assert (not (= (ite var1503 1 0) 0))) ; Negate: Cond: z0 == 0  
(define-const var1823 String ".sss") ; Statement: $r18 = ".sss" 
(assert true)
(define-const var2239 Int (length/-134980193 var1823)) ; Statement: $i29 = virtualinvoke $r18.<java.lang.String: int length()>() 
 ; Statement: goto [?= $i27 = i28 + $i29] 
(assert true) ; Non Conditional
(define-const var1061 Int (+ var196 var2239)) ; Statement: $i27 = i28 + $i29 
(assert true)
(define-const var2005 Int (getRawOffset/793408012 var1633!1)) ; Statement: $i0 = virtualinvoke r1.<java.util.TimeZone: int getRawOffset()>() 
 ; Statement: if $i0 != 0 goto $r5 = "+hh:mm" 
(assert (not (not (= var2005 0)))) ; Negate: Cond: $i0 != 0  
(define-const var2340 String "Z") ; Statement: $r17 = "Z" 
(assert true)
(define-const var1900 Int (length/-134980193 var2340)) ; Statement: $i30 = virtualinvoke $r17.<java.lang.String: int length()>() 
 ; Statement: goto [?= $i26 = $i27 + $i30] 
(assert true) ; Non Conditional
(define-const var2817 Int (+ var1061 var1900)) ; Statement: $i26 = $i27 + $i30 
(define-const var649 String String-init) ; Statement: $r20 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/543593434 var649 var2817)) ; Statement: specialinvoke $r20.<java.lang.StringBuilder: void <init>(int)>($i26) 

(declare-const var649!1 String)
(declare-const var2817!1 Int)
(assert true)
(define-const var2502 Int (get/335439681 (cast-from-var1199-to-var2541 var443!2) 1)) ; Statement: $i2 = virtualinvoke $r19.<java.util.Calendar: int get(int)>(1) 
(define-const var2293 String "yyyy") ; Statement: $r7 = "yyyy" 
(assert true)
(define-const var2702 Int (length/-134980193 var2293)) ; Statement: $i1 = virtualinvoke $r7.<java.lang.String: int length()>() 
;(assert (var2366_padInt/-831434310 var649!1 var2502 var2702)) ; Statement: staticinvoke <com.google.javascript.jscomp.jarjar.com.google.gson.internal.bind.util.ISO8601Utils: void padInt(java.lang.StringBuilder,int,int)>($r20, $i2, $i1) 

(declare-const var649!2 String)
(declare-const var2502!1 Int)
(declare-const var2702!1 Int)
(assert true)
;(assert (append/-1166366385 var649!2 45)) ; Statement: virtualinvoke $r20.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(45) 
(declare-const var649!3 String)
(assert (str.prefixof var649!2 var649!3))
(assert true)
(define-const var375 Int (get/335439681 (cast-from-var1199-to-var2541 var443!2) 2)) ; Statement: $i3 = virtualinvoke $r19.<java.util.Calendar: int get(int)>(2) 
(define-const var1868 Int (+ var375 1)) ; Statement: $i5 = $i3 + 1 
(define-const var1344 String "MM") ; Statement: $r8 = "MM" 
(assert true)
(define-const var2004 Int (length/-134980193 var1344)) ; Statement: $i4 = virtualinvoke $r8.<java.lang.String: int length()>() 
;(assert (var2366_padInt/-831434310 var649!3 var1868 var2004)) ; Statement: staticinvoke <com.google.javascript.jscomp.jarjar.com.google.gson.internal.bind.util.ISO8601Utils: void padInt(java.lang.StringBuilder,int,int)>($r20, $i5, $i4) 

(declare-const var649!4 String)
(declare-const var1868!1 Int)
(declare-const var2004!1 Int)
(assert true)
;(assert (append/-1166366385 var649!4 45)) ; Statement: virtualinvoke $r20.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(45) 
(declare-const var649!5 String)
(assert (str.prefixof var649!4 var649!5))
(assert true)
(define-const var623 Int (get/335439681 (cast-from-var1199-to-var2541 var443!2) 5)) ; Statement: $i7 = virtualinvoke $r19.<java.util.Calendar: int get(int)>(5) 
(define-const var396 String "dd") ; Statement: $r9 = "dd" 
(assert true)
(define-const var695 Int (length/-134980193 var396)) ; Statement: $i6 = virtualinvoke $r9.<java.lang.String: int length()>() 
;(assert (var2366_padInt/-831434310 var649!5 var623 var695)) ; Statement: staticinvoke <com.google.javascript.jscomp.jarjar.com.google.gson.internal.bind.util.ISO8601Utils: void padInt(java.lang.StringBuilder,int,int)>($r20, $i7, $i6) 

(declare-const var649!6 String)
(declare-const var623!1 Int)
(declare-const var695!1 Int)
(assert true)
;(assert (append/-1166366385 var649!6 84)) ; Statement: virtualinvoke $r20.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(84) 
(declare-const var649!7 String)
(assert (str.prefixof var649!6 var649!7))
(assert true)
(define-const var3234 Int (get/335439681 (cast-from-var1199-to-var2541 var443!2) 11)) ; Statement: $i9 = virtualinvoke $r19.<java.util.Calendar: int get(int)>(11) 
(define-const var1370 String "hh") ; Statement: $r10 = "hh" 
(assert true)
(define-const var3111 Int (length/-134980193 var1370)) ; Statement: $i8 = virtualinvoke $r10.<java.lang.String: int length()>() 
;(assert (var2366_padInt/-831434310 var649!7 var3234 var3111)) ; Statement: staticinvoke <com.google.javascript.jscomp.jarjar.com.google.gson.internal.bind.util.ISO8601Utils: void padInt(java.lang.StringBuilder,int,int)>($r20, $i9, $i8) 

(declare-const var649!8 String)
(declare-const var3234!1 Int)
(declare-const var3111!1 Int)
(assert true)
;(assert (append/-1166366385 var649!8 58)) ; Statement: virtualinvoke $r20.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(58) 
(declare-const var649!9 String)
(assert (str.prefixof var649!8 var649!9))
(assert true)
(define-const var2279 Int (get/335439681 (cast-from-var1199-to-var2541 var443!2) 12)) ; Statement: $i11 = virtualinvoke $r19.<java.util.Calendar: int get(int)>(12) 
(define-const var751 String "mm") ; Statement: $r11 = "mm" 
(assert true)
(define-const var2203 Int (length/-134980193 var751)) ; Statement: $i10 = virtualinvoke $r11.<java.lang.String: int length()>() 
;(assert (var2366_padInt/-831434310 var649!9 var2279 var2203)) ; Statement: staticinvoke <com.google.javascript.jscomp.jarjar.com.google.gson.internal.bind.util.ISO8601Utils: void padInt(java.lang.StringBuilder,int,int)>($r20, $i11, $i10) 

(declare-const var649!10 String)
(declare-const var2279!1 Int)
(declare-const var2203!1 Int)
(assert true)
;(assert (append/-1166366385 var649!10 58)) ; Statement: virtualinvoke $r20.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(58) 
(declare-const var649!11 String)
(assert (str.prefixof var649!10 var649!11))
(assert true)
(define-const var3179 Int (get/335439681 (cast-from-var1199-to-var2541 var443!2) 13)) ; Statement: $i13 = virtualinvoke $r19.<java.util.Calendar: int get(int)>(13) 
(define-const var874 String "ss") ; Statement: $r12 = "ss" 
(assert true)
(define-const var1788 Int (length/-134980193 var874)) ; Statement: $i12 = virtualinvoke $r12.<java.lang.String: int length()>() 
;(assert (var2366_padInt/-831434310 var649!11 var3179 var1788)) ; Statement: staticinvoke <com.google.javascript.jscomp.jarjar.com.google.gson.internal.bind.util.ISO8601Utils: void padInt(java.lang.StringBuilder,int,int)>($r20, $i13, $i12) 

(declare-const var649!12 String)
(declare-const var3179!1 Int)
(declare-const var1788!1 Int)
 ; Statement: if z0 == 0 goto $l14 = virtualinvoke $r19.<java.util.Calendar: long getTimeInMillis()>() 
(assert (= (ite var1503 1 0) 0)) ; Cond: z0 == 0 
(assert true)
(define-const var3758 Int (getTimeInMillis/-1265389133 (cast-from-var1199-to-var2541 var443!2))) ; Statement: $l14 = virtualinvoke $r19.<java.util.Calendar: long getTimeInMillis()>() 
(assert true)
(define-const var3163 Int (getOffset/846977212 var1633!1 var3758)) ; Statement: $i25 = virtualinvoke r1.<java.util.TimeZone: int getOffset(long)>($l14) 
 ; Statement: if $i25 == 0 goto virtualinvoke $r20.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(90) 
(assert (= var3163 0)) ; Cond: $i25 == 0 
(assert true)
;(assert (append/-1166366385 var649!12 90)) ; Statement: virtualinvoke $r20.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(90) 
(declare-const var649!13 String)
(assert (str.prefixof var649!12 var649!13))
(assert true) ; Non Conditional
(assert true)
(define-const var3423 String (toString/-2075883882 var649!13)) ; Statement: $r13 = virtualinvoke $r20.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r13 
(check-sat)
(get-model)
(get-unsat-core)
; {var1199-init=([], java.util.GregorianCalendar), <init>/-843876822=([java.util.GregorianCalendar, java.util.TimeZone, java.util.Locale], void), setTime/-1821537528=([java.util.Calendar, java.util.Date], void), cast-from-var1199-to-var2541=([java.util.GregorianCalendar], java.util.Calendar), length/-134980193=([java.lang.String], int), getRawOffset/793408012=([java.util.TimeZone], int), String-init=([], java.lang.StringBuilder), <init>/543593434=([java.lang.StringBuilder, int], void), get/335439681=([java.util.Calendar, int], int), var2366_padInt/-831434310=([java.lang.StringBuilder, int, int], void), append/-1166366385=([java.lang.StringBuilder, char], java.lang.StringBuilder), getTimeInMillis/-1265389133=([java.util.Calendar], long), getOffset/846977212=([java.util.TimeZone, long], int), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var2625=java.util.Date, var2964=r3, var1503=z0, var2019=java.util.TimeZone, var1633=r1, var1199=java.util.GregorianCalendar, var443=$r19, var1444=java.util.Locale, var1768=$r2, var2541=java.util.Calendar, var3221=$r4, var196=i28, var1823=$r18, var2239=$i29, var1061=$i27, var2005=$i0, var2340=$r17, var1900=$i30, var2817=$i26, var649=$r20, var2502=$i2, var2293=$r7, var2702=$i1, var2366=com.google.javascript.jscomp.jarjar.com.google.gson.internal.bind.util.ISO8601Utils, var375=$i3, var1868=$i5, var1344=$r8, var2004=$i4, var623=$i7, var396=$r9, var695=$i6, var3234=$i9, var1370=$r10, var3111=$i8, var2279=$i11, var751=$r11, var2203=$i10, var3179=$i13, var874=$r12, var1788=$i12, var3758=$l14, var3163=$i25, var3423=$r13}
; {java.util.Date=var2625, r3=var2964, z0=var1503, java.util.TimeZone=var2019, r1=var1633, java.util.GregorianCalendar=var1199, $r19=var443, java.util.Locale=var1444, $r2=var1768, java.util.Calendar=var2541, $r4=var3221, i28=var196, $r18=var1823, $i29=var2239, $i27=var1061, $i0=var2005, $r17=var2340, $i30=var1900, $i26=var2817, $r20=var649, $i2=var2502, $r7=var2293, $i1=var2702, com.google.javascript.jscomp.jarjar.com.google.gson.internal.bind.util.ISO8601Utils=var2366, $i3=var375, $i5=var1868, $r8=var1344, $i4=var2004, $i7=var623, $r9=var396, $i6=var695, $i9=var3234, $r10=var1370, $i8=var3111, $i11=var2279, $r11=var751, $i10=var2203, $i13=var3179, $r12=var874, $i12=var1788, $l14=var3758, $i25=var3163, $r13=var3423}
;seq <java.lang.String: int length()>;	<java.lang.String: int length()>;	<java.lang.String: int length()>;	<java.lang.StringBuilder: void <init>(int)>;	<java.lang.String: int length()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.String: int length()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.String: int length()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.String: int length()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.String: int length()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.String: int length()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.String: int length()>": 9,"<java.lang.StringBuilder: void <init>(int)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(char)>": 6,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r3 := @parameter0: java.util.Date;	z0 := @parameter1: boolean;	r1 := @parameter2: java.util.TimeZone;	$r19 = new java.util.GregorianCalendar;	$r2 = <java.util.Locale: java.util.Locale US>;	specialinvoke $r19.<java.util.GregorianCalendar: void <init>(java.util.TimeZone,java.util.Locale)>(r1, $r2);	virtualinvoke $r19.<java.util.Calendar: void setTime(java.util.Date)>(r3);	$r4 = "yyyy-MM-ddThh:mm:ss";	i28 = virtualinvoke $r4.<java.lang.String: int length()>();	if z0 == 0 goto $i29 = 0;	$r18 = ".sss";	$i29 = virtualinvoke $r18.<java.lang.String: int length()>();	goto [?= $i27 = i28 + $i29];	$i27 = i28 + $i29;	$i0 = virtualinvoke r1.<java.util.TimeZone: int getRawOffset()>();	if $i0 != 0 goto $r5 = "+hh:mm";	$r17 = "Z";	$i30 = virtualinvoke $r17.<java.lang.String: int length()>();	goto [?= $i26 = $i27 + $i30];	$i26 = $i27 + $i30;	$r20 = new java.lang.StringBuilder;	specialinvoke $r20.<java.lang.StringBuilder: void <init>(int)>($i26);	$i2 = virtualinvoke $r19.<java.util.Calendar: int get(int)>(1);	$r7 = "yyyy";	$i1 = virtualinvoke $r7.<java.lang.String: int length()>();	staticinvoke <com.google.javascript.jscomp.jarjar.com.google.gson.internal.bind.util.ISO8601Utils: void padInt(java.lang.StringBuilder,int,int)>($r20, $i2, $i1);	virtualinvoke $r20.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(45);	$i3 = virtualinvoke $r19.<java.util.Calendar: int get(int)>(2);	$i5 = $i3 + 1;	$r8 = "MM";	$i4 = virtualinvoke $r8.<java.lang.String: int length()>();	staticinvoke <com.google.javascript.jscomp.jarjar.com.google.gson.internal.bind.util.ISO8601Utils: void padInt(java.lang.StringBuilder,int,int)>($r20, $i5, $i4);	virtualinvoke $r20.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(45);	$i7 = virtualinvoke $r19.<java.util.Calendar: int get(int)>(5);	$r9 = "dd";	$i6 = virtualinvoke $r9.<java.lang.String: int length()>();	staticinvoke <com.google.javascript.jscomp.jarjar.com.google.gson.internal.bind.util.ISO8601Utils: void padInt(java.lang.StringBuilder,int,int)>($r20, $i7, $i6);	virtualinvoke $r20.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(84);	$i9 = virtualinvoke $r19.<java.util.Calendar: int get(int)>(11);	$r10 = "hh";	$i8 = virtualinvoke $r10.<java.lang.String: int length()>();	staticinvoke <com.google.javascript.jscomp.jarjar.com.google.gson.internal.bind.util.ISO8601Utils: void padInt(java.lang.StringBuilder,int,int)>($r20, $i9, $i8);	virtualinvoke $r20.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(58);	$i11 = virtualinvoke $r19.<java.util.Calendar: int get(int)>(12);	$r11 = "mm";	$i10 = virtualinvoke $r11.<java.lang.String: int length()>();	staticinvoke <com.google.javascript.jscomp.jarjar.com.google.gson.internal.bind.util.ISO8601Utils: void padInt(java.lang.StringBuilder,int,int)>($r20, $i11, $i10);	virtualinvoke $r20.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(58);	$i13 = virtualinvoke $r19.<java.util.Calendar: int get(int)>(13);	$r12 = "ss";	$i12 = virtualinvoke $r12.<java.lang.String: int length()>();	staticinvoke <com.google.javascript.jscomp.jarjar.com.google.gson.internal.bind.util.ISO8601Utils: void padInt(java.lang.StringBuilder,int,int)>($r20, $i13, $i12);	if z0 == 0 goto $l14 = virtualinvoke $r19.<java.util.Calendar: long getTimeInMillis()>();	$l14 = virtualinvoke $r19.<java.util.Calendar: long getTimeInMillis()>();	$i25 = virtualinvoke r1.<java.util.TimeZone: int getOffset(long)>($l14);	if $i25 == 0 goto virtualinvoke $r20.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(90);	virtualinvoke $r20.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(90);	$r13 = virtualinvoke $r20.<java.lang.StringBuilder: java.lang.String toString()>();	return $r13
;block_num 8