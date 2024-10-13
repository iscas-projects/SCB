(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1051 0)
(declare-sort var1561 0)
(declare-sort var479 0)
(declare-sort var2727 0)
(declare-sort var3838 0)
(declare-sort var2743 0)
(declare-sort var564 0)
(declare-sort var1436 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var479_checkNotNull/1446102589 (var2727) var2727)
(declare-fun cast-from-var1051-to-var2727 (var1051) var2727)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun var479_checkArgument/-1708798671 (Bool String Int) void)
(declare-fun Float64_valueOf/679560954 (Float64) Float64)
(declare-fun var479_checkArgument/1031231112 (Bool String var2727) void)
(declare-fun cast-from-Float64-to-var2727 (Float64) var2727)
(declare-fun cast-from-var1561-to-var2727 (var1561) var2727)
(declare-fun var3838_optimalNumOfBits/-757143766 (Int Float64) Int)
(declare-fun var3838_optimalNumOfHashFunctions/-305668079 (Int Int) Int)
(declare-fun var3838-init () var3838)
(declare-fun var2743-init () var2743)
(declare-fun var564-init () var564)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-901862667 (String Int) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-1425936906 (var564 String var1436) void)
(declare-fun cast-from-var564-to-var1436 (var564) var1436)
(declare-const null-var1051 var1051)
(declare-const null-Int Int)
(declare-const null-Float64 Float64)
(declare-const null-var1561 var1561)
(declare-const null-var564 var564)
(declare-const var2843 var1051) ; Statement: r0 := @parameter0: com.google.javascript.jscomp.jarjar.com.google.common.hash.Funnel 
(assert (not (= var2843 null-var1051)))
(declare-const var1147 Int) ; Statement: l6 := @parameter1: long 
(assert (not (= var1147 null-Int)))
(declare-const var2522 Float64) ; Statement: d0 := @parameter2: double 
(assert (not (= var2522 null-Float64)))
(declare-const var3692 var1561) ; Statement: r3 := @parameter3: com.google.javascript.jscomp.jarjar.com.google.common.hash.BloomFilter$Strategy 
(assert (not (= var3692 null-var1561)))
;(assert (var479_checkNotNull/1446102589 (cast-from-var1051-to-var2727 var2843))) ; Statement: staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: java.lang.Object checkNotNull(java.lang.Object)>(r0) 

(declare-const var2843!1 var1051)
(define-const var2015 Int (ite (> var1147 0) 1 (ite (< var1147 0) (- 1) 0))) ; Statement: $b0 = l6 cmp 0L 
(define-const var1524 Int (cast-from-Int-to-Int var2015)) ; Statement: $i7 = (int) $b0 
 ; Statement: if $i7 < 0 goto $z0 = 0 
(assert (< var1524 0)) ; Cond: $i7 < 0 
(define-const var2680 Bool (ite (= 1 0) true false)) ; Statement: $z0 = 0 
(assert true) ; Non Conditional
;(assert (var479_checkArgument/-1708798671 var2680 "Expected insertions (%s) must be >= 0" var1147)) ; Statement: staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: void checkArgument(boolean,java.lang.String,long)>($z0, "Expected insertions (%s) must be >= 0", l6) 

(declare-const var2680!1 Bool)
(declare-const var2760 String)
(declare-const var1147!1 Int)
(define-const var1251 Int (ite (fp.gt var2522 ((_ to_fp 11 53) #x0000000000000000)) 1 (ite (fp.lt var2522 ((_ to_fp 11 53) #x0000000000000000)) (- 1) 0))) ; Statement: $b1 = d0 cmpl 0.0 
(define-const var2378 Int (cast-from-Int-to-Int var1251)) ; Statement: $i8 = (int) $b1 
 ; Statement: if $i8 <= 0 goto $z1 = 0 
(assert (<= var2378 0)) ; Cond: $i8 <= 0 
(define-const var2078 Bool (ite (= 1 0) true false)) ; Statement: $z1 = 0 
(assert true) ; Non Conditional
(define-const var895 Float64 (Float64_valueOf/679560954 var2522)) ; Statement: $r1 = staticinvoke <java.lang.Double: java.lang.Double valueOf(double)>(d0) 
;(assert (var479_checkArgument/1031231112 var2078 "False positive probability (%s) must be > 0.0" (cast-from-Float64-to-var2727 var895))) ; Statement: staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: void checkArgument(boolean,java.lang.String,java.lang.Object)>($z1, "False positive probability (%s) must be > 0.0", $r1) 

(declare-const var2078!1 Bool)
(declare-const var2793 String)
(declare-const var895!1 Float64)
(define-const var2131 Int (ite (fp.gt var2522 ((_ to_fp 11 53) #x3ff0000000000000)) 1 (ite (fp.lt var2522 ((_ to_fp 11 53) #x3ff0000000000000)) (- 1) 0))) ; Statement: $b2 = d0 cmpg 1.0 
(define-const var3217 Int (cast-from-Int-to-Int var2131)) ; Statement: $i9 = (int) $b2 
 ; Statement: if $i9 >= 0 goto $z2 = 0 
(assert (>= var3217 0)) ; Cond: $i9 >= 0 
(define-const var427 Bool (ite (= 1 0) true false)) ; Statement: $z2 = 0 
(assert true) ; Non Conditional
(define-const var1031 Float64 (Float64_valueOf/679560954 var2522)) ; Statement: $r2 = staticinvoke <java.lang.Double: java.lang.Double valueOf(double)>(d0) 
;(assert (var479_checkArgument/1031231112 var427 "False positive probability (%s) must be < 1.0" (cast-from-Float64-to-var2727 var1031))) ; Statement: staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: void checkArgument(boolean,java.lang.String,java.lang.Object)>($z2, "False positive probability (%s) must be < 1.0", $r2) 

(declare-const var427!1 Bool)
(declare-const var2881 String)
(declare-const var1031!1 Float64)
;(assert (var479_checkNotNull/1446102589 (cast-from-var1561-to-var2727 var3692))) ; Statement: staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: java.lang.Object checkNotNull(java.lang.Object)>(r3) 

(declare-const var3692!1 var1561)
(define-const var418 Int (ite (> var1147!1 0) 1 (ite (< var1147!1 0) (- 1) 0))) ; Statement: $b3 = l6 cmp 0L 
 ; Statement: if $b3 != 0 goto $l4 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.hash.BloomFilter: long optimalNumOfBits(long,double)>(l6, d0) 
(assert (not (= var418 0))) ; Cond: $b3 != 0 
(define-const var635 Int (var3838_optimalNumOfBits/-757143766 var1147!1 var2522)) ; Statement: $l4 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.hash.BloomFilter: long optimalNumOfBits(long,double)>(l6, d0) 
(define-const var3526 Int (var3838_optimalNumOfHashFunctions/-305668079 var1147!1 var635)) ; Statement: $i5 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.hash.BloomFilter: int optimalNumOfHashFunctions(long,long)>(l6, $l4) 
(define-const var1314 var3838 var3838-init) ; Statement: $r14 = new com.google.javascript.jscomp.jarjar.com.google.common.hash.BloomFilter 
(define-const var2647 var2743 var2743-init) ; Statement: $r13 = new com.google.javascript.jscomp.jarjar.com.google.common.hash.BloomFilterStrategies$LockFreeBitArray 
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var586 var564) ; Statement: $r6 := @caughtexception 
(assert (not (= var586 null-var564)))
(define-const var2889 var564 var564-init) ; Statement: $r16 = new java.lang.IllegalArgumentException 
(define-const var253 String String-init) ; Statement: $r15 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var253)) ; Statement: specialinvoke $r15.<java.lang.StringBuilder: void <init>()>() 
(declare-const var253!1 String)
(assert (= var253!1 ""))
(assert true)
(define-const var919 String (append/672562846 var253!1 "Could not create BloomFilter of ")) ; Statement: $r9 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Could not create BloomFilter of ") 
(declare-const var253!2 String)
(assert (= var253!2 (str.++ var253!1 "Could not create BloomFilter of ")))
(assert true)
(define-const var249 String (append/-901862667 var919 var635)) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(long)>($l4) 
(declare-const var919!1 String)
(assert (str.prefixof var919 var919!1))
(assert true)
(define-const var294 String (append/672562846 var249 " bits")) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" bits") 
(declare-const var249!1 String)
(assert (= var249!1 (str.++ var249 " bits")))
(assert true)
(define-const var3002 String (toString/-2075883882 var294)) ; Statement: $r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-1425936906 var2889 var3002 (cast-from-var564-to-var1436 var586))) ; Statement: specialinvoke $r16.<java.lang.IllegalArgumentException: void <init>(java.lang.String,java.lang.Throwable)>($r12, $r6) 

(declare-const var2889!1 var564)
(declare-const var3002!1 String)
(declare-const var586!1 var564)
 ; Statement: throw $r16 
(check-sat)
(get-model)
(get-unsat-core)
; {var479_checkNotNull/1446102589=([java.lang.Object], java.lang.Object), cast-from-var1051-to-var2727=([com.google.javascript.jscomp.jarjar.com.google.common.hash.Funnel], java.lang.Object), cast-from-Int-to-Int=([byte], int), var479_checkArgument/-1708798671=([boolean, java.lang.String, long], void), Float64_valueOf/679560954=([double], java.lang.Double), var479_checkArgument/1031231112=([boolean, java.lang.String, java.lang.Object], void), cast-from-Float64-to-var2727=([java.lang.Double], java.lang.Object), cast-from-var1561-to-var2727=([com.google.javascript.jscomp.jarjar.com.google.common.hash.BloomFilter$Strategy], java.lang.Object), var3838_optimalNumOfBits/-757143766=([long, double], long), var3838_optimalNumOfHashFunctions/-305668079=([long, long], int), var3838-init=([], com.google.javascript.jscomp.jarjar.com.google.common.hash.BloomFilter), var2743-init=([], com.google.javascript.jscomp.jarjar.com.google.common.hash.BloomFilterStrategies$LockFreeBitArray), var564-init=([], java.lang.IllegalArgumentException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-901862667=([java.lang.StringBuilder, long], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-1425936906=([java.lang.IllegalArgumentException, java.lang.String, java.lang.Throwable], void), cast-from-var564-to-var1436=([java.lang.IllegalArgumentException], java.lang.Throwable)}
; {var1051=com.google.javascript.jscomp.jarjar.com.google.common.hash.Funnel, var2843=r0, var1147=l6, var2522=d0, var1561=com.google.javascript.jscomp.jarjar.com.google.common.hash.BloomFilter$Strategy, var3692=r3, var479=com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions, var2727=java.lang.Object, var2015=$b0, var1524=$i7, var2680=$z0, var2760="Expected insertions (%s) must be >= 0", var1251=$b1, var2378=$i8, var2078=$z1, var895=$r1, var2793="False positive probability (%s) must be > 0.0", var2131=$b2, var3217=$i9, var427=$z2, var1031=$r2, var2881="False positive probability (%s) must be < 1.0", var418=$b3, var3838=com.google.javascript.jscomp.jarjar.com.google.common.hash.BloomFilter, var635=$l4, var3526=$i5, var1314=$r14, var2743=com.google.javascript.jscomp.jarjar.com.google.common.hash.BloomFilterStrategies$LockFreeBitArray, var2647=$r13, var564=java.lang.IllegalArgumentException, var586=$r6, var2889=$r16, var253=$r15, var919=$r9, var249=$r10, var294=$r11, var3002=$r12, var1436=java.lang.Throwable}
; {com.google.javascript.jscomp.jarjar.com.google.common.hash.Funnel=var1051, r0=var2843, l6=var1147, d0=var2522, com.google.javascript.jscomp.jarjar.com.google.common.hash.BloomFilter$Strategy=var1561, r3=var3692, com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions=var479, java.lang.Object=var2727, $b0=var2015, $i7=var1524, $z0=var2680, "Expected insertions (%s) must be >= 0"=var2760, $b1=var1251, $i8=var2378, $z1=var2078, $r1=var895, "False positive probability (%s) must be > 0.0"=var2793, $b2=var2131, $i9=var3217, $z2=var427, $r2=var1031, "False positive probability (%s) must be < 1.0"=var2881, $b3=var418, com.google.javascript.jscomp.jarjar.com.google.common.hash.BloomFilter=var3838, $l4=var635, $i5=var3526, $r14=var1314, com.google.javascript.jscomp.jarjar.com.google.common.hash.BloomFilterStrategies$LockFreeBitArray=var2743, $r13=var2647, java.lang.IllegalArgumentException=var564, $r6=var586, $r16=var2889, $r15=var253, $r9=var919, $r10=var249, $r11=var294, $r12=var3002, java.lang.Throwable=var1436}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(long)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(long)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @parameter0: com.google.javascript.jscomp.jarjar.com.google.common.hash.Funnel;	l6 := @parameter1: long;	d0 := @parameter2: double;	r3 := @parameter3: com.google.javascript.jscomp.jarjar.com.google.common.hash.BloomFilter$Strategy;	staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: java.lang.Object checkNotNull(java.lang.Object)>(r0);	$b0 = l6 cmp 0L;	$i7 = (int) $b0;	if $i7 < 0 goto $z0 = 0;	$z0 = 0;	staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: void checkArgument(boolean,java.lang.String,long)>($z0, "Expected insertions (%s) must be >= 0", l6);	$b1 = d0 cmpl 0.0;	$i8 = (int) $b1;	if $i8 <= 0 goto $z1 = 0;	$z1 = 0;	$r1 = staticinvoke <java.lang.Double: java.lang.Double valueOf(double)>(d0);	staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: void checkArgument(boolean,java.lang.String,java.lang.Object)>($z1, "False positive probability (%s) must be > 0.0", $r1);	$b2 = d0 cmpg 1.0;	$i9 = (int) $b2;	if $i9 >= 0 goto $z2 = 0;	$z2 = 0;	$r2 = staticinvoke <java.lang.Double: java.lang.Double valueOf(double)>(d0);	staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: void checkArgument(boolean,java.lang.String,java.lang.Object)>($z2, "False positive probability (%s) must be < 1.0", $r2);	staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: java.lang.Object checkNotNull(java.lang.Object)>(r3);	$b3 = l6 cmp 0L;	if $b3 != 0 goto $l4 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.hash.BloomFilter: long optimalNumOfBits(long,double)>(l6, d0);	$l4 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.hash.BloomFilter: long optimalNumOfBits(long,double)>(l6, d0);	$i5 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.hash.BloomFilter: int optimalNumOfHashFunctions(long,long)>(l6, $l4);	$r14 = new com.google.javascript.jscomp.jarjar.com.google.common.hash.BloomFilter;	$r13 = new com.google.javascript.jscomp.jarjar.com.google.common.hash.BloomFilterStrategies$LockFreeBitArray;	$r6 := @caughtexception;	$r16 = new java.lang.IllegalArgumentException;	$r15 = new java.lang.StringBuilder;	specialinvoke $r15.<java.lang.StringBuilder: void <init>()>();	$r9 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Could not create BloomFilter of ");	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(long)>($l4);	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" bits");	$r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r16.<java.lang.IllegalArgumentException: void <init>(java.lang.String,java.lang.Throwable)>($r12, $r6);	throw $r16
;block_num 9