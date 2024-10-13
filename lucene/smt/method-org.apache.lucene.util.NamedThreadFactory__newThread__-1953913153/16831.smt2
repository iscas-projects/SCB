(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3818 0)
(declare-sort var1826 0)
(declare-sort var1110 0)
(declare-sort var2411 0)
(declare-sort var1309 0)
(declare-sort var196 0)
(declare-sort var2011 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var1110-init () var1110)
(declare-fun group/-1558652867 (var3818) var2411)
(declare-fun arr-var196-init () (Array Int var196))
(declare-fun threadNamePrefix/-1558652867 (var3818) String)
(declare-fun cast-from-String-to-var196 (String) var196)
(declare-fun threadNumber/-1558652867 (var3818) var2011)
(declare-fun getAndIncrement/-721914959 (var2011) Int)
(declare-fun Int_valueOf/-1371140006 (Int) Int)
(declare-fun cast-from-Int-to-var196 (Int) var196)
(declare-fun String_format/-647569892 (var1309 String (Array Int var196)) String)
(declare-fun <init>/-295685614 (var1110 var2411 var1826 String Int) void)
(declare-fun setDaemon/1897296623 (var1110 Bool) void)
(declare-fun setPriority/-324618346 (var1110 Int) void)
(declare-const null-var3818 var3818)
(declare-const null-var1826 var1826)
(declare-const var1309-ROOT var1309)
(declare-const null-__Array__Int__var196__ (Array Int var196))
(declare-const var1410 var3818) ; Statement: r1 := @this: org.apache.lucene.util.NamedThreadFactory 
(assert (not (= var1410 null-var3818)))
(declare-const var1664 var1826) ; Statement: r2 := @parameter0: java.lang.Runnable 
(assert (not (= var1664 null-var1826)))
(define-const var469 var1110 var1110-init) ; Statement: $r0 = new java.lang.Thread 
(define-const var682 var2411 (group/-1558652867 var1410)) ; Statement: $r6 = r1.<org.apache.lucene.util.NamedThreadFactory: java.lang.ThreadGroup group> 
(define-const var165 var1309 var1309-ROOT) ; Statement: $r7 = <java.util.Locale: java.util.Locale ROOT> 
(define-const var3957 (Array Int var196) arr-var196-init) ; Statement: $r3 = newarray (java.lang.Object)[2] 
(define-const var3187 String (threadNamePrefix/-1558652867 var1410)) ; Statement: $r4 = r1.<org.apache.lucene.util.NamedThreadFactory: java.lang.String threadNamePrefix> 
(declare-const var3957!1 (Array Int var196))
(assert (not (= var3957!1 null-__Array__Int__var196__)))
(assert (= (select var3957!1 0) (cast-from-String-to-var196 var3187))) ; Statement: $r3[0] = $r4 
(define-const var3452 var2011 (threadNumber/-1558652867 var1410)) ; Statement: $r5 = r1.<org.apache.lucene.util.NamedThreadFactory: java.util.concurrent.atomic.AtomicInteger threadNumber> 
(assert true)
(define-const var3745 Int (getAndIncrement/-721914959 var3452)) ; Statement: $i0 = virtualinvoke $r5.<java.util.concurrent.atomic.AtomicInteger: int getAndIncrement()>() 
(define-const var272 Int (Int_valueOf/-1371140006 var3745)) ; Statement: $r8 = staticinvoke <java.lang.Integer: java.lang.Integer valueOf(int)>($i0) 
(declare-const var3957!2 (Array Int var196))
(assert (not (= var3957!2 null-__Array__Int__var196__)))
(assert (= (select var3957!2 1) (cast-from-Int-to-var196 var272))) ; Statement: $r3[1] = $r8 
(define-const var1591 String (String_format/-647569892 var165 "%s-%d" var3957!2)) ; Statement: $r9 = staticinvoke <java.lang.String: java.lang.String format(java.util.Locale,java.lang.String,java.lang.Object[])>($r7, "%s-%d", $r3) 
(assert true)
;(assert (<init>/-295685614 var469 var682 var1664 var1591 0)) ; Statement: specialinvoke $r0.<java.lang.Thread: void <init>(java.lang.ThreadGroup,java.lang.Runnable,java.lang.String,long)>($r6, r2, $r9, 0L) 

(declare-const var469!1 var1110)
(declare-const var682!1 var2411)
(declare-const var1664!1 var1826)
(declare-const var1591!1 String)
(declare-const var3386 Int)
(assert true)
;(assert (setDaemon/1897296623 var469!1 (ite (= 1 0) true false))) ; Statement: virtualinvoke $r0.<java.lang.Thread: void setDaemon(boolean)>(0) 

(declare-const var469!2 var1110)
(declare-const var1943 Int)
(assert true)
;(assert (setPriority/-324618346 var469!2 5)) ; Statement: virtualinvoke $r0.<java.lang.Thread: void setPriority(int)>(5) 

(declare-const var469!3 var1110)
(declare-const var292 Int)
 ; Statement: return $r0 
(check-sat)
(get-model)
(get-unsat-core)
; {var1110-init=([], java.lang.Thread), group/-1558652867=([org.apache.lucene.util.NamedThreadFactory], java.lang.ThreadGroup), arr-var196-init=([], java.lang.Object[]), threadNamePrefix/-1558652867=([org.apache.lucene.util.NamedThreadFactory], java.lang.String), cast-from-String-to-var196=([java.lang.String], java.lang.Object), threadNumber/-1558652867=([org.apache.lucene.util.NamedThreadFactory], java.util.concurrent.atomic.AtomicInteger), getAndIncrement/-721914959=([java.util.concurrent.atomic.AtomicInteger], int), Int_valueOf/-1371140006=([int], java.lang.Integer), cast-from-Int-to-var196=([java.lang.Integer], java.lang.Object), String_format/-647569892=([java.util.Locale, java.lang.String, java.lang.Object[]], java.lang.String), <init>/-295685614=([java.lang.Thread, java.lang.ThreadGroup, java.lang.Runnable, java.lang.String, long], void), setDaemon/1897296623=([java.lang.Thread, boolean], void), setPriority/-324618346=([java.lang.Thread, int], void)}
; {var3818=org.apache.lucene.util.NamedThreadFactory, var1410=r1, var1826=java.lang.Runnable, var1664=r2, var1110=java.lang.Thread, var469=$r0, var2411=java.lang.ThreadGroup, var682=$r6, var1309=java.util.Locale, var165=$r7, var196=java.lang.Object, var3957=$r3, var3187=$r4, var2011=java.util.concurrent.atomic.AtomicInteger, var3452=$r5, var3745=$i0, var272=$r8, var1591=$r9, var3386=0L, var1943=0, var292=5}
; {org.apache.lucene.util.NamedThreadFactory=var3818, r1=var1410, java.lang.Runnable=var1826, r2=var1664, java.lang.Thread=var1110, $r0=var469, java.lang.ThreadGroup=var2411, $r6=var682, java.util.Locale=var1309, $r7=var165, java.lang.Object=var196, $r3=var3957, $r4=var3187, java.util.concurrent.atomic.AtomicInteger=var2011, $r5=var3452, $i0=var3745, $r8=var272, $r9=var1591, 0L=var3386, 0=var1943, 5=var292}
;seq <java.lang.String: java.lang.String format(java.util.Locale,java.lang.String,java.lang.Object[])>
;cnt {"<java.lang.String: java.lang.String format(java.util.Locale,java.lang.String,java.lang.Object[])>": 1}
;stmts r1 := @this: org.apache.lucene.util.NamedThreadFactory;	r2 := @parameter0: java.lang.Runnable;	$r0 = new java.lang.Thread;	$r6 = r1.<org.apache.lucene.util.NamedThreadFactory: java.lang.ThreadGroup group>;	$r7 = <java.util.Locale: java.util.Locale ROOT>;	$r3 = newarray (java.lang.Object)[2];	$r4 = r1.<org.apache.lucene.util.NamedThreadFactory: java.lang.String threadNamePrefix>;	$r3[0] = $r4;	$r5 = r1.<org.apache.lucene.util.NamedThreadFactory: java.util.concurrent.atomic.AtomicInteger threadNumber>;	$i0 = virtualinvoke $r5.<java.util.concurrent.atomic.AtomicInteger: int getAndIncrement()>();	$r8 = staticinvoke <java.lang.Integer: java.lang.Integer valueOf(int)>($i0);	$r3[1] = $r8;	$r9 = staticinvoke <java.lang.String: java.lang.String format(java.util.Locale,java.lang.String,java.lang.Object[])>($r7, "%s-%d", $r3);	specialinvoke $r0.<java.lang.Thread: void <init>(java.lang.ThreadGroup,java.lang.Runnable,java.lang.String,long)>($r6, r2, $r9, 0L);	virtualinvoke $r0.<java.lang.Thread: void setDaemon(boolean)>(0);	virtualinvoke $r0.<java.lang.Thread: void setPriority(int)>(5);	return $r0
;block_num 1