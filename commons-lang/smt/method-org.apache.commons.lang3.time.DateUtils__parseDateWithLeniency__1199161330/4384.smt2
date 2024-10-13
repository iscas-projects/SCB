(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2859 0)
(declare-sort var2372 0)
(declare-sort var2939 0)
(declare-sort var211 0)
(declare-sort var1227 0)
(declare-sort var3799 0)
(declare-sort var2593 0)
(declare-sort var3077 0)
(declare-sort var1607 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var2939_requireNonNull/1378936425 (var211 String) var211)
(declare-fun cast-from-String-to-var211 (String) var211)
(declare-fun cast-from-__Array__Int__String__-to-var211 ((Array Int String)) var211)
(declare-fun var1227_getDefault/2145430630 () var1227)
(declare-fun var3799_toLocale/455255440 (var2372) var2372)
(declare-fun var2593-init () var2593)
(declare-fun <init>/-1546993527 (var2593 Int) void)
(declare-fun var3077_getInstance/1343923299 (var1227 var2372) var3077)
(declare-fun setLenient/327205590 (var3077 Bool) void)
(declare-fun getLength-Arr-String-1 ((Array Int String)) Int)
(declare-fun var1607-init () var1607)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun <init>/1495607482 (var1607 String Int) void)
(declare-const null-String String)
(declare-const null-var2372 var2372)
(declare-const null-__Array__Int__String__ (Array Int String))
(declare-const null-Bool Bool)
(declare-const var17 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var17 null-String)))
(declare-const var503 var2372) ; Statement: r3 := @parameter1: java.util.Locale 
(assert (not (= var503 null-var2372)))
(declare-const var3748 (Array Int String)) ; Statement: r1 := @parameter2: java.lang.String[] 
(assert (not (= var3748 null-__Array__Int__String__)))
(declare-const var1480 Bool) ; Statement: z0 := @parameter3: boolean 
(assert (not (= var1480 null-Bool)))
;(assert (var2939_requireNonNull/1378936425 (cast-from-String-to-var211 var17) "str")) ; Statement: staticinvoke <java.util.Objects: java.lang.Object requireNonNull(java.lang.Object,java.lang.String)>(r0, "str") 

(declare-const var17!1 String)
(declare-const var810 String)
;(assert (var2939_requireNonNull/1378936425 (cast-from-__Array__Int__String__-to-var211 var3748) "parsePatterns")) ; Statement: staticinvoke <java.util.Objects: java.lang.Object requireNonNull(java.lang.Object,java.lang.String)>(r1, "parsePatterns") 

(declare-const var3748!1 (Array Int String))
(declare-const var636 String)
(define-const var711 var1227 var1227_getDefault/2145430630) ; Statement: r2 = staticinvoke <java.util.TimeZone: java.util.TimeZone getDefault()>() 
(define-const var870 var2372 (var3799_toLocale/455255440 var503)) ; Statement: r4 = staticinvoke <org.apache.commons.lang3.LocaleUtils: java.util.Locale toLocale(java.util.Locale)>(r3) 
(define-const var2663 var2593 var2593-init) ; Statement: $r16 = new java.text.ParsePosition 
(assert true)
;(assert (<init>/-1546993527 var2663 0)) ; Statement: specialinvoke $r16.<java.text.ParsePosition: void <init>(int)>(0) 

(declare-const var2663!1 var2593)
(declare-const var1174 Int)
(define-const var2545 var3077 (var3077_getInstance/1343923299 var711 var870)) ; Statement: r6 = staticinvoke <java.util.Calendar: java.util.Calendar getInstance(java.util.TimeZone,java.util.Locale)>(r2, r4) 
(assert true)
;(assert (setLenient/327205590 var2545 var1480)) ; Statement: virtualinvoke r6.<java.util.Calendar: void setLenient(boolean)>(z0) 

(declare-const var2545!1 var3077)
(declare-const var1480!1 Bool)
(define-const var137 Int (getLength-Arr-String-1 var3748!1)) ; Statement: i0 = lengthof r1 
(define-const var3088 Int 0) ; Statement: i3 = 0 
(assert true) ; Non Conditional
 ; Statement: if i3 >= i0 goto $r19 = new java.text.ParseException 
(assert (>= var3088 var137)) ; Cond: i3 >= i0 
(define-const var3493 var1607 var1607-init) ; Statement: $r19 = new java.text.ParseException 
(define-const var60 String String-init) ; Statement: $r18 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var60)) ; Statement: specialinvoke $r18.<java.lang.StringBuilder: void <init>()>() 
(declare-const var60!1 String)
(assert (= var60!1 ""))
(assert true)
(define-const var939 String (append/672562846 var60!1 "Unable to parse the date: ")) ; Statement: $r9 = virtualinvoke $r18.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Unable to parse the date: ") 
(declare-const var60!2 String)
(assert (= var60!2 (str.++ var60!1 "Unable to parse the date: ")))
(assert true)
(define-const var2001 String (append/672562846 var939 var17!1)) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r0) 
(declare-const var939!1 String)
(assert (= var939!1 (str.++ var939 var17!1)))
(assert true)
(define-const var741 String (toString/-2075883882 var2001)) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.String toString()>() 
(define-const var2570 Int (cast-from-Int-to-Int (- 1))) ; Statement: $i5 = (int) -1 
(assert true)
;(assert (<init>/1495607482 var3493 var741 var2570)) ; Statement: specialinvoke $r19.<java.text.ParseException: void <init>(java.lang.String,int)>($r11, $i5) 

(declare-const var3493!1 var1607)
(declare-const var741!1 String)
(declare-const var2570!1 Int)
 ; Statement: throw $r19 
(check-sat)
(get-model)
(get-unsat-core)
; {var2939_requireNonNull/1378936425=([java.lang.Object, java.lang.String], java.lang.Object), cast-from-String-to-var211=([java.lang.String], java.lang.Object), cast-from-__Array__Int__String__-to-var211=([java.lang.String[]], java.lang.Object), var1227_getDefault/2145430630=([], java.util.TimeZone), var3799_toLocale/455255440=([java.util.Locale], java.util.Locale), var2593-init=([], java.text.ParsePosition), <init>/-1546993527=([java.text.ParsePosition, int], void), var3077_getInstance/1343923299=([java.util.TimeZone, java.util.Locale], java.util.Calendar), setLenient/327205590=([java.util.Calendar, boolean], void), getLength-Arr-String-1=([java.lang.String[]], int), var1607-init=([], java.text.ParseException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), cast-from-Int-to-Int=([int], int), <init>/1495607482=([java.text.ParseException, java.lang.String, int], void)}
; {var17=r0, var2859=null_type, var2372=java.util.Locale, var503=r3, var3748=r1, var1480=z0, var2939=java.util.Objects, var211=java.lang.Object, var810="str", var636="parsePatterns", var1227=java.util.TimeZone, var711=r2, var3799=org.apache.commons.lang3.LocaleUtils, var870=r4, var2593=java.text.ParsePosition, var2663=$r16, var1174=0, var3077=java.util.Calendar, var2545=r6, var137=i0, var3088=i3, var1607=java.text.ParseException, var3493=$r19, var60=$r18, var939=$r9, var2001=$r10, var741=$r11, var2570=$i5}
; {r0=var17, null_type=var2859, java.util.Locale=var2372, r3=var503, r1=var3748, z0=var1480, java.util.Objects=var2939, java.lang.Object=var211, "str"=var810, "parsePatterns"=var636, java.util.TimeZone=var1227, r2=var711, org.apache.commons.lang3.LocaleUtils=var3799, r4=var870, java.text.ParsePosition=var2593, $r16=var2663, 0=var1174, java.util.Calendar=var3077, r6=var2545, i0=var137, i3=var3088, java.text.ParseException=var1607, $r19=var3493, $r18=var60, $r9=var939, $r10=var2001, $r11=var741, $i5=var2570}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @parameter0: java.lang.String;	r3 := @parameter1: java.util.Locale;	r1 := @parameter2: java.lang.String[];	z0 := @parameter3: boolean;	staticinvoke <java.util.Objects: java.lang.Object requireNonNull(java.lang.Object,java.lang.String)>(r0, "str");	staticinvoke <java.util.Objects: java.lang.Object requireNonNull(java.lang.Object,java.lang.String)>(r1, "parsePatterns");	r2 = staticinvoke <java.util.TimeZone: java.util.TimeZone getDefault()>();	r4 = staticinvoke <org.apache.commons.lang3.LocaleUtils: java.util.Locale toLocale(java.util.Locale)>(r3);	$r16 = new java.text.ParsePosition;	specialinvoke $r16.<java.text.ParsePosition: void <init>(int)>(0);	r6 = staticinvoke <java.util.Calendar: java.util.Calendar getInstance(java.util.TimeZone,java.util.Locale)>(r2, r4);	virtualinvoke r6.<java.util.Calendar: void setLenient(boolean)>(z0);	i0 = lengthof r1;	i3 = 0;	if i3 >= i0 goto $r19 = new java.text.ParseException;	$r19 = new java.text.ParseException;	$r18 = new java.lang.StringBuilder;	specialinvoke $r18.<java.lang.StringBuilder: void <init>()>();	$r9 = virtualinvoke $r18.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Unable to parse the date: ");	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r0);	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.String toString()>();	$i5 = (int) -1;	specialinvoke $r19.<java.text.ParseException: void <init>(java.lang.String,int)>($r11, $i5);	throw $r19
;block_num 3