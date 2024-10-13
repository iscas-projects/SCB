(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2421 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getBytesInternal/629628974 (var2421) (Array Int Int))
(declare-fun String-init () String)
(declare-fun getLength-Arr-Int-1 ((Array Int Int)) Int)
(declare-fun <init>/543593434 (String Int) void)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var2421 var2421)
(declare-const var1210 var2421) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.com.google.common.hash.HashCode 
(assert (not (= var1210 null-var2421)))
(assert true)
(define-const var3326 (Array Int Int) (getBytesInternal/629628974 var1210)) ; Statement: r1 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.com.google.common.hash.HashCode: byte[] getBytesInternal()>() 
(define-const var885 String String-init) ; Statement: $r7 = new java.lang.StringBuilder 
(define-const var1740 Int (getLength-Arr-Int-1 var3326)) ; Statement: $i0 = lengthof r1 
(define-const var2205 Int (* 2 var1740)) ; Statement: $i1 = 2 * $i0 
(assert true)
;(assert (<init>/543593434 var885 var2205)) ; Statement: specialinvoke $r7.<java.lang.StringBuilder: void <init>(int)>($i1) 

(declare-const var885!1 String)
(declare-const var2205!1 Int)
(define-const var3451 Int (getLength-Arr-Int-1 var3326)) ; Statement: i2 = lengthof r1 
(define-const var805 Int 0) ; Statement: i9 = 0 
(assert true) ; Non Conditional
 ; Statement: if i9 >= i2 goto $r3 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert (>= var805 var3451)) ; Cond: i9 >= i2 
(assert true)
(define-const var2174 String (toString/-2075883882 var885!1)) ; Statement: $r3 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r3 
(check-sat)
(get-model)
(get-unsat-core)
; {getBytesInternal/629628974=([com.google.javascript.jscomp.jarjar.com.google.common.hash.HashCode], byte[]), String-init=([], java.lang.StringBuilder), getLength-Arr-Int-1=([byte[]], int), <init>/543593434=([java.lang.StringBuilder, int], void), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var2421=com.google.javascript.jscomp.jarjar.com.google.common.hash.HashCode, var1210=r0, var3326=r1, var885=$r7, var1740=$i0, var2205=$i1, var3451=i2, var805=i9, var2174=$r3}
; {com.google.javascript.jscomp.jarjar.com.google.common.hash.HashCode=var2421, r0=var1210, r1=var3326, $r7=var885, $i0=var1740, $i1=var2205, i2=var3451, i9=var805, $r3=var2174}
;seq <java.lang.StringBuilder: void <init>(int)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>(int)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.com.google.common.hash.HashCode;	r1 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.com.google.common.hash.HashCode: byte[] getBytesInternal()>();	$r7 = new java.lang.StringBuilder;	$i0 = lengthof r1;	$i1 = 2 * $i0;	specialinvoke $r7.<java.lang.StringBuilder: void <init>(int)>($i1);	i2 = lengthof r1;	i9 = 0;	if i9 >= i2 goto $r3 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>();	$r3 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>();	return $r3
;block_num 3