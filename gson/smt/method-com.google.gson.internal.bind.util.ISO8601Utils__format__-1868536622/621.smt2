(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1581 0)
(declare-sort var1577 0)
(declare-sort var43 0)
(declare-sort var349 0)
(declare-sort var1984 0)
(declare-sort var1354 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var43-init () var43)
(declare-fun <init>/-843876822 (var43 var1577 var349) void)
(declare-fun setTime/-1821537528 (var1984 var1581) void)
(declare-fun cast-from-var43-to-var1984 (var43) var1984)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-fun getRawOffset/793408012 (var1577) Int)
(declare-fun String-init () String)
(declare-fun <init>/543593434 (String Int) void)
(declare-fun get/335439681 (var1984 Int) Int)
(declare-fun var1354_padInt/-157990007 (String Int Int) void)
(declare-fun append/-1166366385 (String Int) String)
(declare-fun getTimeInMillis/-1265389133 (var1984) Int)
(declare-fun getOffset/846977212 (var1577 Int) Int)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var1581 var1581)
(declare-const null-Bool Bool)
(declare-const null-var1577 var1577)
(declare-const var349-US var349)
(declare-const var1113 var1581) ; Statement: r3 := @parameter0: java.util.Date 
(assert (not (= var1113 null-var1581)))
(declare-const var972 Bool) ; Statement: z0 := @parameter1: boolean 
(assert (not (= var972 null-Bool)))
(declare-const var1245 var1577) ; Statement: r1 := @parameter2: java.util.TimeZone 
(assert (not (= var1245 null-var1577)))
(define-const var2395 var43 var43-init) ; Statement: $r19 = new java.util.GregorianCalendar 
(define-const var638 var349 var349-US) ; Statement: $r2 = <java.util.Locale: java.util.Locale US> 
(assert true)
;(assert (<init>/-843876822 var2395 var1245 var638)) ; Statement: specialinvoke $r19.<java.util.GregorianCalendar: void <init>(java.util.TimeZone,java.util.Locale)>(r1, $r2) 

(declare-const var2395!1 var43)
(declare-const var1245!1 var1577)
(declare-const var638!1 var349)
(assert true)
;(assert (setTime/-1821537528 (cast-from-var43-to-var1984 var2395!1) var1113)) ; Statement: virtualinvoke $r19.<java.util.Calendar: void setTime(java.util.Date)>(r3) 

(declare-const var2395!2 var43)
(declare-const var1113!1 var1581)
(define-const var1762 String "yyyy-MM-ddThh:mm:ss") ; Statement: $r4 = "yyyy-MM-ddThh:mm:ss" 
(assert true)
(define-const var1758 Int (length/-134980193 var1762)) ; Statement: i28 = virtualinvoke $r4.<java.lang.String: int length()>() 
 ; Statement: if z0 == 0 goto $i29 = 0 
(assert (not (= (ite var972 1 0) 0))) ; Negate: Cond: z0 == 0  
(define-const var2313 String ".sss") ; Statement: $r18 = ".sss" 
(assert true)
(define-const var733 Int (length/-134980193 var2313)) ; Statement: $i29 = virtualinvoke $r18.<java.lang.String: int length()>() 
 ; Statement: goto [?= $i27 = i28 + $i29] 
(assert true) ; Non Conditional
(define-const var2671 Int (+ var1758 var733)) ; Statement: $i27 = i28 + $i29 
(assert true)
(define-const var464 Int (getRawOffset/793408012 var1245!1)) ; Statement: $i0 = virtualinvoke r1.<java.util.TimeZone: int getRawOffset()>() 
 ; Statement: if $i0 != 0 goto $r5 = "+hh:mm" 
(assert (not (not (= var464 0)))) ; Negate: Cond: $i0 != 0  
(define-const var951 String "Z") ; Statement: $r17 = "Z" 
(assert true)
(define-const var1415 Int (length/-134980193 var951)) ; Statement: $i30 = virtualinvoke $r17.<java.lang.String: int length()>() 
 ; Statement: goto [?= $i26 = $i27 + $i30] 
(assert true) ; Non Conditional
(define-const var3062 Int (+ var2671 var1415)) ; Statement: $i26 = $i27 + $i30 
(define-const var1033 String String-init) ; Statement: $r20 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/543593434 var1033 var3062)) ; Statement: specialinvoke $r20.<java.lang.StringBuilder: void <init>(int)>($i26) 

(declare-const var1033!1 String)
(declare-const var3062!1 Int)
(assert true)
(define-const var1666 Int (get/335439681 (cast-from-var43-to-var1984 var2395!2) 1)) ; Statement: $i2 = virtualinvoke $r19.<java.util.Calendar: int get(int)>(1) 
(define-const var1317 String "yyyy") ; Statement: $r7 = "yyyy" 
(assert true)
(define-const var1870 Int (length/-134980193 var1317)) ; Statement: $i1 = virtualinvoke $r7.<java.lang.String: int length()>() 
;(assert (var1354_padInt/-157990007 var1033!1 var1666 var1870)) ; Statement: staticinvoke <com.google.gson.internal.bind.util.ISO8601Utils: void padInt(java.lang.StringBuilder,int,int)>($r20, $i2, $i1) 

(declare-const var1033!2 String)
(declare-const var1666!1 Int)
(declare-const var1870!1 Int)
(assert true)
;(assert (append/-1166366385 var1033!2 45)) ; Statement: virtualinvoke $r20.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(45) 
(declare-const var1033!3 String)
(assert (str.prefixof var1033!2 var1033!3))
(assert true)
(define-const var702 Int (get/335439681 (cast-from-var43-to-var1984 var2395!2) 2)) ; Statement: $i3 = virtualinvoke $r19.<java.util.Calendar: int get(int)>(2) 
(define-const var1124 Int (+ var702 1)) ; Statement: $i5 = $i3 + 1 
(define-const var2683 String "MM") ; Statement: $r8 = "MM" 
(assert true)
(define-const var2618 Int (length/-134980193 var2683)) ; Statement: $i4 = virtualinvoke $r8.<java.lang.String: int length()>() 
;(assert (var1354_padInt/-157990007 var1033!3 var1124 var2618)) ; Statement: staticinvoke <com.google.gson.internal.bind.util.ISO8601Utils: void padInt(java.lang.StringBuilder,int,int)>($r20, $i5, $i4) 

(declare-const var1033!4 String)
(declare-const var1124!1 Int)
(declare-const var2618!1 Int)
(assert true)
;(assert (append/-1166366385 var1033!4 45)) ; Statement: virtualinvoke $r20.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(45) 
(declare-const var1033!5 String)
(assert (str.prefixof var1033!4 var1033!5))
(assert true)
(define-const var2644 Int (get/335439681 (cast-from-var43-to-var1984 var2395!2) 5)) ; Statement: $i7 = virtualinvoke $r19.<java.util.Calendar: int get(int)>(5) 
(define-const var3023 String "dd") ; Statement: $r9 = "dd" 
(assert true)
(define-const var338 Int (length/-134980193 var3023)) ; Statement: $i6 = virtualinvoke $r9.<java.lang.String: int length()>() 
;(assert (var1354_padInt/-157990007 var1033!5 var2644 var338)) ; Statement: staticinvoke <com.google.gson.internal.bind.util.ISO8601Utils: void padInt(java.lang.StringBuilder,int,int)>($r20, $i7, $i6) 

(declare-const var1033!6 String)
(declare-const var2644!1 Int)
(declare-const var338!1 Int)
(assert true)
;(assert (append/-1166366385 var1033!6 84)) ; Statement: virtualinvoke $r20.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(84) 
(declare-const var1033!7 String)
(assert (str.prefixof var1033!6 var1033!7))
(assert true)
(define-const var2234 Int (get/335439681 (cast-from-var43-to-var1984 var2395!2) 11)) ; Statement: $i9 = virtualinvoke $r19.<java.util.Calendar: int get(int)>(11) 
(define-const var158 String "hh") ; Statement: $r10 = "hh" 
(assert true)
(define-const var1427 Int (length/-134980193 var158)) ; Statement: $i8 = virtualinvoke $r10.<java.lang.String: int length()>() 
;(assert (var1354_padInt/-157990007 var1033!7 var2234 var1427)) ; Statement: staticinvoke <com.google.gson.internal.bind.util.ISO8601Utils: void padInt(java.lang.StringBuilder,int,int)>($r20, $i9, $i8) 

(declare-const var1033!8 String)
(declare-const var2234!1 Int)
(declare-const var1427!1 Int)
(assert true)
;(assert (append/-1166366385 var1033!8 58)) ; Statement: virtualinvoke $r20.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(58) 
(declare-const var1033!9 String)
(assert (str.prefixof var1033!8 var1033!9))
(assert true)
(define-const var2833 Int (get/335439681 (cast-from-var43-to-var1984 var2395!2) 12)) ; Statement: $i11 = virtualinvoke $r19.<java.util.Calendar: int get(int)>(12) 
(define-const var1268 String "mm") ; Statement: $r11 = "mm" 
(assert true)
(define-const var2895 Int (length/-134980193 var1268)) ; Statement: $i10 = virtualinvoke $r11.<java.lang.String: int length()>() 
;(assert (var1354_padInt/-157990007 var1033!9 var2833 var2895)) ; Statement: staticinvoke <com.google.gson.internal.bind.util.ISO8601Utils: void padInt(java.lang.StringBuilder,int,int)>($r20, $i11, $i10) 

(declare-const var1033!10 String)
(declare-const var2833!1 Int)
(declare-const var2895!1 Int)
(assert true)
;(assert (append/-1166366385 var1033!10 58)) ; Statement: virtualinvoke $r20.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(58) 
(declare-const var1033!11 String)
(assert (str.prefixof var1033!10 var1033!11))
(assert true)
(define-const var1964 Int (get/335439681 (cast-from-var43-to-var1984 var2395!2) 13)) ; Statement: $i13 = virtualinvoke $r19.<java.util.Calendar: int get(int)>(13) 
(define-const var3149 String "ss") ; Statement: $r12 = "ss" 
(assert true)
(define-const var818 Int (length/-134980193 var3149)) ; Statement: $i12 = virtualinvoke $r12.<java.lang.String: int length()>() 
;(assert (var1354_padInt/-157990007 var1033!11 var1964 var818)) ; Statement: staticinvoke <com.google.gson.internal.bind.util.ISO8601Utils: void padInt(java.lang.StringBuilder,int,int)>($r20, $i13, $i12) 

(declare-const var1033!12 String)
(declare-const var1964!1 Int)
(declare-const var818!1 Int)
 ; Statement: if z0 == 0 goto $l14 = virtualinvoke $r19.<java.util.Calendar: long getTimeInMillis()>() 
(assert (= (ite var972 1 0) 0)) ; Cond: z0 == 0 
(assert true)
(define-const var2287 Int (getTimeInMillis/-1265389133 (cast-from-var43-to-var1984 var2395!2))) ; Statement: $l14 = virtualinvoke $r19.<java.util.Calendar: long getTimeInMillis()>() 
(assert true)
(define-const var253 Int (getOffset/846977212 var1245!1 var2287)) ; Statement: $i25 = virtualinvoke r1.<java.util.TimeZone: int getOffset(long)>($l14) 
 ; Statement: if $i25 == 0 goto virtualinvoke $r20.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(90) 
(assert (= var253 0)) ; Cond: $i25 == 0 
(assert true)
;(assert (append/-1166366385 var1033!12 90)) ; Statement: virtualinvoke $r20.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(90) 
(declare-const var1033!13 String)
(assert (str.prefixof var1033!12 var1033!13))
(assert true) ; Non Conditional
(assert true)
(define-const var3850 String (toString/-2075883882 var1033!13)) ; Statement: $r13 = virtualinvoke $r20.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r13 
(check-sat)
(get-model)
(get-unsat-core)
; {var43-init=([], java.util.GregorianCalendar), <init>/-843876822=([java.util.GregorianCalendar, java.util.TimeZone, java.util.Locale], void), setTime/-1821537528=([java.util.Calendar, java.util.Date], void), cast-from-var43-to-var1984=([java.util.GregorianCalendar], java.util.Calendar), length/-134980193=([java.lang.String], int), getRawOffset/793408012=([java.util.TimeZone], int), String-init=([], java.lang.StringBuilder), <init>/543593434=([java.lang.StringBuilder, int], void), get/335439681=([java.util.Calendar, int], int), var1354_padInt/-157990007=([java.lang.StringBuilder, int, int], void), append/-1166366385=([java.lang.StringBuilder, char], java.lang.StringBuilder), getTimeInMillis/-1265389133=([java.util.Calendar], long), getOffset/846977212=([java.util.TimeZone, long], int), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var1581=java.util.Date, var1113=r3, var972=z0, var1577=java.util.TimeZone, var1245=r1, var43=java.util.GregorianCalendar, var2395=$r19, var349=java.util.Locale, var638=$r2, var1984=java.util.Calendar, var1762=$r4, var1758=i28, var2313=$r18, var733=$i29, var2671=$i27, var464=$i0, var951=$r17, var1415=$i30, var3062=$i26, var1033=$r20, var1666=$i2, var1317=$r7, var1870=$i1, var1354=com.google.gson.internal.bind.util.ISO8601Utils, var702=$i3, var1124=$i5, var2683=$r8, var2618=$i4, var2644=$i7, var3023=$r9, var338=$i6, var2234=$i9, var158=$r10, var1427=$i8, var2833=$i11, var1268=$r11, var2895=$i10, var1964=$i13, var3149=$r12, var818=$i12, var2287=$l14, var253=$i25, var3850=$r13}
; {java.util.Date=var1581, r3=var1113, z0=var972, java.util.TimeZone=var1577, r1=var1245, java.util.GregorianCalendar=var43, $r19=var2395, java.util.Locale=var349, $r2=var638, java.util.Calendar=var1984, $r4=var1762, i28=var1758, $r18=var2313, $i29=var733, $i27=var2671, $i0=var464, $r17=var951, $i30=var1415, $i26=var3062, $r20=var1033, $i2=var1666, $r7=var1317, $i1=var1870, com.google.gson.internal.bind.util.ISO8601Utils=var1354, $i3=var702, $i5=var1124, $r8=var2683, $i4=var2618, $i7=var2644, $r9=var3023, $i6=var338, $i9=var2234, $r10=var158, $i8=var1427, $i11=var2833, $r11=var1268, $i10=var2895, $i13=var1964, $r12=var3149, $i12=var818, $l14=var2287, $i25=var253, $r13=var3850}
;seq <java.lang.String: int length()>;	<java.lang.String: int length()>;	<java.lang.String: int length()>;	<java.lang.StringBuilder: void <init>(int)>;	<java.lang.String: int length()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.String: int length()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.String: int length()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.String: int length()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.String: int length()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.String: int length()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.String: int length()>": 9,"<java.lang.StringBuilder: void <init>(int)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(char)>": 6,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r3 := @parameter0: java.util.Date;	z0 := @parameter1: boolean;	r1 := @parameter2: java.util.TimeZone;	$r19 = new java.util.GregorianCalendar;	$r2 = <java.util.Locale: java.util.Locale US>;	specialinvoke $r19.<java.util.GregorianCalendar: void <init>(java.util.TimeZone,java.util.Locale)>(r1, $r2);	virtualinvoke $r19.<java.util.Calendar: void setTime(java.util.Date)>(r3);	$r4 = "yyyy-MM-ddThh:mm:ss";	i28 = virtualinvoke $r4.<java.lang.String: int length()>();	if z0 == 0 goto $i29 = 0;	$r18 = ".sss";	$i29 = virtualinvoke $r18.<java.lang.String: int length()>();	goto [?= $i27 = i28 + $i29];	$i27 = i28 + $i29;	$i0 = virtualinvoke r1.<java.util.TimeZone: int getRawOffset()>();	if $i0 != 0 goto $r5 = "+hh:mm";	$r17 = "Z";	$i30 = virtualinvoke $r17.<java.lang.String: int length()>();	goto [?= $i26 = $i27 + $i30];	$i26 = $i27 + $i30;	$r20 = new java.lang.StringBuilder;	specialinvoke $r20.<java.lang.StringBuilder: void <init>(int)>($i26);	$i2 = virtualinvoke $r19.<java.util.Calendar: int get(int)>(1);	$r7 = "yyyy";	$i1 = virtualinvoke $r7.<java.lang.String: int length()>();	staticinvoke <com.google.gson.internal.bind.util.ISO8601Utils: void padInt(java.lang.StringBuilder,int,int)>($r20, $i2, $i1);	virtualinvoke $r20.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(45);	$i3 = virtualinvoke $r19.<java.util.Calendar: int get(int)>(2);	$i5 = $i3 + 1;	$r8 = "MM";	$i4 = virtualinvoke $r8.<java.lang.String: int length()>();	staticinvoke <com.google.gson.internal.bind.util.ISO8601Utils: void padInt(java.lang.StringBuilder,int,int)>($r20, $i5, $i4);	virtualinvoke $r20.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(45);	$i7 = virtualinvoke $r19.<java.util.Calendar: int get(int)>(5);	$r9 = "dd";	$i6 = virtualinvoke $r9.<java.lang.String: int length()>();	staticinvoke <com.google.gson.internal.bind.util.ISO8601Utils: void padInt(java.lang.StringBuilder,int,int)>($r20, $i7, $i6);	virtualinvoke $r20.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(84);	$i9 = virtualinvoke $r19.<java.util.Calendar: int get(int)>(11);	$r10 = "hh";	$i8 = virtualinvoke $r10.<java.lang.String: int length()>();	staticinvoke <com.google.gson.internal.bind.util.ISO8601Utils: void padInt(java.lang.StringBuilder,int,int)>($r20, $i9, $i8);	virtualinvoke $r20.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(58);	$i11 = virtualinvoke $r19.<java.util.Calendar: int get(int)>(12);	$r11 = "mm";	$i10 = virtualinvoke $r11.<java.lang.String: int length()>();	staticinvoke <com.google.gson.internal.bind.util.ISO8601Utils: void padInt(java.lang.StringBuilder,int,int)>($r20, $i11, $i10);	virtualinvoke $r20.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(58);	$i13 = virtualinvoke $r19.<java.util.Calendar: int get(int)>(13);	$r12 = "ss";	$i12 = virtualinvoke $r12.<java.lang.String: int length()>();	staticinvoke <com.google.gson.internal.bind.util.ISO8601Utils: void padInt(java.lang.StringBuilder,int,int)>($r20, $i13, $i12);	if z0 == 0 goto $l14 = virtualinvoke $r19.<java.util.Calendar: long getTimeInMillis()>();	$l14 = virtualinvoke $r19.<java.util.Calendar: long getTimeInMillis()>();	$i25 = virtualinvoke r1.<java.util.TimeZone: int getOffset(long)>($l14);	if $i25 == 0 goto virtualinvoke $r20.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(90);	virtualinvoke $r20.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(90);	$r13 = virtualinvoke $r20.<java.lang.StringBuilder: java.lang.String toString()>();	return $r13
;block_num 8