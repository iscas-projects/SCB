(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1425 0)
(declare-sort var2684 0)
(declare-sort var1707 0)
(declare-sort var2391 0)
(declare-sort var2282 0)
(declare-sort var1438 0)
(declare-sort var746 0)
(declare-sort var2173 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var1707_checkNotNull/1446102589 (var2391) var2391)
(declare-fun cast-from-var1425-to-var2391 (var1425) var2391)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun var1707_checkArgument/-1708798671 (Bool String Int) void)
(declare-fun Float64_valueOf/679560954 (Float64) Float64)
(declare-fun var1707_checkArgument/1031231112 (Bool String var2391) void)
(declare-fun cast-from-Float64-to-var2391 (Float64) var2391)
(declare-fun cast-from-var2684-to-var2391 (var2684) var2391)
(declare-fun var2282_optimalNumOfBits/-757143766 (Int Float64) Int)
(declare-fun var2282_optimalNumOfHashFunctions/-305668079 (Int Int) Int)
(declare-fun var2282-init () var2282)
(declare-fun var1438-init () var1438)
(declare-fun var746-init () var746)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-901862667 (String Int) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-1425936906 (var746 String var2173) void)
(declare-fun cast-from-var746-to-var2173 (var746) var2173)
(declare-const null-var1425 var1425)
(declare-const null-Int Int)
(declare-const null-Float64 Float64)
(declare-const null-var2684 var2684)
(declare-const null-var746 var746)
(declare-const var868 var1425) ; Statement: r0 := @parameter0: com.google.javascript.jscomp.jarjar.com.google.common.hash.Funnel 
(assert (not (= var868 null-var1425)))
(declare-const var2631 Int) ; Statement: l6 := @parameter1: long 
(assert (not (= var2631 null-Int)))
(declare-const var417 Float64) ; Statement: d0 := @parameter2: double 
(assert (not (= var417 null-Float64)))
(declare-const var789 var2684) ; Statement: r3 := @parameter3: com.google.javascript.jscomp.jarjar.com.google.common.hash.BloomFilter$Strategy 
(assert (not (= var789 null-var2684)))
;(assert (var1707_checkNotNull/1446102589 (cast-from-var1425-to-var2391 var868))) ; Statement: staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: java.lang.Object checkNotNull(java.lang.Object)>(r0) 

(declare-const var868!1 var1425)
(define-const var3796 Int (ite (> var2631 0) 1 (ite (< var2631 0) (- 1) 0))) ; Statement: $b0 = l6 cmp 0L 
(define-const var2722 Int (cast-from-Int-to-Int var3796)) ; Statement: $i7 = (int) $b0 
 ; Statement: if $i7 < 0 goto $z0 = 0 
(assert (< var2722 0)) ; Cond: $i7 < 0 
(define-const var1894 Bool (ite (= 1 0) true false)) ; Statement: $z0 = 0 
(assert true) ; Non Conditional
;(assert (var1707_checkArgument/-1708798671 var1894 "Expected insertions (%s) must be >= 0" var2631)) ; Statement: staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: void checkArgument(boolean,java.lang.String,long)>($z0, "Expected insertions (%s) must be >= 0", l6) 

(declare-const var1894!1 Bool)
(declare-const var2151 String)
(declare-const var2631!1 Int)
(define-const var515 Int (ite (fp.gt var417 ((_ to_fp 11 53) #x0000000000000000)) 1 (ite (fp.lt var417 ((_ to_fp 11 53) #x0000000000000000)) (- 1) 0))) ; Statement: $b1 = d0 cmpl 0.0 
(define-const var133 Int (cast-from-Int-to-Int var515)) ; Statement: $i8 = (int) $b1 
 ; Statement: if $i8 <= 0 goto $z1 = 0 
(assert (not (<= var133 0))) ; Negate: Cond: $i8 <= 0  
(define-const var849 Bool (ite (= 1 1) true false)) ; Statement: $z1 = 1 
 ; Statement: goto [?= $r1 = staticinvoke <java.lang.Double: java.lang.Double valueOf(double)>(d0)] 
(assert true) ; Non Conditional
(define-const var1964 Float64 (Float64_valueOf/679560954 var417)) ; Statement: $r1 = staticinvoke <java.lang.Double: java.lang.Double valueOf(double)>(d0) 
;(assert (var1707_checkArgument/1031231112 var849 "False positive probability (%s) must be > 0.0" (cast-from-Float64-to-var2391 var1964))) ; Statement: staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: void checkArgument(boolean,java.lang.String,java.lang.Object)>($z1, "False positive probability (%s) must be > 0.0", $r1) 

(declare-const var849!1 Bool)
(declare-const var680 String)
(declare-const var1964!1 Float64)
(define-const var3789 Int (ite (fp.gt var417 ((_ to_fp 11 53) #x3ff0000000000000)) 1 (ite (fp.lt var417 ((_ to_fp 11 53) #x3ff0000000000000)) (- 1) 0))) ; Statement: $b2 = d0 cmpg 1.0 
(define-const var3682 Int (cast-from-Int-to-Int var3789)) ; Statement: $i9 = (int) $b2 
 ; Statement: if $i9 >= 0 goto $z2 = 0 
(assert (>= var3682 0)) ; Cond: $i9 >= 0 
(define-const var172 Bool (ite (= 1 0) true false)) ; Statement: $z2 = 0 
(assert true) ; Non Conditional
(define-const var1638 Float64 (Float64_valueOf/679560954 var417)) ; Statement: $r2 = staticinvoke <java.lang.Double: java.lang.Double valueOf(double)>(d0) 
;(assert (var1707_checkArgument/1031231112 var172 "False positive probability (%s) must be < 1.0" (cast-from-Float64-to-var2391 var1638))) ; Statement: staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: void checkArgument(boolean,java.lang.String,java.lang.Object)>($z2, "False positive probability (%s) must be < 1.0", $r2) 

(declare-const var172!1 Bool)
(declare-const var2925 String)
(declare-const var1638!1 Float64)
;(assert (var1707_checkNotNull/1446102589 (cast-from-var2684-to-var2391 var789))) ; Statement: staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: java.lang.Object checkNotNull(java.lang.Object)>(r3) 

(declare-const var789!1 var2684)
(define-const var2455 Int (ite (> var2631!1 0) 1 (ite (< var2631!1 0) (- 1) 0))) ; Statement: $b3 = l6 cmp 0L 
 ; Statement: if $b3 != 0 goto $l4 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.hash.BloomFilter: long optimalNumOfBits(long,double)>(l6, d0) 
(assert (not (= var2455 0))) ; Cond: $b3 != 0 
(define-const var1571 Int (var2282_optimalNumOfBits/-757143766 var2631!1 var417)) ; Statement: $l4 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.hash.BloomFilter: long optimalNumOfBits(long,double)>(l6, d0) 
(define-const var3971 Int (var2282_optimalNumOfHashFunctions/-305668079 var2631!1 var1571)) ; Statement: $i5 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.hash.BloomFilter: int optimalNumOfHashFunctions(long,long)>(l6, $l4) 
(define-const var3810 var2282 var2282-init) ; Statement: $r14 = new com.google.javascript.jscomp.jarjar.com.google.common.hash.BloomFilter 
(define-const var2268 var1438 var1438-init) ; Statement: $r13 = new com.google.javascript.jscomp.jarjar.com.google.common.hash.BloomFilterStrategies$LockFreeBitArray 
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var3859 var746) ; Statement: $r6 := @caughtexception 
(assert (not (= var3859 null-var746)))
(define-const var2747 var746 var746-init) ; Statement: $r16 = new java.lang.IllegalArgumentException 
(define-const var1104 String String-init) ; Statement: $r15 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1104)) ; Statement: specialinvoke $r15.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1104!1 String)
(assert (= var1104!1 ""))
(assert true)
(define-const var3437 String (append/672562846 var1104!1 "Could not create BloomFilter of ")) ; Statement: $r9 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Could not create BloomFilter of ") 
(declare-const var1104!2 String)
(assert (= var1104!2 (str.++ var1104!1 "Could not create BloomFilter of ")))
(assert true)
(define-const var250 String (append/-901862667 var3437 var1571)) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(long)>($l4) 
(declare-const var3437!1 String)
(assert (str.prefixof var3437 var3437!1))
(assert true)
(define-const var377 String (append/672562846 var250 " bits")) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" bits") 
(declare-const var250!1 String)
(assert (= var250!1 (str.++ var250 " bits")))
(assert true)
(define-const var343 String (toString/-2075883882 var377)) ; Statement: $r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-1425936906 var2747 var343 (cast-from-var746-to-var2173 var3859))) ; Statement: specialinvoke $r16.<java.lang.IllegalArgumentException: void <init>(java.lang.String,java.lang.Throwable)>($r12, $r6) 

(declare-const var2747!1 var746)
(declare-const var343!1 String)
(declare-const var3859!1 var746)
 ; Statement: throw $r16 
(check-sat)
(get-model)
(get-unsat-core)
; {var1707_checkNotNull/1446102589=([java.lang.Object], java.lang.Object), cast-from-var1425-to-var2391=([com.google.javascript.jscomp.jarjar.com.google.common.hash.Funnel], java.lang.Object), cast-from-Int-to-Int=([byte], int), var1707_checkArgument/-1708798671=([boolean, java.lang.String, long], void), Float64_valueOf/679560954=([double], java.lang.Double), var1707_checkArgument/1031231112=([boolean, java.lang.String, java.lang.Object], void), cast-from-Float64-to-var2391=([java.lang.Double], java.lang.Object), cast-from-var2684-to-var2391=([com.google.javascript.jscomp.jarjar.com.google.common.hash.BloomFilter$Strategy], java.lang.Object), var2282_optimalNumOfBits/-757143766=([long, double], long), var2282_optimalNumOfHashFunctions/-305668079=([long, long], int), var2282-init=([], com.google.javascript.jscomp.jarjar.com.google.common.hash.BloomFilter), var1438-init=([], com.google.javascript.jscomp.jarjar.com.google.common.hash.BloomFilterStrategies$LockFreeBitArray), var746-init=([], java.lang.IllegalArgumentException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-901862667=([java.lang.StringBuilder, long], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-1425936906=([java.lang.IllegalArgumentException, java.lang.String, java.lang.Throwable], void), cast-from-var746-to-var2173=([java.lang.IllegalArgumentException], java.lang.Throwable)}
; {var1425=com.google.javascript.jscomp.jarjar.com.google.common.hash.Funnel, var868=r0, var2631=l6, var417=d0, var2684=com.google.javascript.jscomp.jarjar.com.google.common.hash.BloomFilter$Strategy, var789=r3, var1707=com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions, var2391=java.lang.Object, var3796=$b0, var2722=$i7, var1894=$z0, var2151="Expected insertions (%s) must be >= 0", var515=$b1, var133=$i8, var849=$z1, var1964=$r1, var680="False positive probability (%s) must be > 0.0", var3789=$b2, var3682=$i9, var172=$z2, var1638=$r2, var2925="False positive probability (%s) must be < 1.0", var2455=$b3, var2282=com.google.javascript.jscomp.jarjar.com.google.common.hash.BloomFilter, var1571=$l4, var3971=$i5, var3810=$r14, var1438=com.google.javascript.jscomp.jarjar.com.google.common.hash.BloomFilterStrategies$LockFreeBitArray, var2268=$r13, var746=java.lang.IllegalArgumentException, var3859=$r6, var2747=$r16, var1104=$r15, var3437=$r9, var250=$r10, var377=$r11, var343=$r12, var2173=java.lang.Throwable}
; {com.google.javascript.jscomp.jarjar.com.google.common.hash.Funnel=var1425, r0=var868, l6=var2631, d0=var417, com.google.javascript.jscomp.jarjar.com.google.common.hash.BloomFilter$Strategy=var2684, r3=var789, com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions=var1707, java.lang.Object=var2391, $b0=var3796, $i7=var2722, $z0=var1894, "Expected insertions (%s) must be >= 0"=var2151, $b1=var515, $i8=var133, $z1=var849, $r1=var1964, "False positive probability (%s) must be > 0.0"=var680, $b2=var3789, $i9=var3682, $z2=var172, $r2=var1638, "False positive probability (%s) must be < 1.0"=var2925, $b3=var2455, com.google.javascript.jscomp.jarjar.com.google.common.hash.BloomFilter=var2282, $l4=var1571, $i5=var3971, $r14=var3810, com.google.javascript.jscomp.jarjar.com.google.common.hash.BloomFilterStrategies$LockFreeBitArray=var1438, $r13=var2268, java.lang.IllegalArgumentException=var746, $r6=var3859, $r16=var2747, $r15=var1104, $r9=var3437, $r10=var250, $r11=var377, $r12=var343, java.lang.Throwable=var2173}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(long)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(long)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @parameter0: com.google.javascript.jscomp.jarjar.com.google.common.hash.Funnel;	l6 := @parameter1: long;	d0 := @parameter2: double;	r3 := @parameter3: com.google.javascript.jscomp.jarjar.com.google.common.hash.BloomFilter$Strategy;	staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: java.lang.Object checkNotNull(java.lang.Object)>(r0);	$b0 = l6 cmp 0L;	$i7 = (int) $b0;	if $i7 < 0 goto $z0 = 0;	$z0 = 0;	staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: void checkArgument(boolean,java.lang.String,long)>($z0, "Expected insertions (%s) must be >= 0", l6);	$b1 = d0 cmpl 0.0;	$i8 = (int) $b1;	if $i8 <= 0 goto $z1 = 0;	$z1 = 1;	goto [?= $r1 = staticinvoke <java.lang.Double: java.lang.Double valueOf(double)>(d0)];	$r1 = staticinvoke <java.lang.Double: java.lang.Double valueOf(double)>(d0);	staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: void checkArgument(boolean,java.lang.String,java.lang.Object)>($z1, "False positive probability (%s) must be > 0.0", $r1);	$b2 = d0 cmpg 1.0;	$i9 = (int) $b2;	if $i9 >= 0 goto $z2 = 0;	$z2 = 0;	$r2 = staticinvoke <java.lang.Double: java.lang.Double valueOf(double)>(d0);	staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: void checkArgument(boolean,java.lang.String,java.lang.Object)>($z2, "False positive probability (%s) must be < 1.0", $r2);	staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: java.lang.Object checkNotNull(java.lang.Object)>(r3);	$b3 = l6 cmp 0L;	if $b3 != 0 goto $l4 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.hash.BloomFilter: long optimalNumOfBits(long,double)>(l6, d0);	$l4 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.hash.BloomFilter: long optimalNumOfBits(long,double)>(l6, d0);	$i5 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.hash.BloomFilter: int optimalNumOfHashFunctions(long,long)>(l6, $l4);	$r14 = new com.google.javascript.jscomp.jarjar.com.google.common.hash.BloomFilter;	$r13 = new com.google.javascript.jscomp.jarjar.com.google.common.hash.BloomFilterStrategies$LockFreeBitArray;	$r6 := @caughtexception;	$r16 = new java.lang.IllegalArgumentException;	$r15 = new java.lang.StringBuilder;	specialinvoke $r15.<java.lang.StringBuilder: void <init>()>();	$r9 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Could not create BloomFilter of ");	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(long)>($l4);	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" bits");	$r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r16.<java.lang.IllegalArgumentException: void <init>(java.lang.String,java.lang.Throwable)>($r12, $r6);	throw $r16
;block_num 9