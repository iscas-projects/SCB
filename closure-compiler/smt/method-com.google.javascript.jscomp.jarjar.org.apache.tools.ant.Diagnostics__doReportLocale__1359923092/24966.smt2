(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1785 0)
(declare-sort var3686 0)
(declare-sort var2769 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var3686_getInstance/1373634036 () var3686)
(declare-fun getTimeZone/633046453 (var3686) var2769)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getDisplayName/338292742 (var2769) String)
(declare-fun get/335439681 (var3686 Int) Int)
(declare-fun getOffset/-697430904 (var2769 Int Int Int Int Int Int) Int)
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun println/1773605060 (var1785 String) void)
(declare-const null-var1785 var1785)
(declare-const var3327 var1785) ; Statement: r2 := @parameter0: java.io.PrintStream 
(assert (not (= var3327 null-var1785)))
(define-const var968 var3686 var3686_getInstance/1373634036) ; Statement: r0 = staticinvoke <java.util.Calendar: java.util.Calendar getInstance()>() 
(assert true)
(define-const var3074 var2769 (getTimeZone/633046453 var968)) ; Statement: r1 = virtualinvoke r0.<java.util.Calendar: java.util.TimeZone getTimeZone()>() 
(define-const var238 String String-init) ; Statement: $r3 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var238)) ; Statement: specialinvoke $r3.<java.lang.StringBuilder: void <init>()>() 
(declare-const var238!1 String)
(assert (= var238!1 ""))
(assert true)
(define-const var507 String (append/672562846 var238!1 "Timezone ")) ; Statement: $r5 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Timezone ") 
(declare-const var238!2 String)
(assert (= var238!2 (str.++ var238!1 "Timezone ")))
(assert true)
(define-const var1990 String (getDisplayName/338292742 var3074)) ; Statement: $r4 = virtualinvoke r1.<java.util.TimeZone: java.lang.String getDisplayName()>() 
(assert true)
(define-const var1884 String (append/672562846 var507 var1990)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r4) 
(declare-const var507!1 String)
(assert (= var507!1 (str.++ var507 var1990)))
(assert true)
(define-const var3362 String (append/672562846 var1884 " offset=")) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" offset=") 
(declare-const var1884!1 String)
(assert (= var1884!1 (str.++ var1884 " offset=")))
(assert true)
(define-const var1633 Int (get/335439681 var968 0)) ; Statement: $i14 = virtualinvoke r0.<java.util.Calendar: int get(int)>(0) 
(assert true)
(define-const var778 Int (get/335439681 var968 1)) ; Statement: $i13 = virtualinvoke r0.<java.util.Calendar: int get(int)>(1) 
(assert true)
(define-const var1652 Int (get/335439681 var968 2)) ; Statement: $i12 = virtualinvoke r0.<java.util.Calendar: int get(int)>(2) 
(assert true)
(define-const var2100 Int (get/335439681 var968 5)) ; Statement: $i11 = virtualinvoke r0.<java.util.Calendar: int get(int)>(5) 
(assert true)
(define-const var329 Int (get/335439681 var968 7)) ; Statement: $i10 = virtualinvoke r0.<java.util.Calendar: int get(int)>(7) 
(assert true)
(define-const var1489 Int (get/335439681 var968 11)) ; Statement: $i0 = virtualinvoke r0.<java.util.Calendar: int get(int)>(11) 
(define-const var2899 Int (* var1489 60)) ; Statement: $i2 = $i0 * 60 
(assert true)
(define-const var2582 Int (get/335439681 var968 12)) ; Statement: $i1 = virtualinvoke r0.<java.util.Calendar: int get(int)>(12) 
(define-const var3487 Int (+ var2899 var2582)) ; Statement: $i3 = $i2 + $i1 
(define-const var1770 Int (* var3487 60)) ; Statement: $i5 = $i3 * 60 
(assert true)
(define-const var3064 Int (get/335439681 var968 13)) ; Statement: $i4 = virtualinvoke r0.<java.util.Calendar: int get(int)>(13) 
(define-const var974 Int (+ var1770 var3064)) ; Statement: $i6 = $i5 + $i4 
(define-const var2601 Int (* var974 1000)) ; Statement: $i8 = $i6 * 1000 
(assert true)
(define-const var2722 Int (get/335439681 var968 14)) ; Statement: $i7 = virtualinvoke r0.<java.util.Calendar: int get(int)>(14) 
(define-const var3276 Int (+ var2601 var2722)) ; Statement: $i9 = $i8 + $i7 
(assert true)
(define-const var1517 Int (getOffset/-697430904 var3074 var1633 var778 var1652 var2100 var329 var3276)) ; Statement: $i15 = virtualinvoke r1.<java.util.TimeZone: int getOffset(int,int,int,int,int,int)>($i14, $i13, $i12, $i11, $i10, $i9) 
(assert true)
(define-const var337 String (append/-1001720160 var3362 var1517)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i15) 
(declare-const var3362!1 String)
(assert (str.prefixof var3362 var3362!1))
(assert true)
(define-const var3156 String (toString/-2075883882 var337)) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (println/1773605060 var3327 var3156)) ; Statement: virtualinvoke r2.<java.io.PrintStream: void println(java.lang.String)>($r9) 

(declare-const var3327!1 var1785)
(declare-const var3156!1 String)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {var3686_getInstance/1373634036=([], java.util.Calendar), getTimeZone/633046453=([java.util.Calendar], java.util.TimeZone), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), getDisplayName/338292742=([java.util.TimeZone], java.lang.String), get/335439681=([java.util.Calendar, int], int), getOffset/-697430904=([java.util.TimeZone, int, int, int, int, int, int], int), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), println/1773605060=([java.io.PrintStream, java.lang.String], void)}
; {var1785=java.io.PrintStream, var3327=r2, var3686=java.util.Calendar, var968=r0, var2769=java.util.TimeZone, var3074=r1, var238=$r3, var507=$r5, var1990=$r4, var1884=$r6, var3362=$r7, var1633=$i14, var778=$i13, var1652=$i12, var2100=$i11, var329=$i10, var1489=$i0, var2899=$i2, var2582=$i1, var3487=$i3, var1770=$i5, var3064=$i4, var974=$i6, var2601=$i8, var2722=$i7, var3276=$i9, var1517=$i15, var337=$r8, var3156=$r9}
; {java.io.PrintStream=var1785, r2=var3327, java.util.Calendar=var3686, r0=var968, java.util.TimeZone=var2769, r1=var3074, $r3=var238, $r5=var507, $r4=var1990, $r6=var1884, $r7=var3362, $i14=var1633, $i13=var778, $i12=var1652, $i11=var2100, $i10=var329, $i0=var1489, $i2=var2899, $i1=var2582, $i3=var3487, $i5=var1770, $i4=var3064, $i6=var974, $i8=var2601, $i7=var2722, $i9=var3276, $i15=var1517, $r8=var337, $r9=var3156}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r2 := @parameter0: java.io.PrintStream;	r0 = staticinvoke <java.util.Calendar: java.util.Calendar getInstance()>();	r1 = virtualinvoke r0.<java.util.Calendar: java.util.TimeZone getTimeZone()>();	$r3 = new java.lang.StringBuilder;	specialinvoke $r3.<java.lang.StringBuilder: void <init>()>();	$r5 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Timezone ");	$r4 = virtualinvoke r1.<java.util.TimeZone: java.lang.String getDisplayName()>();	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r4);	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" offset=");	$i14 = virtualinvoke r0.<java.util.Calendar: int get(int)>(0);	$i13 = virtualinvoke r0.<java.util.Calendar: int get(int)>(1);	$i12 = virtualinvoke r0.<java.util.Calendar: int get(int)>(2);	$i11 = virtualinvoke r0.<java.util.Calendar: int get(int)>(5);	$i10 = virtualinvoke r0.<java.util.Calendar: int get(int)>(7);	$i0 = virtualinvoke r0.<java.util.Calendar: int get(int)>(11);	$i2 = $i0 * 60;	$i1 = virtualinvoke r0.<java.util.Calendar: int get(int)>(12);	$i3 = $i2 + $i1;	$i5 = $i3 * 60;	$i4 = virtualinvoke r0.<java.util.Calendar: int get(int)>(13);	$i6 = $i5 + $i4;	$i8 = $i6 * 1000;	$i7 = virtualinvoke r0.<java.util.Calendar: int get(int)>(14);	$i9 = $i8 + $i7;	$i15 = virtualinvoke r1.<java.util.TimeZone: int getOffset(int,int,int,int,int,int)>($i14, $i13, $i12, $i11, $i10, $i9);	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i15);	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>();	virtualinvoke r2.<java.io.PrintStream: void println(java.lang.String)>($r9);	return
;block_num 1