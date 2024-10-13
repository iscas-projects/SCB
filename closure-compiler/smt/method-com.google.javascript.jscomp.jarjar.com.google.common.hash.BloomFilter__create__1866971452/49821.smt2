(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3583 0)
(declare-sort var2707 0)
(declare-sort var2612 0)
(declare-sort var197 0)
(declare-sort var3082 0)
(declare-sort var2174 0)
(declare-sort var637 0)
(declare-sort var3855 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var2612_checkNotNull/1446102589 (var197) var197)
(declare-fun cast-from-var3583-to-var197 (var3583) var197)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun var2612_checkArgument/-1708798671 (Bool String Int) void)
(declare-fun Float64_valueOf/679560954 (Float64) Float64)
(declare-fun var2612_checkArgument/1031231112 (Bool String var197) void)
(declare-fun cast-from-Float64-to-var197 (Float64) var197)
(declare-fun cast-from-var2707-to-var197 (var2707) var197)
(declare-fun var3082_optimalNumOfBits/-757143766 (Int Float64) Int)
(declare-fun var3082_optimalNumOfHashFunctions/-305668079 (Int Int) Int)
(declare-fun var3082-init () var3082)
(declare-fun var2174-init () var2174)
(declare-fun var637-init () var637)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-901862667 (String Int) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-1425936906 (var637 String var3855) void)
(declare-fun cast-from-var637-to-var3855 (var637) var3855)
(declare-const null-var3583 var3583)
(declare-const null-Int Int)
(declare-const null-Float64 Float64)
(declare-const null-var2707 var2707)
(declare-const null-var637 var637)
(declare-const var3647 var3583) ; Statement: r0 := @parameter0: com.google.javascript.jscomp.jarjar.com.google.common.hash.Funnel 
(assert (not (= var3647 null-var3583)))
(declare-const var823 Int) ; Statement: l6 := @parameter1: long 
(assert (not (= var823 null-Int)))
(declare-const var6 Float64) ; Statement: d0 := @parameter2: double 
(assert (not (= var6 null-Float64)))
(declare-const var901 var2707) ; Statement: r3 := @parameter3: com.google.javascript.jscomp.jarjar.com.google.common.hash.BloomFilter$Strategy 
(assert (not (= var901 null-var2707)))
;(assert (var2612_checkNotNull/1446102589 (cast-from-var3583-to-var197 var3647))) ; Statement: staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: java.lang.Object checkNotNull(java.lang.Object)>(r0) 

(declare-const var3647!1 var3583)
(define-const var136 Int (ite (> var823 0) 1 (ite (< var823 0) (- 1) 0))) ; Statement: $b0 = l6 cmp 0L 
(define-const var3986 Int (cast-from-Int-to-Int var136)) ; Statement: $i7 = (int) $b0 
 ; Statement: if $i7 < 0 goto $z0 = 0 
(assert (not (< var3986 0))) ; Negate: Cond: $i7 < 0  
(define-const var3371 Bool (ite (= 1 1) true false)) ; Statement: $z0 = 1 
 ; Statement: goto [?= staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: void checkArgument(boolean,java.lang.String,long)>($z0, "Expected insertions (%s) must be >= 0", l6)] 
(assert true) ; Non Conditional
;(assert (var2612_checkArgument/-1708798671 var3371 "Expected insertions (%s) must be >= 0" var823)) ; Statement: staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: void checkArgument(boolean,java.lang.String,long)>($z0, "Expected insertions (%s) must be >= 0", l6) 

(declare-const var3371!1 Bool)
(declare-const var3526 String)
(declare-const var823!1 Int)
(define-const var3434 Int (ite (fp.gt var6 ((_ to_fp 11 53) #x0000000000000000)) 1 (ite (fp.lt var6 ((_ to_fp 11 53) #x0000000000000000)) (- 1) 0))) ; Statement: $b1 = d0 cmpl 0.0 
(define-const var301 Int (cast-from-Int-to-Int var3434)) ; Statement: $i8 = (int) $b1 
 ; Statement: if $i8 <= 0 goto $z1 = 0 
(assert (<= var301 0)) ; Cond: $i8 <= 0 
(define-const var3269 Bool (ite (= 1 0) true false)) ; Statement: $z1 = 0 
(assert true) ; Non Conditional
(define-const var2692 Float64 (Float64_valueOf/679560954 var6)) ; Statement: $r1 = staticinvoke <java.lang.Double: java.lang.Double valueOf(double)>(d0) 
;(assert (var2612_checkArgument/1031231112 var3269 "False positive probability (%s) must be > 0.0" (cast-from-Float64-to-var197 var2692))) ; Statement: staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: void checkArgument(boolean,java.lang.String,java.lang.Object)>($z1, "False positive probability (%s) must be > 0.0", $r1) 

(declare-const var3269!1 Bool)
(declare-const var1411 String)
(declare-const var2692!1 Float64)
(define-const var3299 Int (ite (fp.gt var6 ((_ to_fp 11 53) #x3ff0000000000000)) 1 (ite (fp.lt var6 ((_ to_fp 11 53) #x3ff0000000000000)) (- 1) 0))) ; Statement: $b2 = d0 cmpg 1.0 
(define-const var2540 Int (cast-from-Int-to-Int var3299)) ; Statement: $i9 = (int) $b2 
 ; Statement: if $i9 >= 0 goto $z2 = 0 
(assert (>= var2540 0)) ; Cond: $i9 >= 0 
(define-const var1149 Bool (ite (= 1 0) true false)) ; Statement: $z2 = 0 
(assert true) ; Non Conditional
(define-const var2304 Float64 (Float64_valueOf/679560954 var6)) ; Statement: $r2 = staticinvoke <java.lang.Double: java.lang.Double valueOf(double)>(d0) 
;(assert (var2612_checkArgument/1031231112 var1149 "False positive probability (%s) must be < 1.0" (cast-from-Float64-to-var197 var2304))) ; Statement: staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: void checkArgument(boolean,java.lang.String,java.lang.Object)>($z2, "False positive probability (%s) must be < 1.0", $r2) 

(declare-const var1149!1 Bool)
(declare-const var3962 String)
(declare-const var2304!1 Float64)
;(assert (var2612_checkNotNull/1446102589 (cast-from-var2707-to-var197 var901))) ; Statement: staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: java.lang.Object checkNotNull(java.lang.Object)>(r3) 

(declare-const var901!1 var2707)
(define-const var418 Int (ite (> var823!1 0) 1 (ite (< var823!1 0) (- 1) 0))) ; Statement: $b3 = l6 cmp 0L 
 ; Statement: if $b3 != 0 goto $l4 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.hash.BloomFilter: long optimalNumOfBits(long,double)>(l6, d0) 
(assert (not (= var418 0))) ; Cond: $b3 != 0 
(define-const var2728 Int (var3082_optimalNumOfBits/-757143766 var823!1 var6)) ; Statement: $l4 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.hash.BloomFilter: long optimalNumOfBits(long,double)>(l6, d0) 
(define-const var1658 Int (var3082_optimalNumOfHashFunctions/-305668079 var823!1 var2728)) ; Statement: $i5 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.hash.BloomFilter: int optimalNumOfHashFunctions(long,long)>(l6, $l4) 
(define-const var1100 var3082 var3082-init) ; Statement: $r14 = new com.google.javascript.jscomp.jarjar.com.google.common.hash.BloomFilter 
(define-const var214 var2174 var2174-init) ; Statement: $r13 = new com.google.javascript.jscomp.jarjar.com.google.common.hash.BloomFilterStrategies$LockFreeBitArray 
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var940 var637) ; Statement: $r6 := @caughtexception 
(assert (not (= var940 null-var637)))
(define-const var2674 var637 var637-init) ; Statement: $r16 = new java.lang.IllegalArgumentException 
(define-const var2723 String String-init) ; Statement: $r15 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2723)) ; Statement: specialinvoke $r15.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2723!1 String)
(assert (= var2723!1 ""))
(assert true)
(define-const var3912 String (append/672562846 var2723!1 "Could not create BloomFilter of ")) ; Statement: $r9 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Could not create BloomFilter of ") 
(declare-const var2723!2 String)
(assert (= var2723!2 (str.++ var2723!1 "Could not create BloomFilter of ")))
(assert true)
(define-const var3725 String (append/-901862667 var3912 var2728)) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(long)>($l4) 
(declare-const var3912!1 String)
(assert (str.prefixof var3912 var3912!1))
(assert true)
(define-const var2262 String (append/672562846 var3725 " bits")) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" bits") 
(declare-const var3725!1 String)
(assert (= var3725!1 (str.++ var3725 " bits")))
(assert true)
(define-const var2227 String (toString/-2075883882 var2262)) ; Statement: $r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-1425936906 var2674 var2227 (cast-from-var637-to-var3855 var940))) ; Statement: specialinvoke $r16.<java.lang.IllegalArgumentException: void <init>(java.lang.String,java.lang.Throwable)>($r12, $r6) 

(declare-const var2674!1 var637)
(declare-const var2227!1 String)
(declare-const var940!1 var637)
 ; Statement: throw $r16 
(check-sat)
(get-model)
(get-unsat-core)
; {var2612_checkNotNull/1446102589=([java.lang.Object], java.lang.Object), cast-from-var3583-to-var197=([com.google.javascript.jscomp.jarjar.com.google.common.hash.Funnel], java.lang.Object), cast-from-Int-to-Int=([byte], int), var2612_checkArgument/-1708798671=([boolean, java.lang.String, long], void), Float64_valueOf/679560954=([double], java.lang.Double), var2612_checkArgument/1031231112=([boolean, java.lang.String, java.lang.Object], void), cast-from-Float64-to-var197=([java.lang.Double], java.lang.Object), cast-from-var2707-to-var197=([com.google.javascript.jscomp.jarjar.com.google.common.hash.BloomFilter$Strategy], java.lang.Object), var3082_optimalNumOfBits/-757143766=([long, double], long), var3082_optimalNumOfHashFunctions/-305668079=([long, long], int), var3082-init=([], com.google.javascript.jscomp.jarjar.com.google.common.hash.BloomFilter), var2174-init=([], com.google.javascript.jscomp.jarjar.com.google.common.hash.BloomFilterStrategies$LockFreeBitArray), var637-init=([], java.lang.IllegalArgumentException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-901862667=([java.lang.StringBuilder, long], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-1425936906=([java.lang.IllegalArgumentException, java.lang.String, java.lang.Throwable], void), cast-from-var637-to-var3855=([java.lang.IllegalArgumentException], java.lang.Throwable)}
; {var3583=com.google.javascript.jscomp.jarjar.com.google.common.hash.Funnel, var3647=r0, var823=l6, var6=d0, var2707=com.google.javascript.jscomp.jarjar.com.google.common.hash.BloomFilter$Strategy, var901=r3, var2612=com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions, var197=java.lang.Object, var136=$b0, var3986=$i7, var3371=$z0, var3526="Expected insertions (%s) must be >= 0", var3434=$b1, var301=$i8, var3269=$z1, var2692=$r1, var1411="False positive probability (%s) must be > 0.0", var3299=$b2, var2540=$i9, var1149=$z2, var2304=$r2, var3962="False positive probability (%s) must be < 1.0", var418=$b3, var3082=com.google.javascript.jscomp.jarjar.com.google.common.hash.BloomFilter, var2728=$l4, var1658=$i5, var1100=$r14, var2174=com.google.javascript.jscomp.jarjar.com.google.common.hash.BloomFilterStrategies$LockFreeBitArray, var214=$r13, var637=java.lang.IllegalArgumentException, var940=$r6, var2674=$r16, var2723=$r15, var3912=$r9, var3725=$r10, var2262=$r11, var2227=$r12, var3855=java.lang.Throwable}
; {com.google.javascript.jscomp.jarjar.com.google.common.hash.Funnel=var3583, r0=var3647, l6=var823, d0=var6, com.google.javascript.jscomp.jarjar.com.google.common.hash.BloomFilter$Strategy=var2707, r3=var901, com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions=var2612, java.lang.Object=var197, $b0=var136, $i7=var3986, $z0=var3371, "Expected insertions (%s) must be >= 0"=var3526, $b1=var3434, $i8=var301, $z1=var3269, $r1=var2692, "False positive probability (%s) must be > 0.0"=var1411, $b2=var3299, $i9=var2540, $z2=var1149, $r2=var2304, "False positive probability (%s) must be < 1.0"=var3962, $b3=var418, com.google.javascript.jscomp.jarjar.com.google.common.hash.BloomFilter=var3082, $l4=var2728, $i5=var1658, $r14=var1100, com.google.javascript.jscomp.jarjar.com.google.common.hash.BloomFilterStrategies$LockFreeBitArray=var2174, $r13=var214, java.lang.IllegalArgumentException=var637, $r6=var940, $r16=var2674, $r15=var2723, $r9=var3912, $r10=var3725, $r11=var2262, $r12=var2227, java.lang.Throwable=var3855}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(long)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(long)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @parameter0: com.google.javascript.jscomp.jarjar.com.google.common.hash.Funnel;	l6 := @parameter1: long;	d0 := @parameter2: double;	r3 := @parameter3: com.google.javascript.jscomp.jarjar.com.google.common.hash.BloomFilter$Strategy;	staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: java.lang.Object checkNotNull(java.lang.Object)>(r0);	$b0 = l6 cmp 0L;	$i7 = (int) $b0;	if $i7 < 0 goto $z0 = 0;	$z0 = 1;	goto [?= staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: void checkArgument(boolean,java.lang.String,long)>($z0, "Expected insertions (%s) must be >= 0", l6)];	staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: void checkArgument(boolean,java.lang.String,long)>($z0, "Expected insertions (%s) must be >= 0", l6);	$b1 = d0 cmpl 0.0;	$i8 = (int) $b1;	if $i8 <= 0 goto $z1 = 0;	$z1 = 0;	$r1 = staticinvoke <java.lang.Double: java.lang.Double valueOf(double)>(d0);	staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: void checkArgument(boolean,java.lang.String,java.lang.Object)>($z1, "False positive probability (%s) must be > 0.0", $r1);	$b2 = d0 cmpg 1.0;	$i9 = (int) $b2;	if $i9 >= 0 goto $z2 = 0;	$z2 = 0;	$r2 = staticinvoke <java.lang.Double: java.lang.Double valueOf(double)>(d0);	staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: void checkArgument(boolean,java.lang.String,java.lang.Object)>($z2, "False positive probability (%s) must be < 1.0", $r2);	staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: java.lang.Object checkNotNull(java.lang.Object)>(r3);	$b3 = l6 cmp 0L;	if $b3 != 0 goto $l4 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.hash.BloomFilter: long optimalNumOfBits(long,double)>(l6, d0);	$l4 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.hash.BloomFilter: long optimalNumOfBits(long,double)>(l6, d0);	$i5 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.hash.BloomFilter: int optimalNumOfHashFunctions(long,long)>(l6, $l4);	$r14 = new com.google.javascript.jscomp.jarjar.com.google.common.hash.BloomFilter;	$r13 = new com.google.javascript.jscomp.jarjar.com.google.common.hash.BloomFilterStrategies$LockFreeBitArray;	$r6 := @caughtexception;	$r16 = new java.lang.IllegalArgumentException;	$r15 = new java.lang.StringBuilder;	specialinvoke $r15.<java.lang.StringBuilder: void <init>()>();	$r9 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Could not create BloomFilter of ");	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(long)>($l4);	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" bits");	$r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r16.<java.lang.IllegalArgumentException: void <init>(java.lang.String,java.lang.Throwable)>($r12, $r6);	throw $r16
;block_num 9