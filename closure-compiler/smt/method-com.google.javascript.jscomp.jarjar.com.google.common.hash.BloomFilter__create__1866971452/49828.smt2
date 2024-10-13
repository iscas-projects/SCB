(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2639 0)
(declare-sort var2375 0)
(declare-sort var1159 0)
(declare-sort var2920 0)
(declare-sort var2249 0)
(declare-sort var1858 0)
(declare-sort var2802 0)
(declare-sort var3162 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var1159_checkNotNull/1446102589 (var2920) var2920)
(declare-fun cast-from-var2639-to-var2920 (var2639) var2920)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun var1159_checkArgument/-1708798671 (Bool String Int) void)
(declare-fun Float64_valueOf/679560954 (Float64) Float64)
(declare-fun var1159_checkArgument/1031231112 (Bool String var2920) void)
(declare-fun cast-from-Float64-to-var2920 (Float64) var2920)
(declare-fun cast-from-var2375-to-var2920 (var2375) var2920)
(declare-fun var2249_optimalNumOfBits/-757143766 (Int Float64) Int)
(declare-fun var2249_optimalNumOfHashFunctions/-305668079 (Int Int) Int)
(declare-fun var2249-init () var2249)
(declare-fun var1858-init () var1858)
(declare-fun var2802-init () var2802)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-901862667 (String Int) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-1425936906 (var2802 String var3162) void)
(declare-fun cast-from-var2802-to-var3162 (var2802) var3162)
(declare-const null-var2639 var2639)
(declare-const null-Int Int)
(declare-const null-Float64 Float64)
(declare-const null-var2375 var2375)
(declare-const null-var2802 var2802)
(declare-const var2416 var2639) ; Statement: r0 := @parameter0: com.google.javascript.jscomp.jarjar.com.google.common.hash.Funnel 
(assert (not (= var2416 null-var2639)))
(declare-const var2241 Int) ; Statement: l6 := @parameter1: long 
(assert (not (= var2241 null-Int)))
(declare-const var2564 Float64) ; Statement: d0 := @parameter2: double 
(assert (not (= var2564 null-Float64)))
(declare-const var236 var2375) ; Statement: r3 := @parameter3: com.google.javascript.jscomp.jarjar.com.google.common.hash.BloomFilter$Strategy 
(assert (not (= var236 null-var2375)))
;(assert (var1159_checkNotNull/1446102589 (cast-from-var2639-to-var2920 var2416))) ; Statement: staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: java.lang.Object checkNotNull(java.lang.Object)>(r0) 

(declare-const var2416!1 var2639)
(define-const var896 Int (ite (> var2241 0) 1 (ite (< var2241 0) (- 1) 0))) ; Statement: $b0 = l6 cmp 0L 
(define-const var98 Int (cast-from-Int-to-Int var896)) ; Statement: $i7 = (int) $b0 
 ; Statement: if $i7 < 0 goto $z0 = 0 
(assert (< var98 0)) ; Cond: $i7 < 0 
(define-const var2286 Bool (ite (= 1 0) true false)) ; Statement: $z0 = 0 
(assert true) ; Non Conditional
;(assert (var1159_checkArgument/-1708798671 var2286 "Expected insertions (%s) must be >= 0" var2241)) ; Statement: staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: void checkArgument(boolean,java.lang.String,long)>($z0, "Expected insertions (%s) must be >= 0", l6) 

(declare-const var2286!1 Bool)
(declare-const var1203 String)
(declare-const var2241!1 Int)
(define-const var3435 Int (ite (fp.gt var2564 ((_ to_fp 11 53) #x0000000000000000)) 1 (ite (fp.lt var2564 ((_ to_fp 11 53) #x0000000000000000)) (- 1) 0))) ; Statement: $b1 = d0 cmpl 0.0 
(define-const var64 Int (cast-from-Int-to-Int var3435)) ; Statement: $i8 = (int) $b1 
 ; Statement: if $i8 <= 0 goto $z1 = 0 
(assert (not (<= var64 0))) ; Negate: Cond: $i8 <= 0  
(define-const var1624 Bool (ite (= 1 1) true false)) ; Statement: $z1 = 1 
 ; Statement: goto [?= $r1 = staticinvoke <java.lang.Double: java.lang.Double valueOf(double)>(d0)] 
(assert true) ; Non Conditional
(define-const var1965 Float64 (Float64_valueOf/679560954 var2564)) ; Statement: $r1 = staticinvoke <java.lang.Double: java.lang.Double valueOf(double)>(d0) 
;(assert (var1159_checkArgument/1031231112 var1624 "False positive probability (%s) must be > 0.0" (cast-from-Float64-to-var2920 var1965))) ; Statement: staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: void checkArgument(boolean,java.lang.String,java.lang.Object)>($z1, "False positive probability (%s) must be > 0.0", $r1) 

(declare-const var1624!1 Bool)
(declare-const var2480 String)
(declare-const var1965!1 Float64)
(define-const var2422 Int (ite (fp.gt var2564 ((_ to_fp 11 53) #x3ff0000000000000)) 1 (ite (fp.lt var2564 ((_ to_fp 11 53) #x3ff0000000000000)) (- 1) 0))) ; Statement: $b2 = d0 cmpg 1.0 
(define-const var1748 Int (cast-from-Int-to-Int var2422)) ; Statement: $i9 = (int) $b2 
 ; Statement: if $i9 >= 0 goto $z2 = 0 
(assert (not (>= var1748 0))) ; Negate: Cond: $i9 >= 0  
(define-const var3896 Bool (ite (= 1 1) true false)) ; Statement: $z2 = 1 
 ; Statement: goto [?= $r2 = staticinvoke <java.lang.Double: java.lang.Double valueOf(double)>(d0)] 
(assert true) ; Non Conditional
(define-const var23 Float64 (Float64_valueOf/679560954 var2564)) ; Statement: $r2 = staticinvoke <java.lang.Double: java.lang.Double valueOf(double)>(d0) 
;(assert (var1159_checkArgument/1031231112 var3896 "False positive probability (%s) must be < 1.0" (cast-from-Float64-to-var2920 var23))) ; Statement: staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: void checkArgument(boolean,java.lang.String,java.lang.Object)>($z2, "False positive probability (%s) must be < 1.0", $r2) 

(declare-const var3896!1 Bool)
(declare-const var29 String)
(declare-const var23!1 Float64)
;(assert (var1159_checkNotNull/1446102589 (cast-from-var2375-to-var2920 var236))) ; Statement: staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: java.lang.Object checkNotNull(java.lang.Object)>(r3) 

(declare-const var236!1 var2375)
(define-const var3158 Int (ite (> var2241!1 0) 1 (ite (< var2241!1 0) (- 1) 0))) ; Statement: $b3 = l6 cmp 0L 
 ; Statement: if $b3 != 0 goto $l4 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.hash.BloomFilter: long optimalNumOfBits(long,double)>(l6, d0) 
(assert (not (= var3158 0))) ; Cond: $b3 != 0 
(define-const var117 Int (var2249_optimalNumOfBits/-757143766 var2241!1 var2564)) ; Statement: $l4 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.hash.BloomFilter: long optimalNumOfBits(long,double)>(l6, d0) 
(define-const var3286 Int (var2249_optimalNumOfHashFunctions/-305668079 var2241!1 var117)) ; Statement: $i5 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.hash.BloomFilter: int optimalNumOfHashFunctions(long,long)>(l6, $l4) 
(define-const var527 var2249 var2249-init) ; Statement: $r14 = new com.google.javascript.jscomp.jarjar.com.google.common.hash.BloomFilter 
(define-const var1530 var1858 var1858-init) ; Statement: $r13 = new com.google.javascript.jscomp.jarjar.com.google.common.hash.BloomFilterStrategies$LockFreeBitArray 
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var176 var2802) ; Statement: $r6 := @caughtexception 
(assert (not (= var176 null-var2802)))
(define-const var1234 var2802 var2802-init) ; Statement: $r16 = new java.lang.IllegalArgumentException 
(define-const var1032 String String-init) ; Statement: $r15 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1032)) ; Statement: specialinvoke $r15.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1032!1 String)
(assert (= var1032!1 ""))
(assert true)
(define-const var3140 String (append/672562846 var1032!1 "Could not create BloomFilter of ")) ; Statement: $r9 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Could not create BloomFilter of ") 
(declare-const var1032!2 String)
(assert (= var1032!2 (str.++ var1032!1 "Could not create BloomFilter of ")))
(assert true)
(define-const var1400 String (append/-901862667 var3140 var117)) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(long)>($l4) 
(declare-const var3140!1 String)
(assert (str.prefixof var3140 var3140!1))
(assert true)
(define-const var3492 String (append/672562846 var1400 " bits")) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" bits") 
(declare-const var1400!1 String)
(assert (= var1400!1 (str.++ var1400 " bits")))
(assert true)
(define-const var2606 String (toString/-2075883882 var3492)) ; Statement: $r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-1425936906 var1234 var2606 (cast-from-var2802-to-var3162 var176))) ; Statement: specialinvoke $r16.<java.lang.IllegalArgumentException: void <init>(java.lang.String,java.lang.Throwable)>($r12, $r6) 

(declare-const var1234!1 var2802)
(declare-const var2606!1 String)
(declare-const var176!1 var2802)
 ; Statement: throw $r16 
(check-sat)
(get-model)
(get-unsat-core)
; {var1159_checkNotNull/1446102589=([java.lang.Object], java.lang.Object), cast-from-var2639-to-var2920=([com.google.javascript.jscomp.jarjar.com.google.common.hash.Funnel], java.lang.Object), cast-from-Int-to-Int=([byte], int), var1159_checkArgument/-1708798671=([boolean, java.lang.String, long], void), Float64_valueOf/679560954=([double], java.lang.Double), var1159_checkArgument/1031231112=([boolean, java.lang.String, java.lang.Object], void), cast-from-Float64-to-var2920=([java.lang.Double], java.lang.Object), cast-from-var2375-to-var2920=([com.google.javascript.jscomp.jarjar.com.google.common.hash.BloomFilter$Strategy], java.lang.Object), var2249_optimalNumOfBits/-757143766=([long, double], long), var2249_optimalNumOfHashFunctions/-305668079=([long, long], int), var2249-init=([], com.google.javascript.jscomp.jarjar.com.google.common.hash.BloomFilter), var1858-init=([], com.google.javascript.jscomp.jarjar.com.google.common.hash.BloomFilterStrategies$LockFreeBitArray), var2802-init=([], java.lang.IllegalArgumentException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-901862667=([java.lang.StringBuilder, long], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-1425936906=([java.lang.IllegalArgumentException, java.lang.String, java.lang.Throwable], void), cast-from-var2802-to-var3162=([java.lang.IllegalArgumentException], java.lang.Throwable)}
; {var2639=com.google.javascript.jscomp.jarjar.com.google.common.hash.Funnel, var2416=r0, var2241=l6, var2564=d0, var2375=com.google.javascript.jscomp.jarjar.com.google.common.hash.BloomFilter$Strategy, var236=r3, var1159=com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions, var2920=java.lang.Object, var896=$b0, var98=$i7, var2286=$z0, var1203="Expected insertions (%s) must be >= 0", var3435=$b1, var64=$i8, var1624=$z1, var1965=$r1, var2480="False positive probability (%s) must be > 0.0", var2422=$b2, var1748=$i9, var3896=$z2, var23=$r2, var29="False positive probability (%s) must be < 1.0", var3158=$b3, var2249=com.google.javascript.jscomp.jarjar.com.google.common.hash.BloomFilter, var117=$l4, var3286=$i5, var527=$r14, var1858=com.google.javascript.jscomp.jarjar.com.google.common.hash.BloomFilterStrategies$LockFreeBitArray, var1530=$r13, var2802=java.lang.IllegalArgumentException, var176=$r6, var1234=$r16, var1032=$r15, var3140=$r9, var1400=$r10, var3492=$r11, var2606=$r12, var3162=java.lang.Throwable}
; {com.google.javascript.jscomp.jarjar.com.google.common.hash.Funnel=var2639, r0=var2416, l6=var2241, d0=var2564, com.google.javascript.jscomp.jarjar.com.google.common.hash.BloomFilter$Strategy=var2375, r3=var236, com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions=var1159, java.lang.Object=var2920, $b0=var896, $i7=var98, $z0=var2286, "Expected insertions (%s) must be >= 0"=var1203, $b1=var3435, $i8=var64, $z1=var1624, $r1=var1965, "False positive probability (%s) must be > 0.0"=var2480, $b2=var2422, $i9=var1748, $z2=var3896, $r2=var23, "False positive probability (%s) must be < 1.0"=var29, $b3=var3158, com.google.javascript.jscomp.jarjar.com.google.common.hash.BloomFilter=var2249, $l4=var117, $i5=var3286, $r14=var527, com.google.javascript.jscomp.jarjar.com.google.common.hash.BloomFilterStrategies$LockFreeBitArray=var1858, $r13=var1530, java.lang.IllegalArgumentException=var2802, $r6=var176, $r16=var1234, $r15=var1032, $r9=var3140, $r10=var1400, $r11=var3492, $r12=var2606, java.lang.Throwable=var3162}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(long)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(long)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @parameter0: com.google.javascript.jscomp.jarjar.com.google.common.hash.Funnel;	l6 := @parameter1: long;	d0 := @parameter2: double;	r3 := @parameter3: com.google.javascript.jscomp.jarjar.com.google.common.hash.BloomFilter$Strategy;	staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: java.lang.Object checkNotNull(java.lang.Object)>(r0);	$b0 = l6 cmp 0L;	$i7 = (int) $b0;	if $i7 < 0 goto $z0 = 0;	$z0 = 0;	staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: void checkArgument(boolean,java.lang.String,long)>($z0, "Expected insertions (%s) must be >= 0", l6);	$b1 = d0 cmpl 0.0;	$i8 = (int) $b1;	if $i8 <= 0 goto $z1 = 0;	$z1 = 1;	goto [?= $r1 = staticinvoke <java.lang.Double: java.lang.Double valueOf(double)>(d0)];	$r1 = staticinvoke <java.lang.Double: java.lang.Double valueOf(double)>(d0);	staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: void checkArgument(boolean,java.lang.String,java.lang.Object)>($z1, "False positive probability (%s) must be > 0.0", $r1);	$b2 = d0 cmpg 1.0;	$i9 = (int) $b2;	if $i9 >= 0 goto $z2 = 0;	$z2 = 1;	goto [?= $r2 = staticinvoke <java.lang.Double: java.lang.Double valueOf(double)>(d0)];	$r2 = staticinvoke <java.lang.Double: java.lang.Double valueOf(double)>(d0);	staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: void checkArgument(boolean,java.lang.String,java.lang.Object)>($z2, "False positive probability (%s) must be < 1.0", $r2);	staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: java.lang.Object checkNotNull(java.lang.Object)>(r3);	$b3 = l6 cmp 0L;	if $b3 != 0 goto $l4 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.hash.BloomFilter: long optimalNumOfBits(long,double)>(l6, d0);	$l4 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.hash.BloomFilter: long optimalNumOfBits(long,double)>(l6, d0);	$i5 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.hash.BloomFilter: int optimalNumOfHashFunctions(long,long)>(l6, $l4);	$r14 = new com.google.javascript.jscomp.jarjar.com.google.common.hash.BloomFilter;	$r13 = new com.google.javascript.jscomp.jarjar.com.google.common.hash.BloomFilterStrategies$LockFreeBitArray;	$r6 := @caughtexception;	$r16 = new java.lang.IllegalArgumentException;	$r15 = new java.lang.StringBuilder;	specialinvoke $r15.<java.lang.StringBuilder: void <init>()>();	$r9 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Could not create BloomFilter of ");	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(long)>($l4);	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" bits");	$r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r16.<java.lang.IllegalArgumentException: void <init>(java.lang.String,java.lang.Throwable)>($r12, $r6);	throw $r16
;block_num 9