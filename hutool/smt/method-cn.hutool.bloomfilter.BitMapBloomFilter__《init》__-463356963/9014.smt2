(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var303 0)
(declare-sort var2235 0)
(declare-sort var2516 0)
(declare-sort var2250 0)
(declare-sort var2719 0)
(declare-sort var3948 0)
(declare-sort var3202 0)
(declare-sort var247 0)
(declare-sort var324 0)
(declare-sort var3063 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun <init>/-279557996 (var2235) void)
(declare-fun cast-from-var303-to-var2235 (var303) var2235)
(declare-fun String_valueOf/1240665136 (Int) String)
(declare-fun var2250_div/1254588709 (String String) var2516)
(declare-fun longValue/1479547103 (var2516) Int)
(declare-fun arr-var2719-init () (Array Int var2719))
(declare-fun var3948-init () var3948)
(declare-fun <init>/-624517767 (var3948 Int) void)
(declare-fun cast-from-var3948-to-var2719 (var3948) var2719)
(declare-fun var3202-init () var3202)
(declare-fun <init>/1462049239 (var3202 Int) void)
(declare-fun cast-from-var3202-to-var2719 (var3202) var2719)
(declare-fun var247-init () var247)
(declare-fun <init>/609791427 (var247 Int) void)
(declare-fun cast-from-var247-to-var2719 (var247) var2719)
(declare-fun var324-init () var324)
(declare-fun <init>/173275509 (var324 Int) void)
(declare-fun cast-from-var324-to-var2719 (var324) var2719)
(declare-fun var3063-init () var3063)
(declare-fun <init>/1863479510 (var3063 Int) void)
(declare-fun cast-from-var3063-to-var2719 (var3063) var2719)
(declare-fun filters/472659 (var303) (Array Int var2719))
(declare-const null-var303 var303)
(declare-const null-Int Int)
(declare-const null-__Array__Int__var2719__ (Array Int var2719))
(declare-const var2526 var303) ; Statement: r0 := @this: cn.hutool.bloomfilter.BitMapBloomFilter 
(assert (not (= var2526 null-var303)))
(declare-const var346 Int) ; Statement: i0 := @parameter0: int 
(assert (not (= var346 null-Int)))
(assert true)
;(assert (<init>/-279557996 (cast-from-var303-to-var2235 var2526))) ; Statement: specialinvoke r0.<java.lang.Object: void <init>()>() 

(declare-const var2526!1 var303)
(define-const var2485 String (String_valueOf/1240665136 var346)) ; Statement: $r2 = staticinvoke <java.lang.String: java.lang.String valueOf(int)>(i0) 
(define-const var2818 String (String_valueOf/1240665136 5)) ; Statement: $r1 = staticinvoke <java.lang.String: java.lang.String valueOf(int)>(5) 
(define-const var740 var2516 (var2250_div/1254588709 var2485 var2818)) ; Statement: $r3 = staticinvoke <cn.hutool.core.util.NumberUtil: java.math.BigDecimal div(java.lang.String,java.lang.String)>($r2, $r1) 
(assert true)
(define-const var1308 Int (longValue/1479547103 var740)) ; Statement: l1 = virtualinvoke $r3.<java.math.BigDecimal: long longValue()>() 
(define-const var993 Int (* var1308 1024)) ; Statement: $l2 = l1 * 1024L 
(define-const var3923 Int (* var993 1024)) ; Statement: $l3 = $l2 * 1024L 
(define-const var3978 Int (* var3923 8)) ; Statement: l4 = $l3 * 8L 
(define-const var2006 (Array Int var2719) arr-var2719-init) ; Statement: $r4 = newarray (cn.hutool.bloomfilter.BloomFilter)[5] 
(define-const var3625 var3948 var3948-init) ; Statement: $r5 = new cn.hutool.bloomfilter.filter.DefaultFilter 
(assert true)
;(assert (<init>/-624517767 var3625 var3978)) ; Statement: specialinvoke $r5.<cn.hutool.bloomfilter.filter.DefaultFilter: void <init>(long)>(l4) 

(declare-const var3625!1 var3948)
(declare-const var3978!1 Int)
(declare-const var2006!1 (Array Int var2719))
(assert (not (= var2006!1 null-__Array__Int__var2719__)))
(assert (= (select var2006!1 0) (cast-from-var3948-to-var2719 var3625!1))) ; Statement: $r4[0] = $r5 
(define-const var3361 var3202 var3202-init) ; Statement: $r6 = new cn.hutool.bloomfilter.filter.ELFFilter 
(assert true)
;(assert (<init>/1462049239 var3361 var3978!1)) ; Statement: specialinvoke $r6.<cn.hutool.bloomfilter.filter.ELFFilter: void <init>(long)>(l4) 

(declare-const var3361!1 var3202)
(declare-const var3978!2 Int)
(declare-const var2006!2 (Array Int var2719))
(assert (not (= var2006!2 null-__Array__Int__var2719__)))
(assert (= (select var2006!2 1) (cast-from-var3202-to-var2719 var3361!1))) ; Statement: $r4[1] = $r6 
(define-const var2936 var247 var247-init) ; Statement: $r7 = new cn.hutool.bloomfilter.filter.JSFilter 
(assert true)
;(assert (<init>/609791427 var2936 var3978!2)) ; Statement: specialinvoke $r7.<cn.hutool.bloomfilter.filter.JSFilter: void <init>(long)>(l4) 

(declare-const var2936!1 var247)
(declare-const var3978!3 Int)
(declare-const var2006!3 (Array Int var2719))
(assert (not (= var2006!3 null-__Array__Int__var2719__)))
(assert (= (select var2006!3 2) (cast-from-var247-to-var2719 var2936!1))) ; Statement: $r4[2] = $r7 
(define-const var1446 var324 var324-init) ; Statement: $r8 = new cn.hutool.bloomfilter.filter.PJWFilter 
(assert true)
;(assert (<init>/173275509 var1446 var3978!3)) ; Statement: specialinvoke $r8.<cn.hutool.bloomfilter.filter.PJWFilter: void <init>(long)>(l4) 

(declare-const var1446!1 var324)
(declare-const var3978!4 Int)
(declare-const var2006!4 (Array Int var2719))
(assert (not (= var2006!4 null-__Array__Int__var2719__)))
(assert (= (select var2006!4 3) (cast-from-var324-to-var2719 var1446!1))) ; Statement: $r4[3] = $r8 
(define-const var3440 var3063 var3063-init) ; Statement: $r9 = new cn.hutool.bloomfilter.filter.SDBMFilter 
(assert true)
;(assert (<init>/1863479510 var3440 var3978!4)) ; Statement: specialinvoke $r9.<cn.hutool.bloomfilter.filter.SDBMFilter: void <init>(long)>(l4) 

(declare-const var3440!1 var3063)
(declare-const var3978!5 Int)
(declare-const var2006!5 (Array Int var2719))
(assert (not (= var2006!5 null-__Array__Int__var2719__)))
(assert (= (select var2006!5 4) (cast-from-var3063-to-var2719 var3440!1))) ; Statement: $r4[4] = $r9 
(declare-const var2526!2 var303)
(assert (not (= var2526!2 null-var303)))
(assert (= (filters/472659 var2526!2) var2006!5)) ; Statement: r0.<cn.hutool.bloomfilter.BitMapBloomFilter: cn.hutool.bloomfilter.BloomFilter[] filters> = $r4 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {<init>/-279557996=([java.lang.Object], void), cast-from-var303-to-var2235=([cn.hutool.bloomfilter.BitMapBloomFilter], java.lang.Object), String_valueOf/1240665136=([int], java.lang.String), var2250_div/1254588709=([java.lang.String, java.lang.String], java.math.BigDecimal), longValue/1479547103=([java.math.BigDecimal], long), arr-var2719-init=([], cn.hutool.bloomfilter.BloomFilter[]), var3948-init=([], cn.hutool.bloomfilter.filter.DefaultFilter), <init>/-624517767=([cn.hutool.bloomfilter.filter.DefaultFilter, long], void), cast-from-var3948-to-var2719=([cn.hutool.bloomfilter.filter.DefaultFilter], cn.hutool.bloomfilter.BloomFilter), var3202-init=([], cn.hutool.bloomfilter.filter.ELFFilter), <init>/1462049239=([cn.hutool.bloomfilter.filter.ELFFilter, long], void), cast-from-var3202-to-var2719=([cn.hutool.bloomfilter.filter.ELFFilter], cn.hutool.bloomfilter.BloomFilter), var247-init=([], cn.hutool.bloomfilter.filter.JSFilter), <init>/609791427=([cn.hutool.bloomfilter.filter.JSFilter, long], void), cast-from-var247-to-var2719=([cn.hutool.bloomfilter.filter.JSFilter], cn.hutool.bloomfilter.BloomFilter), var324-init=([], cn.hutool.bloomfilter.filter.PJWFilter), <init>/173275509=([cn.hutool.bloomfilter.filter.PJWFilter, long], void), cast-from-var324-to-var2719=([cn.hutool.bloomfilter.filter.PJWFilter], cn.hutool.bloomfilter.BloomFilter), var3063-init=([], cn.hutool.bloomfilter.filter.SDBMFilter), <init>/1863479510=([cn.hutool.bloomfilter.filter.SDBMFilter, long], void), cast-from-var3063-to-var2719=([cn.hutool.bloomfilter.filter.SDBMFilter], cn.hutool.bloomfilter.BloomFilter), filters/472659=([cn.hutool.bloomfilter.BitMapBloomFilter], cn.hutool.bloomfilter.BloomFilter[])}
; {var303=cn.hutool.bloomfilter.BitMapBloomFilter, var2526=r0, var346=i0, var2235=java.lang.Object, var2485=$r2, var2818=$r1, var2516=java.math.BigDecimal, var2250=cn.hutool.core.util.NumberUtil, var740=$r3, var1308=l1, var993=$l2, var3923=$l3, var3978=l4, var2719=cn.hutool.bloomfilter.BloomFilter, var2006=$r4, var3948=cn.hutool.bloomfilter.filter.DefaultFilter, var3625=$r5, var3202=cn.hutool.bloomfilter.filter.ELFFilter, var3361=$r6, var247=cn.hutool.bloomfilter.filter.JSFilter, var2936=$r7, var324=cn.hutool.bloomfilter.filter.PJWFilter, var1446=$r8, var3063=cn.hutool.bloomfilter.filter.SDBMFilter, var3440=$r9}
; {cn.hutool.bloomfilter.BitMapBloomFilter=var303, r0=var2526, i0=var346, java.lang.Object=var2235, $r2=var2485, $r1=var2818, java.math.BigDecimal=var2516, cn.hutool.core.util.NumberUtil=var2250, $r3=var740, l1=var1308, $l2=var993, $l3=var3923, l4=var3978, cn.hutool.bloomfilter.BloomFilter=var2719, $r4=var2006, cn.hutool.bloomfilter.filter.DefaultFilter=var3948, $r5=var3625, cn.hutool.bloomfilter.filter.ELFFilter=var3202, $r6=var3361, cn.hutool.bloomfilter.filter.JSFilter=var247, $r7=var2936, cn.hutool.bloomfilter.filter.PJWFilter=var324, $r8=var1446, cn.hutool.bloomfilter.filter.SDBMFilter=var3063, $r9=var3440}
;seq <java.lang.String: java.lang.String valueOf(int)>;	<java.lang.String: java.lang.String valueOf(int)>
;cnt {"<java.lang.String: java.lang.String valueOf(int)>": 2}
;stmts r0 := @this: cn.hutool.bloomfilter.BitMapBloomFilter;	i0 := @parameter0: int;	specialinvoke r0.<java.lang.Object: void <init>()>();	$r2 = staticinvoke <java.lang.String: java.lang.String valueOf(int)>(i0);	$r1 = staticinvoke <java.lang.String: java.lang.String valueOf(int)>(5);	$r3 = staticinvoke <cn.hutool.core.util.NumberUtil: java.math.BigDecimal div(java.lang.String,java.lang.String)>($r2, $r1);	l1 = virtualinvoke $r3.<java.math.BigDecimal: long longValue()>();	$l2 = l1 * 1024L;	$l3 = $l2 * 1024L;	l4 = $l3 * 8L;	$r4 = newarray (cn.hutool.bloomfilter.BloomFilter)[5];	$r5 = new cn.hutool.bloomfilter.filter.DefaultFilter;	specialinvoke $r5.<cn.hutool.bloomfilter.filter.DefaultFilter: void <init>(long)>(l4);	$r4[0] = $r5;	$r6 = new cn.hutool.bloomfilter.filter.ELFFilter;	specialinvoke $r6.<cn.hutool.bloomfilter.filter.ELFFilter: void <init>(long)>(l4);	$r4[1] = $r6;	$r7 = new cn.hutool.bloomfilter.filter.JSFilter;	specialinvoke $r7.<cn.hutool.bloomfilter.filter.JSFilter: void <init>(long)>(l4);	$r4[2] = $r7;	$r8 = new cn.hutool.bloomfilter.filter.PJWFilter;	specialinvoke $r8.<cn.hutool.bloomfilter.filter.PJWFilter: void <init>(long)>(l4);	$r4[3] = $r8;	$r9 = new cn.hutool.bloomfilter.filter.SDBMFilter;	specialinvoke $r9.<cn.hutool.bloomfilter.filter.SDBMFilter: void <init>(long)>(l4);	$r4[4] = $r9;	r0.<cn.hutool.bloomfilter.BitMapBloomFilter: cn.hutool.bloomfilter.BloomFilter[] filters> = $r4;	return
;block_num 1