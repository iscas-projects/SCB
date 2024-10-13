(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var432 0)
(declare-sort var180 0)
(declare-sort var1532 0)
(declare-sort var2488 0)
(declare-sort var1480 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun <init>/-1273845807 (var1532) void)
(declare-fun cast-from-var432-to-var1532 (var432) var1532)
(declare-fun arr-var2488-init () (Array Int var2488))
(declare-fun var1480_notNull/515149844 (var2488 String (Array Int var2488)) var2488)
(declare-fun cast-from-String-to-var2488 (String) var2488)
(declare-fun String_toString/-1426662429 (String) String)
(declare-fun text/-1495106522 (var432) String)
(declare-fun setText/-2076264765 (var180 String) var180)
(declare-fun finder/-1495106522 (var432) var180)
(declare-fun limit/-1495106522 (var432) Int)
(declare-fun ignoreEmpty/-1495106522 (var432) Bool)
(declare-const null-var432 var432)
(declare-const null-String String)
(declare-const null-var180 var180)
(declare-const null-Int Int)
(declare-const null-Bool Bool)
(declare-const var452 var432) ; Statement: r0 := @this: cn.hutool.core.text.split.SplitIter 
(assert (not (= var452 null-var432)))
(declare-const var1423 String) ; Statement: r1 := @parameter0: java.lang.CharSequence 
(assert (not (= var1423 null-String)))
(declare-const var2384 var180) ; Statement: r4 := @parameter1: cn.hutool.core.text.finder.TextFinder 
(assert (not (= var2384 null-var180)))
(declare-const var3545 Int) ; Statement: i0 := @parameter2: int 
(assert (not (= var3545 null-Int)))
(declare-const var3315 Bool) ; Statement: z0 := @parameter3: boolean 
(assert (not (= var3315 null-Bool)))
(assert true)
;(assert (<init>/-1273845807 (cast-from-var432-to-var1532 var452))) ; Statement: specialinvoke r0.<cn.hutool.core.collection.ComputeIter: void <init>()>() 

(declare-const var452!1 var432)
(define-const var2848 (Array Int var2488) arr-var2488-init) ; Statement: $r2 = newarray (java.lang.Object)[0] 
;(assert (var1480_notNull/515149844 (cast-from-String-to-var2488 var1423) "Text must be not null!" var2848)) ; Statement: staticinvoke <cn.hutool.core.lang.Assert: java.lang.Object notNull(java.lang.Object,java.lang.String,java.lang.Object[])>(r1, "Text must be not null!", $r2) 

(declare-const var1423!1 String)
(declare-const var248 String)
(declare-const var2848!1 (Array Int var2488))
(define-const var189 String (String_toString/-1426662429 var1423!1)) ; Statement: $r3 = interfaceinvoke r1.<java.lang.CharSequence: java.lang.String toString()>() 
(declare-const var452!2 var432)
(assert (not (= var452!2 null-var432)))
(assert (= (text/-1495106522 var452!2) var189)) ; Statement: r0.<cn.hutool.core.text.split.SplitIter: java.lang.String text> = $r3 
(assert true)
(define-const var1407 var180 (setText/-2076264765 var2384 var1423!1)) ; Statement: $r5 = virtualinvoke r4.<cn.hutool.core.text.finder.TextFinder: cn.hutool.core.text.finder.TextFinder setText(java.lang.CharSequence)>(r1) 
(declare-const var452!3 var432)
(assert (not (= var452!3 null-var432)))
(assert (= (finder/-1495106522 var452!3) var1407)) ; Statement: r0.<cn.hutool.core.text.split.SplitIter: cn.hutool.core.text.finder.TextFinder finder> = $r5 
 ; Statement: if i0 <= 0 goto $i1 = 2147483647 
(assert (<= var3545 0)) ; Cond: i0 <= 0 
(define-const var24 Int 2147483647) ; Statement: $i1 = 2147483647 
(assert true) ; Non Conditional
(declare-const var452!4 var432)
(assert (not (= var452!4 null-var432)))
(assert (= (limit/-1495106522 var452!4) var24)) ; Statement: r0.<cn.hutool.core.text.split.SplitIter: int limit> = $i1 
(declare-const var452!5 var432)
(assert (not (= var452!5 null-var432)))
(assert (= (ignoreEmpty/-1495106522 var452!5) var3315)) ; Statement: r0.<cn.hutool.core.text.split.SplitIter: boolean ignoreEmpty> = z0 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {<init>/-1273845807=([cn.hutool.core.collection.ComputeIter], void), cast-from-var432-to-var1532=([cn.hutool.core.text.split.SplitIter], cn.hutool.core.collection.ComputeIter), arr-var2488-init=([], java.lang.Object[]), var1480_notNull/515149844=([java.lang.Object, java.lang.String, java.lang.Object[]], java.lang.Object), cast-from-String-to-var2488=([java.lang.CharSequence], java.lang.Object), String_toString/-1426662429=([java.lang.CharSequence], java.lang.String), text/-1495106522=([cn.hutool.core.text.split.SplitIter], java.lang.String), setText/-2076264765=([cn.hutool.core.text.finder.TextFinder, java.lang.CharSequence], cn.hutool.core.text.finder.TextFinder), finder/-1495106522=([cn.hutool.core.text.split.SplitIter], cn.hutool.core.text.finder.TextFinder), limit/-1495106522=([cn.hutool.core.text.split.SplitIter], int), ignoreEmpty/-1495106522=([cn.hutool.core.text.split.SplitIter], boolean)}
; {var432=cn.hutool.core.text.split.SplitIter, var452=r0, var1423=r1, var180=cn.hutool.core.text.finder.TextFinder, var2384=r4, var3545=i0, var3315=z0, var1532=cn.hutool.core.collection.ComputeIter, var2488=java.lang.Object, var2848=$r2, var1480=cn.hutool.core.lang.Assert, var248="Text must be not null!", var189=$r3, var1407=$r5, var24=$i1}
; {cn.hutool.core.text.split.SplitIter=var432, r0=var452, r1=var1423, cn.hutool.core.text.finder.TextFinder=var180, r4=var2384, i0=var3545, z0=var3315, cn.hutool.core.collection.ComputeIter=var1532, java.lang.Object=var2488, $r2=var2848, cn.hutool.core.lang.Assert=var1480, "Text must be not null!"=var248, $r3=var189, $r5=var1407, $i1=var24}
;seq <java.lang.CharSequence: java.lang.String toString()>
;cnt {"<java.lang.CharSequence: java.lang.String toString()>": 1}
;stmts r0 := @this: cn.hutool.core.text.split.SplitIter;	r1 := @parameter0: java.lang.CharSequence;	r4 := @parameter1: cn.hutool.core.text.finder.TextFinder;	i0 := @parameter2: int;	z0 := @parameter3: boolean;	specialinvoke r0.<cn.hutool.core.collection.ComputeIter: void <init>()>();	$r2 = newarray (java.lang.Object)[0];	staticinvoke <cn.hutool.core.lang.Assert: java.lang.Object notNull(java.lang.Object,java.lang.String,java.lang.Object[])>(r1, "Text must be not null!", $r2);	$r3 = interfaceinvoke r1.<java.lang.CharSequence: java.lang.String toString()>();	r0.<cn.hutool.core.text.split.SplitIter: java.lang.String text> = $r3;	$r5 = virtualinvoke r4.<cn.hutool.core.text.finder.TextFinder: cn.hutool.core.text.finder.TextFinder setText(java.lang.CharSequence)>(r1);	r0.<cn.hutool.core.text.split.SplitIter: cn.hutool.core.text.finder.TextFinder finder> = $r5;	if i0 <= 0 goto $i1 = 2147483647;	$i1 = 2147483647;	r0.<cn.hutool.core.text.split.SplitIter: int limit> = $i1;	r0.<cn.hutool.core.text.split.SplitIter: boolean ignoreEmpty> = z0;	return
;block_num 3