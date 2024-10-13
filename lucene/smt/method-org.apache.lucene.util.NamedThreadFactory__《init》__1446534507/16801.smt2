(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1761 0)
(declare-sort var3441 0)
(declare-sort var1098 0)
(declare-sort var24 0)
(declare-sort var3598 0)
(declare-sort var1843 0)
(declare-sort var3362 0)
(declare-sort var2273 0)
(declare-sort var641 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun <init>/-279557996 (var1098) void)
(declare-fun cast-from-var1761-to-var1098 (var1761) var1098)
(declare-fun var24-init () var24)
(declare-fun <init>/2144030345 (var24 Int) void)
(declare-fun threadNumber/-1558652867 (var1761) var24)
(declare-fun var1843_getSecurityManager/-1522955590 () var3598)
(declare-fun var3362_currentThread/-1037784612 () var3362)
(declare-fun getThreadGroup/821017279 (var3362) var2273)
(declare-fun group/-1558652867 (var1761) var2273)
(declare-fun arr-var1098-init () (Array Int var1098))
(declare-fun var1761_checkPrefix/652062812 (String) String)
(declare-fun cast-from-String-to-var1098 (String) var1098)
(declare-fun getAndIncrement/-721914959 (var24) Int)
(declare-fun Int_valueOf/-1371140006 (Int) Int)
(declare-fun cast-from-Int-to-var1098 (Int) var1098)
(declare-fun String_format/-647569892 (var641 String (Array Int var1098)) String)
(declare-fun threadNamePrefix/-1558652867 (var1761) String)
(declare-const null-var1761 var1761)
(declare-const null-String String)
(declare-const null-var3598 var3598)
(declare-const var641-ROOT var641)
(declare-const null-__Array__Int__var1098__ (Array Int var1098))
(declare-const var1761-threadPoolNumber var24)
(declare-const var302 var1761) ; Statement: r0 := @this: org.apache.lucene.util.NamedThreadFactory 
(assert (not (= var302 null-var1761)))
(declare-const var3448 String) ; Statement: r5 := @parameter0: java.lang.String 
(assert (not (= var3448 null-String)))
(assert true)
;(assert (<init>/-279557996 (cast-from-var1761-to-var1098 var302))) ; Statement: specialinvoke r0.<java.lang.Object: void <init>()>() 

(declare-const var302!1 var1761)
(define-const var3488 var24 var24-init) ; Statement: $r1 = new java.util.concurrent.atomic.AtomicInteger 
(assert true)
;(assert (<init>/2144030345 var3488 1)) ; Statement: specialinvoke $r1.<java.util.concurrent.atomic.AtomicInteger: void <init>(int)>(1) 

(declare-const var3488!1 var24)
(declare-const var1245 Int)
(declare-const var302!2 var1761)
(assert (not (= var302!2 null-var1761)))
(assert (= (threadNumber/-1558652867 var302!2) var3488!1)) ; Statement: r0.<org.apache.lucene.util.NamedThreadFactory: java.util.concurrent.atomic.AtomicInteger threadNumber> = $r1 
(define-const var2234 var3598 var1843_getSecurityManager/-1522955590) ; Statement: r2 = staticinvoke <java.lang.System: java.lang.SecurityManager getSecurityManager()>() 
 ; Statement: if r2 == null goto $r3 = staticinvoke <java.lang.Thread: java.lang.Thread currentThread()>() 
(assert (= var2234 null-var3598)) ; Cond: r2 == null 
(define-const var166 var3362 var3362_currentThread/-1037784612) ; Statement: $r3 = staticinvoke <java.lang.Thread: java.lang.Thread currentThread()>() 
(assert true)
(define-const var3915 var2273 (getThreadGroup/821017279 var166)) ; Statement: $r11 = virtualinvoke $r3.<java.lang.Thread: java.lang.ThreadGroup getThreadGroup()>() 
(assert true) ; Non Conditional
(declare-const var302!3 var1761)
(assert (not (= var302!3 null-var1761)))
(assert (= (group/-1558652867 var302!3) var3915)) ; Statement: r0.<org.apache.lucene.util.NamedThreadFactory: java.lang.ThreadGroup group> = $r11 
(define-const var1960 var641 var641-ROOT) ; Statement: $r6 = <java.util.Locale: java.util.Locale ROOT> 
(define-const var2178 (Array Int var1098) arr-var1098-init) ; Statement: $r4 = newarray (java.lang.Object)[2] 
(define-const var3625 String (var1761_checkPrefix/652062812 var3448)) ; Statement: $r7 = staticinvoke <org.apache.lucene.util.NamedThreadFactory: java.lang.String checkPrefix(java.lang.String)>(r5) 
(declare-const var2178!1 (Array Int var1098))
(assert (not (= var2178!1 null-__Array__Int__var1098__)))
(assert (= (select var2178!1 0) (cast-from-String-to-var1098 var3625))) ; Statement: $r4[0] = $r7 
(define-const var2231 var24 var1761-threadPoolNumber) ; Statement: $r8 = <org.apache.lucene.util.NamedThreadFactory: java.util.concurrent.atomic.AtomicInteger threadPoolNumber> 
(assert true)
(define-const var2400 Int (getAndIncrement/-721914959 var2231)) ; Statement: $i0 = virtualinvoke $r8.<java.util.concurrent.atomic.AtomicInteger: int getAndIncrement()>() 
(define-const var1829 Int (Int_valueOf/-1371140006 var2400)) ; Statement: $r9 = staticinvoke <java.lang.Integer: java.lang.Integer valueOf(int)>($i0) 
(declare-const var2178!2 (Array Int var1098))
(assert (not (= var2178!2 null-__Array__Int__var1098__)))
(assert (= (select var2178!2 1) (cast-from-Int-to-var1098 var1829))) ; Statement: $r4[1] = $r9 
(define-const var1740 String (String_format/-647569892 var1960 "%s-%d-thread" var2178!2)) ; Statement: $r10 = staticinvoke <java.lang.String: java.lang.String format(java.util.Locale,java.lang.String,java.lang.Object[])>($r6, "%s-%d-thread", $r4) 
(declare-const var302!4 var1761)
(assert (not (= var302!4 null-var1761)))
(assert (= (threadNamePrefix/-1558652867 var302!4) var1740)) ; Statement: r0.<org.apache.lucene.util.NamedThreadFactory: java.lang.String threadNamePrefix> = $r10 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {<init>/-279557996=([java.lang.Object], void), cast-from-var1761-to-var1098=([org.apache.lucene.util.NamedThreadFactory], java.lang.Object), var24-init=([], java.util.concurrent.atomic.AtomicInteger), <init>/2144030345=([java.util.concurrent.atomic.AtomicInteger, int], void), threadNumber/-1558652867=([org.apache.lucene.util.NamedThreadFactory], java.util.concurrent.atomic.AtomicInteger), var1843_getSecurityManager/-1522955590=([], java.lang.SecurityManager), var3362_currentThread/-1037784612=([], java.lang.Thread), getThreadGroup/821017279=([java.lang.Thread], java.lang.ThreadGroup), group/-1558652867=([org.apache.lucene.util.NamedThreadFactory], java.lang.ThreadGroup), arr-var1098-init=([], java.lang.Object[]), var1761_checkPrefix/652062812=([java.lang.String], java.lang.String), cast-from-String-to-var1098=([java.lang.String], java.lang.Object), getAndIncrement/-721914959=([java.util.concurrent.atomic.AtomicInteger], int), Int_valueOf/-1371140006=([int], java.lang.Integer), cast-from-Int-to-var1098=([java.lang.Integer], java.lang.Object), String_format/-647569892=([java.util.Locale, java.lang.String, java.lang.Object[]], java.lang.String), threadNamePrefix/-1558652867=([org.apache.lucene.util.NamedThreadFactory], java.lang.String)}
; {var1761=org.apache.lucene.util.NamedThreadFactory, var302=r0, var3448=r5, var3441=null_type, var1098=java.lang.Object, var24=java.util.concurrent.atomic.AtomicInteger, var3488=$r1, var1245=1, var3598=java.lang.SecurityManager, var1843=java.lang.System, var2234=r2, var3362=java.lang.Thread, var166=$r3, var2273=java.lang.ThreadGroup, var3915=$r11, var641=java.util.Locale, var1960=$r6, var2178=$r4, var3625=$r7, var2231=$r8, var2400=$i0, var1829=$r9, var1740=$r10}
; {org.apache.lucene.util.NamedThreadFactory=var1761, r0=var302, r5=var3448, null_type=var3441, java.lang.Object=var1098, java.util.concurrent.atomic.AtomicInteger=var24, $r1=var3488, 1=var1245, java.lang.SecurityManager=var3598, java.lang.System=var1843, r2=var2234, java.lang.Thread=var3362, $r3=var166, java.lang.ThreadGroup=var2273, $r11=var3915, java.util.Locale=var641, $r6=var1960, $r4=var2178, $r7=var3625, $r8=var2231, $i0=var2400, $r9=var1829, $r10=var1740}
;seq <java.lang.String: java.lang.String format(java.util.Locale,java.lang.String,java.lang.Object[])>
;cnt {"<java.lang.String: java.lang.String format(java.util.Locale,java.lang.String,java.lang.Object[])>": 1}
;stmts r0 := @this: org.apache.lucene.util.NamedThreadFactory;	r5 := @parameter0: java.lang.String;	specialinvoke r0.<java.lang.Object: void <init>()>();	$r1 = new java.util.concurrent.atomic.AtomicInteger;	specialinvoke $r1.<java.util.concurrent.atomic.AtomicInteger: void <init>(int)>(1);	r0.<org.apache.lucene.util.NamedThreadFactory: java.util.concurrent.atomic.AtomicInteger threadNumber> = $r1;	r2 = staticinvoke <java.lang.System: java.lang.SecurityManager getSecurityManager()>();	if r2 == null goto $r3 = staticinvoke <java.lang.Thread: java.lang.Thread currentThread()>();	$r3 = staticinvoke <java.lang.Thread: java.lang.Thread currentThread()>();	$r11 = virtualinvoke $r3.<java.lang.Thread: java.lang.ThreadGroup getThreadGroup()>();	r0.<org.apache.lucene.util.NamedThreadFactory: java.lang.ThreadGroup group> = $r11;	$r6 = <java.util.Locale: java.util.Locale ROOT>;	$r4 = newarray (java.lang.Object)[2];	$r7 = staticinvoke <org.apache.lucene.util.NamedThreadFactory: java.lang.String checkPrefix(java.lang.String)>(r5);	$r4[0] = $r7;	$r8 = <org.apache.lucene.util.NamedThreadFactory: java.util.concurrent.atomic.AtomicInteger threadPoolNumber>;	$i0 = virtualinvoke $r8.<java.util.concurrent.atomic.AtomicInteger: int getAndIncrement()>();	$r9 = staticinvoke <java.lang.Integer: java.lang.Integer valueOf(int)>($i0);	$r4[1] = $r9;	$r10 = staticinvoke <java.lang.String: java.lang.String format(java.util.Locale,java.lang.String,java.lang.Object[])>($r6, "%s-%d-thread", $r4);	r0.<org.apache.lucene.util.NamedThreadFactory: java.lang.String threadNamePrefix> = $r10;	return
;block_num 3