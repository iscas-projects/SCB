(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1356 0)
(declare-sort var1800 0)
(declare-sort var2200 0)
(declare-sort var2684 0)
(declare-sort var2425 0)
(declare-sort var3405 0)
(declare-sort var2564 0)
(declare-sort var3486 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun <init>/-279557996 (var2200) void)
(declare-fun cast-from-var1356-to-var2200 (var1356) var2200)
(declare-fun var2684-init () var2684)
(declare-fun <init>/2144030345 (var2684 Int) void)
(declare-fun threadNumber/-1558652867 (var1356) var2684)
(declare-fun var3405_getSecurityManager/-1522955590 () var2425)
(declare-fun getThreadGroup/929545980 (var2425) var2564)
(declare-fun group/-1558652867 (var1356) var2564)
(declare-fun arr-var2200-init () (Array Int var2200))
(declare-fun var1356_checkPrefix/652062812 (String) String)
(declare-fun cast-from-String-to-var2200 (String) var2200)
(declare-fun getAndIncrement/-721914959 (var2684) Int)
(declare-fun Int_valueOf/-1371140006 (Int) Int)
(declare-fun cast-from-Int-to-var2200 (Int) var2200)
(declare-fun String_format/-647569892 (var3486 String (Array Int var2200)) String)
(declare-fun threadNamePrefix/-1558652867 (var1356) String)
(declare-const null-var1356 var1356)
(declare-const null-String String)
(declare-const null-var2425 var2425)
(declare-const var3486-ROOT var3486)
(declare-const null-__Array__Int__var2200__ (Array Int var2200))
(declare-const var1356-threadPoolNumber var2684)
(declare-const var1946 var1356) ; Statement: r0 := @this: org.apache.lucene.util.NamedThreadFactory 
(assert (not (= var1946 null-var1356)))
(declare-const var1770 String) ; Statement: r5 := @parameter0: java.lang.String 
(assert (not (= var1770 null-String)))
(assert true)
;(assert (<init>/-279557996 (cast-from-var1356-to-var2200 var1946))) ; Statement: specialinvoke r0.<java.lang.Object: void <init>()>() 

(declare-const var1946!1 var1356)
(define-const var422 var2684 var2684-init) ; Statement: $r1 = new java.util.concurrent.atomic.AtomicInteger 
(assert true)
;(assert (<init>/2144030345 var422 1)) ; Statement: specialinvoke $r1.<java.util.concurrent.atomic.AtomicInteger: void <init>(int)>(1) 

(declare-const var422!1 var2684)
(declare-const var3342 Int)
(declare-const var1946!2 var1356)
(assert (not (= var1946!2 null-var1356)))
(assert (= (threadNumber/-1558652867 var1946!2) var422!1)) ; Statement: r0.<org.apache.lucene.util.NamedThreadFactory: java.util.concurrent.atomic.AtomicInteger threadNumber> = $r1 
(define-const var3259 var2425 var3405_getSecurityManager/-1522955590) ; Statement: r2 = staticinvoke <java.lang.System: java.lang.SecurityManager getSecurityManager()>() 
 ; Statement: if r2 == null goto $r3 = staticinvoke <java.lang.Thread: java.lang.Thread currentThread()>() 
(assert (not (= var3259 null-var2425))) ; Negate: Cond: r2 == null  
(assert true)
(define-const var3926 var2564 (getThreadGroup/929545980 var3259)) ; Statement: $r11 = virtualinvoke r2.<java.lang.SecurityManager: java.lang.ThreadGroup getThreadGroup()>() 
 ; Statement: goto [?= r0.<org.apache.lucene.util.NamedThreadFactory: java.lang.ThreadGroup group> = $r11] 
(assert true) ; Non Conditional
(declare-const var1946!3 var1356)
(assert (not (= var1946!3 null-var1356)))
(assert (= (group/-1558652867 var1946!3) var3926)) ; Statement: r0.<org.apache.lucene.util.NamedThreadFactory: java.lang.ThreadGroup group> = $r11 
(define-const var2211 var3486 var3486-ROOT) ; Statement: $r6 = <java.util.Locale: java.util.Locale ROOT> 
(define-const var977 (Array Int var2200) arr-var2200-init) ; Statement: $r4 = newarray (java.lang.Object)[2] 
(define-const var2800 String (var1356_checkPrefix/652062812 var1770)) ; Statement: $r7 = staticinvoke <org.apache.lucene.util.NamedThreadFactory: java.lang.String checkPrefix(java.lang.String)>(r5) 
(declare-const var977!1 (Array Int var2200))
(assert (not (= var977!1 null-__Array__Int__var2200__)))
(assert (= (select var977!1 0) (cast-from-String-to-var2200 var2800))) ; Statement: $r4[0] = $r7 
(define-const var3126 var2684 var1356-threadPoolNumber) ; Statement: $r8 = <org.apache.lucene.util.NamedThreadFactory: java.util.concurrent.atomic.AtomicInteger threadPoolNumber> 
(assert true)
(define-const var3043 Int (getAndIncrement/-721914959 var3126)) ; Statement: $i0 = virtualinvoke $r8.<java.util.concurrent.atomic.AtomicInteger: int getAndIncrement()>() 
(define-const var3811 Int (Int_valueOf/-1371140006 var3043)) ; Statement: $r9 = staticinvoke <java.lang.Integer: java.lang.Integer valueOf(int)>($i0) 
(declare-const var977!2 (Array Int var2200))
(assert (not (= var977!2 null-__Array__Int__var2200__)))
(assert (= (select var977!2 1) (cast-from-Int-to-var2200 var3811))) ; Statement: $r4[1] = $r9 
(define-const var2848 String (String_format/-647569892 var2211 "%s-%d-thread" var977!2)) ; Statement: $r10 = staticinvoke <java.lang.String: java.lang.String format(java.util.Locale,java.lang.String,java.lang.Object[])>($r6, "%s-%d-thread", $r4) 
(declare-const var1946!4 var1356)
(assert (not (= var1946!4 null-var1356)))
(assert (= (threadNamePrefix/-1558652867 var1946!4) var2848)) ; Statement: r0.<org.apache.lucene.util.NamedThreadFactory: java.lang.String threadNamePrefix> = $r10 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {<init>/-279557996=([java.lang.Object], void), cast-from-var1356-to-var2200=([org.apache.lucene.util.NamedThreadFactory], java.lang.Object), var2684-init=([], java.util.concurrent.atomic.AtomicInteger), <init>/2144030345=([java.util.concurrent.atomic.AtomicInteger, int], void), threadNumber/-1558652867=([org.apache.lucene.util.NamedThreadFactory], java.util.concurrent.atomic.AtomicInteger), var3405_getSecurityManager/-1522955590=([], java.lang.SecurityManager), getThreadGroup/929545980=([java.lang.SecurityManager], java.lang.ThreadGroup), group/-1558652867=([org.apache.lucene.util.NamedThreadFactory], java.lang.ThreadGroup), arr-var2200-init=([], java.lang.Object[]), var1356_checkPrefix/652062812=([java.lang.String], java.lang.String), cast-from-String-to-var2200=([java.lang.String], java.lang.Object), getAndIncrement/-721914959=([java.util.concurrent.atomic.AtomicInteger], int), Int_valueOf/-1371140006=([int], java.lang.Integer), cast-from-Int-to-var2200=([java.lang.Integer], java.lang.Object), String_format/-647569892=([java.util.Locale, java.lang.String, java.lang.Object[]], java.lang.String), threadNamePrefix/-1558652867=([org.apache.lucene.util.NamedThreadFactory], java.lang.String)}
; {var1356=org.apache.lucene.util.NamedThreadFactory, var1946=r0, var1770=r5, var1800=null_type, var2200=java.lang.Object, var2684=java.util.concurrent.atomic.AtomicInteger, var422=$r1, var3342=1, var2425=java.lang.SecurityManager, var3405=java.lang.System, var3259=r2, var2564=java.lang.ThreadGroup, var3926=$r11, var3486=java.util.Locale, var2211=$r6, var977=$r4, var2800=$r7, var3126=$r8, var3043=$i0, var3811=$r9, var2848=$r10}
; {org.apache.lucene.util.NamedThreadFactory=var1356, r0=var1946, r5=var1770, null_type=var1800, java.lang.Object=var2200, java.util.concurrent.atomic.AtomicInteger=var2684, $r1=var422, 1=var3342, java.lang.SecurityManager=var2425, java.lang.System=var3405, r2=var3259, java.lang.ThreadGroup=var2564, $r11=var3926, java.util.Locale=var3486, $r6=var2211, $r4=var977, $r7=var2800, $r8=var3126, $i0=var3043, $r9=var3811, $r10=var2848}
;seq <java.lang.String: java.lang.String format(java.util.Locale,java.lang.String,java.lang.Object[])>
;cnt {"<java.lang.String: java.lang.String format(java.util.Locale,java.lang.String,java.lang.Object[])>": 1}
;stmts r0 := @this: org.apache.lucene.util.NamedThreadFactory;	r5 := @parameter0: java.lang.String;	specialinvoke r0.<java.lang.Object: void <init>()>();	$r1 = new java.util.concurrent.atomic.AtomicInteger;	specialinvoke $r1.<java.util.concurrent.atomic.AtomicInteger: void <init>(int)>(1);	r0.<org.apache.lucene.util.NamedThreadFactory: java.util.concurrent.atomic.AtomicInteger threadNumber> = $r1;	r2 = staticinvoke <java.lang.System: java.lang.SecurityManager getSecurityManager()>();	if r2 == null goto $r3 = staticinvoke <java.lang.Thread: java.lang.Thread currentThread()>();	$r11 = virtualinvoke r2.<java.lang.SecurityManager: java.lang.ThreadGroup getThreadGroup()>();	goto [?= r0.<org.apache.lucene.util.NamedThreadFactory: java.lang.ThreadGroup group> = $r11];	r0.<org.apache.lucene.util.NamedThreadFactory: java.lang.ThreadGroup group> = $r11;	$r6 = <java.util.Locale: java.util.Locale ROOT>;	$r4 = newarray (java.lang.Object)[2];	$r7 = staticinvoke <org.apache.lucene.util.NamedThreadFactory: java.lang.String checkPrefix(java.lang.String)>(r5);	$r4[0] = $r7;	$r8 = <org.apache.lucene.util.NamedThreadFactory: java.util.concurrent.atomic.AtomicInteger threadPoolNumber>;	$i0 = virtualinvoke $r8.<java.util.concurrent.atomic.AtomicInteger: int getAndIncrement()>();	$r9 = staticinvoke <java.lang.Integer: java.lang.Integer valueOf(int)>($i0);	$r4[1] = $r9;	$r10 = staticinvoke <java.lang.String: java.lang.String format(java.util.Locale,java.lang.String,java.lang.Object[])>($r6, "%s-%d-thread", $r4);	r0.<org.apache.lucene.util.NamedThreadFactory: java.lang.String threadNamePrefix> = $r10;	return
;block_num 3