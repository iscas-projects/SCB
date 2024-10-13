(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3081 0)
(declare-sort var3660 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun fPrefix/748987693 (var3081) Int)
(declare-fun fContextLength/748987693 (var3081) Int)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun fExpected/748987693 (var3081) String)
(declare-fun var3660_max/1360571700 (Int Int) Int)
(define-fun substring/-1240304868 ((s String) (begin Int) (end Int)) String (str.substr s begin (- end begin)))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var3081 var3081)
(declare-const var3002 var3081) ; Statement: r1 := @this: junit.framework.ComparisonCompactor 
(assert (not (= var3002 null-var3081)))
(define-const var3150 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3150)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3150!1 String)
(assert (= var3150!1 ""))
(define-const var2651 Int (fPrefix/748987693 var3002)) ; Statement: $i1 = r1.<junit.framework.ComparisonCompactor: int fPrefix> 
(define-const var3779 Int (fContextLength/748987693 var3002)) ; Statement: $i0 = r1.<junit.framework.ComparisonCompactor: int fContextLength> 
 ; Statement: if $i1 <= $i0 goto $r7 = "" 
(assert (<= var2651 var3779)) ; Cond: $i1 <= $i0 
(define-const var1222 String "") ; Statement: $r7 = "" 
(assert true) ; Non Conditional
(assert true)
(define-const var963 String (append/672562846 var3150!1 var1222)) ; Statement: $r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r7) 
(declare-const var3150!2 String)
(assert (= var3150!2 (str.++ var3150!1 var1222)))
(define-const var3357 String (fExpected/748987693 var3002)) ; Statement: $r2 = r1.<junit.framework.ComparisonCompactor: java.lang.String fExpected> 
(define-const var649 Int (fPrefix/748987693 var3002)) ; Statement: $i3 = r1.<junit.framework.ComparisonCompactor: int fPrefix> 
(define-const var2013 Int (fContextLength/748987693 var3002)) ; Statement: $i2 = r1.<junit.framework.ComparisonCompactor: int fContextLength> 
(define-const var297 Int (- var649 var2013)) ; Statement: $i4 = $i3 - $i2 
(define-const var2477 Int (var3660_max/1360571700 0 var297)) ; Statement: $i6 = staticinvoke <java.lang.Math: int max(int,int)>(0, $i4) 
(define-const var1903 Int (fPrefix/748987693 var3002)) ; Statement: $i5 = r1.<junit.framework.ComparisonCompactor: int fPrefix> 
(assert (not (and true (and (>= var2477 0) (>= (str.len var3357) var1903) (>= var1903 var2477)))))
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), fPrefix/748987693=([junit.framework.ComparisonCompactor], int), fContextLength/748987693=([junit.framework.ComparisonCompactor], int), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), fExpected/748987693=([junit.framework.ComparisonCompactor], java.lang.String), var3660_max/1360571700=([int, int], int), substring/-1240304868=([java.lang.String, int, int], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var3081=junit.framework.ComparisonCompactor, var3002=r1, var3150=$r0, var2651=$i1, var3779=$i0, var1222=$r7, var963=$r4, var3357=$r2, var649=$i3, var2013=$i2, var297=$i4, var3660=java.lang.Math, var2477=$i6, var1903=$i5, var14=$r3, var3662=$r5, var1644=$r6}
; {junit.framework.ComparisonCompactor=var3081, r1=var3002, $r0=var3150, $i1=var2651, $i0=var3779, $r7=var1222, $r4=var963, $r2=var3357, $i3=var649, $i2=var2013, $i4=var297, java.lang.Math=var3660, $i6=var2477, $i5=var1903, $r3=var14, $r5=var3662, $r6=var1644}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.String: java.lang.String substring(int,int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.String: java.lang.String substring(int,int)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: junit.framework.ComparisonCompactor;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$i1 = r1.<junit.framework.ComparisonCompactor: int fPrefix>;	$i0 = r1.<junit.framework.ComparisonCompactor: int fContextLength>;	if $i1 <= $i0 goto $r7 = "";	$r7 = "";	$r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r7);	$r2 = r1.<junit.framework.ComparisonCompactor: java.lang.String fExpected>;	$i3 = r1.<junit.framework.ComparisonCompactor: int fPrefix>;	$i2 = r1.<junit.framework.ComparisonCompactor: int fContextLength>;	$i4 = $i3 - $i2;	$i6 = staticinvoke <java.lang.Math: int max(int,int)>(0, $i4);	$i5 = r1.<junit.framework.ComparisonCompactor: int fPrefix>;	$r3 = virtualinvoke $r2.<java.lang.String: java.lang.String substring(int,int)>($i6, $i5);	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3);	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>();	return $r6
;block_num 3