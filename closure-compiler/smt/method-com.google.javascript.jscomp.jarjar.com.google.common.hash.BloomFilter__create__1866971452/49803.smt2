(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3312 0)
(declare-sort var2885 0)
(declare-sort var217 0)
(declare-sort var2513 0)
(declare-sort var2263 0)
(declare-sort var2391 0)
(declare-sort var2013 0)
(declare-sort var3387 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var217_checkNotNull/1446102589 (var2513) var2513)
(declare-fun cast-from-var3312-to-var2513 (var3312) var2513)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun var217_checkArgument/-1708798671 (Bool String Int) void)
(declare-fun Float64_valueOf/679560954 (Float64) Float64)
(declare-fun var217_checkArgument/1031231112 (Bool String var2513) void)
(declare-fun cast-from-Float64-to-var2513 (Float64) var2513)
(declare-fun cast-from-var2885-to-var2513 (var2885) var2513)
(declare-fun var2263_optimalNumOfBits/-757143766 (Int Float64) Int)
(declare-fun var2263_optimalNumOfHashFunctions/-305668079 (Int Int) Int)
(declare-fun var2263-init () var2263)
(declare-fun var2391-init () var2391)
(declare-fun var2013-init () var2013)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-901862667 (String Int) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-1425936906 (var2013 String var3387) void)
(declare-fun cast-from-var2013-to-var3387 (var2013) var3387)
(declare-const null-var3312 var3312)
(declare-const null-Int Int)
(declare-const null-Float64 Float64)
(declare-const null-var2885 var2885)
(declare-const null-var2013 var2013)
(declare-const var3369 var3312) ; Statement: r0 := @parameter0: com.google.javascript.jscomp.jarjar.com.google.common.hash.Funnel 
(assert (not (= var3369 null-var3312)))
(declare-const var2638 Int) ; Statement: l6 := @parameter1: long 
(assert (not (= var2638 null-Int)))
(declare-const var3960 Float64) ; Statement: d0 := @parameter2: double 
(assert (not (= var3960 null-Float64)))
(declare-const var2288 var2885) ; Statement: r3 := @parameter3: com.google.javascript.jscomp.jarjar.com.google.common.hash.BloomFilter$Strategy 
(assert (not (= var2288 null-var2885)))
;(assert (var217_checkNotNull/1446102589 (cast-from-var3312-to-var2513 var3369))) ; Statement: staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: java.lang.Object checkNotNull(java.lang.Object)>(r0) 

(declare-const var3369!1 var3312)
(define-const var363 Int (ite (> var2638 0) 1 (ite (< var2638 0) (- 1) 0))) ; Statement: $b0 = l6 cmp 0L 
(define-const var3041 Int (cast-from-Int-to-Int var363)) ; Statement: $i7 = (int) $b0 
 ; Statement: if $i7 < 0 goto $z0 = 0 
(assert (not (< var3041 0))) ; Negate: Cond: $i7 < 0  
(define-const var1827 Bool (ite (= 1 1) true false)) ; Statement: $z0 = 1 
 ; Statement: goto [?= staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: void checkArgument(boolean,java.lang.String,long)>($z0, "Expected insertions (%s) must be >= 0", l6)] 
(assert true) ; Non Conditional
;(assert (var217_checkArgument/-1708798671 var1827 "Expected insertions (%s) must be >= 0" var2638)) ; Statement: staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: void checkArgument(boolean,java.lang.String,long)>($z0, "Expected insertions (%s) must be >= 0", l6) 

(declare-const var1827!1 Bool)
(declare-const var1672 String)
(declare-const var2638!1 Int)
(define-const var3219 Int (ite (fp.gt var3960 ((_ to_fp 11 53) #x0000000000000000)) 1 (ite (fp.lt var3960 ((_ to_fp 11 53) #x0000000000000000)) (- 1) 0))) ; Statement: $b1 = d0 cmpl 0.0 
(define-const var1299 Int (cast-from-Int-to-Int var3219)) ; Statement: $i8 = (int) $b1 
 ; Statement: if $i8 <= 0 goto $z1 = 0 
(assert (not (<= var1299 0))) ; Negate: Cond: $i8 <= 0  
(define-const var3452 Bool (ite (= 1 1) true false)) ; Statement: $z1 = 1 
 ; Statement: goto [?= $r1 = staticinvoke <java.lang.Double: java.lang.Double valueOf(double)>(d0)] 
(assert true) ; Non Conditional
(define-const var2568 Float64 (Float64_valueOf/679560954 var3960)) ; Statement: $r1 = staticinvoke <java.lang.Double: java.lang.Double valueOf(double)>(d0) 
;(assert (var217_checkArgument/1031231112 var3452 "False positive probability (%s) must be > 0.0" (cast-from-Float64-to-var2513 var2568))) ; Statement: staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: void checkArgument(boolean,java.lang.String,java.lang.Object)>($z1, "False positive probability (%s) must be > 0.0", $r1) 

(declare-const var3452!1 Bool)
(declare-const var907 String)
(declare-const var2568!1 Float64)
(define-const var294 Int (ite (fp.gt var3960 ((_ to_fp 11 53) #x3ff0000000000000)) 1 (ite (fp.lt var3960 ((_ to_fp 11 53) #x3ff0000000000000)) (- 1) 0))) ; Statement: $b2 = d0 cmpg 1.0 
(define-const var660 Int (cast-from-Int-to-Int var294)) ; Statement: $i9 = (int) $b2 
 ; Statement: if $i9 >= 0 goto $z2 = 0 
(assert (>= var660 0)) ; Cond: $i9 >= 0 
(define-const var1599 Bool (ite (= 1 0) true false)) ; Statement: $z2 = 0 
(assert true) ; Non Conditional
(define-const var3353 Float64 (Float64_valueOf/679560954 var3960)) ; Statement: $r2 = staticinvoke <java.lang.Double: java.lang.Double valueOf(double)>(d0) 
;(assert (var217_checkArgument/1031231112 var1599 "False positive probability (%s) must be < 1.0" (cast-from-Float64-to-var2513 var3353))) ; Statement: staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: void checkArgument(boolean,java.lang.String,java.lang.Object)>($z2, "False positive probability (%s) must be < 1.0", $r2) 

(declare-const var1599!1 Bool)
(declare-const var257 String)
(declare-const var3353!1 Float64)
;(assert (var217_checkNotNull/1446102589 (cast-from-var2885-to-var2513 var2288))) ; Statement: staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: java.lang.Object checkNotNull(java.lang.Object)>(r3) 

(declare-const var2288!1 var2885)
(define-const var743 Int (ite (> var2638!1 0) 1 (ite (< var2638!1 0) (- 1) 0))) ; Statement: $b3 = l6 cmp 0L 
 ; Statement: if $b3 != 0 goto $l4 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.hash.BloomFilter: long optimalNumOfBits(long,double)>(l6, d0) 
(assert (not (= var743 0))) ; Cond: $b3 != 0 
(define-const var1443 Int (var2263_optimalNumOfBits/-757143766 var2638!1 var3960)) ; Statement: $l4 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.hash.BloomFilter: long optimalNumOfBits(long,double)>(l6, d0) 
(define-const var3794 Int (var2263_optimalNumOfHashFunctions/-305668079 var2638!1 var1443)) ; Statement: $i5 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.hash.BloomFilter: int optimalNumOfHashFunctions(long,long)>(l6, $l4) 
(define-const var3443 var2263 var2263-init) ; Statement: $r14 = new com.google.javascript.jscomp.jarjar.com.google.common.hash.BloomFilter 
(define-const var1833 var2391 var2391-init) ; Statement: $r13 = new com.google.javascript.jscomp.jarjar.com.google.common.hash.BloomFilterStrategies$LockFreeBitArray 
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var510 var2013) ; Statement: $r6 := @caughtexception 
(assert (not (= var510 null-var2013)))
(define-const var3640 var2013 var2013-init) ; Statement: $r16 = new java.lang.IllegalArgumentException 
(define-const var1731 String String-init) ; Statement: $r15 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1731)) ; Statement: specialinvoke $r15.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1731!1 String)
(assert (= var1731!1 ""))
(assert true)
(define-const var3130 String (append/672562846 var1731!1 "Could not create BloomFilter of ")) ; Statement: $r9 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Could not create BloomFilter of ") 
(declare-const var1731!2 String)
(assert (= var1731!2 (str.++ var1731!1 "Could not create BloomFilter of ")))
(assert true)
(define-const var1142 String (append/-901862667 var3130 var1443)) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(long)>($l4) 
(declare-const var3130!1 String)
(assert (str.prefixof var3130 var3130!1))
(assert true)
(define-const var1160 String (append/672562846 var1142 " bits")) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" bits") 
(declare-const var1142!1 String)
(assert (= var1142!1 (str.++ var1142 " bits")))
(assert true)
(define-const var2655 String (toString/-2075883882 var1160)) ; Statement: $r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-1425936906 var3640 var2655 (cast-from-var2013-to-var3387 var510))) ; Statement: specialinvoke $r16.<java.lang.IllegalArgumentException: void <init>(java.lang.String,java.lang.Throwable)>($r12, $r6) 

(declare-const var3640!1 var2013)
(declare-const var2655!1 String)
(declare-const var510!1 var2013)
 ; Statement: throw $r16 
(check-sat)
(get-model)
(get-unsat-core)
; {var217_checkNotNull/1446102589=([java.lang.Object], java.lang.Object), cast-from-var3312-to-var2513=([com.google.javascript.jscomp.jarjar.com.google.common.hash.Funnel], java.lang.Object), cast-from-Int-to-Int=([byte], int), var217_checkArgument/-1708798671=([boolean, java.lang.String, long], void), Float64_valueOf/679560954=([double], java.lang.Double), var217_checkArgument/1031231112=([boolean, java.lang.String, java.lang.Object], void), cast-from-Float64-to-var2513=([java.lang.Double], java.lang.Object), cast-from-var2885-to-var2513=([com.google.javascript.jscomp.jarjar.com.google.common.hash.BloomFilter$Strategy], java.lang.Object), var2263_optimalNumOfBits/-757143766=([long, double], long), var2263_optimalNumOfHashFunctions/-305668079=([long, long], int), var2263-init=([], com.google.javascript.jscomp.jarjar.com.google.common.hash.BloomFilter), var2391-init=([], com.google.javascript.jscomp.jarjar.com.google.common.hash.BloomFilterStrategies$LockFreeBitArray), var2013-init=([], java.lang.IllegalArgumentException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-901862667=([java.lang.StringBuilder, long], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-1425936906=([java.lang.IllegalArgumentException, java.lang.String, java.lang.Throwable], void), cast-from-var2013-to-var3387=([java.lang.IllegalArgumentException], java.lang.Throwable)}
; {var3312=com.google.javascript.jscomp.jarjar.com.google.common.hash.Funnel, var3369=r0, var2638=l6, var3960=d0, var2885=com.google.javascript.jscomp.jarjar.com.google.common.hash.BloomFilter$Strategy, var2288=r3, var217=com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions, var2513=java.lang.Object, var363=$b0, var3041=$i7, var1827=$z0, var1672="Expected insertions (%s) must be >= 0", var3219=$b1, var1299=$i8, var3452=$z1, var2568=$r1, var907="False positive probability (%s) must be > 0.0", var294=$b2, var660=$i9, var1599=$z2, var3353=$r2, var257="False positive probability (%s) must be < 1.0", var743=$b3, var2263=com.google.javascript.jscomp.jarjar.com.google.common.hash.BloomFilter, var1443=$l4, var3794=$i5, var3443=$r14, var2391=com.google.javascript.jscomp.jarjar.com.google.common.hash.BloomFilterStrategies$LockFreeBitArray, var1833=$r13, var2013=java.lang.IllegalArgumentException, var510=$r6, var3640=$r16, var1731=$r15, var3130=$r9, var1142=$r10, var1160=$r11, var2655=$r12, var3387=java.lang.Throwable}
; {com.google.javascript.jscomp.jarjar.com.google.common.hash.Funnel=var3312, r0=var3369, l6=var2638, d0=var3960, com.google.javascript.jscomp.jarjar.com.google.common.hash.BloomFilter$Strategy=var2885, r3=var2288, com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions=var217, java.lang.Object=var2513, $b0=var363, $i7=var3041, $z0=var1827, "Expected insertions (%s) must be >= 0"=var1672, $b1=var3219, $i8=var1299, $z1=var3452, $r1=var2568, "False positive probability (%s) must be > 0.0"=var907, $b2=var294, $i9=var660, $z2=var1599, $r2=var3353, "False positive probability (%s) must be < 1.0"=var257, $b3=var743, com.google.javascript.jscomp.jarjar.com.google.common.hash.BloomFilter=var2263, $l4=var1443, $i5=var3794, $r14=var3443, com.google.javascript.jscomp.jarjar.com.google.common.hash.BloomFilterStrategies$LockFreeBitArray=var2391, $r13=var1833, java.lang.IllegalArgumentException=var2013, $r6=var510, $r16=var3640, $r15=var1731, $r9=var3130, $r10=var1142, $r11=var1160, $r12=var2655, java.lang.Throwable=var3387}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(long)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(long)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @parameter0: com.google.javascript.jscomp.jarjar.com.google.common.hash.Funnel;	l6 := @parameter1: long;	d0 := @parameter2: double;	r3 := @parameter3: com.google.javascript.jscomp.jarjar.com.google.common.hash.BloomFilter$Strategy;	staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: java.lang.Object checkNotNull(java.lang.Object)>(r0);	$b0 = l6 cmp 0L;	$i7 = (int) $b0;	if $i7 < 0 goto $z0 = 0;	$z0 = 1;	goto [?= staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: void checkArgument(boolean,java.lang.String,long)>($z0, "Expected insertions (%s) must be >= 0", l6)];	staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: void checkArgument(boolean,java.lang.String,long)>($z0, "Expected insertions (%s) must be >= 0", l6);	$b1 = d0 cmpl 0.0;	$i8 = (int) $b1;	if $i8 <= 0 goto $z1 = 0;	$z1 = 1;	goto [?= $r1 = staticinvoke <java.lang.Double: java.lang.Double valueOf(double)>(d0)];	$r1 = staticinvoke <java.lang.Double: java.lang.Double valueOf(double)>(d0);	staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: void checkArgument(boolean,java.lang.String,java.lang.Object)>($z1, "False positive probability (%s) must be > 0.0", $r1);	$b2 = d0 cmpg 1.0;	$i9 = (int) $b2;	if $i9 >= 0 goto $z2 = 0;	$z2 = 0;	$r2 = staticinvoke <java.lang.Double: java.lang.Double valueOf(double)>(d0);	staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: void checkArgument(boolean,java.lang.String,java.lang.Object)>($z2, "False positive probability (%s) must be < 1.0", $r2);	staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: java.lang.Object checkNotNull(java.lang.Object)>(r3);	$b3 = l6 cmp 0L;	if $b3 != 0 goto $l4 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.hash.BloomFilter: long optimalNumOfBits(long,double)>(l6, d0);	$l4 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.hash.BloomFilter: long optimalNumOfBits(long,double)>(l6, d0);	$i5 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.hash.BloomFilter: int optimalNumOfHashFunctions(long,long)>(l6, $l4);	$r14 = new com.google.javascript.jscomp.jarjar.com.google.common.hash.BloomFilter;	$r13 = new com.google.javascript.jscomp.jarjar.com.google.common.hash.BloomFilterStrategies$LockFreeBitArray;	$r6 := @caughtexception;	$r16 = new java.lang.IllegalArgumentException;	$r15 = new java.lang.StringBuilder;	specialinvoke $r15.<java.lang.StringBuilder: void <init>()>();	$r9 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Could not create BloomFilter of ");	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(long)>($l4);	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" bits");	$r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r16.<java.lang.IllegalArgumentException: void <init>(java.lang.String,java.lang.Throwable)>($r12, $r6);	throw $r16
;block_num 9