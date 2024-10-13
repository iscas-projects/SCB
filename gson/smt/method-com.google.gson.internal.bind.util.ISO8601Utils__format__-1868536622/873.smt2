(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3012 0)
(declare-sort var1616 0)
(declare-sort var3660 0)
(declare-sort var2879 0)
(declare-sort var3868 0)
(declare-sort var1752 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var3660-init () var3660)
(declare-fun <init>/-843876822 (var3660 var1616 var2879) void)
(declare-fun setTime/-1821537528 (var3868 var3012) void)
(declare-fun cast-from-var3660-to-var3868 (var3660) var3868)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-fun getRawOffset/793408012 (var1616) Int)
(declare-fun String-init () String)
(declare-fun <init>/543593434 (String Int) void)
(declare-fun get/335439681 (var3868 Int) Int)
(declare-fun var1752_padInt/-157990007 (String Int Int) void)
(declare-fun append/-1166366385 (String Int) String)
(declare-fun getTimeInMillis/-1265389133 (var3868) Int)
(declare-fun getOffset/846977212 (var1616 Int) Int)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var3012 var3012)
(declare-const null-Bool Bool)
(declare-const null-var1616 var1616)
(declare-const var2879-US var2879)
(declare-const var1962 var3012) ; Statement: r3 := @parameter0: java.util.Date 
(assert (not (= var1962 null-var3012)))
(declare-const var733 Bool) ; Statement: z0 := @parameter1: boolean 
(assert (not (= var733 null-Bool)))
(declare-const var2749 var1616) ; Statement: r1 := @parameter2: java.util.TimeZone 
(assert (not (= var2749 null-var1616)))
(define-const var38 var3660 var3660-init) ; Statement: $r19 = new java.util.GregorianCalendar 
(define-const var829 var2879 var2879-US) ; Statement: $r2 = <java.util.Locale: java.util.Locale US> 
(assert true)
;(assert (<init>/-843876822 var38 var2749 var829)) ; Statement: specialinvoke $r19.<java.util.GregorianCalendar: void <init>(java.util.TimeZone,java.util.Locale)>(r1, $r2) 

(declare-const var38!1 var3660)
(declare-const var2749!1 var1616)
(declare-const var829!1 var2879)
(assert true)
;(assert (setTime/-1821537528 (cast-from-var3660-to-var3868 var38!1) var1962)) ; Statement: virtualinvoke $r19.<java.util.Calendar: void setTime(java.util.Date)>(r3) 

(declare-const var38!2 var3660)
(declare-const var1962!1 var3012)
(define-const var2347 String "yyyy-MM-ddThh:mm:ss") ; Statement: $r4 = "yyyy-MM-ddThh:mm:ss" 
(assert true)
(define-const var6 Int (length/-134980193 var2347)) ; Statement: i28 = virtualinvoke $r4.<java.lang.String: int length()>() 
 ; Statement: if z0 == 0 goto $i29 = 0 
(assert (not (= (ite var733 1 0) 0))) ; Negate: Cond: z0 == 0  
(define-const var2765 String ".sss") ; Statement: $r18 = ".sss" 
(assert true)
(define-const var3371 Int (length/-134980193 var2765)) ; Statement: $i29 = virtualinvoke $r18.<java.lang.String: int length()>() 
 ; Statement: goto [?= $i27 = i28 + $i29] 
(assert true) ; Non Conditional
(define-const var2079 Int (+ var6 var3371)) ; Statement: $i27 = i28 + $i29 
(assert true)
(define-const var786 Int (getRawOffset/793408012 var2749!1)) ; Statement: $i0 = virtualinvoke r1.<java.util.TimeZone: int getRawOffset()>() 
 ; Statement: if $i0 != 0 goto $r5 = "+hh:mm" 
(assert (not (= var786 0))) ; Cond: $i0 != 0 
(define-const var2096 String "+hh:mm") ; Statement: $r5 = "+hh:mm" 
(assert true)
(define-const var2826 Int (length/-134980193 var2096)) ; Statement: $i30 = virtualinvoke $r5.<java.lang.String: int length()>() 
(assert true) ; Non Conditional
(define-const var812 Int (+ var2079 var2826)) ; Statement: $i26 = $i27 + $i30 
(define-const var1426 String String-init) ; Statement: $r20 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/543593434 var1426 var812)) ; Statement: specialinvoke $r20.<java.lang.StringBuilder: void <init>(int)>($i26) 

(declare-const var1426!1 String)
(declare-const var812!1 Int)
(assert true)
(define-const var2381 Int (get/335439681 (cast-from-var3660-to-var3868 var38!2) 1)) ; Statement: $i2 = virtualinvoke $r19.<java.util.Calendar: int get(int)>(1) 
(define-const var1919 String "yyyy") ; Statement: $r7 = "yyyy" 
(assert true)
(define-const var185 Int (length/-134980193 var1919)) ; Statement: $i1 = virtualinvoke $r7.<java.lang.String: int length()>() 
;(assert (var1752_padInt/-157990007 var1426!1 var2381 var185)) ; Statement: staticinvoke <com.google.gson.internal.bind.util.ISO8601Utils: void padInt(java.lang.StringBuilder,int,int)>($r20, $i2, $i1) 

(declare-const var1426!2 String)
(declare-const var2381!1 Int)
(declare-const var185!1 Int)
(assert true)
;(assert (append/-1166366385 var1426!2 45)) ; Statement: virtualinvoke $r20.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(45) 
(declare-const var1426!3 String)
(assert (str.prefixof var1426!2 var1426!3))
(assert true)
(define-const var3418 Int (get/335439681 (cast-from-var3660-to-var3868 var38!2) 2)) ; Statement: $i3 = virtualinvoke $r19.<java.util.Calendar: int get(int)>(2) 
(define-const var1006 Int (+ var3418 1)) ; Statement: $i5 = $i3 + 1 
(define-const var3861 String "MM") ; Statement: $r8 = "MM" 
(assert true)
(define-const var235 Int (length/-134980193 var3861)) ; Statement: $i4 = virtualinvoke $r8.<java.lang.String: int length()>() 
;(assert (var1752_padInt/-157990007 var1426!3 var1006 var235)) ; Statement: staticinvoke <com.google.gson.internal.bind.util.ISO8601Utils: void padInt(java.lang.StringBuilder,int,int)>($r20, $i5, $i4) 

(declare-const var1426!4 String)
(declare-const var1006!1 Int)
(declare-const var235!1 Int)
(assert true)
;(assert (append/-1166366385 var1426!4 45)) ; Statement: virtualinvoke $r20.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(45) 
(declare-const var1426!5 String)
(assert (str.prefixof var1426!4 var1426!5))
(assert true)
(define-const var2460 Int (get/335439681 (cast-from-var3660-to-var3868 var38!2) 5)) ; Statement: $i7 = virtualinvoke $r19.<java.util.Calendar: int get(int)>(5) 
(define-const var1380 String "dd") ; Statement: $r9 = "dd" 
(assert true)
(define-const var2774 Int (length/-134980193 var1380)) ; Statement: $i6 = virtualinvoke $r9.<java.lang.String: int length()>() 
;(assert (var1752_padInt/-157990007 var1426!5 var2460 var2774)) ; Statement: staticinvoke <com.google.gson.internal.bind.util.ISO8601Utils: void padInt(java.lang.StringBuilder,int,int)>($r20, $i7, $i6) 

(declare-const var1426!6 String)
(declare-const var2460!1 Int)
(declare-const var2774!1 Int)
(assert true)
;(assert (append/-1166366385 var1426!6 84)) ; Statement: virtualinvoke $r20.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(84) 
(declare-const var1426!7 String)
(assert (str.prefixof var1426!6 var1426!7))
(assert true)
(define-const var756 Int (get/335439681 (cast-from-var3660-to-var3868 var38!2) 11)) ; Statement: $i9 = virtualinvoke $r19.<java.util.Calendar: int get(int)>(11) 
(define-const var2870 String "hh") ; Statement: $r10 = "hh" 
(assert true)
(define-const var3849 Int (length/-134980193 var2870)) ; Statement: $i8 = virtualinvoke $r10.<java.lang.String: int length()>() 
;(assert (var1752_padInt/-157990007 var1426!7 var756 var3849)) ; Statement: staticinvoke <com.google.gson.internal.bind.util.ISO8601Utils: void padInt(java.lang.StringBuilder,int,int)>($r20, $i9, $i8) 

(declare-const var1426!8 String)
(declare-const var756!1 Int)
(declare-const var3849!1 Int)
(assert true)
;(assert (append/-1166366385 var1426!8 58)) ; Statement: virtualinvoke $r20.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(58) 
(declare-const var1426!9 String)
(assert (str.prefixof var1426!8 var1426!9))
(assert true)
(define-const var1624 Int (get/335439681 (cast-from-var3660-to-var3868 var38!2) 12)) ; Statement: $i11 = virtualinvoke $r19.<java.util.Calendar: int get(int)>(12) 
(define-const var3142 String "mm") ; Statement: $r11 = "mm" 
(assert true)
(define-const var1501 Int (length/-134980193 var3142)) ; Statement: $i10 = virtualinvoke $r11.<java.lang.String: int length()>() 
;(assert (var1752_padInt/-157990007 var1426!9 var1624 var1501)) ; Statement: staticinvoke <com.google.gson.internal.bind.util.ISO8601Utils: void padInt(java.lang.StringBuilder,int,int)>($r20, $i11, $i10) 

(declare-const var1426!10 String)
(declare-const var1624!1 Int)
(declare-const var1501!1 Int)
(assert true)
;(assert (append/-1166366385 var1426!10 58)) ; Statement: virtualinvoke $r20.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(58) 
(declare-const var1426!11 String)
(assert (str.prefixof var1426!10 var1426!11))
(assert true)
(define-const var3074 Int (get/335439681 (cast-from-var3660-to-var3868 var38!2) 13)) ; Statement: $i13 = virtualinvoke $r19.<java.util.Calendar: int get(int)>(13) 
(define-const var3485 String "ss") ; Statement: $r12 = "ss" 
(assert true)
(define-const var1844 Int (length/-134980193 var3485)) ; Statement: $i12 = virtualinvoke $r12.<java.lang.String: int length()>() 
;(assert (var1752_padInt/-157990007 var1426!11 var3074 var1844)) ; Statement: staticinvoke <com.google.gson.internal.bind.util.ISO8601Utils: void padInt(java.lang.StringBuilder,int,int)>($r20, $i13, $i12) 

(declare-const var1426!12 String)
(declare-const var3074!1 Int)
(declare-const var1844!1 Int)
 ; Statement: if z0 == 0 goto $l14 = virtualinvoke $r19.<java.util.Calendar: long getTimeInMillis()>() 
(assert (= (ite var733 1 0) 0)) ; Cond: z0 == 0 
(assert true)
(define-const var2010 Int (getTimeInMillis/-1265389133 (cast-from-var3660-to-var3868 var38!2))) ; Statement: $l14 = virtualinvoke $r19.<java.util.Calendar: long getTimeInMillis()>() 
(assert true)
(define-const var2949 Int (getOffset/846977212 var2749!1 var2010)) ; Statement: $i25 = virtualinvoke r1.<java.util.TimeZone: int getOffset(long)>($l14) 
 ; Statement: if $i25 == 0 goto virtualinvoke $r20.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(90) 
(assert (= var2949 0)) ; Cond: $i25 == 0 
(assert true)
;(assert (append/-1166366385 var1426!12 90)) ; Statement: virtualinvoke $r20.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(90) 
(declare-const var1426!13 String)
(assert (str.prefixof var1426!12 var1426!13))
(assert true) ; Non Conditional
(assert true)
(define-const var3377 String (toString/-2075883882 var1426!13)) ; Statement: $r13 = virtualinvoke $r20.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r13 
(check-sat)
(get-model)
(get-unsat-core)
; {var3660-init=([], java.util.GregorianCalendar), <init>/-843876822=([java.util.GregorianCalendar, java.util.TimeZone, java.util.Locale], void), setTime/-1821537528=([java.util.Calendar, java.util.Date], void), cast-from-var3660-to-var3868=([java.util.GregorianCalendar], java.util.Calendar), length/-134980193=([java.lang.String], int), getRawOffset/793408012=([java.util.TimeZone], int), String-init=([], java.lang.StringBuilder), <init>/543593434=([java.lang.StringBuilder, int], void), get/335439681=([java.util.Calendar, int], int), var1752_padInt/-157990007=([java.lang.StringBuilder, int, int], void), append/-1166366385=([java.lang.StringBuilder, char], java.lang.StringBuilder), getTimeInMillis/-1265389133=([java.util.Calendar], long), getOffset/846977212=([java.util.TimeZone, long], int), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var3012=java.util.Date, var1962=r3, var733=z0, var1616=java.util.TimeZone, var2749=r1, var3660=java.util.GregorianCalendar, var38=$r19, var2879=java.util.Locale, var829=$r2, var3868=java.util.Calendar, var2347=$r4, var6=i28, var2765=$r18, var3371=$i29, var2079=$i27, var786=$i0, var2096=$r5, var2826=$i30, var812=$i26, var1426=$r20, var2381=$i2, var1919=$r7, var185=$i1, var1752=com.google.gson.internal.bind.util.ISO8601Utils, var3418=$i3, var1006=$i5, var3861=$r8, var235=$i4, var2460=$i7, var1380=$r9, var2774=$i6, var756=$i9, var2870=$r10, var3849=$i8, var1624=$i11, var3142=$r11, var1501=$i10, var3074=$i13, var3485=$r12, var1844=$i12, var2010=$l14, var2949=$i25, var3377=$r13}
; {java.util.Date=var3012, r3=var1962, z0=var733, java.util.TimeZone=var1616, r1=var2749, java.util.GregorianCalendar=var3660, $r19=var38, java.util.Locale=var2879, $r2=var829, java.util.Calendar=var3868, $r4=var2347, i28=var6, $r18=var2765, $i29=var3371, $i27=var2079, $i0=var786, $r5=var2096, $i30=var2826, $i26=var812, $r20=var1426, $i2=var2381, $r7=var1919, $i1=var185, com.google.gson.internal.bind.util.ISO8601Utils=var1752, $i3=var3418, $i5=var1006, $r8=var3861, $i4=var235, $i7=var2460, $r9=var1380, $i6=var2774, $i9=var756, $r10=var2870, $i8=var3849, $i11=var1624, $r11=var3142, $i10=var1501, $i13=var3074, $r12=var3485, $i12=var1844, $l14=var2010, $i25=var2949, $r13=var3377}
;seq <java.lang.String: int length()>;	<java.lang.String: int length()>;	<java.lang.String: int length()>;	<java.lang.StringBuilder: void <init>(int)>;	<java.lang.String: int length()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.String: int length()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.String: int length()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.String: int length()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.String: int length()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.String: int length()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.String: int length()>": 9,"<java.lang.StringBuilder: void <init>(int)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(char)>": 6,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r3 := @parameter0: java.util.Date;	z0 := @parameter1: boolean;	r1 := @parameter2: java.util.TimeZone;	$r19 = new java.util.GregorianCalendar;	$r2 = <java.util.Locale: java.util.Locale US>;	specialinvoke $r19.<java.util.GregorianCalendar: void <init>(java.util.TimeZone,java.util.Locale)>(r1, $r2);	virtualinvoke $r19.<java.util.Calendar: void setTime(java.util.Date)>(r3);	$r4 = "yyyy-MM-ddThh:mm:ss";	i28 = virtualinvoke $r4.<java.lang.String: int length()>();	if z0 == 0 goto $i29 = 0;	$r18 = ".sss";	$i29 = virtualinvoke $r18.<java.lang.String: int length()>();	goto [?= $i27 = i28 + $i29];	$i27 = i28 + $i29;	$i0 = virtualinvoke r1.<java.util.TimeZone: int getRawOffset()>();	if $i0 != 0 goto $r5 = "+hh:mm";	$r5 = "+hh:mm";	$i30 = virtualinvoke $r5.<java.lang.String: int length()>();	$i26 = $i27 + $i30;	$r20 = new java.lang.StringBuilder;	specialinvoke $r20.<java.lang.StringBuilder: void <init>(int)>($i26);	$i2 = virtualinvoke $r19.<java.util.Calendar: int get(int)>(1);	$r7 = "yyyy";	$i1 = virtualinvoke $r7.<java.lang.String: int length()>();	staticinvoke <com.google.gson.internal.bind.util.ISO8601Utils: void padInt(java.lang.StringBuilder,int,int)>($r20, $i2, $i1);	virtualinvoke $r20.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(45);	$i3 = virtualinvoke $r19.<java.util.Calendar: int get(int)>(2);	$i5 = $i3 + 1;	$r8 = "MM";	$i4 = virtualinvoke $r8.<java.lang.String: int length()>();	staticinvoke <com.google.gson.internal.bind.util.ISO8601Utils: void padInt(java.lang.StringBuilder,int,int)>($r20, $i5, $i4);	virtualinvoke $r20.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(45);	$i7 = virtualinvoke $r19.<java.util.Calendar: int get(int)>(5);	$r9 = "dd";	$i6 = virtualinvoke $r9.<java.lang.String: int length()>();	staticinvoke <com.google.gson.internal.bind.util.ISO8601Utils: void padInt(java.lang.StringBuilder,int,int)>($r20, $i7, $i6);	virtualinvoke $r20.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(84);	$i9 = virtualinvoke $r19.<java.util.Calendar: int get(int)>(11);	$r10 = "hh";	$i8 = virtualinvoke $r10.<java.lang.String: int length()>();	staticinvoke <com.google.gson.internal.bind.util.ISO8601Utils: void padInt(java.lang.StringBuilder,int,int)>($r20, $i9, $i8);	virtualinvoke $r20.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(58);	$i11 = virtualinvoke $r19.<java.util.Calendar: int get(int)>(12);	$r11 = "mm";	$i10 = virtualinvoke $r11.<java.lang.String: int length()>();	staticinvoke <com.google.gson.internal.bind.util.ISO8601Utils: void padInt(java.lang.StringBuilder,int,int)>($r20, $i11, $i10);	virtualinvoke $r20.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(58);	$i13 = virtualinvoke $r19.<java.util.Calendar: int get(int)>(13);	$r12 = "ss";	$i12 = virtualinvoke $r12.<java.lang.String: int length()>();	staticinvoke <com.google.gson.internal.bind.util.ISO8601Utils: void padInt(java.lang.StringBuilder,int,int)>($r20, $i13, $i12);	if z0 == 0 goto $l14 = virtualinvoke $r19.<java.util.Calendar: long getTimeInMillis()>();	$l14 = virtualinvoke $r19.<java.util.Calendar: long getTimeInMillis()>();	$i25 = virtualinvoke r1.<java.util.TimeZone: int getOffset(long)>($l14);	if $i25 == 0 goto virtualinvoke $r20.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(90);	virtualinvoke $r20.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(90);	$r13 = virtualinvoke $r20.<java.lang.StringBuilder: java.lang.String toString()>();	return $r13
;block_num 8