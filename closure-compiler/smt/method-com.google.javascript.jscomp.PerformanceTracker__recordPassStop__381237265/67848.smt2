(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3520 0)
(declare-sort var2976 0)
(declare-sort var2390 0)
(declare-sort var874 0)
(declare-sort var410 0)
(declare-sort var1768 0)
(declare-sort var2945 0)
(declare-sort var2512 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getAllocatedMegabytes/1864328501 (var3520) Int)
(declare-fun currentPass/1842251589 (var3520) var2390)
(declare-fun var2390_pop/-801615857 (var2390) var874)
(declare-fun cast-from-var874-to-var410 (var874) var410)
(declare-fun pass/1221692000 (var410) String)
(declare-fun var1768_checkState/1431124798 (Bool) void)
(declare-fun log/1842251589 (var3520) var2945)
(declare-fun var2945_add/328494887 (var2945 var874) Bool)
(declare-fun cast-from-var410-to-var874 (var410) var874)
(declare-fun runtime/1221692000 (var410) Int)
(declare-fun allocMem/1221692000 (var410) Int)
(declare-fun runs/1221692000 (var410) Int)
(declare-fun codeChange/1842251589 (var3520) var2512)
(declare-fun hasCodeChanged/1288683526 (var2512) Bool)
(declare-const null-var3520 var3520)
(declare-const null-String String)
(declare-const null-Int Int)
(declare-const null-var410 var410)
(declare-const var1020 var3520) ; Statement: r0 := @this: com.google.javascript.jscomp.PerformanceTracker 
(assert (not (= var1020 null-var3520)))
(declare-const var604 String) ; Statement: r4 := @parameter0: java.lang.String 
(assert (not (= var604 null-String)))
(declare-const var1083 Int) ; Statement: l1 := @parameter1: long 
(assert (not (= var1083 null-Int)))
(assert true)
(define-const var1512 Int (getAllocatedMegabytes/1864328501 var1020)) ; Statement: i0 = virtualinvoke r0.<com.google.javascript.jscomp.PerformanceTracker: int getAllocatedMegabytes()>() 
(define-const var981 var2390 (currentPass/1842251589 var1020)) ; Statement: $r1 = r0.<com.google.javascript.jscomp.PerformanceTracker: java.util.Deque currentPass> 
(define-const var12 var874 (var2390_pop/-801615857 var981)) ; Statement: $r2 = interfaceinvoke $r1.<java.util.Deque: java.lang.Object pop()>() 
(define-const var1690 var410 (cast-from-var874-to-var410 var12)) ; Statement: r3 = (com.google.javascript.jscomp.PerformanceTracker$Stats) $r2 
(define-const var280 String (pass/1221692000 var1690)) ; Statement: $r5 = r3.<com.google.javascript.jscomp.PerformanceTracker$Stats: java.lang.String pass> 
(assert true)
(define-const var2176 Bool (= var604 var280)) ; Statement: $z0 = virtualinvoke r4.<java.lang.String: boolean equals(java.lang.Object)>($r5) 
;(assert (var1768_checkState/1431124798 var2176)) ; Statement: staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: void checkState(boolean)>($z0) 

(declare-const var2176!1 Bool)
(define-const var790 var2945 (log/1842251589 var1020)) ; Statement: $r6 = r0.<com.google.javascript.jscomp.PerformanceTracker: java.util.List log> 
;(assert (var2945_add/328494887 var790 (cast-from-var410-to-var874 var1690))) ; Statement: interfaceinvoke $r6.<java.util.List: boolean add(java.lang.Object)>(r3) 

(declare-const var790!1 var2945)
(declare-const var1690!1 var410)
(declare-const var1690!2 var410)
(assert (not (= var1690!2 null-var410)))
(assert (= (runtime/1221692000 var1690!2) var1083)) ; Statement: r3.<com.google.javascript.jscomp.PerformanceTracker$Stats: long runtime> = l1 
(declare-const var1690!3 var410)
(assert (not (= var1690!3 null-var410)))
(assert (= (allocMem/1221692000 var1690!3) var1512)) ; Statement: r3.<com.google.javascript.jscomp.PerformanceTracker$Stats: int allocMem> = i0 
(declare-const var1690!4 var410)
(assert (not (= var1690!4 null-var410)))
(assert (= (runs/1221692000 var1690!4) 1)) ; Statement: r3.<com.google.javascript.jscomp.PerformanceTracker$Stats: int runs> = 1 
(define-const var1996 var2512 (codeChange/1842251589 var1020)) ; Statement: $r7 = r0.<com.google.javascript.jscomp.PerformanceTracker: com.google.javascript.jscomp.RecentChange codeChange> 
(assert true)
(define-const var2422 Bool (hasCodeChanged/1288683526 var1996)) ; Statement: $z1 = virtualinvoke $r7.<com.google.javascript.jscomp.RecentChange: boolean hasCodeChanged()>() 
 ; Statement: if $z1 == 0 goto $z2 = virtualinvoke r4.<java.lang.String: boolean equals(java.lang.Object)>("parseInputs") 
(assert (= (ite var2422 1 0) 0)) ; Cond: $z1 == 0 
(assert true)
(define-const var2984 Bool (= var604 "parseInputs")) ; Statement: $z2 = virtualinvoke r4.<java.lang.String: boolean equals(java.lang.Object)>("parseInputs") 
 ; Statement: if $z2 == 0 goto $r8 = r0.<com.google.javascript.jscomp.PerformanceTracker: com.google.javascript.jscomp.RecentChange codeChange> 
(assert (= (ite var2984 1 0) 0)) ; Cond: $z2 == 0 
(define-const var1685 var2512 (codeChange/1842251589 var1020)) ; Statement: $r8 = r0.<com.google.javascript.jscomp.PerformanceTracker: com.google.javascript.jscomp.RecentChange codeChange> 
(assert true)
(define-const var3869 Bool (hasCodeChanged/1288683526 var1685)) ; Statement: $z3 = virtualinvoke $r8.<com.google.javascript.jscomp.RecentChange: boolean hasCodeChanged()>() 
 ; Statement: if $z3 == 0 goto return 
(assert (= (ite var3869 1 0) 0)) ; Cond: $z3 == 0 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {getAllocatedMegabytes/1864328501=([com.google.javascript.jscomp.PerformanceTracker], int), currentPass/1842251589=([com.google.javascript.jscomp.PerformanceTracker], java.util.Deque), var2390_pop/-801615857=([java.util.Deque], java.lang.Object), cast-from-var874-to-var410=([java.lang.Object], com.google.javascript.jscomp.PerformanceTracker$Stats), pass/1221692000=([com.google.javascript.jscomp.PerformanceTracker$Stats], java.lang.String), var1768_checkState/1431124798=([boolean], void), log/1842251589=([com.google.javascript.jscomp.PerformanceTracker], java.util.List), var2945_add/328494887=([java.util.List, java.lang.Object], boolean), cast-from-var410-to-var874=([com.google.javascript.jscomp.PerformanceTracker$Stats], java.lang.Object), runtime/1221692000=([com.google.javascript.jscomp.PerformanceTracker$Stats], long), allocMem/1221692000=([com.google.javascript.jscomp.PerformanceTracker$Stats], int), runs/1221692000=([com.google.javascript.jscomp.PerformanceTracker$Stats], int), codeChange/1842251589=([com.google.javascript.jscomp.PerformanceTracker], com.google.javascript.jscomp.RecentChange), hasCodeChanged/1288683526=([com.google.javascript.jscomp.RecentChange], boolean)}
; {var3520=com.google.javascript.jscomp.PerformanceTracker, var1020=r0, var604=r4, var2976=null_type, var1083=l1, var1512=i0, var2390=java.util.Deque, var981=$r1, var874=java.lang.Object, var12=$r2, var410=com.google.javascript.jscomp.PerformanceTracker$Stats, var1690=r3, var280=$r5, var2176=$z0, var1768=com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions, var2945=java.util.List, var790=$r6, var2512=com.google.javascript.jscomp.RecentChange, var1996=$r7, var2422=$z1, var2984=$z2, var1685=$r8, var3869=$z3}
; {com.google.javascript.jscomp.PerformanceTracker=var3520, r0=var1020, r4=var604, null_type=var2976, l1=var1083, i0=var1512, java.util.Deque=var2390, $r1=var981, java.lang.Object=var874, $r2=var12, com.google.javascript.jscomp.PerformanceTracker$Stats=var410, r3=var1690, $r5=var280, $z0=var2176, com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions=var1768, java.util.List=var2945, $r6=var790, com.google.javascript.jscomp.RecentChange=var2512, $r7=var1996, $z1=var2422, $z2=var2984, $r8=var1685, $z3=var3869}
;seq <java.lang.String: boolean equals(java.lang.Object)>;	<java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 2}
;stmts r0 := @this: com.google.javascript.jscomp.PerformanceTracker;	r4 := @parameter0: java.lang.String;	l1 := @parameter1: long;	i0 = virtualinvoke r0.<com.google.javascript.jscomp.PerformanceTracker: int getAllocatedMegabytes()>();	$r1 = r0.<com.google.javascript.jscomp.PerformanceTracker: java.util.Deque currentPass>;	$r2 = interfaceinvoke $r1.<java.util.Deque: java.lang.Object pop()>();	r3 = (com.google.javascript.jscomp.PerformanceTracker$Stats) $r2;	$r5 = r3.<com.google.javascript.jscomp.PerformanceTracker$Stats: java.lang.String pass>;	$z0 = virtualinvoke r4.<java.lang.String: boolean equals(java.lang.Object)>($r5);	staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: void checkState(boolean)>($z0);	$r6 = r0.<com.google.javascript.jscomp.PerformanceTracker: java.util.List log>;	interfaceinvoke $r6.<java.util.List: boolean add(java.lang.Object)>(r3);	r3.<com.google.javascript.jscomp.PerformanceTracker$Stats: long runtime> = l1;	r3.<com.google.javascript.jscomp.PerformanceTracker$Stats: int allocMem> = i0;	r3.<com.google.javascript.jscomp.PerformanceTracker$Stats: int runs> = 1;	$r7 = r0.<com.google.javascript.jscomp.PerformanceTracker: com.google.javascript.jscomp.RecentChange codeChange>;	$z1 = virtualinvoke $r7.<com.google.javascript.jscomp.RecentChange: boolean hasCodeChanged()>();	if $z1 == 0 goto $z2 = virtualinvoke r4.<java.lang.String: boolean equals(java.lang.Object)>("parseInputs");	$z2 = virtualinvoke r4.<java.lang.String: boolean equals(java.lang.Object)>("parseInputs");	if $z2 == 0 goto $r8 = r0.<com.google.javascript.jscomp.PerformanceTracker: com.google.javascript.jscomp.RecentChange codeChange>;	$r8 = r0.<com.google.javascript.jscomp.PerformanceTracker: com.google.javascript.jscomp.RecentChange codeChange>;	$z3 = virtualinvoke $r8.<com.google.javascript.jscomp.RecentChange: boolean hasCodeChanged()>();	if $z3 == 0 goto return;	return
;block_num 4