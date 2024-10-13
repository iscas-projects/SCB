(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var758 0)
(declare-sort var2521 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun fExpected/748987693 (var758) String)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-fun fSuffix/748987693 (var758) Int)
(declare-fun fContextLength/748987693 (var758) Int)
(declare-fun var2521_min/-1112089438 (Int Int) Int)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun substring/-1240304868 ((s String) (begin Int) (end Int)) String (str.substr s begin (- end begin)))
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var758 var758)
(declare-const var2082 var758) ; Statement: r0 := @this: junit.framework.ComparisonCompactor 
(assert (not (= var2082 null-var758)))
(define-const var45 String (fExpected/748987693 var2082)) ; Statement: $r1 = r0.<junit.framework.ComparisonCompactor: java.lang.String fExpected> 
(assert true)
(define-const var3548 Int (length/-134980193 var45)) ; Statement: $i1 = virtualinvoke $r1.<java.lang.String: int length()>() 
(define-const var273 Int (fSuffix/748987693 var2082)) ; Statement: $i0 = r0.<junit.framework.ComparisonCompactor: int fSuffix> 
(define-const var172 Int (- var3548 var273)) ; Statement: $i2 = $i1 - $i0 
(define-const var2548 Int (+ var172 1)) ; Statement: $i4 = $i2 + 1 
(define-const var1149 Int (fContextLength/748987693 var2082)) ; Statement: $i3 = r0.<junit.framework.ComparisonCompactor: int fContextLength> 
(define-const var1520 Int (+ var2548 var1149)) ; Statement: $i6 = $i4 + $i3 
(define-const var3308 String (fExpected/748987693 var2082)) ; Statement: $r2 = r0.<junit.framework.ComparisonCompactor: java.lang.String fExpected> 
(assert true)
(define-const var345 Int (length/-134980193 var3308)) ; Statement: $i5 = virtualinvoke $r2.<java.lang.String: int length()>() 
(define-const var2141 Int (var2521_min/-1112089438 var1520 var345)) ; Statement: i7 = staticinvoke <java.lang.Math: int min(int,int)>($i6, $i5) 
(define-const var700 String String-init) ; Statement: $r3 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var700)) ; Statement: specialinvoke $r3.<java.lang.StringBuilder: void <init>()>() 
(declare-const var700!1 String)
(assert (= var700!1 ""))
(define-const var1557 String (fExpected/748987693 var2082)) ; Statement: $r5 = r0.<junit.framework.ComparisonCompactor: java.lang.String fExpected> 
(define-const var437 String (fExpected/748987693 var2082)) ; Statement: $r4 = r0.<junit.framework.ComparisonCompactor: java.lang.String fExpected> 
(assert true)
(define-const var166 Int (length/-134980193 var437)) ; Statement: $i9 = virtualinvoke $r4.<java.lang.String: int length()>() 
(define-const var3434 Int (fSuffix/748987693 var2082)) ; Statement: $i8 = r0.<junit.framework.ComparisonCompactor: int fSuffix> 
(define-const var569 Int (- var166 var3434)) ; Statement: $i10 = $i9 - $i8 
(define-const var3146 Int (+ var569 1)) ; Statement: $i11 = $i10 + 1 
(assert (not (and true (and (>= var3146 0) (>= (str.len var1557) var2141) (>= var2141 var3146)))))
(check-sat)
(get-model)
(get-unsat-core)
; {fExpected/748987693=([junit.framework.ComparisonCompactor], java.lang.String), length/-134980193=([java.lang.String], int), fSuffix/748987693=([junit.framework.ComparisonCompactor], int), fContextLength/748987693=([junit.framework.ComparisonCompactor], int), var2521_min/-1112089438=([int, int], int), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), substring/-1240304868=([java.lang.String, int, int], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var758=junit.framework.ComparisonCompactor, var2082=r0, var45=$r1, var3548=$i1, var273=$i0, var172=$i2, var2548=$i4, var1149=$i3, var1520=$i6, var3308=$r2, var345=$i5, var2521=java.lang.Math, var2141=i7, var700=$r3, var1557=$r5, var437=$r4, var166=$i9, var3434=$i8, var569=$i10, var3146=$i11, var606=$r6, var1596=$r9, var3229=$r7, var3070=$i13, var1045=$i12, var500=$i14, var2496=$i18, var3933=$r8, var1966=$i16, var3858=$i15, var1217=$i17, var1418=$r12, var224=$r10, var2322=$r11}
; {junit.framework.ComparisonCompactor=var758, r0=var2082, $r1=var45, $i1=var3548, $i0=var273, $i2=var172, $i4=var2548, $i3=var1149, $i6=var1520, $r2=var3308, $i5=var345, java.lang.Math=var2521, i7=var2141, $r3=var700, $r5=var1557, $r4=var437, $i9=var166, $i8=var3434, $i10=var569, $i11=var3146, $r6=var606, $r9=var1596, $r7=var3229, $i13=var3070, $i12=var1045, $i14=var500, $i18=var2496, $r8=var3933, $i16=var1966, $i15=var3858, $i17=var1217, $r12=var1418, $r10=var224, $r11=var2322}
;seq <java.lang.String: int length()>;	<java.lang.String: int length()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.String: int length()>;	<java.lang.String: java.lang.String substring(int,int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.String: int length()>;	<java.lang.String: int length()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.String: int length()>": 5,"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.String: java.lang.String substring(int,int)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: junit.framework.ComparisonCompactor;	$r1 = r0.<junit.framework.ComparisonCompactor: java.lang.String fExpected>;	$i1 = virtualinvoke $r1.<java.lang.String: int length()>();	$i0 = r0.<junit.framework.ComparisonCompactor: int fSuffix>;	$i2 = $i1 - $i0;	$i4 = $i2 + 1;	$i3 = r0.<junit.framework.ComparisonCompactor: int fContextLength>;	$i6 = $i4 + $i3;	$r2 = r0.<junit.framework.ComparisonCompactor: java.lang.String fExpected>;	$i5 = virtualinvoke $r2.<java.lang.String: int length()>();	i7 = staticinvoke <java.lang.Math: int min(int,int)>($i6, $i5);	$r3 = new java.lang.StringBuilder;	specialinvoke $r3.<java.lang.StringBuilder: void <init>()>();	$r5 = r0.<junit.framework.ComparisonCompactor: java.lang.String fExpected>;	$r4 = r0.<junit.framework.ComparisonCompactor: java.lang.String fExpected>;	$i9 = virtualinvoke $r4.<java.lang.String: int length()>();	$i8 = r0.<junit.framework.ComparisonCompactor: int fSuffix>;	$i10 = $i9 - $i8;	$i11 = $i10 + 1;	$r6 = virtualinvoke $r5.<java.lang.String: java.lang.String substring(int,int)>($i11, i7);	$r9 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r6);	$r7 = r0.<junit.framework.ComparisonCompactor: java.lang.String fExpected>;	$i13 = virtualinvoke $r7.<java.lang.String: int length()>();	$i12 = r0.<junit.framework.ComparisonCompactor: int fSuffix>;	$i14 = $i13 - $i12;	$i18 = $i14 + 1;	$r8 = r0.<junit.framework.ComparisonCompactor: java.lang.String fExpected>;	$i16 = virtualinvoke $r8.<java.lang.String: int length()>();	$i15 = r0.<junit.framework.ComparisonCompactor: int fContextLength>;	$i17 = $i16 - $i15;	if $i18 >= $i17 goto $r12 = "";	$r12 = "";	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r12);	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.String toString()>();	return $r11
;block_num 3