(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3206 0)
(declare-sort var2846 0)
(declare-sort var1491 0)
(declare-sort var2367 0)
(declare-sort var3847 0)
(declare-sort var1386 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var1491-init () var1491)
(declare-fun <init>/-843876822 (var1491 var2846 var2367) void)
(declare-fun setTime/-1821537528 (var3847 var3206) void)
(declare-fun cast-from-var1491-to-var3847 (var1491) var3847)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-fun getRawOffset/793408012 (var2846) Int)
(declare-fun String-init () String)
(declare-fun <init>/543593434 (String Int) void)
(declare-fun get/335439681 (var3847 Int) Int)
(declare-fun var1386_padInt/-831434310 (String Int Int) void)
(declare-fun append/-1166366385 (String Int) String)
(declare-fun getTimeInMillis/-1265389133 (var3847) Int)
(declare-fun getOffset/846977212 (var2846 Int) Int)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var3206 var3206)
(declare-const null-Bool Bool)
(declare-const null-var2846 var2846)
(declare-const var2367-US var2367)
(declare-const var1592 var3206) ; Statement: r3 := @parameter0: java.util.Date 
(assert (not (= var1592 null-var3206)))
(declare-const var39 Bool) ; Statement: z0 := @parameter1: boolean 
(assert (not (= var39 null-Bool)))
(declare-const var2357 var2846) ; Statement: r1 := @parameter2: java.util.TimeZone 
(assert (not (= var2357 null-var2846)))
(define-const var3457 var1491 var1491-init) ; Statement: $r19 = new java.util.GregorianCalendar 
(define-const var1103 var2367 var2367-US) ; Statement: $r2 = <java.util.Locale: java.util.Locale US> 
(assert true)
;(assert (<init>/-843876822 var3457 var2357 var1103)) ; Statement: specialinvoke $r19.<java.util.GregorianCalendar: void <init>(java.util.TimeZone,java.util.Locale)>(r1, $r2) 

(declare-const var3457!1 var1491)
(declare-const var2357!1 var2846)
(declare-const var1103!1 var2367)
(assert true)
;(assert (setTime/-1821537528 (cast-from-var1491-to-var3847 var3457!1) var1592)) ; Statement: virtualinvoke $r19.<java.util.Calendar: void setTime(java.util.Date)>(r3) 

(declare-const var3457!2 var1491)
(declare-const var1592!1 var3206)
(define-const var3059 String "yyyy-MM-ddThh:mm:ss") ; Statement: $r4 = "yyyy-MM-ddThh:mm:ss" 
(assert true)
(define-const var2094 Int (length/-134980193 var3059)) ; Statement: i28 = virtualinvoke $r4.<java.lang.String: int length()>() 
 ; Statement: if z0 == 0 goto $i29 = 0 
(assert (not (= (ite var39 1 0) 0))) ; Negate: Cond: z0 == 0  
(define-const var2594 String ".sss") ; Statement: $r18 = ".sss" 
(assert true)
(define-const var1449 Int (length/-134980193 var2594)) ; Statement: $i29 = virtualinvoke $r18.<java.lang.String: int length()>() 
 ; Statement: goto [?= $i27 = i28 + $i29] 
(assert true) ; Non Conditional
(define-const var43 Int (+ var2094 var1449)) ; Statement: $i27 = i28 + $i29 
(assert true)
(define-const var1795 Int (getRawOffset/793408012 var2357!1)) ; Statement: $i0 = virtualinvoke r1.<java.util.TimeZone: int getRawOffset()>() 
 ; Statement: if $i0 != 0 goto $r5 = "+hh:mm" 
(assert (not (= var1795 0))) ; Cond: $i0 != 0 
(define-const var3808 String "+hh:mm") ; Statement: $r5 = "+hh:mm" 
(assert true)
(define-const var3791 Int (length/-134980193 var3808)) ; Statement: $i30 = virtualinvoke $r5.<java.lang.String: int length()>() 
(assert true) ; Non Conditional
(define-const var2564 Int (+ var43 var3791)) ; Statement: $i26 = $i27 + $i30 
(define-const var2170 String String-init) ; Statement: $r20 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/543593434 var2170 var2564)) ; Statement: specialinvoke $r20.<java.lang.StringBuilder: void <init>(int)>($i26) 

(declare-const var2170!1 String)
(declare-const var2564!1 Int)
(assert true)
(define-const var1338 Int (get/335439681 (cast-from-var1491-to-var3847 var3457!2) 1)) ; Statement: $i2 = virtualinvoke $r19.<java.util.Calendar: int get(int)>(1) 
(define-const var1905 String "yyyy") ; Statement: $r7 = "yyyy" 
(assert true)
(define-const var2140 Int (length/-134980193 var1905)) ; Statement: $i1 = virtualinvoke $r7.<java.lang.String: int length()>() 
;(assert (var1386_padInt/-831434310 var2170!1 var1338 var2140)) ; Statement: staticinvoke <com.google.javascript.jscomp.jarjar.com.google.gson.internal.bind.util.ISO8601Utils: void padInt(java.lang.StringBuilder,int,int)>($r20, $i2, $i1) 

(declare-const var2170!2 String)
(declare-const var1338!1 Int)
(declare-const var2140!1 Int)
(assert true)
;(assert (append/-1166366385 var2170!2 45)) ; Statement: virtualinvoke $r20.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(45) 
(declare-const var2170!3 String)
(assert (str.prefixof var2170!2 var2170!3))
(assert true)
(define-const var1563 Int (get/335439681 (cast-from-var1491-to-var3847 var3457!2) 2)) ; Statement: $i3 = virtualinvoke $r19.<java.util.Calendar: int get(int)>(2) 
(define-const var780 Int (+ var1563 1)) ; Statement: $i5 = $i3 + 1 
(define-const var2948 String "MM") ; Statement: $r8 = "MM" 
(assert true)
(define-const var248 Int (length/-134980193 var2948)) ; Statement: $i4 = virtualinvoke $r8.<java.lang.String: int length()>() 
;(assert (var1386_padInt/-831434310 var2170!3 var780 var248)) ; Statement: staticinvoke <com.google.javascript.jscomp.jarjar.com.google.gson.internal.bind.util.ISO8601Utils: void padInt(java.lang.StringBuilder,int,int)>($r20, $i5, $i4) 

(declare-const var2170!4 String)
(declare-const var780!1 Int)
(declare-const var248!1 Int)
(assert true)
;(assert (append/-1166366385 var2170!4 45)) ; Statement: virtualinvoke $r20.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(45) 
(declare-const var2170!5 String)
(assert (str.prefixof var2170!4 var2170!5))
(assert true)
(define-const var3075 Int (get/335439681 (cast-from-var1491-to-var3847 var3457!2) 5)) ; Statement: $i7 = virtualinvoke $r19.<java.util.Calendar: int get(int)>(5) 
(define-const var3585 String "dd") ; Statement: $r9 = "dd" 
(assert true)
(define-const var3651 Int (length/-134980193 var3585)) ; Statement: $i6 = virtualinvoke $r9.<java.lang.String: int length()>() 
;(assert (var1386_padInt/-831434310 var2170!5 var3075 var3651)) ; Statement: staticinvoke <com.google.javascript.jscomp.jarjar.com.google.gson.internal.bind.util.ISO8601Utils: void padInt(java.lang.StringBuilder,int,int)>($r20, $i7, $i6) 

(declare-const var2170!6 String)
(declare-const var3075!1 Int)
(declare-const var3651!1 Int)
(assert true)
;(assert (append/-1166366385 var2170!6 84)) ; Statement: virtualinvoke $r20.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(84) 
(declare-const var2170!7 String)
(assert (str.prefixof var2170!6 var2170!7))
(assert true)
(define-const var89 Int (get/335439681 (cast-from-var1491-to-var3847 var3457!2) 11)) ; Statement: $i9 = virtualinvoke $r19.<java.util.Calendar: int get(int)>(11) 
(define-const var3131 String "hh") ; Statement: $r10 = "hh" 
(assert true)
(define-const var1176 Int (length/-134980193 var3131)) ; Statement: $i8 = virtualinvoke $r10.<java.lang.String: int length()>() 
;(assert (var1386_padInt/-831434310 var2170!7 var89 var1176)) ; Statement: staticinvoke <com.google.javascript.jscomp.jarjar.com.google.gson.internal.bind.util.ISO8601Utils: void padInt(java.lang.StringBuilder,int,int)>($r20, $i9, $i8) 

(declare-const var2170!8 String)
(declare-const var89!1 Int)
(declare-const var1176!1 Int)
(assert true)
;(assert (append/-1166366385 var2170!8 58)) ; Statement: virtualinvoke $r20.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(58) 
(declare-const var2170!9 String)
(assert (str.prefixof var2170!8 var2170!9))
(assert true)
(define-const var418 Int (get/335439681 (cast-from-var1491-to-var3847 var3457!2) 12)) ; Statement: $i11 = virtualinvoke $r19.<java.util.Calendar: int get(int)>(12) 
(define-const var2317 String "mm") ; Statement: $r11 = "mm" 
(assert true)
(define-const var2875 Int (length/-134980193 var2317)) ; Statement: $i10 = virtualinvoke $r11.<java.lang.String: int length()>() 
;(assert (var1386_padInt/-831434310 var2170!9 var418 var2875)) ; Statement: staticinvoke <com.google.javascript.jscomp.jarjar.com.google.gson.internal.bind.util.ISO8601Utils: void padInt(java.lang.StringBuilder,int,int)>($r20, $i11, $i10) 

(declare-const var2170!10 String)
(declare-const var418!1 Int)
(declare-const var2875!1 Int)
(assert true)
;(assert (append/-1166366385 var2170!10 58)) ; Statement: virtualinvoke $r20.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(58) 
(declare-const var2170!11 String)
(assert (str.prefixof var2170!10 var2170!11))
(assert true)
(define-const var1820 Int (get/335439681 (cast-from-var1491-to-var3847 var3457!2) 13)) ; Statement: $i13 = virtualinvoke $r19.<java.util.Calendar: int get(int)>(13) 
(define-const var1790 String "ss") ; Statement: $r12 = "ss" 
(assert true)
(define-const var1537 Int (length/-134980193 var1790)) ; Statement: $i12 = virtualinvoke $r12.<java.lang.String: int length()>() 
;(assert (var1386_padInt/-831434310 var2170!11 var1820 var1537)) ; Statement: staticinvoke <com.google.javascript.jscomp.jarjar.com.google.gson.internal.bind.util.ISO8601Utils: void padInt(java.lang.StringBuilder,int,int)>($r20, $i13, $i12) 

(declare-const var2170!12 String)
(declare-const var1820!1 Int)
(declare-const var1537!1 Int)
 ; Statement: if z0 == 0 goto $l14 = virtualinvoke $r19.<java.util.Calendar: long getTimeInMillis()>() 
(assert (= (ite var39 1 0) 0)) ; Cond: z0 == 0 
(assert true)
(define-const var1559 Int (getTimeInMillis/-1265389133 (cast-from-var1491-to-var3847 var3457!2))) ; Statement: $l14 = virtualinvoke $r19.<java.util.Calendar: long getTimeInMillis()>() 
(assert true)
(define-const var1290 Int (getOffset/846977212 var2357!1 var1559)) ; Statement: $i25 = virtualinvoke r1.<java.util.TimeZone: int getOffset(long)>($l14) 
 ; Statement: if $i25 == 0 goto virtualinvoke $r20.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(90) 
(assert (= var1290 0)) ; Cond: $i25 == 0 
(assert true)
;(assert (append/-1166366385 var2170!12 90)) ; Statement: virtualinvoke $r20.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(90) 
(declare-const var2170!13 String)
(assert (str.prefixof var2170!12 var2170!13))
(assert true) ; Non Conditional
(assert true)
(define-const var1248 String (toString/-2075883882 var2170!13)) ; Statement: $r13 = virtualinvoke $r20.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r13 
(check-sat)
(get-model)
(get-unsat-core)
; {var1491-init=([], java.util.GregorianCalendar), <init>/-843876822=([java.util.GregorianCalendar, java.util.TimeZone, java.util.Locale], void), setTime/-1821537528=([java.util.Calendar, java.util.Date], void), cast-from-var1491-to-var3847=([java.util.GregorianCalendar], java.util.Calendar), length/-134980193=([java.lang.String], int), getRawOffset/793408012=([java.util.TimeZone], int), String-init=([], java.lang.StringBuilder), <init>/543593434=([java.lang.StringBuilder, int], void), get/335439681=([java.util.Calendar, int], int), var1386_padInt/-831434310=([java.lang.StringBuilder, int, int], void), append/-1166366385=([java.lang.StringBuilder, char], java.lang.StringBuilder), getTimeInMillis/-1265389133=([java.util.Calendar], long), getOffset/846977212=([java.util.TimeZone, long], int), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var3206=java.util.Date, var1592=r3, var39=z0, var2846=java.util.TimeZone, var2357=r1, var1491=java.util.GregorianCalendar, var3457=$r19, var2367=java.util.Locale, var1103=$r2, var3847=java.util.Calendar, var3059=$r4, var2094=i28, var2594=$r18, var1449=$i29, var43=$i27, var1795=$i0, var3808=$r5, var3791=$i30, var2564=$i26, var2170=$r20, var1338=$i2, var1905=$r7, var2140=$i1, var1386=com.google.javascript.jscomp.jarjar.com.google.gson.internal.bind.util.ISO8601Utils, var1563=$i3, var780=$i5, var2948=$r8, var248=$i4, var3075=$i7, var3585=$r9, var3651=$i6, var89=$i9, var3131=$r10, var1176=$i8, var418=$i11, var2317=$r11, var2875=$i10, var1820=$i13, var1790=$r12, var1537=$i12, var1559=$l14, var1290=$i25, var1248=$r13}
; {java.util.Date=var3206, r3=var1592, z0=var39, java.util.TimeZone=var2846, r1=var2357, java.util.GregorianCalendar=var1491, $r19=var3457, java.util.Locale=var2367, $r2=var1103, java.util.Calendar=var3847, $r4=var3059, i28=var2094, $r18=var2594, $i29=var1449, $i27=var43, $i0=var1795, $r5=var3808, $i30=var3791, $i26=var2564, $r20=var2170, $i2=var1338, $r7=var1905, $i1=var2140, com.google.javascript.jscomp.jarjar.com.google.gson.internal.bind.util.ISO8601Utils=var1386, $i3=var1563, $i5=var780, $r8=var2948, $i4=var248, $i7=var3075, $r9=var3585, $i6=var3651, $i9=var89, $r10=var3131, $i8=var1176, $i11=var418, $r11=var2317, $i10=var2875, $i13=var1820, $r12=var1790, $i12=var1537, $l14=var1559, $i25=var1290, $r13=var1248}
;seq <java.lang.String: int length()>;	<java.lang.String: int length()>;	<java.lang.String: int length()>;	<java.lang.StringBuilder: void <init>(int)>;	<java.lang.String: int length()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.String: int length()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.String: int length()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.String: int length()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.String: int length()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.String: int length()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.String: int length()>": 9,"<java.lang.StringBuilder: void <init>(int)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(char)>": 6,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r3 := @parameter0: java.util.Date;	z0 := @parameter1: boolean;	r1 := @parameter2: java.util.TimeZone;	$r19 = new java.util.GregorianCalendar;	$r2 = <java.util.Locale: java.util.Locale US>;	specialinvoke $r19.<java.util.GregorianCalendar: void <init>(java.util.TimeZone,java.util.Locale)>(r1, $r2);	virtualinvoke $r19.<java.util.Calendar: void setTime(java.util.Date)>(r3);	$r4 = "yyyy-MM-ddThh:mm:ss";	i28 = virtualinvoke $r4.<java.lang.String: int length()>();	if z0 == 0 goto $i29 = 0;	$r18 = ".sss";	$i29 = virtualinvoke $r18.<java.lang.String: int length()>();	goto [?= $i27 = i28 + $i29];	$i27 = i28 + $i29;	$i0 = virtualinvoke r1.<java.util.TimeZone: int getRawOffset()>();	if $i0 != 0 goto $r5 = "+hh:mm";	$r5 = "+hh:mm";	$i30 = virtualinvoke $r5.<java.lang.String: int length()>();	$i26 = $i27 + $i30;	$r20 = new java.lang.StringBuilder;	specialinvoke $r20.<java.lang.StringBuilder: void <init>(int)>($i26);	$i2 = virtualinvoke $r19.<java.util.Calendar: int get(int)>(1);	$r7 = "yyyy";	$i1 = virtualinvoke $r7.<java.lang.String: int length()>();	staticinvoke <com.google.javascript.jscomp.jarjar.com.google.gson.internal.bind.util.ISO8601Utils: void padInt(java.lang.StringBuilder,int,int)>($r20, $i2, $i1);	virtualinvoke $r20.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(45);	$i3 = virtualinvoke $r19.<java.util.Calendar: int get(int)>(2);	$i5 = $i3 + 1;	$r8 = "MM";	$i4 = virtualinvoke $r8.<java.lang.String: int length()>();	staticinvoke <com.google.javascript.jscomp.jarjar.com.google.gson.internal.bind.util.ISO8601Utils: void padInt(java.lang.StringBuilder,int,int)>($r20, $i5, $i4);	virtualinvoke $r20.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(45);	$i7 = virtualinvoke $r19.<java.util.Calendar: int get(int)>(5);	$r9 = "dd";	$i6 = virtualinvoke $r9.<java.lang.String: int length()>();	staticinvoke <com.google.javascript.jscomp.jarjar.com.google.gson.internal.bind.util.ISO8601Utils: void padInt(java.lang.StringBuilder,int,int)>($r20, $i7, $i6);	virtualinvoke $r20.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(84);	$i9 = virtualinvoke $r19.<java.util.Calendar: int get(int)>(11);	$r10 = "hh";	$i8 = virtualinvoke $r10.<java.lang.String: int length()>();	staticinvoke <com.google.javascript.jscomp.jarjar.com.google.gson.internal.bind.util.ISO8601Utils: void padInt(java.lang.StringBuilder,int,int)>($r20, $i9, $i8);	virtualinvoke $r20.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(58);	$i11 = virtualinvoke $r19.<java.util.Calendar: int get(int)>(12);	$r11 = "mm";	$i10 = virtualinvoke $r11.<java.lang.String: int length()>();	staticinvoke <com.google.javascript.jscomp.jarjar.com.google.gson.internal.bind.util.ISO8601Utils: void padInt(java.lang.StringBuilder,int,int)>($r20, $i11, $i10);	virtualinvoke $r20.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(58);	$i13 = virtualinvoke $r19.<java.util.Calendar: int get(int)>(13);	$r12 = "ss";	$i12 = virtualinvoke $r12.<java.lang.String: int length()>();	staticinvoke <com.google.javascript.jscomp.jarjar.com.google.gson.internal.bind.util.ISO8601Utils: void padInt(java.lang.StringBuilder,int,int)>($r20, $i13, $i12);	if z0 == 0 goto $l14 = virtualinvoke $r19.<java.util.Calendar: long getTimeInMillis()>();	$l14 = virtualinvoke $r19.<java.util.Calendar: long getTimeInMillis()>();	$i25 = virtualinvoke r1.<java.util.TimeZone: int getOffset(long)>($l14);	if $i25 == 0 goto virtualinvoke $r20.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(90);	virtualinvoke $r20.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(90);	$r13 = virtualinvoke $r20.<java.lang.StringBuilder: java.lang.String toString()>();	return $r13
;block_num 8