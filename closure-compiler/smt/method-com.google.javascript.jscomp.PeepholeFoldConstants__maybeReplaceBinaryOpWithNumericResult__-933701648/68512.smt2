(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3644 0)
(declare-sort var1368 0)
(declare-sort var121 0)
(declare-sort var3239 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String_valueOf/-987357574 (Float64) String)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-fun var1368_abs/1037857069 (Float64) Float64)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun var3239_numberNode/2064662760 (Float64 var121) var121)
(declare-const null-var3644 var3644)
(declare-const null-Float64 Float64)
(declare-const var3644-MAX_FOLD_NUMBER Float64)
(declare-const null-var121 var121)
(declare-const var939 var3644) ; Statement: r3 := @this: com.google.javascript.jscomp.PeepholeFoldConstants 
(assert (not (= var939 null-var3644)))
(declare-const var2200 Float64) ; Statement: d0 := @parameter0: double 
(assert (not (= var2200 null-Float64)))
(declare-const var3865 Float64) ; Statement: d1 := @parameter1: double 
(assert (not (= var3865 null-Float64)))
(declare-const var325 Float64) ; Statement: d2 := @parameter2: double 
(assert (not (= var325 null-Float64)))
(define-const var3511 String (String_valueOf/-987357574 var2200)) ; Statement: $r0 = staticinvoke <java.lang.String: java.lang.String valueOf(double)>(d0) 
(assert true)
(define-const var3738 Int (length/-134980193 var3511)) ; Statement: $i4 = virtualinvoke $r0.<java.lang.String: int length()>() 
(define-const var2695 String (String_valueOf/-987357574 var3865)) ; Statement: $r1 = staticinvoke <java.lang.String: java.lang.String valueOf(double)>(d1) 
(assert true)
(define-const var3891 Int (length/-134980193 var2695)) ; Statement: $i1 = virtualinvoke $r1.<java.lang.String: int length()>() 
(define-const var3017 String (String_valueOf/-987357574 var325)) ; Statement: $r2 = staticinvoke <java.lang.String: java.lang.String valueOf(double)>(d2) 
(assert true)
(define-const var2767 Int (length/-134980193 var3017)) ; Statement: $i0 = virtualinvoke $r2.<java.lang.String: int length()>() 
(define-const var2325 Int (+ var3891 var2767)) ; Statement: $i2 = $i1 + $i0 
(define-const var61 Int (+ var2325 1)) ; Statement: $i3 = $i2 + 1 
 ; Statement: if $i4 > $i3 goto $z0 = staticinvoke <java.lang.Double: boolean isNaN(double)>(d0) 
(assert (not (> var3738 var61))) ; Negate: Cond: $i4 > $i3  
(define-const var1163 Float64 (var1368_abs/1037857069 var2200)) ; Statement: $d4 = staticinvoke <java.lang.Math: double abs(double)>(d0) 
(define-const var1508 Float64 var3644-MAX_FOLD_NUMBER) ; Statement: $d3 = <com.google.javascript.jscomp.PeepholeFoldConstants: double MAX_FOLD_NUMBER> 
(define-const var633 Int (ite (fp.gt var1163 var1508) 1 (ite (fp.lt var1163 var1508) (- 1) 0))) ; Statement: $b7 = $d4 cmpg $d3 
(define-const var3536 Int (cast-from-Int-to-Int var633)) ; Statement: $i8 = (int) $b7 
 ; Statement: if $i8 <= 0 goto $r4 = staticinvoke <com.google.javascript.jscomp.NodeUtil: com.google.javascript.rhino.Node numberNode(double,com.google.javascript.rhino.Node)>(d0, null) 
(assert (<= var3536 0)) ; Cond: $i8 <= 0 
(define-const var2031 var121 (var3239_numberNode/2064662760 var2200 null-var121)) ; Statement: $r4 = staticinvoke <com.google.javascript.jscomp.NodeUtil: com.google.javascript.rhino.Node numberNode(double,com.google.javascript.rhino.Node)>(d0, null) 
 ; Statement: return $r4 
(check-sat)
(get-model)
(get-unsat-core)
; {String_valueOf/-987357574=([double], java.lang.String), length/-134980193=([java.lang.String], int), var1368_abs/1037857069=([double], double), cast-from-Int-to-Int=([byte], int), var3239_numberNode/2064662760=([double, com.google.javascript.rhino.Node], com.google.javascript.rhino.Node)}
; {var3644=com.google.javascript.jscomp.PeepholeFoldConstants, var939=r3, var2200=d0, var3865=d1, var325=d2, var3511=$r0, var3738=$i4, var2695=$r1, var3891=$i1, var3017=$r2, var2767=$i0, var2325=$i2, var61=$i3, var1368=java.lang.Math, var1163=$d4, var1508=$d3, var633=$b7, var3536=$i8, var121=com.google.javascript.rhino.Node, var3239=com.google.javascript.jscomp.NodeUtil, var2031=$r4}
; {com.google.javascript.jscomp.PeepholeFoldConstants=var3644, r3=var939, d0=var2200, d1=var3865, d2=var325, $r0=var3511, $i4=var3738, $r1=var2695, $i1=var3891, $r2=var3017, $i0=var2767, $i2=var2325, $i3=var61, java.lang.Math=var1368, $d4=var1163, $d3=var1508, $b7=var633, $i8=var3536, com.google.javascript.rhino.Node=var121, com.google.javascript.jscomp.NodeUtil=var3239, $r4=var2031}
;seq <java.lang.String: java.lang.String valueOf(double)>;	<java.lang.String: int length()>;	<java.lang.String: java.lang.String valueOf(double)>;	<java.lang.String: int length()>;	<java.lang.String: java.lang.String valueOf(double)>;	<java.lang.String: int length()>
;cnt {"<java.lang.String: java.lang.String valueOf(double)>": 3,"<java.lang.String: int length()>": 3}
;stmts r3 := @this: com.google.javascript.jscomp.PeepholeFoldConstants;	d0 := @parameter0: double;	d1 := @parameter1: double;	d2 := @parameter2: double;	$r0 = staticinvoke <java.lang.String: java.lang.String valueOf(double)>(d0);	$i4 = virtualinvoke $r0.<java.lang.String: int length()>();	$r1 = staticinvoke <java.lang.String: java.lang.String valueOf(double)>(d1);	$i1 = virtualinvoke $r1.<java.lang.String: int length()>();	$r2 = staticinvoke <java.lang.String: java.lang.String valueOf(double)>(d2);	$i0 = virtualinvoke $r2.<java.lang.String: int length()>();	$i2 = $i1 + $i0;	$i3 = $i2 + 1;	if $i4 > $i3 goto $z0 = staticinvoke <java.lang.Double: boolean isNaN(double)>(d0);	$d4 = staticinvoke <java.lang.Math: double abs(double)>(d0);	$d3 = <com.google.javascript.jscomp.PeepholeFoldConstants: double MAX_FOLD_NUMBER>;	$b7 = $d4 cmpg $d3;	$i8 = (int) $b7;	if $i8 <= 0 goto $r4 = staticinvoke <com.google.javascript.jscomp.NodeUtil: com.google.javascript.rhino.Node numberNode(double,com.google.javascript.rhino.Node)>(d0, null);	$r4 = staticinvoke <com.google.javascript.jscomp.NodeUtil: com.google.javascript.rhino.Node numberNode(double,com.google.javascript.rhino.Node)>(d0, null);	return $r4
;block_num 3