(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1033 0)
(declare-sort var2466 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-const var1033!class ClassObject)
(declare-fun desiredAssertionStatus/-1561484483 (ClassObject) Bool)
(declare-fun arr-Int-init () (Array Int Int))
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun var2466_fill/506259732 ((Array Int Int) Int) void)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-const var1033-BASE64_DECODE_MAP (Array Int Int))
(define-const var872 ClassObject var1033!class) ; Statement: $r0 = class "Lcom/google/debugging/sourcemap/Base64;" 
(assert true)
(define-const var3481 Bool (desiredAssertionStatus/-1561484483 var872)) ; Statement: $z0 = virtualinvoke $r0.<java.lang.Class: boolean desiredAssertionStatus()>() 
 ; Statement: if $z0 != 0 goto $z1 = 0 
(assert (not (= (ite var3481 1 0) 0))) ; Cond: $z0 != 0 
(define-const var2474 Bool (ite (= 1 0) true false)) ; Statement: $z1 = 0 
(assert true) ; Non Conditional
(define-const var2393 Bool var2474) ; Statement: <com.google.debugging.sourcemap.Base64: boolean $assertionsDisabled> = $z1 
(define-const var2013 (Array Int Int) arr-Int-init) ; Statement: $r1 = newarray (int)[256] 
(define-const var2703 (Array Int Int) var2013) ; Statement: <com.google.debugging.sourcemap.Base64: int[] BASE64_DECODE_MAP> = $r1 
(define-const var2539 (Array Int Int) var1033-BASE64_DECODE_MAP) ; Statement: $r2 = <com.google.debugging.sourcemap.Base64: int[] BASE64_DECODE_MAP> 
(define-const var2587 Int (cast-from-Int-to-Int (- 1))) ; Statement: $i4 = (int) -1 
;(assert (var2466_fill/506259732 var2539 var2587)) ; Statement: staticinvoke <java.util.Arrays: void fill(int[],int)>($r2, $i4) 

(declare-const var2539!1 (Array Int Int))
(declare-const var2587!1 Int)
(define-const var3338 Int 0) ; Statement: i1 = 0 
(assert true) ; Non Conditional
(define-const var979 String "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/") ; Statement: $r5 = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/" 
(assert true)
(define-const var3183 Int (length/-134980193 var979)) ; Statement: $i2 = virtualinvoke $r5.<java.lang.String: int length()>() 
 ; Statement: if i1 >= $i2 goto return 
(assert (>= var3338 var3183)) ; Cond: i1 >= $i2 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {desiredAssertionStatus/-1561484483=([java.lang.Class], boolean), arr-Int-init=([], int[]), cast-from-Int-to-Int=([int], int), var2466_fill/506259732=([int[], int], void), length/-134980193=([java.lang.String], int)}
; {var1033=com.google.debugging.sourcemap.Base64, var872=$r0, var3481=$z0, var2474=$z1, var2393=<com.google.debugging.sourcemap.Base64: boolean $assertionsDisabled>, var2013=$r1, var2703=<com.google.debugging.sourcemap.Base64: int[] BASE64_DECODE_MAP>, var2539=$r2, var2587=$i4, var2466=java.util.Arrays, var3338=i1, var979=$r5, var3183=$i2}
; {com.google.debugging.sourcemap.Base64=var1033, $r0=var872, $z0=var3481, $z1=var2474, <com.google.debugging.sourcemap.Base64: boolean $assertionsDisabled>=var2393, $r1=var2013, <com.google.debugging.sourcemap.Base64: int[] BASE64_DECODE_MAP>=var2703, $r2=var2539, $i4=var2587, java.util.Arrays=var2466, i1=var3338, $r5=var979, $i2=var3183}
;seq <java.lang.String: int length()>
;cnt {"<java.lang.String: int length()>": 1}
;stmts $r0 = class "Lcom/google/debugging/sourcemap/Base64;";	$z0 = virtualinvoke $r0.<java.lang.Class: boolean desiredAssertionStatus()>();	if $z0 != 0 goto $z1 = 0;	$z1 = 0;	<com.google.debugging.sourcemap.Base64: boolean $assertionsDisabled> = $z1;	$r1 = newarray (int)[256];	<com.google.debugging.sourcemap.Base64: int[] BASE64_DECODE_MAP> = $r1;	$r2 = <com.google.debugging.sourcemap.Base64: int[] BASE64_DECODE_MAP>;	$i4 = (int) -1;	staticinvoke <java.util.Arrays: void fill(int[],int)>($r2, $i4);	i1 = 0;	$r5 = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/";	$i2 = virtualinvoke $r5.<java.lang.String: int length()>();	if i1 >= $i2 goto return;	return
;block_num 5