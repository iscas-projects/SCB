(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3239 0)
(declare-sort var2104 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun fExpected/748987693 (var3239) String)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-fun fSuffix/748987693 (var3239) Int)
(declare-fun fContextLength/748987693 (var3239) Int)
(declare-fun var2104_min/-1112089438 (Int Int) Int)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun substring/-1240304868 ((s String) (begin Int) (end Int)) String (str.substr s begin (- end begin)))
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var3239 var3239)
(declare-const var111 var3239) ; Statement: r0 := @this: junit.framework.ComparisonCompactor 
(assert (not (= var111 null-var3239)))
(define-const var2298 String (fExpected/748987693 var111)) ; Statement: $r1 = r0.<junit.framework.ComparisonCompactor: java.lang.String fExpected> 
(assert true)
(define-const var427 Int (length/-134980193 var2298)) ; Statement: $i1 = virtualinvoke $r1.<java.lang.String: int length()>() 
(define-const var105 Int (fSuffix/748987693 var111)) ; Statement: $i0 = r0.<junit.framework.ComparisonCompactor: int fSuffix> 
(define-const var935 Int (- var427 var105)) ; Statement: $i2 = $i1 - $i0 
(define-const var3974 Int (+ var935 1)) ; Statement: $i4 = $i2 + 1 
(define-const var2116 Int (fContextLength/748987693 var111)) ; Statement: $i3 = r0.<junit.framework.ComparisonCompactor: int fContextLength> 
(define-const var3729 Int (+ var3974 var2116)) ; Statement: $i6 = $i4 + $i3 
(define-const var739 String (fExpected/748987693 var111)) ; Statement: $r2 = r0.<junit.framework.ComparisonCompactor: java.lang.String fExpected> 
(assert true)
(define-const var2538 Int (length/-134980193 var739)) ; Statement: $i5 = virtualinvoke $r2.<java.lang.String: int length()>() 
(define-const var3936 Int (var2104_min/-1112089438 var3729 var2538)) ; Statement: i7 = staticinvoke <java.lang.Math: int min(int,int)>($i6, $i5) 
(define-const var832 String String-init) ; Statement: $r3 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var832)) ; Statement: specialinvoke $r3.<java.lang.StringBuilder: void <init>()>() 
(declare-const var832!1 String)
(assert (= var832!1 ""))
(define-const var480 String (fExpected/748987693 var111)) ; Statement: $r5 = r0.<junit.framework.ComparisonCompactor: java.lang.String fExpected> 
(define-const var1621 String (fExpected/748987693 var111)) ; Statement: $r4 = r0.<junit.framework.ComparisonCompactor: java.lang.String fExpected> 
(assert true)
(define-const var349 Int (length/-134980193 var1621)) ; Statement: $i9 = virtualinvoke $r4.<java.lang.String: int length()>() 
(define-const var2177 Int (fSuffix/748987693 var111)) ; Statement: $i8 = r0.<junit.framework.ComparisonCompactor: int fSuffix> 
(define-const var126 Int (- var349 var2177)) ; Statement: $i10 = $i9 - $i8 
(define-const var80 Int (+ var126 1)) ; Statement: $i11 = $i10 + 1 
(assert (and true (and (>= var80 0) (>= (str.len var480) var3936) (>= var3936 var80))))
(define-const var3663 String (substring/-1240304868 var480 var80 var3936)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.String: java.lang.String substring(int,int)>($i11, i7) 
(assert true)
(define-const var2197 String (append/672562846 var832!1 var3663)) ; Statement: $r9 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r6) 
(declare-const var832!2 String)
(assert (= var832!2 (str.++ var832!1 var3663)))
(define-const var1882 String (fExpected/748987693 var111)) ; Statement: $r7 = r0.<junit.framework.ComparisonCompactor: java.lang.String fExpected> 
(assert true)
(define-const var37 Int (length/-134980193 var1882)) ; Statement: $i13 = virtualinvoke $r7.<java.lang.String: int length()>() 
(define-const var3882 Int (fSuffix/748987693 var111)) ; Statement: $i12 = r0.<junit.framework.ComparisonCompactor: int fSuffix> 
(define-const var591 Int (- var37 var3882)) ; Statement: $i14 = $i13 - $i12 
(define-const var764 Int (+ var591 1)) ; Statement: $i18 = $i14 + 1 
(define-const var1856 String (fExpected/748987693 var111)) ; Statement: $r8 = r0.<junit.framework.ComparisonCompactor: java.lang.String fExpected> 
(assert true)
(define-const var1536 Int (length/-134980193 var1856)) ; Statement: $i16 = virtualinvoke $r8.<java.lang.String: int length()>() 
(define-const var1508 Int (fContextLength/748987693 var111)) ; Statement: $i15 = r0.<junit.framework.ComparisonCompactor: int fContextLength> 
(define-const var540 Int (- var1536 var1508)) ; Statement: $i17 = $i16 - $i15 
 ; Statement: if $i18 >= $i17 goto $r12 = "" 
(assert (not (>= var764 var540))) ; Negate: Cond: $i18 >= $i17  
(define-const var873 String "...") ; Statement: $r12 = "..." 
 ; Statement: goto [?= $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r12)] 
(assert true) ; Non Conditional
(assert true)
(define-const var3653 String (append/672562846 var2197 var873)) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r12) 
(declare-const var2197!1 String)
(assert (= var2197!1 (str.++ var2197 var873)))
(assert true)
(define-const var647 String (toString/-2075883882 var3653)) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r11 
(check-sat)
(get-model)
(get-unsat-core)
; {fExpected/748987693=([junit.framework.ComparisonCompactor], java.lang.String), length/-134980193=([java.lang.String], int), fSuffix/748987693=([junit.framework.ComparisonCompactor], int), fContextLength/748987693=([junit.framework.ComparisonCompactor], int), var2104_min/-1112089438=([int, int], int), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), substring/-1240304868=([java.lang.String, int, int], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var3239=junit.framework.ComparisonCompactor, var111=r0, var2298=$r1, var427=$i1, var105=$i0, var935=$i2, var3974=$i4, var2116=$i3, var3729=$i6, var739=$r2, var2538=$i5, var2104=java.lang.Math, var3936=i7, var832=$r3, var480=$r5, var1621=$r4, var349=$i9, var2177=$i8, var126=$i10, var80=$i11, var3663=$r6, var2197=$r9, var1882=$r7, var37=$i13, var3882=$i12, var591=$i14, var764=$i18, var1856=$r8, var1536=$i16, var1508=$i15, var540=$i17, var873=$r12, var3653=$r10, var647=$r11}
; {junit.framework.ComparisonCompactor=var3239, r0=var111, $r1=var2298, $i1=var427, $i0=var105, $i2=var935, $i4=var3974, $i3=var2116, $i6=var3729, $r2=var739, $i5=var2538, java.lang.Math=var2104, i7=var3936, $r3=var832, $r5=var480, $r4=var1621, $i9=var349, $i8=var2177, $i10=var126, $i11=var80, $r6=var3663, $r9=var2197, $r7=var1882, $i13=var37, $i12=var3882, $i14=var591, $i18=var764, $r8=var1856, $i16=var1536, $i15=var1508, $i17=var540, $r12=var873, $r10=var3653, $r11=var647}
;seq <java.lang.String: int length()>;	<java.lang.String: int length()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.String: int length()>;	<java.lang.String: java.lang.String substring(int,int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.String: int length()>;	<java.lang.String: int length()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.String: int length()>": 5,"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.String: java.lang.String substring(int,int)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: junit.framework.ComparisonCompactor;	$r1 = r0.<junit.framework.ComparisonCompactor: java.lang.String fExpected>;	$i1 = virtualinvoke $r1.<java.lang.String: int length()>();	$i0 = r0.<junit.framework.ComparisonCompactor: int fSuffix>;	$i2 = $i1 - $i0;	$i4 = $i2 + 1;	$i3 = r0.<junit.framework.ComparisonCompactor: int fContextLength>;	$i6 = $i4 + $i3;	$r2 = r0.<junit.framework.ComparisonCompactor: java.lang.String fExpected>;	$i5 = virtualinvoke $r2.<java.lang.String: int length()>();	i7 = staticinvoke <java.lang.Math: int min(int,int)>($i6, $i5);	$r3 = new java.lang.StringBuilder;	specialinvoke $r3.<java.lang.StringBuilder: void <init>()>();	$r5 = r0.<junit.framework.ComparisonCompactor: java.lang.String fExpected>;	$r4 = r0.<junit.framework.ComparisonCompactor: java.lang.String fExpected>;	$i9 = virtualinvoke $r4.<java.lang.String: int length()>();	$i8 = r0.<junit.framework.ComparisonCompactor: int fSuffix>;	$i10 = $i9 - $i8;	$i11 = $i10 + 1;	$r6 = virtualinvoke $r5.<java.lang.String: java.lang.String substring(int,int)>($i11, i7);	$r9 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r6);	$r7 = r0.<junit.framework.ComparisonCompactor: java.lang.String fExpected>;	$i13 = virtualinvoke $r7.<java.lang.String: int length()>();	$i12 = r0.<junit.framework.ComparisonCompactor: int fSuffix>;	$i14 = $i13 - $i12;	$i18 = $i14 + 1;	$r8 = r0.<junit.framework.ComparisonCompactor: java.lang.String fExpected>;	$i16 = virtualinvoke $r8.<java.lang.String: int length()>();	$i15 = r0.<junit.framework.ComparisonCompactor: int fContextLength>;	$i17 = $i16 - $i15;	if $i18 >= $i17 goto $r12 = "";	$r12 = "...";	goto [?= $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r12)];	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r12);	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.String toString()>();	return $r11
;block_num 3