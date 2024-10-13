(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2318 0)
(declare-sort var1281 0)
(declare-sort var491 0)
(declare-sort var2057 0)
(declare-sort var3759 0)
(declare-sort var2307 0)
(declare-sort var3847 0)
(declare-sort var2975 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var491_checkNotNull/1446102589 (var2057) var2057)
(declare-fun cast-from-var2318-to-var2057 (var2318) var2057)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun var491_checkArgument/-1708798671 (Bool String Int) void)
(declare-fun Float64_valueOf/679560954 (Float64) Float64)
(declare-fun var491_checkArgument/1031231112 (Bool String var2057) void)
(declare-fun cast-from-Float64-to-var2057 (Float64) var2057)
(declare-fun cast-from-var1281-to-var2057 (var1281) var2057)
(declare-fun var3759_optimalNumOfBits/-757143766 (Int Float64) Int)
(declare-fun var3759_optimalNumOfHashFunctions/-305668079 (Int Int) Int)
(declare-fun var3759-init () var3759)
(declare-fun var2307-init () var2307)
(declare-fun var3847-init () var3847)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-901862667 (String Int) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-1425936906 (var3847 String var2975) void)
(declare-fun cast-from-var3847-to-var2975 (var3847) var2975)
(declare-const null-var2318 var2318)
(declare-const null-Int Int)
(declare-const null-Float64 Float64)
(declare-const null-var1281 var1281)
(declare-const null-var3847 var3847)
(declare-const var3259 var2318) ; Statement: r0 := @parameter0: com.google.javascript.jscomp.jarjar.com.google.common.hash.Funnel 
(assert (not (= var3259 null-var2318)))
(declare-const var1019 Int) ; Statement: l6 := @parameter1: long 
(assert (not (= var1019 null-Int)))
(declare-const var3090 Float64) ; Statement: d0 := @parameter2: double 
(assert (not (= var3090 null-Float64)))
(declare-const var3836 var1281) ; Statement: r3 := @parameter3: com.google.javascript.jscomp.jarjar.com.google.common.hash.BloomFilter$Strategy 
(assert (not (= var3836 null-var1281)))
;(assert (var491_checkNotNull/1446102589 (cast-from-var2318-to-var2057 var3259))) ; Statement: staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: java.lang.Object checkNotNull(java.lang.Object)>(r0) 

(declare-const var3259!1 var2318)
(define-const var2140 Int (ite (> var1019 0) 1 (ite (< var1019 0) (- 1) 0))) ; Statement: $b0 = l6 cmp 0L 
(define-const var2766 Int (cast-from-Int-to-Int var2140)) ; Statement: $i7 = (int) $b0 
 ; Statement: if $i7 < 0 goto $z0 = 0 
(assert (not (< var2766 0))) ; Negate: Cond: $i7 < 0  
(define-const var3155 Bool (ite (= 1 1) true false)) ; Statement: $z0 = 1 
 ; Statement: goto [?= staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: void checkArgument(boolean,java.lang.String,long)>($z0, "Expected insertions (%s) must be >= 0", l6)] 
(assert true) ; Non Conditional
;(assert (var491_checkArgument/-1708798671 var3155 "Expected insertions (%s) must be >= 0" var1019)) ; Statement: staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: void checkArgument(boolean,java.lang.String,long)>($z0, "Expected insertions (%s) must be >= 0", l6) 

(declare-const var3155!1 Bool)
(declare-const var853 String)
(declare-const var1019!1 Int)
(define-const var764 Int (ite (fp.gt var3090 ((_ to_fp 11 53) #x0000000000000000)) 1 (ite (fp.lt var3090 ((_ to_fp 11 53) #x0000000000000000)) (- 1) 0))) ; Statement: $b1 = d0 cmpl 0.0 
(define-const var1606 Int (cast-from-Int-to-Int var764)) ; Statement: $i8 = (int) $b1 
 ; Statement: if $i8 <= 0 goto $z1 = 0 
(assert (not (<= var1606 0))) ; Negate: Cond: $i8 <= 0  
(define-const var1521 Bool (ite (= 1 1) true false)) ; Statement: $z1 = 1 
 ; Statement: goto [?= $r1 = staticinvoke <java.lang.Double: java.lang.Double valueOf(double)>(d0)] 
(assert true) ; Non Conditional
(define-const var2765 Float64 (Float64_valueOf/679560954 var3090)) ; Statement: $r1 = staticinvoke <java.lang.Double: java.lang.Double valueOf(double)>(d0) 
;(assert (var491_checkArgument/1031231112 var1521 "False positive probability (%s) must be > 0.0" (cast-from-Float64-to-var2057 var2765))) ; Statement: staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: void checkArgument(boolean,java.lang.String,java.lang.Object)>($z1, "False positive probability (%s) must be > 0.0", $r1) 

(declare-const var1521!1 Bool)
(declare-const var3837 String)
(declare-const var2765!1 Float64)
(define-const var3449 Int (ite (fp.gt var3090 ((_ to_fp 11 53) #x3ff0000000000000)) 1 (ite (fp.lt var3090 ((_ to_fp 11 53) #x3ff0000000000000)) (- 1) 0))) ; Statement: $b2 = d0 cmpg 1.0 
(define-const var2442 Int (cast-from-Int-to-Int var3449)) ; Statement: $i9 = (int) $b2 
 ; Statement: if $i9 >= 0 goto $z2 = 0 
(assert (not (>= var2442 0))) ; Negate: Cond: $i9 >= 0  
(define-const var2226 Bool (ite (= 1 1) true false)) ; Statement: $z2 = 1 
 ; Statement: goto [?= $r2 = staticinvoke <java.lang.Double: java.lang.Double valueOf(double)>(d0)] 
(assert true) ; Non Conditional
(define-const var2931 Float64 (Float64_valueOf/679560954 var3090)) ; Statement: $r2 = staticinvoke <java.lang.Double: java.lang.Double valueOf(double)>(d0) 
;(assert (var491_checkArgument/1031231112 var2226 "False positive probability (%s) must be < 1.0" (cast-from-Float64-to-var2057 var2931))) ; Statement: staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: void checkArgument(boolean,java.lang.String,java.lang.Object)>($z2, "False positive probability (%s) must be < 1.0", $r2) 

(declare-const var2226!1 Bool)
(declare-const var3444 String)
(declare-const var2931!1 Float64)
;(assert (var491_checkNotNull/1446102589 (cast-from-var1281-to-var2057 var3836))) ; Statement: staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: java.lang.Object checkNotNull(java.lang.Object)>(r3) 

(declare-const var3836!1 var1281)
(define-const var2764 Int (ite (> var1019!1 0) 1 (ite (< var1019!1 0) (- 1) 0))) ; Statement: $b3 = l6 cmp 0L 
 ; Statement: if $b3 != 0 goto $l4 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.hash.BloomFilter: long optimalNumOfBits(long,double)>(l6, d0) 
(assert (not (= var2764 0))) ; Cond: $b3 != 0 
(define-const var2253 Int (var3759_optimalNumOfBits/-757143766 var1019!1 var3090)) ; Statement: $l4 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.hash.BloomFilter: long optimalNumOfBits(long,double)>(l6, d0) 
(define-const var2605 Int (var3759_optimalNumOfHashFunctions/-305668079 var1019!1 var2253)) ; Statement: $i5 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.hash.BloomFilter: int optimalNumOfHashFunctions(long,long)>(l6, $l4) 
(define-const var3043 var3759 var3759-init) ; Statement: $r14 = new com.google.javascript.jscomp.jarjar.com.google.common.hash.BloomFilter 
(define-const var3073 var2307 var2307-init) ; Statement: $r13 = new com.google.javascript.jscomp.jarjar.com.google.common.hash.BloomFilterStrategies$LockFreeBitArray 
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var3909 var3847) ; Statement: $r6 := @caughtexception 
(assert (not (= var3909 null-var3847)))
(define-const var1140 var3847 var3847-init) ; Statement: $r16 = new java.lang.IllegalArgumentException 
(define-const var3495 String String-init) ; Statement: $r15 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3495)) ; Statement: specialinvoke $r15.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3495!1 String)
(assert (= var3495!1 ""))
(assert true)
(define-const var3494 String (append/672562846 var3495!1 "Could not create BloomFilter of ")) ; Statement: $r9 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Could not create BloomFilter of ") 
(declare-const var3495!2 String)
(assert (= var3495!2 (str.++ var3495!1 "Could not create BloomFilter of ")))
(assert true)
(define-const var2862 String (append/-901862667 var3494 var2253)) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(long)>($l4) 
(declare-const var3494!1 String)
(assert (str.prefixof var3494 var3494!1))
(assert true)
(define-const var1942 String (append/672562846 var2862 " bits")) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" bits") 
(declare-const var2862!1 String)
(assert (= var2862!1 (str.++ var2862 " bits")))
(assert true)
(define-const var36 String (toString/-2075883882 var1942)) ; Statement: $r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-1425936906 var1140 var36 (cast-from-var3847-to-var2975 var3909))) ; Statement: specialinvoke $r16.<java.lang.IllegalArgumentException: void <init>(java.lang.String,java.lang.Throwable)>($r12, $r6) 

(declare-const var1140!1 var3847)
(declare-const var36!1 String)
(declare-const var3909!1 var3847)
 ; Statement: throw $r16 
(check-sat)
(get-model)
(get-unsat-core)
; {var491_checkNotNull/1446102589=([java.lang.Object], java.lang.Object), cast-from-var2318-to-var2057=([com.google.javascript.jscomp.jarjar.com.google.common.hash.Funnel], java.lang.Object), cast-from-Int-to-Int=([byte], int), var491_checkArgument/-1708798671=([boolean, java.lang.String, long], void), Float64_valueOf/679560954=([double], java.lang.Double), var491_checkArgument/1031231112=([boolean, java.lang.String, java.lang.Object], void), cast-from-Float64-to-var2057=([java.lang.Double], java.lang.Object), cast-from-var1281-to-var2057=([com.google.javascript.jscomp.jarjar.com.google.common.hash.BloomFilter$Strategy], java.lang.Object), var3759_optimalNumOfBits/-757143766=([long, double], long), var3759_optimalNumOfHashFunctions/-305668079=([long, long], int), var3759-init=([], com.google.javascript.jscomp.jarjar.com.google.common.hash.BloomFilter), var2307-init=([], com.google.javascript.jscomp.jarjar.com.google.common.hash.BloomFilterStrategies$LockFreeBitArray), var3847-init=([], java.lang.IllegalArgumentException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-901862667=([java.lang.StringBuilder, long], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-1425936906=([java.lang.IllegalArgumentException, java.lang.String, java.lang.Throwable], void), cast-from-var3847-to-var2975=([java.lang.IllegalArgumentException], java.lang.Throwable)}
; {var2318=com.google.javascript.jscomp.jarjar.com.google.common.hash.Funnel, var3259=r0, var1019=l6, var3090=d0, var1281=com.google.javascript.jscomp.jarjar.com.google.common.hash.BloomFilter$Strategy, var3836=r3, var491=com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions, var2057=java.lang.Object, var2140=$b0, var2766=$i7, var3155=$z0, var853="Expected insertions (%s) must be >= 0", var764=$b1, var1606=$i8, var1521=$z1, var2765=$r1, var3837="False positive probability (%s) must be > 0.0", var3449=$b2, var2442=$i9, var2226=$z2, var2931=$r2, var3444="False positive probability (%s) must be < 1.0", var2764=$b3, var3759=com.google.javascript.jscomp.jarjar.com.google.common.hash.BloomFilter, var2253=$l4, var2605=$i5, var3043=$r14, var2307=com.google.javascript.jscomp.jarjar.com.google.common.hash.BloomFilterStrategies$LockFreeBitArray, var3073=$r13, var3847=java.lang.IllegalArgumentException, var3909=$r6, var1140=$r16, var3495=$r15, var3494=$r9, var2862=$r10, var1942=$r11, var36=$r12, var2975=java.lang.Throwable}
; {com.google.javascript.jscomp.jarjar.com.google.common.hash.Funnel=var2318, r0=var3259, l6=var1019, d0=var3090, com.google.javascript.jscomp.jarjar.com.google.common.hash.BloomFilter$Strategy=var1281, r3=var3836, com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions=var491, java.lang.Object=var2057, $b0=var2140, $i7=var2766, $z0=var3155, "Expected insertions (%s) must be >= 0"=var853, $b1=var764, $i8=var1606, $z1=var1521, $r1=var2765, "False positive probability (%s) must be > 0.0"=var3837, $b2=var3449, $i9=var2442, $z2=var2226, $r2=var2931, "False positive probability (%s) must be < 1.0"=var3444, $b3=var2764, com.google.javascript.jscomp.jarjar.com.google.common.hash.BloomFilter=var3759, $l4=var2253, $i5=var2605, $r14=var3043, com.google.javascript.jscomp.jarjar.com.google.common.hash.BloomFilterStrategies$LockFreeBitArray=var2307, $r13=var3073, java.lang.IllegalArgumentException=var3847, $r6=var3909, $r16=var1140, $r15=var3495, $r9=var3494, $r10=var2862, $r11=var1942, $r12=var36, java.lang.Throwable=var2975}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(long)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(long)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @parameter0: com.google.javascript.jscomp.jarjar.com.google.common.hash.Funnel;	l6 := @parameter1: long;	d0 := @parameter2: double;	r3 := @parameter3: com.google.javascript.jscomp.jarjar.com.google.common.hash.BloomFilter$Strategy;	staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: java.lang.Object checkNotNull(java.lang.Object)>(r0);	$b0 = l6 cmp 0L;	$i7 = (int) $b0;	if $i7 < 0 goto $z0 = 0;	$z0 = 1;	goto [?= staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: void checkArgument(boolean,java.lang.String,long)>($z0, "Expected insertions (%s) must be >= 0", l6)];	staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: void checkArgument(boolean,java.lang.String,long)>($z0, "Expected insertions (%s) must be >= 0", l6);	$b1 = d0 cmpl 0.0;	$i8 = (int) $b1;	if $i8 <= 0 goto $z1 = 0;	$z1 = 1;	goto [?= $r1 = staticinvoke <java.lang.Double: java.lang.Double valueOf(double)>(d0)];	$r1 = staticinvoke <java.lang.Double: java.lang.Double valueOf(double)>(d0);	staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: void checkArgument(boolean,java.lang.String,java.lang.Object)>($z1, "False positive probability (%s) must be > 0.0", $r1);	$b2 = d0 cmpg 1.0;	$i9 = (int) $b2;	if $i9 >= 0 goto $z2 = 0;	$z2 = 1;	goto [?= $r2 = staticinvoke <java.lang.Double: java.lang.Double valueOf(double)>(d0)];	$r2 = staticinvoke <java.lang.Double: java.lang.Double valueOf(double)>(d0);	staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: void checkArgument(boolean,java.lang.String,java.lang.Object)>($z2, "False positive probability (%s) must be < 1.0", $r2);	staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: java.lang.Object checkNotNull(java.lang.Object)>(r3);	$b3 = l6 cmp 0L;	if $b3 != 0 goto $l4 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.hash.BloomFilter: long optimalNumOfBits(long,double)>(l6, d0);	$l4 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.hash.BloomFilter: long optimalNumOfBits(long,double)>(l6, d0);	$i5 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.hash.BloomFilter: int optimalNumOfHashFunctions(long,long)>(l6, $l4);	$r14 = new com.google.javascript.jscomp.jarjar.com.google.common.hash.BloomFilter;	$r13 = new com.google.javascript.jscomp.jarjar.com.google.common.hash.BloomFilterStrategies$LockFreeBitArray;	$r6 := @caughtexception;	$r16 = new java.lang.IllegalArgumentException;	$r15 = new java.lang.StringBuilder;	specialinvoke $r15.<java.lang.StringBuilder: void <init>()>();	$r9 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Could not create BloomFilter of ");	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(long)>($l4);	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" bits");	$r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r16.<java.lang.IllegalArgumentException: void <init>(java.lang.String,java.lang.Throwable)>($r12, $r6);	throw $r16
;block_num 9