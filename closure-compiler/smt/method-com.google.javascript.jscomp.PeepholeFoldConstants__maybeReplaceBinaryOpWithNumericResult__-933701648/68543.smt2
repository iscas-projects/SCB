(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3713 0)
(declare-sort var1432 0)
(declare-sort var2450 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String_valueOf/-987357574 (Float64) String)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-fun Float64_isNaN/-647401060 (Float64) Bool)
(declare-fun var2450_numberNode/2064662760 (Float64 var1432) var1432)
(declare-const null-var3713 var3713)
(declare-const null-Float64 Float64)
(declare-const null-var1432 var1432)
(declare-const var3797 var3713) ; Statement: r3 := @this: com.google.javascript.jscomp.PeepholeFoldConstants 
(assert (not (= var3797 null-var3713)))
(declare-const var794 Float64) ; Statement: d0 := @parameter0: double 
(assert (not (= var794 null-Float64)))
(declare-const var3786 Float64) ; Statement: d1 := @parameter1: double 
(assert (not (= var3786 null-Float64)))
(declare-const var3945 Float64) ; Statement: d2 := @parameter2: double 
(assert (not (= var3945 null-Float64)))
(define-const var2790 String (String_valueOf/-987357574 var794)) ; Statement: $r0 = staticinvoke <java.lang.String: java.lang.String valueOf(double)>(d0) 
(assert true)
(define-const var1692 Int (length/-134980193 var2790)) ; Statement: $i4 = virtualinvoke $r0.<java.lang.String: int length()>() 
(define-const var1274 String (String_valueOf/-987357574 var3786)) ; Statement: $r1 = staticinvoke <java.lang.String: java.lang.String valueOf(double)>(d1) 
(assert true)
(define-const var2173 Int (length/-134980193 var1274)) ; Statement: $i1 = virtualinvoke $r1.<java.lang.String: int length()>() 
(define-const var1351 String (String_valueOf/-987357574 var3945)) ; Statement: $r2 = staticinvoke <java.lang.String: java.lang.String valueOf(double)>(d2) 
(assert true)
(define-const var696 Int (length/-134980193 var1351)) ; Statement: $i0 = virtualinvoke $r2.<java.lang.String: int length()>() 
(define-const var3511 Int (+ var2173 var696)) ; Statement: $i2 = $i1 + $i0 
(define-const var1491 Int (+ var3511 1)) ; Statement: $i3 = $i2 + 1 
 ; Statement: if $i4 > $i3 goto $z0 = staticinvoke <java.lang.Double: boolean isNaN(double)>(d0) 
(assert (> var1692 var1491)) ; Cond: $i4 > $i3 
(define-const var3823 Bool (Float64_isNaN/-647401060 var794)) ; Statement: $z0 = staticinvoke <java.lang.Double: boolean isNaN(double)>(d0) 
 ; Statement: if $z0 != 0 goto $r4 = staticinvoke <com.google.javascript.jscomp.NodeUtil: com.google.javascript.rhino.Node numberNode(double,com.google.javascript.rhino.Node)>(d0, null) 
(assert (not (= (ite var3823 1 0) 0))) ; Cond: $z0 != 0 
(define-const var3510 var1432 (var2450_numberNode/2064662760 var794 null-var1432)) ; Statement: $r4 = staticinvoke <com.google.javascript.jscomp.NodeUtil: com.google.javascript.rhino.Node numberNode(double,com.google.javascript.rhino.Node)>(d0, null) 
 ; Statement: return $r4 
(check-sat)
(get-model)
(get-unsat-core)
; {String_valueOf/-987357574=([double], java.lang.String), length/-134980193=([java.lang.String], int), Float64_isNaN/-647401060=([double], boolean), var2450_numberNode/2064662760=([double, com.google.javascript.rhino.Node], com.google.javascript.rhino.Node)}
; {var3713=com.google.javascript.jscomp.PeepholeFoldConstants, var3797=r3, var794=d0, var3786=d1, var3945=d2, var2790=$r0, var1692=$i4, var1274=$r1, var2173=$i1, var1351=$r2, var696=$i0, var3511=$i2, var1491=$i3, var3823=$z0, var1432=com.google.javascript.rhino.Node, var2450=com.google.javascript.jscomp.NodeUtil, var3510=$r4}
; {com.google.javascript.jscomp.PeepholeFoldConstants=var3713, r3=var3797, d0=var794, d1=var3786, d2=var3945, $r0=var2790, $i4=var1692, $r1=var1274, $i1=var2173, $r2=var1351, $i0=var696, $i2=var3511, $i3=var1491, $z0=var3823, com.google.javascript.rhino.Node=var1432, com.google.javascript.jscomp.NodeUtil=var2450, $r4=var3510}
;seq <java.lang.String: java.lang.String valueOf(double)>;	<java.lang.String: int length()>;	<java.lang.String: java.lang.String valueOf(double)>;	<java.lang.String: int length()>;	<java.lang.String: java.lang.String valueOf(double)>;	<java.lang.String: int length()>
;cnt {"<java.lang.String: java.lang.String valueOf(double)>": 3,"<java.lang.String: int length()>": 3}
;stmts r3 := @this: com.google.javascript.jscomp.PeepholeFoldConstants;	d0 := @parameter0: double;	d1 := @parameter1: double;	d2 := @parameter2: double;	$r0 = staticinvoke <java.lang.String: java.lang.String valueOf(double)>(d0);	$i4 = virtualinvoke $r0.<java.lang.String: int length()>();	$r1 = staticinvoke <java.lang.String: java.lang.String valueOf(double)>(d1);	$i1 = virtualinvoke $r1.<java.lang.String: int length()>();	$r2 = staticinvoke <java.lang.String: java.lang.String valueOf(double)>(d2);	$i0 = virtualinvoke $r2.<java.lang.String: int length()>();	$i2 = $i1 + $i0;	$i3 = $i2 + 1;	if $i4 > $i3 goto $z0 = staticinvoke <java.lang.Double: boolean isNaN(double)>(d0);	$z0 = staticinvoke <java.lang.Double: boolean isNaN(double)>(d0);	if $z0 != 0 goto $r4 = staticinvoke <com.google.javascript.jscomp.NodeUtil: com.google.javascript.rhino.Node numberNode(double,com.google.javascript.rhino.Node)>(d0, null);	$r4 = staticinvoke <com.google.javascript.jscomp.NodeUtil: com.google.javascript.rhino.Node numberNode(double,com.google.javascript.rhino.Node)>(d0, null);	return $r4
;block_num 3