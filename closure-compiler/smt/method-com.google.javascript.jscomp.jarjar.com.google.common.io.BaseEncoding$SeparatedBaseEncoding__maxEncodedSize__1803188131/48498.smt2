(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1938 0)
(declare-sort var193 0)
(declare-sort var2857 0)
(declare-sort var1963 0)
(declare-sort var2702 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun delegate/1519540417 (var1938) var193)
(declare-fun maxEncodedSize/-620556254 (var193 Int) Int)
(declare-fun separator/1519540417 (var1938) String)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-fun var2857_max/1360571700 (Int Int) Int)
(declare-fun afterEveryChars/1519540417 (var1938) Int)
(declare-fun var2702_divide/909332831 (Int Int var1963) Int)
(declare-const null-var1938 var1938)
(declare-const null-Int Int)
(declare-const var1963-FLOOR var1963)
(declare-const var168 var1938) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.com.google.common.io.BaseEncoding$SeparatedBaseEncoding 
(assert (not (= var168 null-var1938)))
(declare-const var459 Int) ; Statement: i0 := @parameter0: int 
(assert (not (= var459 null-Int)))
(define-const var3644 var193 (delegate/1519540417 var168)) ; Statement: $r1 = r0.<com.google.javascript.jscomp.jarjar.com.google.common.io.BaseEncoding$SeparatedBaseEncoding: com.google.javascript.jscomp.jarjar.com.google.common.io.BaseEncoding delegate> 
(assert true)
(define-const var3016 Int (maxEncodedSize/-620556254 var3644 var459)) ; Statement: i1 = virtualinvoke $r1.<com.google.javascript.jscomp.jarjar.com.google.common.io.BaseEncoding: int maxEncodedSize(int)>(i0) 
(define-const var1218 String (separator/1519540417 var168)) ; Statement: $r2 = r0.<com.google.javascript.jscomp.jarjar.com.google.common.io.BaseEncoding$SeparatedBaseEncoding: java.lang.String separator> 
(assert true)
(define-const var1870 Int (length/-134980193 var1218)) ; Statement: $i6 = virtualinvoke $r2.<java.lang.String: int length()>() 
(define-const var3894 Int (- var3016 1)) ; Statement: $i2 = i1 - 1 
(define-const var1248 Int (var2857_max/1360571700 0 var3894)) ; Statement: $i4 = staticinvoke <java.lang.Math: int max(int,int)>(0, $i2) 
(define-const var3121 Int (afterEveryChars/1519540417 var168)) ; Statement: $i3 = r0.<com.google.javascript.jscomp.jarjar.com.google.common.io.BaseEncoding$SeparatedBaseEncoding: int afterEveryChars> 
(define-const var3503 var1963 var1963-FLOOR) ; Statement: $r3 = <java.math.RoundingMode: java.math.RoundingMode FLOOR> 
(define-const var3631 Int (var2702_divide/909332831 var1248 var3121 var3503)) ; Statement: $i5 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.math.IntMath: int divide(int,int,java.math.RoundingMode)>($i4, $i3, $r3) 
(define-const var1443 Int (* var1870 var3631)) ; Statement: $i7 = $i6 * $i5 
(define-const var1282 Int (+ var3016 var1443)) ; Statement: $i8 = i1 + $i7 
 ; Statement: return $i8 
(check-sat)
(get-model)
(get-unsat-core)
; {delegate/1519540417=([com.google.javascript.jscomp.jarjar.com.google.common.io.BaseEncoding$SeparatedBaseEncoding], com.google.javascript.jscomp.jarjar.com.google.common.io.BaseEncoding), maxEncodedSize/-620556254=([com.google.javascript.jscomp.jarjar.com.google.common.io.BaseEncoding, int], int), separator/1519540417=([com.google.javascript.jscomp.jarjar.com.google.common.io.BaseEncoding$SeparatedBaseEncoding], java.lang.String), length/-134980193=([java.lang.String], int), var2857_max/1360571700=([int, int], int), afterEveryChars/1519540417=([com.google.javascript.jscomp.jarjar.com.google.common.io.BaseEncoding$SeparatedBaseEncoding], int), var2702_divide/909332831=([int, int, java.math.RoundingMode], int)}
; {var1938=com.google.javascript.jscomp.jarjar.com.google.common.io.BaseEncoding$SeparatedBaseEncoding, var168=r0, var459=i0, var193=com.google.javascript.jscomp.jarjar.com.google.common.io.BaseEncoding, var3644=$r1, var3016=i1, var1218=$r2, var1870=$i6, var3894=$i2, var2857=java.lang.Math, var1248=$i4, var3121=$i3, var1963=java.math.RoundingMode, var3503=$r3, var2702=com.google.javascript.jscomp.jarjar.com.google.common.math.IntMath, var3631=$i5, var1443=$i7, var1282=$i8}
; {com.google.javascript.jscomp.jarjar.com.google.common.io.BaseEncoding$SeparatedBaseEncoding=var1938, r0=var168, i0=var459, com.google.javascript.jscomp.jarjar.com.google.common.io.BaseEncoding=var193, $r1=var3644, i1=var3016, $r2=var1218, $i6=var1870, $i2=var3894, java.lang.Math=var2857, $i4=var1248, $i3=var3121, java.math.RoundingMode=var1963, $r3=var3503, com.google.javascript.jscomp.jarjar.com.google.common.math.IntMath=var2702, $i5=var3631, $i7=var1443, $i8=var1282}
;seq <java.lang.String: int length()>
;cnt {"<java.lang.String: int length()>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.com.google.common.io.BaseEncoding$SeparatedBaseEncoding;	i0 := @parameter0: int;	$r1 = r0.<com.google.javascript.jscomp.jarjar.com.google.common.io.BaseEncoding$SeparatedBaseEncoding: com.google.javascript.jscomp.jarjar.com.google.common.io.BaseEncoding delegate>;	i1 = virtualinvoke $r1.<com.google.javascript.jscomp.jarjar.com.google.common.io.BaseEncoding: int maxEncodedSize(int)>(i0);	$r2 = r0.<com.google.javascript.jscomp.jarjar.com.google.common.io.BaseEncoding$SeparatedBaseEncoding: java.lang.String separator>;	$i6 = virtualinvoke $r2.<java.lang.String: int length()>();	$i2 = i1 - 1;	$i4 = staticinvoke <java.lang.Math: int max(int,int)>(0, $i2);	$i3 = r0.<com.google.javascript.jscomp.jarjar.com.google.common.io.BaseEncoding$SeparatedBaseEncoding: int afterEveryChars>;	$r3 = <java.math.RoundingMode: java.math.RoundingMode FLOOR>;	$i5 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.math.IntMath: int divide(int,int,java.math.RoundingMode)>($i4, $i3, $r3);	$i7 = $i6 * $i5;	$i8 = i1 + $i7;	return $i8
;block_num 1