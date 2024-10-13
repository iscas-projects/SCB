(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var108 0)
(declare-sort var3249 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-const var108!class ClassObject)
(declare-fun desiredAssertionStatus/-1561484483 (ClassObject) Bool)
(declare-fun arr-Int-init () (Array Int Int))
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun var3249_fill/506259732 ((Array Int Int) Int) void)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-const var108-BASE64_DECODE_MAP (Array Int Int))
(define-const var1302 ClassObject var108!class) ; Statement: $r0 = class "Lcom/google/debugging/sourcemap/Base64;" 
(assert true)
(define-const var260 Bool (desiredAssertionStatus/-1561484483 var1302)) ; Statement: $z0 = virtualinvoke $r0.<java.lang.Class: boolean desiredAssertionStatus()>() 
 ; Statement: if $z0 != 0 goto $z1 = 0 
(assert (not (not (= (ite var260 1 0) 0)))) ; Negate: Cond: $z0 != 0  
(define-const var3461 Bool (ite (= 1 1) true false)) ; Statement: $z1 = 1 
 ; Statement: goto [?= <com.google.debugging.sourcemap.Base64: boolean $assertionsDisabled> = $z1] 
(assert true) ; Non Conditional
(define-const var3892 Bool var3461) ; Statement: <com.google.debugging.sourcemap.Base64: boolean $assertionsDisabled> = $z1 
(define-const var3678 (Array Int Int) arr-Int-init) ; Statement: $r1 = newarray (int)[256] 
(define-const var2508 (Array Int Int) var3678) ; Statement: <com.google.debugging.sourcemap.Base64: int[] BASE64_DECODE_MAP> = $r1 
(define-const var997 (Array Int Int) var108-BASE64_DECODE_MAP) ; Statement: $r2 = <com.google.debugging.sourcemap.Base64: int[] BASE64_DECODE_MAP> 
(define-const var255 Int (cast-from-Int-to-Int (- 1))) ; Statement: $i4 = (int) -1 
;(assert (var3249_fill/506259732 var997 var255)) ; Statement: staticinvoke <java.util.Arrays: void fill(int[],int)>($r2, $i4) 

(declare-const var997!1 (Array Int Int))
(declare-const var255!1 Int)
(define-const var2124 Int 0) ; Statement: i1 = 0 
(assert true) ; Non Conditional
(define-const var3390 String "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/") ; Statement: $r5 = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/" 
(assert true)
(define-const var3944 Int (length/-134980193 var3390)) ; Statement: $i2 = virtualinvoke $r5.<java.lang.String: int length()>() 
 ; Statement: if i1 >= $i2 goto return 
(assert (>= var2124 var3944)) ; Cond: i1 >= $i2 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {desiredAssertionStatus/-1561484483=([java.lang.Class], boolean), arr-Int-init=([], int[]), cast-from-Int-to-Int=([int], int), var3249_fill/506259732=([int[], int], void), length/-134980193=([java.lang.String], int)}
; {var108=com.google.debugging.sourcemap.Base64, var1302=$r0, var260=$z0, var3461=$z1, var3892=<com.google.debugging.sourcemap.Base64: boolean $assertionsDisabled>, var3678=$r1, var2508=<com.google.debugging.sourcemap.Base64: int[] BASE64_DECODE_MAP>, var997=$r2, var255=$i4, var3249=java.util.Arrays, var2124=i1, var3390=$r5, var3944=$i2}
; {com.google.debugging.sourcemap.Base64=var108, $r0=var1302, $z0=var260, $z1=var3461, <com.google.debugging.sourcemap.Base64: boolean $assertionsDisabled>=var3892, $r1=var3678, <com.google.debugging.sourcemap.Base64: int[] BASE64_DECODE_MAP>=var2508, $r2=var997, $i4=var255, java.util.Arrays=var3249, i1=var2124, $r5=var3390, $i2=var3944}
;seq <java.lang.String: int length()>
;cnt {"<java.lang.String: int length()>": 1}
;stmts $r0 = class "Lcom/google/debugging/sourcemap/Base64;";	$z0 = virtualinvoke $r0.<java.lang.Class: boolean desiredAssertionStatus()>();	if $z0 != 0 goto $z1 = 0;	$z1 = 1;	goto [?= <com.google.debugging.sourcemap.Base64: boolean $assertionsDisabled> = $z1];	<com.google.debugging.sourcemap.Base64: boolean $assertionsDisabled> = $z1;	$r1 = newarray (int)[256];	<com.google.debugging.sourcemap.Base64: int[] BASE64_DECODE_MAP> = $r1;	$r2 = <com.google.debugging.sourcemap.Base64: int[] BASE64_DECODE_MAP>;	$i4 = (int) -1;	staticinvoke <java.util.Arrays: void fill(int[],int)>($r2, $i4);	i1 = 0;	$r5 = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/";	$i2 = virtualinvoke $r5.<java.lang.String: int length()>();	if i1 >= $i2 goto return;	return
;block_num 5