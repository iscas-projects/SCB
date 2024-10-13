(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var203 0)
(declare-sort var2616 0)
(declare-sort var1764 0)
(declare-sort var2470 0)
(declare-sort var1260 0)
(declare-sort var840 0)
(declare-sort var896 0)
(declare-sort var3057 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getAllocatedMegabytes/1864328501 (var203) Int)
(declare-fun currentPass/1842251589 (var203) var1764)
(declare-fun var1764_pop/-801615857 (var1764) var2470)
(declare-fun cast-from-var2470-to-var1260 (var2470) var1260)
(declare-fun pass/1221692000 (var1260) String)
(declare-fun var840_checkState/1431124798 (Bool) void)
(declare-fun log/1842251589 (var203) var896)
(declare-fun var896_add/328494887 (var896 var2470) Bool)
(declare-fun cast-from-var1260-to-var2470 (var1260) var2470)
(declare-fun runtime/1221692000 (var1260) Int)
(declare-fun allocMem/1221692000 (var1260) Int)
(declare-fun runs/1221692000 (var1260) Int)
(declare-fun codeChange/1842251589 (var203) var3057)
(declare-fun hasCodeChanged/1288683526 (var3057) Bool)
(declare-fun recordParsingStop/1478230993 (var203 var1260) void)
(declare-const null-var203 var203)
(declare-const null-String String)
(declare-const null-Int Int)
(declare-const null-var1260 var1260)
(declare-const var1768 var203) ; Statement: r0 := @this: com.google.javascript.jscomp.PerformanceTracker 
(assert (not (= var1768 null-var203)))
(declare-const var3819 String) ; Statement: r4 := @parameter0: java.lang.String 
(assert (not (= var3819 null-String)))
(declare-const var3334 Int) ; Statement: l1 := @parameter1: long 
(assert (not (= var3334 null-Int)))
(assert true)
(define-const var2647 Int (getAllocatedMegabytes/1864328501 var1768)) ; Statement: i0 = virtualinvoke r0.<com.google.javascript.jscomp.PerformanceTracker: int getAllocatedMegabytes()>() 
(define-const var3761 var1764 (currentPass/1842251589 var1768)) ; Statement: $r1 = r0.<com.google.javascript.jscomp.PerformanceTracker: java.util.Deque currentPass> 
(define-const var3958 var2470 (var1764_pop/-801615857 var3761)) ; Statement: $r2 = interfaceinvoke $r1.<java.util.Deque: java.lang.Object pop()>() 
(define-const var3957 var1260 (cast-from-var2470-to-var1260 var3958)) ; Statement: r3 = (com.google.javascript.jscomp.PerformanceTracker$Stats) $r2 
(define-const var2204 String (pass/1221692000 var3957)) ; Statement: $r5 = r3.<com.google.javascript.jscomp.PerformanceTracker$Stats: java.lang.String pass> 
(assert true)
(define-const var1670 Bool (= var3819 var2204)) ; Statement: $z0 = virtualinvoke r4.<java.lang.String: boolean equals(java.lang.Object)>($r5) 
;(assert (var840_checkState/1431124798 var1670)) ; Statement: staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: void checkState(boolean)>($z0) 

(declare-const var1670!1 Bool)
(define-const var2485 var896 (log/1842251589 var1768)) ; Statement: $r6 = r0.<com.google.javascript.jscomp.PerformanceTracker: java.util.List log> 
;(assert (var896_add/328494887 var2485 (cast-from-var1260-to-var2470 var3957))) ; Statement: interfaceinvoke $r6.<java.util.List: boolean add(java.lang.Object)>(r3) 

(declare-const var2485!1 var896)
(declare-const var3957!1 var1260)
(declare-const var3957!2 var1260)
(assert (not (= var3957!2 null-var1260)))
(assert (= (runtime/1221692000 var3957!2) var3334)) ; Statement: r3.<com.google.javascript.jscomp.PerformanceTracker$Stats: long runtime> = l1 
(declare-const var3957!3 var1260)
(assert (not (= var3957!3 null-var1260)))
(assert (= (allocMem/1221692000 var3957!3) var2647)) ; Statement: r3.<com.google.javascript.jscomp.PerformanceTracker$Stats: int allocMem> = i0 
(declare-const var3957!4 var1260)
(assert (not (= var3957!4 null-var1260)))
(assert (= (runs/1221692000 var3957!4) 1)) ; Statement: r3.<com.google.javascript.jscomp.PerformanceTracker$Stats: int runs> = 1 
(define-const var3699 var3057 (codeChange/1842251589 var1768)) ; Statement: $r7 = r0.<com.google.javascript.jscomp.PerformanceTracker: com.google.javascript.jscomp.RecentChange codeChange> 
(assert true)
(define-const var1519 Bool (hasCodeChanged/1288683526 var3699)) ; Statement: $z1 = virtualinvoke $r7.<com.google.javascript.jscomp.RecentChange: boolean hasCodeChanged()>() 
 ; Statement: if $z1 == 0 goto $z2 = virtualinvoke r4.<java.lang.String: boolean equals(java.lang.Object)>("parseInputs") 
(assert (= (ite var1519 1 0) 0)) ; Cond: $z1 == 0 
(assert true)
(define-const var1017 Bool (= var3819 "parseInputs")) ; Statement: $z2 = virtualinvoke r4.<java.lang.String: boolean equals(java.lang.Object)>("parseInputs") 
 ; Statement: if $z2 == 0 goto $r8 = r0.<com.google.javascript.jscomp.PerformanceTracker: com.google.javascript.jscomp.RecentChange codeChange> 
(assert (not (= (ite var1017 1 0) 0))) ; Negate: Cond: $z2 == 0  
(assert true)
;(assert (recordParsingStop/1478230993 var1768 var3957!4)) ; Statement: virtualinvoke r0.<com.google.javascript.jscomp.PerformanceTracker: void recordParsingStop(com.google.javascript.jscomp.PerformanceTracker$Stats)>(r3) 

(declare-const var1768!1 var203)
(declare-const var3957!5 var1260)
 ; Statement: goto [?= return] 
(assert true) ; Non Conditional
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {getAllocatedMegabytes/1864328501=([com.google.javascript.jscomp.PerformanceTracker], int), currentPass/1842251589=([com.google.javascript.jscomp.PerformanceTracker], java.util.Deque), var1764_pop/-801615857=([java.util.Deque], java.lang.Object), cast-from-var2470-to-var1260=([java.lang.Object], com.google.javascript.jscomp.PerformanceTracker$Stats), pass/1221692000=([com.google.javascript.jscomp.PerformanceTracker$Stats], java.lang.String), var840_checkState/1431124798=([boolean], void), log/1842251589=([com.google.javascript.jscomp.PerformanceTracker], java.util.List), var896_add/328494887=([java.util.List, java.lang.Object], boolean), cast-from-var1260-to-var2470=([com.google.javascript.jscomp.PerformanceTracker$Stats], java.lang.Object), runtime/1221692000=([com.google.javascript.jscomp.PerformanceTracker$Stats], long), allocMem/1221692000=([com.google.javascript.jscomp.PerformanceTracker$Stats], int), runs/1221692000=([com.google.javascript.jscomp.PerformanceTracker$Stats], int), codeChange/1842251589=([com.google.javascript.jscomp.PerformanceTracker], com.google.javascript.jscomp.RecentChange), hasCodeChanged/1288683526=([com.google.javascript.jscomp.RecentChange], boolean), recordParsingStop/1478230993=([com.google.javascript.jscomp.PerformanceTracker, com.google.javascript.jscomp.PerformanceTracker$Stats], void)}
; {var203=com.google.javascript.jscomp.PerformanceTracker, var1768=r0, var3819=r4, var2616=null_type, var3334=l1, var2647=i0, var1764=java.util.Deque, var3761=$r1, var2470=java.lang.Object, var3958=$r2, var1260=com.google.javascript.jscomp.PerformanceTracker$Stats, var3957=r3, var2204=$r5, var1670=$z0, var840=com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions, var896=java.util.List, var2485=$r6, var3057=com.google.javascript.jscomp.RecentChange, var3699=$r7, var1519=$z1, var1017=$z2}
; {com.google.javascript.jscomp.PerformanceTracker=var203, r0=var1768, r4=var3819, null_type=var2616, l1=var3334, i0=var2647, java.util.Deque=var1764, $r1=var3761, java.lang.Object=var2470, $r2=var3958, com.google.javascript.jscomp.PerformanceTracker$Stats=var1260, r3=var3957, $r5=var2204, $z0=var1670, com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions=var840, java.util.List=var896, $r6=var2485, com.google.javascript.jscomp.RecentChange=var3057, $r7=var3699, $z1=var1519, $z2=var1017}
;seq <java.lang.String: boolean equals(java.lang.Object)>;	<java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 2}
;stmts r0 := @this: com.google.javascript.jscomp.PerformanceTracker;	r4 := @parameter0: java.lang.String;	l1 := @parameter1: long;	i0 = virtualinvoke r0.<com.google.javascript.jscomp.PerformanceTracker: int getAllocatedMegabytes()>();	$r1 = r0.<com.google.javascript.jscomp.PerformanceTracker: java.util.Deque currentPass>;	$r2 = interfaceinvoke $r1.<java.util.Deque: java.lang.Object pop()>();	r3 = (com.google.javascript.jscomp.PerformanceTracker$Stats) $r2;	$r5 = r3.<com.google.javascript.jscomp.PerformanceTracker$Stats: java.lang.String pass>;	$z0 = virtualinvoke r4.<java.lang.String: boolean equals(java.lang.Object)>($r5);	staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: void checkState(boolean)>($z0);	$r6 = r0.<com.google.javascript.jscomp.PerformanceTracker: java.util.List log>;	interfaceinvoke $r6.<java.util.List: boolean add(java.lang.Object)>(r3);	r3.<com.google.javascript.jscomp.PerformanceTracker$Stats: long runtime> = l1;	r3.<com.google.javascript.jscomp.PerformanceTracker$Stats: int allocMem> = i0;	r3.<com.google.javascript.jscomp.PerformanceTracker$Stats: int runs> = 1;	$r7 = r0.<com.google.javascript.jscomp.PerformanceTracker: com.google.javascript.jscomp.RecentChange codeChange>;	$z1 = virtualinvoke $r7.<com.google.javascript.jscomp.RecentChange: boolean hasCodeChanged()>();	if $z1 == 0 goto $z2 = virtualinvoke r4.<java.lang.String: boolean equals(java.lang.Object)>("parseInputs");	$z2 = virtualinvoke r4.<java.lang.String: boolean equals(java.lang.Object)>("parseInputs");	if $z2 == 0 goto $r8 = r0.<com.google.javascript.jscomp.PerformanceTracker: com.google.javascript.jscomp.RecentChange codeChange>;	virtualinvoke r0.<com.google.javascript.jscomp.PerformanceTracker: void recordParsingStop(com.google.javascript.jscomp.PerformanceTracker$Stats)>(r3);	goto [?= return];	return
;block_num 4