(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1333 0)
(declare-sort var281 0)
(declare-sort var917 0)
(declare-sort var338 0)
(declare-sort var3069 0)
(declare-sort var3113 0)
(declare-sort var679 0)
(declare-sort var41 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var917_checkNotNull/1446102589 (var338) var338)
(declare-fun cast-from-var1333-to-var338 (var1333) var338)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun var917_checkArgument/-1708798671 (Bool String Int) void)
(declare-fun Float64_valueOf/679560954 (Float64) Float64)
(declare-fun var917_checkArgument/1031231112 (Bool String var338) void)
(declare-fun cast-from-Float64-to-var338 (Float64) var338)
(declare-fun cast-from-var281-to-var338 (var281) var338)
(declare-fun var3069_optimalNumOfBits/-757143766 (Int Float64) Int)
(declare-fun var3069_optimalNumOfHashFunctions/-305668079 (Int Int) Int)
(declare-fun var3069-init () var3069)
(declare-fun var3113-init () var3113)
(declare-fun var679-init () var679)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-901862667 (String Int) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-1425936906 (var679 String var41) void)
(declare-fun cast-from-var679-to-var41 (var679) var41)
(declare-const null-var1333 var1333)
(declare-const null-Int Int)
(declare-const null-Float64 Float64)
(declare-const null-var281 var281)
(declare-const null-var679 var679)
(declare-const var1423 var1333) ; Statement: r0 := @parameter0: com.google.javascript.jscomp.jarjar.com.google.common.hash.Funnel 
(assert (not (= var1423 null-var1333)))
(declare-const var3754 Int) ; Statement: l6 := @parameter1: long 
(assert (not (= var3754 null-Int)))
(declare-const var3269 Float64) ; Statement: d0 := @parameter2: double 
(assert (not (= var3269 null-Float64)))
(declare-const var1513 var281) ; Statement: r3 := @parameter3: com.google.javascript.jscomp.jarjar.com.google.common.hash.BloomFilter$Strategy 
(assert (not (= var1513 null-var281)))
;(assert (var917_checkNotNull/1446102589 (cast-from-var1333-to-var338 var1423))) ; Statement: staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: java.lang.Object checkNotNull(java.lang.Object)>(r0) 

(declare-const var1423!1 var1333)
(define-const var2200 Int (ite (> var3754 0) 1 (ite (< var3754 0) (- 1) 0))) ; Statement: $b0 = l6 cmp 0L 
(define-const var3504 Int (cast-from-Int-to-Int var2200)) ; Statement: $i7 = (int) $b0 
 ; Statement: if $i7 < 0 goto $z0 = 0 
(assert (not (< var3504 0))) ; Negate: Cond: $i7 < 0  
(define-const var3679 Bool (ite (= 1 1) true false)) ; Statement: $z0 = 1 
 ; Statement: goto [?= staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: void checkArgument(boolean,java.lang.String,long)>($z0, "Expected insertions (%s) must be >= 0", l6)] 
(assert true) ; Non Conditional
;(assert (var917_checkArgument/-1708798671 var3679 "Expected insertions (%s) must be >= 0" var3754)) ; Statement: staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: void checkArgument(boolean,java.lang.String,long)>($z0, "Expected insertions (%s) must be >= 0", l6) 

(declare-const var3679!1 Bool)
(declare-const var3464 String)
(declare-const var3754!1 Int)
(define-const var3238 Int (ite (fp.gt var3269 ((_ to_fp 11 53) #x0000000000000000)) 1 (ite (fp.lt var3269 ((_ to_fp 11 53) #x0000000000000000)) (- 1) 0))) ; Statement: $b1 = d0 cmpl 0.0 
(define-const var1093 Int (cast-from-Int-to-Int var3238)) ; Statement: $i8 = (int) $b1 
 ; Statement: if $i8 <= 0 goto $z1 = 0 
(assert (<= var1093 0)) ; Cond: $i8 <= 0 
(define-const var3852 Bool (ite (= 1 0) true false)) ; Statement: $z1 = 0 
(assert true) ; Non Conditional
(define-const var3759 Float64 (Float64_valueOf/679560954 var3269)) ; Statement: $r1 = staticinvoke <java.lang.Double: java.lang.Double valueOf(double)>(d0) 
;(assert (var917_checkArgument/1031231112 var3852 "False positive probability (%s) must be > 0.0" (cast-from-Float64-to-var338 var3759))) ; Statement: staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: void checkArgument(boolean,java.lang.String,java.lang.Object)>($z1, "False positive probability (%s) must be > 0.0", $r1) 

(declare-const var3852!1 Bool)
(declare-const var2683 String)
(declare-const var3759!1 Float64)
(define-const var2267 Int (ite (fp.gt var3269 ((_ to_fp 11 53) #x3ff0000000000000)) 1 (ite (fp.lt var3269 ((_ to_fp 11 53) #x3ff0000000000000)) (- 1) 0))) ; Statement: $b2 = d0 cmpg 1.0 
(define-const var3840 Int (cast-from-Int-to-Int var2267)) ; Statement: $i9 = (int) $b2 
 ; Statement: if $i9 >= 0 goto $z2 = 0 
(assert (not (>= var3840 0))) ; Negate: Cond: $i9 >= 0  
(define-const var1241 Bool (ite (= 1 1) true false)) ; Statement: $z2 = 1 
 ; Statement: goto [?= $r2 = staticinvoke <java.lang.Double: java.lang.Double valueOf(double)>(d0)] 
(assert true) ; Non Conditional
(define-const var3224 Float64 (Float64_valueOf/679560954 var3269)) ; Statement: $r2 = staticinvoke <java.lang.Double: java.lang.Double valueOf(double)>(d0) 
;(assert (var917_checkArgument/1031231112 var1241 "False positive probability (%s) must be < 1.0" (cast-from-Float64-to-var338 var3224))) ; Statement: staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: void checkArgument(boolean,java.lang.String,java.lang.Object)>($z2, "False positive probability (%s) must be < 1.0", $r2) 

(declare-const var1241!1 Bool)
(declare-const var1531 String)
(declare-const var3224!1 Float64)
;(assert (var917_checkNotNull/1446102589 (cast-from-var281-to-var338 var1513))) ; Statement: staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: java.lang.Object checkNotNull(java.lang.Object)>(r3) 

(declare-const var1513!1 var281)
(define-const var2754 Int (ite (> var3754!1 0) 1 (ite (< var3754!1 0) (- 1) 0))) ; Statement: $b3 = l6 cmp 0L 
 ; Statement: if $b3 != 0 goto $l4 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.hash.BloomFilter: long optimalNumOfBits(long,double)>(l6, d0) 
(assert (not (= var2754 0))) ; Cond: $b3 != 0 
(define-const var777 Int (var3069_optimalNumOfBits/-757143766 var3754!1 var3269)) ; Statement: $l4 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.hash.BloomFilter: long optimalNumOfBits(long,double)>(l6, d0) 
(define-const var132 Int (var3069_optimalNumOfHashFunctions/-305668079 var3754!1 var777)) ; Statement: $i5 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.hash.BloomFilter: int optimalNumOfHashFunctions(long,long)>(l6, $l4) 
(define-const var740 var3069 var3069-init) ; Statement: $r14 = new com.google.javascript.jscomp.jarjar.com.google.common.hash.BloomFilter 
(define-const var2196 var3113 var3113-init) ; Statement: $r13 = new com.google.javascript.jscomp.jarjar.com.google.common.hash.BloomFilterStrategies$LockFreeBitArray 
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var318 var679) ; Statement: $r6 := @caughtexception 
(assert (not (= var318 null-var679)))
(define-const var3715 var679 var679-init) ; Statement: $r16 = new java.lang.IllegalArgumentException 
(define-const var1208 String String-init) ; Statement: $r15 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1208)) ; Statement: specialinvoke $r15.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1208!1 String)
(assert (= var1208!1 ""))
(assert true)
(define-const var1715 String (append/672562846 var1208!1 "Could not create BloomFilter of ")) ; Statement: $r9 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Could not create BloomFilter of ") 
(declare-const var1208!2 String)
(assert (= var1208!2 (str.++ var1208!1 "Could not create BloomFilter of ")))
(assert true)
(define-const var2104 String (append/-901862667 var1715 var777)) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(long)>($l4) 
(declare-const var1715!1 String)
(assert (str.prefixof var1715 var1715!1))
(assert true)
(define-const var665 String (append/672562846 var2104 " bits")) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" bits") 
(declare-const var2104!1 String)
(assert (= var2104!1 (str.++ var2104 " bits")))
(assert true)
(define-const var979 String (toString/-2075883882 var665)) ; Statement: $r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-1425936906 var3715 var979 (cast-from-var679-to-var41 var318))) ; Statement: specialinvoke $r16.<java.lang.IllegalArgumentException: void <init>(java.lang.String,java.lang.Throwable)>($r12, $r6) 

(declare-const var3715!1 var679)
(declare-const var979!1 String)
(declare-const var318!1 var679)
 ; Statement: throw $r16 
(check-sat)
(get-model)
(get-unsat-core)
; {var917_checkNotNull/1446102589=([java.lang.Object], java.lang.Object), cast-from-var1333-to-var338=([com.google.javascript.jscomp.jarjar.com.google.common.hash.Funnel], java.lang.Object), cast-from-Int-to-Int=([byte], int), var917_checkArgument/-1708798671=([boolean, java.lang.String, long], void), Float64_valueOf/679560954=([double], java.lang.Double), var917_checkArgument/1031231112=([boolean, java.lang.String, java.lang.Object], void), cast-from-Float64-to-var338=([java.lang.Double], java.lang.Object), cast-from-var281-to-var338=([com.google.javascript.jscomp.jarjar.com.google.common.hash.BloomFilter$Strategy], java.lang.Object), var3069_optimalNumOfBits/-757143766=([long, double], long), var3069_optimalNumOfHashFunctions/-305668079=([long, long], int), var3069-init=([], com.google.javascript.jscomp.jarjar.com.google.common.hash.BloomFilter), var3113-init=([], com.google.javascript.jscomp.jarjar.com.google.common.hash.BloomFilterStrategies$LockFreeBitArray), var679-init=([], java.lang.IllegalArgumentException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-901862667=([java.lang.StringBuilder, long], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-1425936906=([java.lang.IllegalArgumentException, java.lang.String, java.lang.Throwable], void), cast-from-var679-to-var41=([java.lang.IllegalArgumentException], java.lang.Throwable)}
; {var1333=com.google.javascript.jscomp.jarjar.com.google.common.hash.Funnel, var1423=r0, var3754=l6, var3269=d0, var281=com.google.javascript.jscomp.jarjar.com.google.common.hash.BloomFilter$Strategy, var1513=r3, var917=com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions, var338=java.lang.Object, var2200=$b0, var3504=$i7, var3679=$z0, var3464="Expected insertions (%s) must be >= 0", var3238=$b1, var1093=$i8, var3852=$z1, var3759=$r1, var2683="False positive probability (%s) must be > 0.0", var2267=$b2, var3840=$i9, var1241=$z2, var3224=$r2, var1531="False positive probability (%s) must be < 1.0", var2754=$b3, var3069=com.google.javascript.jscomp.jarjar.com.google.common.hash.BloomFilter, var777=$l4, var132=$i5, var740=$r14, var3113=com.google.javascript.jscomp.jarjar.com.google.common.hash.BloomFilterStrategies$LockFreeBitArray, var2196=$r13, var679=java.lang.IllegalArgumentException, var318=$r6, var3715=$r16, var1208=$r15, var1715=$r9, var2104=$r10, var665=$r11, var979=$r12, var41=java.lang.Throwable}
; {com.google.javascript.jscomp.jarjar.com.google.common.hash.Funnel=var1333, r0=var1423, l6=var3754, d0=var3269, com.google.javascript.jscomp.jarjar.com.google.common.hash.BloomFilter$Strategy=var281, r3=var1513, com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions=var917, java.lang.Object=var338, $b0=var2200, $i7=var3504, $z0=var3679, "Expected insertions (%s) must be >= 0"=var3464, $b1=var3238, $i8=var1093, $z1=var3852, $r1=var3759, "False positive probability (%s) must be > 0.0"=var2683, $b2=var2267, $i9=var3840, $z2=var1241, $r2=var3224, "False positive probability (%s) must be < 1.0"=var1531, $b3=var2754, com.google.javascript.jscomp.jarjar.com.google.common.hash.BloomFilter=var3069, $l4=var777, $i5=var132, $r14=var740, com.google.javascript.jscomp.jarjar.com.google.common.hash.BloomFilterStrategies$LockFreeBitArray=var3113, $r13=var2196, java.lang.IllegalArgumentException=var679, $r6=var318, $r16=var3715, $r15=var1208, $r9=var1715, $r10=var2104, $r11=var665, $r12=var979, java.lang.Throwable=var41}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(long)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(long)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @parameter0: com.google.javascript.jscomp.jarjar.com.google.common.hash.Funnel;	l6 := @parameter1: long;	d0 := @parameter2: double;	r3 := @parameter3: com.google.javascript.jscomp.jarjar.com.google.common.hash.BloomFilter$Strategy;	staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: java.lang.Object checkNotNull(java.lang.Object)>(r0);	$b0 = l6 cmp 0L;	$i7 = (int) $b0;	if $i7 < 0 goto $z0 = 0;	$z0 = 1;	goto [?= staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: void checkArgument(boolean,java.lang.String,long)>($z0, "Expected insertions (%s) must be >= 0", l6)];	staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: void checkArgument(boolean,java.lang.String,long)>($z0, "Expected insertions (%s) must be >= 0", l6);	$b1 = d0 cmpl 0.0;	$i8 = (int) $b1;	if $i8 <= 0 goto $z1 = 0;	$z1 = 0;	$r1 = staticinvoke <java.lang.Double: java.lang.Double valueOf(double)>(d0);	staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: void checkArgument(boolean,java.lang.String,java.lang.Object)>($z1, "False positive probability (%s) must be > 0.0", $r1);	$b2 = d0 cmpg 1.0;	$i9 = (int) $b2;	if $i9 >= 0 goto $z2 = 0;	$z2 = 1;	goto [?= $r2 = staticinvoke <java.lang.Double: java.lang.Double valueOf(double)>(d0)];	$r2 = staticinvoke <java.lang.Double: java.lang.Double valueOf(double)>(d0);	staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: void checkArgument(boolean,java.lang.String,java.lang.Object)>($z2, "False positive probability (%s) must be < 1.0", $r2);	staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: java.lang.Object checkNotNull(java.lang.Object)>(r3);	$b3 = l6 cmp 0L;	if $b3 != 0 goto $l4 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.hash.BloomFilter: long optimalNumOfBits(long,double)>(l6, d0);	$l4 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.hash.BloomFilter: long optimalNumOfBits(long,double)>(l6, d0);	$i5 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.hash.BloomFilter: int optimalNumOfHashFunctions(long,long)>(l6, $l4);	$r14 = new com.google.javascript.jscomp.jarjar.com.google.common.hash.BloomFilter;	$r13 = new com.google.javascript.jscomp.jarjar.com.google.common.hash.BloomFilterStrategies$LockFreeBitArray;	$r6 := @caughtexception;	$r16 = new java.lang.IllegalArgumentException;	$r15 = new java.lang.StringBuilder;	specialinvoke $r15.<java.lang.StringBuilder: void <init>()>();	$r9 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Could not create BloomFilter of ");	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(long)>($l4);	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" bits");	$r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r16.<java.lang.IllegalArgumentException: void <init>(java.lang.String,java.lang.Throwable)>($r12, $r6);	throw $r16
;block_num 9