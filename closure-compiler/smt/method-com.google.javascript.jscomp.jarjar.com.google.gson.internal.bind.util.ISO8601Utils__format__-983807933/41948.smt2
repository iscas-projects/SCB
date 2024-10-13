(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var701 0)
(declare-sort var349 0)
(declare-sort var2690 0)
(declare-sort var34 0)
(declare-sort var82 0)
(declare-sort var2944 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var2690-init () var2690)
(declare-fun <init>/-843876822 (var2690 var349 var34) void)
(declare-fun setTime/-1821537528 (var82 var701) void)
(declare-fun cast-from-var2690-to-var82 (var2690) var82)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-fun getRawOffset/793408012 (var349) Int)
(declare-fun String-init () String)
(declare-fun <init>/543593434 (String Int) void)
(declare-fun get/335439681 (var82 Int) Int)
(declare-fun var2944_padInt/-831434310 (String Int Int) void)
(declare-fun append/-1166366385 (String Int) String)
(declare-fun getTimeInMillis/-1265389133 (var82) Int)
(declare-fun getOffset/846977212 (var349 Int) Int)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var701 var701)
(declare-const null-Bool Bool)
(declare-const null-var349 var349)
(declare-const var34-US var34)
(declare-const var1322 var701) ; Statement: r3 := @parameter0: java.util.Date 
(assert (not (= var1322 null-var701)))
(declare-const var1962 Bool) ; Statement: z0 := @parameter1: boolean 
(assert (not (= var1962 null-Bool)))
(declare-const var265 var349) ; Statement: r1 := @parameter2: java.util.TimeZone 
(assert (not (= var265 null-var349)))
(define-const var480 var2690 var2690-init) ; Statement: $r19 = new java.util.GregorianCalendar 
(define-const var2982 var34 var34-US) ; Statement: $r2 = <java.util.Locale: java.util.Locale US> 
(assert true)
;(assert (<init>/-843876822 var480 var265 var2982)) ; Statement: specialinvoke $r19.<java.util.GregorianCalendar: void <init>(java.util.TimeZone,java.util.Locale)>(r1, $r2) 

(declare-const var480!1 var2690)
(declare-const var265!1 var349)
(declare-const var2982!1 var34)
(assert true)
;(assert (setTime/-1821537528 (cast-from-var2690-to-var82 var480!1) var1322)) ; Statement: virtualinvoke $r19.<java.util.Calendar: void setTime(java.util.Date)>(r3) 

(declare-const var480!2 var2690)
(declare-const var1322!1 var701)
(define-const var1027 String "yyyy-MM-ddThh:mm:ss") ; Statement: $r4 = "yyyy-MM-ddThh:mm:ss" 
(assert true)
(define-const var116 Int (length/-134980193 var1027)) ; Statement: i28 = virtualinvoke $r4.<java.lang.String: int length()>() 
 ; Statement: if z0 == 0 goto $i29 = 0 
(assert (= (ite var1962 1 0) 0)) ; Cond: z0 == 0 
(define-const var1371 Int 0) ; Statement: $i29 = 0 
(assert true) ; Non Conditional
(define-const var1232 Int (+ var116 var1371)) ; Statement: $i27 = i28 + $i29 
(assert true)
(define-const var837 Int (getRawOffset/793408012 var265!1)) ; Statement: $i0 = virtualinvoke r1.<java.util.TimeZone: int getRawOffset()>() 
 ; Statement: if $i0 != 0 goto $r5 = "+hh:mm" 
(assert (not (not (= var837 0)))) ; Negate: Cond: $i0 != 0  
(define-const var3450 String "Z") ; Statement: $r17 = "Z" 
(assert true)
(define-const var2334 Int (length/-134980193 var3450)) ; Statement: $i30 = virtualinvoke $r17.<java.lang.String: int length()>() 
 ; Statement: goto [?= $i26 = $i27 + $i30] 
(assert true) ; Non Conditional
(define-const var1920 Int (+ var1232 var2334)) ; Statement: $i26 = $i27 + $i30 
(define-const var2107 String String-init) ; Statement: $r20 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/543593434 var2107 var1920)) ; Statement: specialinvoke $r20.<java.lang.StringBuilder: void <init>(int)>($i26) 

(declare-const var2107!1 String)
(declare-const var1920!1 Int)
(assert true)
(define-const var2801 Int (get/335439681 (cast-from-var2690-to-var82 var480!2) 1)) ; Statement: $i2 = virtualinvoke $r19.<java.util.Calendar: int get(int)>(1) 
(define-const var1788 String "yyyy") ; Statement: $r7 = "yyyy" 
(assert true)
(define-const var3255 Int (length/-134980193 var1788)) ; Statement: $i1 = virtualinvoke $r7.<java.lang.String: int length()>() 
;(assert (var2944_padInt/-831434310 var2107!1 var2801 var3255)) ; Statement: staticinvoke <com.google.javascript.jscomp.jarjar.com.google.gson.internal.bind.util.ISO8601Utils: void padInt(java.lang.StringBuilder,int,int)>($r20, $i2, $i1) 

(declare-const var2107!2 String)
(declare-const var2801!1 Int)
(declare-const var3255!1 Int)
(assert true)
;(assert (append/-1166366385 var2107!2 45)) ; Statement: virtualinvoke $r20.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(45) 
(declare-const var2107!3 String)
(assert (str.prefixof var2107!2 var2107!3))
(assert true)
(define-const var2398 Int (get/335439681 (cast-from-var2690-to-var82 var480!2) 2)) ; Statement: $i3 = virtualinvoke $r19.<java.util.Calendar: int get(int)>(2) 
(define-const var3330 Int (+ var2398 1)) ; Statement: $i5 = $i3 + 1 
(define-const var2197 String "MM") ; Statement: $r8 = "MM" 
(assert true)
(define-const var3048 Int (length/-134980193 var2197)) ; Statement: $i4 = virtualinvoke $r8.<java.lang.String: int length()>() 
;(assert (var2944_padInt/-831434310 var2107!3 var3330 var3048)) ; Statement: staticinvoke <com.google.javascript.jscomp.jarjar.com.google.gson.internal.bind.util.ISO8601Utils: void padInt(java.lang.StringBuilder,int,int)>($r20, $i5, $i4) 

(declare-const var2107!4 String)
(declare-const var3330!1 Int)
(declare-const var3048!1 Int)
(assert true)
;(assert (append/-1166366385 var2107!4 45)) ; Statement: virtualinvoke $r20.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(45) 
(declare-const var2107!5 String)
(assert (str.prefixof var2107!4 var2107!5))
(assert true)
(define-const var2349 Int (get/335439681 (cast-from-var2690-to-var82 var480!2) 5)) ; Statement: $i7 = virtualinvoke $r19.<java.util.Calendar: int get(int)>(5) 
(define-const var3336 String "dd") ; Statement: $r9 = "dd" 
(assert true)
(define-const var531 Int (length/-134980193 var3336)) ; Statement: $i6 = virtualinvoke $r9.<java.lang.String: int length()>() 
;(assert (var2944_padInt/-831434310 var2107!5 var2349 var531)) ; Statement: staticinvoke <com.google.javascript.jscomp.jarjar.com.google.gson.internal.bind.util.ISO8601Utils: void padInt(java.lang.StringBuilder,int,int)>($r20, $i7, $i6) 

(declare-const var2107!6 String)
(declare-const var2349!1 Int)
(declare-const var531!1 Int)
(assert true)
;(assert (append/-1166366385 var2107!6 84)) ; Statement: virtualinvoke $r20.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(84) 
(declare-const var2107!7 String)
(assert (str.prefixof var2107!6 var2107!7))
(assert true)
(define-const var46 Int (get/335439681 (cast-from-var2690-to-var82 var480!2) 11)) ; Statement: $i9 = virtualinvoke $r19.<java.util.Calendar: int get(int)>(11) 
(define-const var216 String "hh") ; Statement: $r10 = "hh" 
(assert true)
(define-const var3201 Int (length/-134980193 var216)) ; Statement: $i8 = virtualinvoke $r10.<java.lang.String: int length()>() 
;(assert (var2944_padInt/-831434310 var2107!7 var46 var3201)) ; Statement: staticinvoke <com.google.javascript.jscomp.jarjar.com.google.gson.internal.bind.util.ISO8601Utils: void padInt(java.lang.StringBuilder,int,int)>($r20, $i9, $i8) 

(declare-const var2107!8 String)
(declare-const var46!1 Int)
(declare-const var3201!1 Int)
(assert true)
;(assert (append/-1166366385 var2107!8 58)) ; Statement: virtualinvoke $r20.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(58) 
(declare-const var2107!9 String)
(assert (str.prefixof var2107!8 var2107!9))
(assert true)
(define-const var202 Int (get/335439681 (cast-from-var2690-to-var82 var480!2) 12)) ; Statement: $i11 = virtualinvoke $r19.<java.util.Calendar: int get(int)>(12) 
(define-const var1713 String "mm") ; Statement: $r11 = "mm" 
(assert true)
(define-const var257 Int (length/-134980193 var1713)) ; Statement: $i10 = virtualinvoke $r11.<java.lang.String: int length()>() 
;(assert (var2944_padInt/-831434310 var2107!9 var202 var257)) ; Statement: staticinvoke <com.google.javascript.jscomp.jarjar.com.google.gson.internal.bind.util.ISO8601Utils: void padInt(java.lang.StringBuilder,int,int)>($r20, $i11, $i10) 

(declare-const var2107!10 String)
(declare-const var202!1 Int)
(declare-const var257!1 Int)
(assert true)
;(assert (append/-1166366385 var2107!10 58)) ; Statement: virtualinvoke $r20.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(58) 
(declare-const var2107!11 String)
(assert (str.prefixof var2107!10 var2107!11))
(assert true)
(define-const var2743 Int (get/335439681 (cast-from-var2690-to-var82 var480!2) 13)) ; Statement: $i13 = virtualinvoke $r19.<java.util.Calendar: int get(int)>(13) 
(define-const var3647 String "ss") ; Statement: $r12 = "ss" 
(assert true)
(define-const var1729 Int (length/-134980193 var3647)) ; Statement: $i12 = virtualinvoke $r12.<java.lang.String: int length()>() 
;(assert (var2944_padInt/-831434310 var2107!11 var2743 var1729)) ; Statement: staticinvoke <com.google.javascript.jscomp.jarjar.com.google.gson.internal.bind.util.ISO8601Utils: void padInt(java.lang.StringBuilder,int,int)>($r20, $i13, $i12) 

(declare-const var2107!12 String)
(declare-const var2743!1 Int)
(declare-const var1729!1 Int)
 ; Statement: if z0 == 0 goto $l14 = virtualinvoke $r19.<java.util.Calendar: long getTimeInMillis()>() 
(assert (= (ite var1962 1 0) 0)) ; Cond: z0 == 0 
(assert true)
(define-const var3199 Int (getTimeInMillis/-1265389133 (cast-from-var2690-to-var82 var480!2))) ; Statement: $l14 = virtualinvoke $r19.<java.util.Calendar: long getTimeInMillis()>() 
(assert true)
(define-const var1360 Int (getOffset/846977212 var265!1 var3199)) ; Statement: $i25 = virtualinvoke r1.<java.util.TimeZone: int getOffset(long)>($l14) 
 ; Statement: if $i25 == 0 goto virtualinvoke $r20.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(90) 
(assert (= var1360 0)) ; Cond: $i25 == 0 
(assert true)
;(assert (append/-1166366385 var2107!12 90)) ; Statement: virtualinvoke $r20.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(90) 
(declare-const var2107!13 String)
(assert (str.prefixof var2107!12 var2107!13))
(assert true) ; Non Conditional
(assert true)
(define-const var740 String (toString/-2075883882 var2107!13)) ; Statement: $r13 = virtualinvoke $r20.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r13 
(check-sat)
(get-model)
(get-unsat-core)
; {var2690-init=([], java.util.GregorianCalendar), <init>/-843876822=([java.util.GregorianCalendar, java.util.TimeZone, java.util.Locale], void), setTime/-1821537528=([java.util.Calendar, java.util.Date], void), cast-from-var2690-to-var82=([java.util.GregorianCalendar], java.util.Calendar), length/-134980193=([java.lang.String], int), getRawOffset/793408012=([java.util.TimeZone], int), String-init=([], java.lang.StringBuilder), <init>/543593434=([java.lang.StringBuilder, int], void), get/335439681=([java.util.Calendar, int], int), var2944_padInt/-831434310=([java.lang.StringBuilder, int, int], void), append/-1166366385=([java.lang.StringBuilder, char], java.lang.StringBuilder), getTimeInMillis/-1265389133=([java.util.Calendar], long), getOffset/846977212=([java.util.TimeZone, long], int), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var701=java.util.Date, var1322=r3, var1962=z0, var349=java.util.TimeZone, var265=r1, var2690=java.util.GregorianCalendar, var480=$r19, var34=java.util.Locale, var2982=$r2, var82=java.util.Calendar, var1027=$r4, var116=i28, var1371=$i29, var1232=$i27, var837=$i0, var3450=$r17, var2334=$i30, var1920=$i26, var2107=$r20, var2801=$i2, var1788=$r7, var3255=$i1, var2944=com.google.javascript.jscomp.jarjar.com.google.gson.internal.bind.util.ISO8601Utils, var2398=$i3, var3330=$i5, var2197=$r8, var3048=$i4, var2349=$i7, var3336=$r9, var531=$i6, var46=$i9, var216=$r10, var3201=$i8, var202=$i11, var1713=$r11, var257=$i10, var2743=$i13, var3647=$r12, var1729=$i12, var3199=$l14, var1360=$i25, var740=$r13}
; {java.util.Date=var701, r3=var1322, z0=var1962, java.util.TimeZone=var349, r1=var265, java.util.GregorianCalendar=var2690, $r19=var480, java.util.Locale=var34, $r2=var2982, java.util.Calendar=var82, $r4=var1027, i28=var116, $i29=var1371, $i27=var1232, $i0=var837, $r17=var3450, $i30=var2334, $i26=var1920, $r20=var2107, $i2=var2801, $r7=var1788, $i1=var3255, com.google.javascript.jscomp.jarjar.com.google.gson.internal.bind.util.ISO8601Utils=var2944, $i3=var2398, $i5=var3330, $r8=var2197, $i4=var3048, $i7=var2349, $r9=var3336, $i6=var531, $i9=var46, $r10=var216, $i8=var3201, $i11=var202, $r11=var1713, $i10=var257, $i13=var2743, $r12=var3647, $i12=var1729, $l14=var3199, $i25=var1360, $r13=var740}
;seq <java.lang.String: int length()>;	<java.lang.String: int length()>;	<java.lang.StringBuilder: void <init>(int)>;	<java.lang.String: int length()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.String: int length()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.String: int length()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.String: int length()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.String: int length()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.String: int length()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.String: int length()>": 8,"<java.lang.StringBuilder: void <init>(int)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(char)>": 6,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r3 := @parameter0: java.util.Date;	z0 := @parameter1: boolean;	r1 := @parameter2: java.util.TimeZone;	$r19 = new java.util.GregorianCalendar;	$r2 = <java.util.Locale: java.util.Locale US>;	specialinvoke $r19.<java.util.GregorianCalendar: void <init>(java.util.TimeZone,java.util.Locale)>(r1, $r2);	virtualinvoke $r19.<java.util.Calendar: void setTime(java.util.Date)>(r3);	$r4 = "yyyy-MM-ddThh:mm:ss";	i28 = virtualinvoke $r4.<java.lang.String: int length()>();	if z0 == 0 goto $i29 = 0;	$i29 = 0;	$i27 = i28 + $i29;	$i0 = virtualinvoke r1.<java.util.TimeZone: int getRawOffset()>();	if $i0 != 0 goto $r5 = "+hh:mm";	$r17 = "Z";	$i30 = virtualinvoke $r17.<java.lang.String: int length()>();	goto [?= $i26 = $i27 + $i30];	$i26 = $i27 + $i30;	$r20 = new java.lang.StringBuilder;	specialinvoke $r20.<java.lang.StringBuilder: void <init>(int)>($i26);	$i2 = virtualinvoke $r19.<java.util.Calendar: int get(int)>(1);	$r7 = "yyyy";	$i1 = virtualinvoke $r7.<java.lang.String: int length()>();	staticinvoke <com.google.javascript.jscomp.jarjar.com.google.gson.internal.bind.util.ISO8601Utils: void padInt(java.lang.StringBuilder,int,int)>($r20, $i2, $i1);	virtualinvoke $r20.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(45);	$i3 = virtualinvoke $r19.<java.util.Calendar: int get(int)>(2);	$i5 = $i3 + 1;	$r8 = "MM";	$i4 = virtualinvoke $r8.<java.lang.String: int length()>();	staticinvoke <com.google.javascript.jscomp.jarjar.com.google.gson.internal.bind.util.ISO8601Utils: void padInt(java.lang.StringBuilder,int,int)>($r20, $i5, $i4);	virtualinvoke $r20.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(45);	$i7 = virtualinvoke $r19.<java.util.Calendar: int get(int)>(5);	$r9 = "dd";	$i6 = virtualinvoke $r9.<java.lang.String: int length()>();	staticinvoke <com.google.javascript.jscomp.jarjar.com.google.gson.internal.bind.util.ISO8601Utils: void padInt(java.lang.StringBuilder,int,int)>($r20, $i7, $i6);	virtualinvoke $r20.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(84);	$i9 = virtualinvoke $r19.<java.util.Calendar: int get(int)>(11);	$r10 = "hh";	$i8 = virtualinvoke $r10.<java.lang.String: int length()>();	staticinvoke <com.google.javascript.jscomp.jarjar.com.google.gson.internal.bind.util.ISO8601Utils: void padInt(java.lang.StringBuilder,int,int)>($r20, $i9, $i8);	virtualinvoke $r20.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(58);	$i11 = virtualinvoke $r19.<java.util.Calendar: int get(int)>(12);	$r11 = "mm";	$i10 = virtualinvoke $r11.<java.lang.String: int length()>();	staticinvoke <com.google.javascript.jscomp.jarjar.com.google.gson.internal.bind.util.ISO8601Utils: void padInt(java.lang.StringBuilder,int,int)>($r20, $i11, $i10);	virtualinvoke $r20.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(58);	$i13 = virtualinvoke $r19.<java.util.Calendar: int get(int)>(13);	$r12 = "ss";	$i12 = virtualinvoke $r12.<java.lang.String: int length()>();	staticinvoke <com.google.javascript.jscomp.jarjar.com.google.gson.internal.bind.util.ISO8601Utils: void padInt(java.lang.StringBuilder,int,int)>($r20, $i13, $i12);	if z0 == 0 goto $l14 = virtualinvoke $r19.<java.util.Calendar: long getTimeInMillis()>();	$l14 = virtualinvoke $r19.<java.util.Calendar: long getTimeInMillis()>();	$i25 = virtualinvoke r1.<java.util.TimeZone: int getOffset(long)>($l14);	if $i25 == 0 goto virtualinvoke $r20.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(90);	virtualinvoke $r20.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(90);	$r13 = virtualinvoke $r20.<java.lang.StringBuilder: java.lang.String toString()>();	return $r13
;block_num 8