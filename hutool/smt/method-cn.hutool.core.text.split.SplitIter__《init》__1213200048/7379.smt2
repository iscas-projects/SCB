(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var406 0)
(declare-sort var3011 0)
(declare-sort var1277 0)
(declare-sort var2387 0)
(declare-sort var3199 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun <init>/-1273845807 (var1277) void)
(declare-fun cast-from-var406-to-var1277 (var406) var1277)
(declare-fun arr-var2387-init () (Array Int var2387))
(declare-fun var3199_notNull/515149844 (var2387 String (Array Int var2387)) var2387)
(declare-fun cast-from-String-to-var2387 (String) var2387)
(declare-fun String_toString/-1426662429 (String) String)
(declare-fun text/-1495106522 (var406) String)
(declare-fun setText/-2076264765 (var3011 String) var3011)
(declare-fun finder/-1495106522 (var406) var3011)
(declare-fun limit/-1495106522 (var406) Int)
(declare-fun ignoreEmpty/-1495106522 (var406) Bool)
(declare-const null-var406 var406)
(declare-const null-String String)
(declare-const null-var3011 var3011)
(declare-const null-Int Int)
(declare-const null-Bool Bool)
(declare-const var3998 var406) ; Statement: r0 := @this: cn.hutool.core.text.split.SplitIter 
(assert (not (= var3998 null-var406)))
(declare-const var2822 String) ; Statement: r1 := @parameter0: java.lang.CharSequence 
(assert (not (= var2822 null-String)))
(declare-const var1278 var3011) ; Statement: r4 := @parameter1: cn.hutool.core.text.finder.TextFinder 
(assert (not (= var1278 null-var3011)))
(declare-const var710 Int) ; Statement: i0 := @parameter2: int 
(assert (not (= var710 null-Int)))
(declare-const var1506 Bool) ; Statement: z0 := @parameter3: boolean 
(assert (not (= var1506 null-Bool)))
(assert true)
;(assert (<init>/-1273845807 (cast-from-var406-to-var1277 var3998))) ; Statement: specialinvoke r0.<cn.hutool.core.collection.ComputeIter: void <init>()>() 

(declare-const var3998!1 var406)
(define-const var3367 (Array Int var2387) arr-var2387-init) ; Statement: $r2 = newarray (java.lang.Object)[0] 
;(assert (var3199_notNull/515149844 (cast-from-String-to-var2387 var2822) "Text must be not null!" var3367)) ; Statement: staticinvoke <cn.hutool.core.lang.Assert: java.lang.Object notNull(java.lang.Object,java.lang.String,java.lang.Object[])>(r1, "Text must be not null!", $r2) 

(declare-const var2822!1 String)
(declare-const var935 String)
(declare-const var3367!1 (Array Int var2387))
(define-const var1182 String (String_toString/-1426662429 var2822!1)) ; Statement: $r3 = interfaceinvoke r1.<java.lang.CharSequence: java.lang.String toString()>() 
(declare-const var3998!2 var406)
(assert (not (= var3998!2 null-var406)))
(assert (= (text/-1495106522 var3998!2) var1182)) ; Statement: r0.<cn.hutool.core.text.split.SplitIter: java.lang.String text> = $r3 
(assert true)
(define-const var2183 var3011 (setText/-2076264765 var1278 var2822!1)) ; Statement: $r5 = virtualinvoke r4.<cn.hutool.core.text.finder.TextFinder: cn.hutool.core.text.finder.TextFinder setText(java.lang.CharSequence)>(r1) 
(declare-const var3998!3 var406)
(assert (not (= var3998!3 null-var406)))
(assert (= (finder/-1495106522 var3998!3) var2183)) ; Statement: r0.<cn.hutool.core.text.split.SplitIter: cn.hutool.core.text.finder.TextFinder finder> = $r5 
 ; Statement: if i0 <= 0 goto $i1 = 2147483647 
(assert (not (<= var710 0))) ; Negate: Cond: i0 <= 0  
(define-const var2249 Int var710) ; Statement: $i1 = i0 
 ; Statement: goto [?= r0.<cn.hutool.core.text.split.SplitIter: int limit> = $i1] 
(assert true) ; Non Conditional
(declare-const var3998!4 var406)
(assert (not (= var3998!4 null-var406)))
(assert (= (limit/-1495106522 var3998!4) var2249)) ; Statement: r0.<cn.hutool.core.text.split.SplitIter: int limit> = $i1 
(declare-const var3998!5 var406)
(assert (not (= var3998!5 null-var406)))
(assert (= (ignoreEmpty/-1495106522 var3998!5) var1506)) ; Statement: r0.<cn.hutool.core.text.split.SplitIter: boolean ignoreEmpty> = z0 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {<init>/-1273845807=([cn.hutool.core.collection.ComputeIter], void), cast-from-var406-to-var1277=([cn.hutool.core.text.split.SplitIter], cn.hutool.core.collection.ComputeIter), arr-var2387-init=([], java.lang.Object[]), var3199_notNull/515149844=([java.lang.Object, java.lang.String, java.lang.Object[]], java.lang.Object), cast-from-String-to-var2387=([java.lang.CharSequence], java.lang.Object), String_toString/-1426662429=([java.lang.CharSequence], java.lang.String), text/-1495106522=([cn.hutool.core.text.split.SplitIter], java.lang.String), setText/-2076264765=([cn.hutool.core.text.finder.TextFinder, java.lang.CharSequence], cn.hutool.core.text.finder.TextFinder), finder/-1495106522=([cn.hutool.core.text.split.SplitIter], cn.hutool.core.text.finder.TextFinder), limit/-1495106522=([cn.hutool.core.text.split.SplitIter], int), ignoreEmpty/-1495106522=([cn.hutool.core.text.split.SplitIter], boolean)}
; {var406=cn.hutool.core.text.split.SplitIter, var3998=r0, var2822=r1, var3011=cn.hutool.core.text.finder.TextFinder, var1278=r4, var710=i0, var1506=z0, var1277=cn.hutool.core.collection.ComputeIter, var2387=java.lang.Object, var3367=$r2, var3199=cn.hutool.core.lang.Assert, var935="Text must be not null!", var1182=$r3, var2183=$r5, var2249=$i1}
; {cn.hutool.core.text.split.SplitIter=var406, r0=var3998, r1=var2822, cn.hutool.core.text.finder.TextFinder=var3011, r4=var1278, i0=var710, z0=var1506, cn.hutool.core.collection.ComputeIter=var1277, java.lang.Object=var2387, $r2=var3367, cn.hutool.core.lang.Assert=var3199, "Text must be not null!"=var935, $r3=var1182, $r5=var2183, $i1=var2249}
;seq <java.lang.CharSequence: java.lang.String toString()>
;cnt {"<java.lang.CharSequence: java.lang.String toString()>": 1}
;stmts r0 := @this: cn.hutool.core.text.split.SplitIter;	r1 := @parameter0: java.lang.CharSequence;	r4 := @parameter1: cn.hutool.core.text.finder.TextFinder;	i0 := @parameter2: int;	z0 := @parameter3: boolean;	specialinvoke r0.<cn.hutool.core.collection.ComputeIter: void <init>()>();	$r2 = newarray (java.lang.Object)[0];	staticinvoke <cn.hutool.core.lang.Assert: java.lang.Object notNull(java.lang.Object,java.lang.String,java.lang.Object[])>(r1, "Text must be not null!", $r2);	$r3 = interfaceinvoke r1.<java.lang.CharSequence: java.lang.String toString()>();	r0.<cn.hutool.core.text.split.SplitIter: java.lang.String text> = $r3;	$r5 = virtualinvoke r4.<cn.hutool.core.text.finder.TextFinder: cn.hutool.core.text.finder.TextFinder setText(java.lang.CharSequence)>(r1);	r0.<cn.hutool.core.text.split.SplitIter: cn.hutool.core.text.finder.TextFinder finder> = $r5;	if i0 <= 0 goto $i1 = 2147483647;	$i1 = i0;	goto [?= r0.<cn.hutool.core.text.split.SplitIter: int limit> = $i1];	r0.<cn.hutool.core.text.split.SplitIter: int limit> = $i1;	r0.<cn.hutool.core.text.split.SplitIter: boolean ignoreEmpty> = z0;	return
;block_num 3