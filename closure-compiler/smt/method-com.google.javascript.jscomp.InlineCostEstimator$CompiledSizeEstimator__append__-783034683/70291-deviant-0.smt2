(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3947 0)
(declare-sort var1735 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(define-fun charAt/698050440 ((s String) (index Int)) Int (str.to_code (str.at s index)))
(declare-fun last/-428284089 (var3947) Int)
(declare-fun cost/-428284089 (var3947) Int)
(declare-fun maxCost/-428284089 (var3947) Int)
(declare-const null-var3947 var3947)
(declare-const null-String String)
(declare-const var3463 var3947) ; Statement: r0 := @this: com.google.javascript.jscomp.InlineCostEstimator$CompiledSizeEstimator 
(assert (not (= var3463 null-var3947)))
(declare-const var1784 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var1784 null-String)))
(assert true)
(define-const var1586 Int (length/-134980193 var1784)) ; Statement: $i0 = virtualinvoke r1.<java.lang.String: int length()>() 
(define-const var3972 Int (- var1586 1)) ; Statement: $i1 = $i0 - 1 
(assert (not (and true (and (> (str.len var1784) var3972) (<= 0 var3972)))))
(check-sat)
(get-model)
(get-unsat-core)
; {length/-134980193=([java.lang.String], int), charAt/698050440=([java.lang.String, int], char), last/-428284089=([com.google.javascript.jscomp.InlineCostEstimator$CompiledSizeEstimator], char), cost/-428284089=([com.google.javascript.jscomp.InlineCostEstimator$CompiledSizeEstimator], int), maxCost/-428284089=([com.google.javascript.jscomp.InlineCostEstimator$CompiledSizeEstimator], int)}
; {var3947=com.google.javascript.jscomp.InlineCostEstimator$CompiledSizeEstimator, var3463=r0, var1784=r1, var1735=null_type, var1586=$i0, var3972=$i1, var1308=$c2, var266=$i3, var2684=$i4, var3097=$i5, var2442=$i7, var736=$i6}
; {com.google.javascript.jscomp.InlineCostEstimator$CompiledSizeEstimator=var3947, r0=var3463, r1=var1784, null_type=var1735, $i0=var1586, $i1=var3972, $c2=var1308, $i3=var266, $i4=var2684, $i5=var3097, $i7=var2442, $i6=var736}
;seq <java.lang.String: int length()>;	<java.lang.String: char charAt(int)>;	<java.lang.String: int length()>
;cnt {"<java.lang.String: int length()>": 2,"<java.lang.String: char charAt(int)>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.InlineCostEstimator$CompiledSizeEstimator;	r1 := @parameter0: java.lang.String;	$i0 = virtualinvoke r1.<java.lang.String: int length()>();	$i1 = $i0 - 1;	$c2 = virtualinvoke r1.<java.lang.String: char charAt(int)>($i1);	r0.<com.google.javascript.jscomp.InlineCostEstimator$CompiledSizeEstimator: char last> = $c2;	$i3 = r0.<com.google.javascript.jscomp.InlineCostEstimator$CompiledSizeEstimator: int cost>;	$i4 = virtualinvoke r1.<java.lang.String: int length()>();	$i5 = $i3 + $i4;	r0.<com.google.javascript.jscomp.InlineCostEstimator$CompiledSizeEstimator: int cost> = $i5;	$i7 = r0.<com.google.javascript.jscomp.InlineCostEstimator$CompiledSizeEstimator: int maxCost>;	$i6 = r0.<com.google.javascript.jscomp.InlineCostEstimator$CompiledSizeEstimator: int cost>;	if $i7 > $i6 goto return;	return
;block_num 2