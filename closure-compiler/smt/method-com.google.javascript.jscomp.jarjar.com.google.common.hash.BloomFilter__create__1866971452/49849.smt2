(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2246 0)
(declare-sort var2675 0)
(declare-sort var1764 0)
(declare-sort var1807 0)
(declare-sort var2033 0)
(declare-sort var3801 0)
(declare-sort var1818 0)
(declare-sort var2883 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var1764_checkNotNull/1446102589 (var1807) var1807)
(declare-fun cast-from-var2246-to-var1807 (var2246) var1807)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun var1764_checkArgument/-1708798671 (Bool String Int) void)
(declare-fun Float64_valueOf/679560954 (Float64) Float64)
(declare-fun var1764_checkArgument/1031231112 (Bool String var1807) void)
(declare-fun cast-from-Float64-to-var1807 (Float64) var1807)
(declare-fun cast-from-var2675-to-var1807 (var2675) var1807)
(declare-fun var2033_optimalNumOfBits/-757143766 (Int Float64) Int)
(declare-fun var2033_optimalNumOfHashFunctions/-305668079 (Int Int) Int)
(declare-fun var2033-init () var2033)
(declare-fun var3801-init () var3801)
(declare-fun var1818-init () var1818)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-901862667 (String Int) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-1425936906 (var1818 String var2883) void)
(declare-fun cast-from-var1818-to-var2883 (var1818) var2883)
(declare-const null-var2246 var2246)
(declare-const null-Int Int)
(declare-const null-Float64 Float64)
(declare-const null-var2675 var2675)
(declare-const null-var1818 var1818)
(declare-const var3911 var2246) ; Statement: r0 := @parameter0: com.google.javascript.jscomp.jarjar.com.google.common.hash.Funnel 
(assert (not (= var3911 null-var2246)))
(declare-const var2328 Int) ; Statement: l6 := @parameter1: long 
(assert (not (= var2328 null-Int)))
(declare-const var619 Float64) ; Statement: d0 := @parameter2: double 
(assert (not (= var619 null-Float64)))
(declare-const var3132 var2675) ; Statement: r3 := @parameter3: com.google.javascript.jscomp.jarjar.com.google.common.hash.BloomFilter$Strategy 
(assert (not (= var3132 null-var2675)))
;(assert (var1764_checkNotNull/1446102589 (cast-from-var2246-to-var1807 var3911))) ; Statement: staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: java.lang.Object checkNotNull(java.lang.Object)>(r0) 

(declare-const var3911!1 var2246)
(define-const var2792 Int (ite (> var2328 0) 1 (ite (< var2328 0) (- 1) 0))) ; Statement: $b0 = l6 cmp 0L 
(define-const var2227 Int (cast-from-Int-to-Int var2792)) ; Statement: $i7 = (int) $b0 
 ; Statement: if $i7 < 0 goto $z0 = 0 
(assert (< var2227 0)) ; Cond: $i7 < 0 
(define-const var2972 Bool (ite (= 1 0) true false)) ; Statement: $z0 = 0 
(assert true) ; Non Conditional
;(assert (var1764_checkArgument/-1708798671 var2972 "Expected insertions (%s) must be >= 0" var2328)) ; Statement: staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: void checkArgument(boolean,java.lang.String,long)>($z0, "Expected insertions (%s) must be >= 0", l6) 

(declare-const var2972!1 Bool)
(declare-const var2245 String)
(declare-const var2328!1 Int)
(define-const var336 Int (ite (fp.gt var619 ((_ to_fp 11 53) #x0000000000000000)) 1 (ite (fp.lt var619 ((_ to_fp 11 53) #x0000000000000000)) (- 1) 0))) ; Statement: $b1 = d0 cmpl 0.0 
(define-const var1347 Int (cast-from-Int-to-Int var336)) ; Statement: $i8 = (int) $b1 
 ; Statement: if $i8 <= 0 goto $z1 = 0 
(assert (<= var1347 0)) ; Cond: $i8 <= 0 
(define-const var881 Bool (ite (= 1 0) true false)) ; Statement: $z1 = 0 
(assert true) ; Non Conditional
(define-const var3409 Float64 (Float64_valueOf/679560954 var619)) ; Statement: $r1 = staticinvoke <java.lang.Double: java.lang.Double valueOf(double)>(d0) 
;(assert (var1764_checkArgument/1031231112 var881 "False positive probability (%s) must be > 0.0" (cast-from-Float64-to-var1807 var3409))) ; Statement: staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: void checkArgument(boolean,java.lang.String,java.lang.Object)>($z1, "False positive probability (%s) must be > 0.0", $r1) 

(declare-const var881!1 Bool)
(declare-const var2536 String)
(declare-const var3409!1 Float64)
(define-const var3524 Int (ite (fp.gt var619 ((_ to_fp 11 53) #x3ff0000000000000)) 1 (ite (fp.lt var619 ((_ to_fp 11 53) #x3ff0000000000000)) (- 1) 0))) ; Statement: $b2 = d0 cmpg 1.0 
(define-const var1475 Int (cast-from-Int-to-Int var3524)) ; Statement: $i9 = (int) $b2 
 ; Statement: if $i9 >= 0 goto $z2 = 0 
(assert (not (>= var1475 0))) ; Negate: Cond: $i9 >= 0  
(define-const var1800 Bool (ite (= 1 1) true false)) ; Statement: $z2 = 1 
 ; Statement: goto [?= $r2 = staticinvoke <java.lang.Double: java.lang.Double valueOf(double)>(d0)] 
(assert true) ; Non Conditional
(define-const var1296 Float64 (Float64_valueOf/679560954 var619)) ; Statement: $r2 = staticinvoke <java.lang.Double: java.lang.Double valueOf(double)>(d0) 
;(assert (var1764_checkArgument/1031231112 var1800 "False positive probability (%s) must be < 1.0" (cast-from-Float64-to-var1807 var1296))) ; Statement: staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: void checkArgument(boolean,java.lang.String,java.lang.Object)>($z2, "False positive probability (%s) must be < 1.0", $r2) 

(declare-const var1800!1 Bool)
(declare-const var2126 String)
(declare-const var1296!1 Float64)
;(assert (var1764_checkNotNull/1446102589 (cast-from-var2675-to-var1807 var3132))) ; Statement: staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: java.lang.Object checkNotNull(java.lang.Object)>(r3) 

(declare-const var3132!1 var2675)
(define-const var508 Int (ite (> var2328!1 0) 1 (ite (< var2328!1 0) (- 1) 0))) ; Statement: $b3 = l6 cmp 0L 
 ; Statement: if $b3 != 0 goto $l4 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.hash.BloomFilter: long optimalNumOfBits(long,double)>(l6, d0) 
(assert (not (= var508 0))) ; Cond: $b3 != 0 
(define-const var3486 Int (var2033_optimalNumOfBits/-757143766 var2328!1 var619)) ; Statement: $l4 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.hash.BloomFilter: long optimalNumOfBits(long,double)>(l6, d0) 
(define-const var2367 Int (var2033_optimalNumOfHashFunctions/-305668079 var2328!1 var3486)) ; Statement: $i5 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.hash.BloomFilter: int optimalNumOfHashFunctions(long,long)>(l6, $l4) 
(define-const var544 var2033 var2033-init) ; Statement: $r14 = new com.google.javascript.jscomp.jarjar.com.google.common.hash.BloomFilter 
(define-const var1043 var3801 var3801-init) ; Statement: $r13 = new com.google.javascript.jscomp.jarjar.com.google.common.hash.BloomFilterStrategies$LockFreeBitArray 
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var1706 var1818) ; Statement: $r6 := @caughtexception 
(assert (not (= var1706 null-var1818)))
(define-const var3042 var1818 var1818-init) ; Statement: $r16 = new java.lang.IllegalArgumentException 
(define-const var1486 String String-init) ; Statement: $r15 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1486)) ; Statement: specialinvoke $r15.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1486!1 String)
(assert (= var1486!1 ""))
(assert true)
(define-const var3427 String (append/672562846 var1486!1 "Could not create BloomFilter of ")) ; Statement: $r9 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Could not create BloomFilter of ") 
(declare-const var1486!2 String)
(assert (= var1486!2 (str.++ var1486!1 "Could not create BloomFilter of ")))
(assert true)
(define-const var2992 String (append/-901862667 var3427 var3486)) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(long)>($l4) 
(declare-const var3427!1 String)
(assert (str.prefixof var3427 var3427!1))
(assert true)
(define-const var2631 String (append/672562846 var2992 " bits")) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" bits") 
(declare-const var2992!1 String)
(assert (= var2992!1 (str.++ var2992 " bits")))
(assert true)
(define-const var2011 String (toString/-2075883882 var2631)) ; Statement: $r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-1425936906 var3042 var2011 (cast-from-var1818-to-var2883 var1706))) ; Statement: specialinvoke $r16.<java.lang.IllegalArgumentException: void <init>(java.lang.String,java.lang.Throwable)>($r12, $r6) 

(declare-const var3042!1 var1818)
(declare-const var2011!1 String)
(declare-const var1706!1 var1818)
 ; Statement: throw $r16 
(check-sat)
(get-model)
(get-unsat-core)
; {var1764_checkNotNull/1446102589=([java.lang.Object], java.lang.Object), cast-from-var2246-to-var1807=([com.google.javascript.jscomp.jarjar.com.google.common.hash.Funnel], java.lang.Object), cast-from-Int-to-Int=([byte], int), var1764_checkArgument/-1708798671=([boolean, java.lang.String, long], void), Float64_valueOf/679560954=([double], java.lang.Double), var1764_checkArgument/1031231112=([boolean, java.lang.String, java.lang.Object], void), cast-from-Float64-to-var1807=([java.lang.Double], java.lang.Object), cast-from-var2675-to-var1807=([com.google.javascript.jscomp.jarjar.com.google.common.hash.BloomFilter$Strategy], java.lang.Object), var2033_optimalNumOfBits/-757143766=([long, double], long), var2033_optimalNumOfHashFunctions/-305668079=([long, long], int), var2033-init=([], com.google.javascript.jscomp.jarjar.com.google.common.hash.BloomFilter), var3801-init=([], com.google.javascript.jscomp.jarjar.com.google.common.hash.BloomFilterStrategies$LockFreeBitArray), var1818-init=([], java.lang.IllegalArgumentException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-901862667=([java.lang.StringBuilder, long], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-1425936906=([java.lang.IllegalArgumentException, java.lang.String, java.lang.Throwable], void), cast-from-var1818-to-var2883=([java.lang.IllegalArgumentException], java.lang.Throwable)}
; {var2246=com.google.javascript.jscomp.jarjar.com.google.common.hash.Funnel, var3911=r0, var2328=l6, var619=d0, var2675=com.google.javascript.jscomp.jarjar.com.google.common.hash.BloomFilter$Strategy, var3132=r3, var1764=com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions, var1807=java.lang.Object, var2792=$b0, var2227=$i7, var2972=$z0, var2245="Expected insertions (%s) must be >= 0", var336=$b1, var1347=$i8, var881=$z1, var3409=$r1, var2536="False positive probability (%s) must be > 0.0", var3524=$b2, var1475=$i9, var1800=$z2, var1296=$r2, var2126="False positive probability (%s) must be < 1.0", var508=$b3, var2033=com.google.javascript.jscomp.jarjar.com.google.common.hash.BloomFilter, var3486=$l4, var2367=$i5, var544=$r14, var3801=com.google.javascript.jscomp.jarjar.com.google.common.hash.BloomFilterStrategies$LockFreeBitArray, var1043=$r13, var1818=java.lang.IllegalArgumentException, var1706=$r6, var3042=$r16, var1486=$r15, var3427=$r9, var2992=$r10, var2631=$r11, var2011=$r12, var2883=java.lang.Throwable}
; {com.google.javascript.jscomp.jarjar.com.google.common.hash.Funnel=var2246, r0=var3911, l6=var2328, d0=var619, com.google.javascript.jscomp.jarjar.com.google.common.hash.BloomFilter$Strategy=var2675, r3=var3132, com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions=var1764, java.lang.Object=var1807, $b0=var2792, $i7=var2227, $z0=var2972, "Expected insertions (%s) must be >= 0"=var2245, $b1=var336, $i8=var1347, $z1=var881, $r1=var3409, "False positive probability (%s) must be > 0.0"=var2536, $b2=var3524, $i9=var1475, $z2=var1800, $r2=var1296, "False positive probability (%s) must be < 1.0"=var2126, $b3=var508, com.google.javascript.jscomp.jarjar.com.google.common.hash.BloomFilter=var2033, $l4=var3486, $i5=var2367, $r14=var544, com.google.javascript.jscomp.jarjar.com.google.common.hash.BloomFilterStrategies$LockFreeBitArray=var3801, $r13=var1043, java.lang.IllegalArgumentException=var1818, $r6=var1706, $r16=var3042, $r15=var1486, $r9=var3427, $r10=var2992, $r11=var2631, $r12=var2011, java.lang.Throwable=var2883}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(long)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(long)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @parameter0: com.google.javascript.jscomp.jarjar.com.google.common.hash.Funnel;	l6 := @parameter1: long;	d0 := @parameter2: double;	r3 := @parameter3: com.google.javascript.jscomp.jarjar.com.google.common.hash.BloomFilter$Strategy;	staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: java.lang.Object checkNotNull(java.lang.Object)>(r0);	$b0 = l6 cmp 0L;	$i7 = (int) $b0;	if $i7 < 0 goto $z0 = 0;	$z0 = 0;	staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: void checkArgument(boolean,java.lang.String,long)>($z0, "Expected insertions (%s) must be >= 0", l6);	$b1 = d0 cmpl 0.0;	$i8 = (int) $b1;	if $i8 <= 0 goto $z1 = 0;	$z1 = 0;	$r1 = staticinvoke <java.lang.Double: java.lang.Double valueOf(double)>(d0);	staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: void checkArgument(boolean,java.lang.String,java.lang.Object)>($z1, "False positive probability (%s) must be > 0.0", $r1);	$b2 = d0 cmpg 1.0;	$i9 = (int) $b2;	if $i9 >= 0 goto $z2 = 0;	$z2 = 1;	goto [?= $r2 = staticinvoke <java.lang.Double: java.lang.Double valueOf(double)>(d0)];	$r2 = staticinvoke <java.lang.Double: java.lang.Double valueOf(double)>(d0);	staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: void checkArgument(boolean,java.lang.String,java.lang.Object)>($z2, "False positive probability (%s) must be < 1.0", $r2);	staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: java.lang.Object checkNotNull(java.lang.Object)>(r3);	$b3 = l6 cmp 0L;	if $b3 != 0 goto $l4 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.hash.BloomFilter: long optimalNumOfBits(long,double)>(l6, d0);	$l4 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.hash.BloomFilter: long optimalNumOfBits(long,double)>(l6, d0);	$i5 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.hash.BloomFilter: int optimalNumOfHashFunctions(long,long)>(l6, $l4);	$r14 = new com.google.javascript.jscomp.jarjar.com.google.common.hash.BloomFilter;	$r13 = new com.google.javascript.jscomp.jarjar.com.google.common.hash.BloomFilterStrategies$LockFreeBitArray;	$r6 := @caughtexception;	$r16 = new java.lang.IllegalArgumentException;	$r15 = new java.lang.StringBuilder;	specialinvoke $r15.<java.lang.StringBuilder: void <init>()>();	$r9 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Could not create BloomFilter of ");	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(long)>($l4);	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" bits");	$r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r16.<java.lang.IllegalArgumentException: void <init>(java.lang.String,java.lang.Throwable)>($r12, $r6);	throw $r16
;block_num 9