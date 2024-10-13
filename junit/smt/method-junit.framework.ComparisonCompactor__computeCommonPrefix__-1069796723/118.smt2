(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3178 0)
(declare-sort var3978 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun fPrefix/748987693 (var3178) Int)
(declare-fun fContextLength/748987693 (var3178) Int)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun fExpected/748987693 (var3178) String)
(declare-fun var3978_max/1360571700 (Int Int) Int)
(define-fun substring/-1240304868 ((s String) (begin Int) (end Int)) String (str.substr s begin (- end begin)))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var3178 var3178)
(declare-const var2587 var3178) ; Statement: r1 := @this: junit.framework.ComparisonCompactor 
(assert (not (= var2587 null-var3178)))
(define-const var2457 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2457)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2457!1 String)
(assert (= var2457!1 ""))
(define-const var3794 Int (fPrefix/748987693 var2587)) ; Statement: $i1 = r1.<junit.framework.ComparisonCompactor: int fPrefix> 
(define-const var2110 Int (fContextLength/748987693 var2587)) ; Statement: $i0 = r1.<junit.framework.ComparisonCompactor: int fContextLength> 
 ; Statement: if $i1 <= $i0 goto $r7 = "" 
(assert (not (<= var3794 var2110))) ; Negate: Cond: $i1 <= $i0  
(define-const var2618 String "...") ; Statement: $r7 = "..." 
 ; Statement: goto [?= $r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r7)] 
(assert true) ; Non Conditional
(assert true)
(define-const var2225 String (append/672562846 var2457!1 var2618)) ; Statement: $r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r7) 
(declare-const var2457!2 String)
(assert (= var2457!2 (str.++ var2457!1 var2618)))
(define-const var2716 String (fExpected/748987693 var2587)) ; Statement: $r2 = r1.<junit.framework.ComparisonCompactor: java.lang.String fExpected> 
(define-const var1393 Int (fPrefix/748987693 var2587)) ; Statement: $i3 = r1.<junit.framework.ComparisonCompactor: int fPrefix> 
(define-const var3611 Int (fContextLength/748987693 var2587)) ; Statement: $i2 = r1.<junit.framework.ComparisonCompactor: int fContextLength> 
(define-const var2926 Int (- var1393 var3611)) ; Statement: $i4 = $i3 - $i2 
(define-const var3401 Int (var3978_max/1360571700 0 var2926)) ; Statement: $i6 = staticinvoke <java.lang.Math: int max(int,int)>(0, $i4) 
(define-const var169 Int (fPrefix/748987693 var2587)) ; Statement: $i5 = r1.<junit.framework.ComparisonCompactor: int fPrefix> 
(assert (and true (and (>= var3401 0) (>= (str.len var2716) var169) (>= var169 var3401))))
(define-const var2644 String (substring/-1240304868 var2716 var3401 var169)) ; Statement: $r3 = virtualinvoke $r2.<java.lang.String: java.lang.String substring(int,int)>($i6, $i5) 
(assert true)
(define-const var108 String (append/672562846 var2225 var2644)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3) 
(declare-const var2225!1 String)
(assert (= var2225!1 (str.++ var2225 var2644)))
(assert true)
(define-const var1232 String (toString/-2075883882 var108)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r6 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), fPrefix/748987693=([junit.framework.ComparisonCompactor], int), fContextLength/748987693=([junit.framework.ComparisonCompactor], int), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), fExpected/748987693=([junit.framework.ComparisonCompactor], java.lang.String), var3978_max/1360571700=([int, int], int), substring/-1240304868=([java.lang.String, int, int], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var3178=junit.framework.ComparisonCompactor, var2587=r1, var2457=$r0, var3794=$i1, var2110=$i0, var2618=$r7, var2225=$r4, var2716=$r2, var1393=$i3, var3611=$i2, var2926=$i4, var3978=java.lang.Math, var3401=$i6, var169=$i5, var2644=$r3, var108=$r5, var1232=$r6}
; {junit.framework.ComparisonCompactor=var3178, r1=var2587, $r0=var2457, $i1=var3794, $i0=var2110, $r7=var2618, $r4=var2225, $r2=var2716, $i3=var1393, $i2=var3611, $i4=var2926, java.lang.Math=var3978, $i6=var3401, $i5=var169, $r3=var2644, $r5=var108, $r6=var1232}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.String: java.lang.String substring(int,int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.String: java.lang.String substring(int,int)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: junit.framework.ComparisonCompactor;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$i1 = r1.<junit.framework.ComparisonCompactor: int fPrefix>;	$i0 = r1.<junit.framework.ComparisonCompactor: int fContextLength>;	if $i1 <= $i0 goto $r7 = "";	$r7 = "...";	goto [?= $r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r7)];	$r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r7);	$r2 = r1.<junit.framework.ComparisonCompactor: java.lang.String fExpected>;	$i3 = r1.<junit.framework.ComparisonCompactor: int fPrefix>;	$i2 = r1.<junit.framework.ComparisonCompactor: int fContextLength>;	$i4 = $i3 - $i2;	$i6 = staticinvoke <java.lang.Math: int max(int,int)>(0, $i4);	$i5 = r1.<junit.framework.ComparisonCompactor: int fPrefix>;	$r3 = virtualinvoke $r2.<java.lang.String: java.lang.String substring(int,int)>($i6, $i5);	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3);	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>();	return $r6
;block_num 3