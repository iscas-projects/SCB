(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2151 0)
(declare-sort var1406 0)
(declare-sort var3282 0)
(declare-sort var585 0)
(declare-sort var1885 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun currentPass/1842251589 (var2151) var3282)
(declare-fun var585-init () var585)
(declare-fun <init>/-954464246 (var585 String Bool) void)
(declare-fun var3282_push/-2122494828 (var3282 var1885) void)
(declare-fun cast-from-var585-to-var1885 (var585) var1885)
(declare-const null-var2151 var2151)
(declare-const null-String String)
(declare-const null-Bool Bool)
(declare-const var353 var2151) ; Statement: r0 := @this: com.google.javascript.jscomp.PerformanceTracker 
(assert (not (= var353 null-var2151)))
(declare-const var875 String) ; Statement: r2 := @parameter0: java.lang.String 
(assert (not (= var875 null-String)))
(declare-const var1109 Bool) ; Statement: z0 := @parameter1: boolean 
(assert (not (= var1109 null-Bool)))
(define-const var647 var3282 (currentPass/1842251589 var353)) ; Statement: $r3 = r0.<com.google.javascript.jscomp.PerformanceTracker: java.util.Deque currentPass> 
(define-const var2381 var585 var585-init) ; Statement: $r1 = new com.google.javascript.jscomp.PerformanceTracker$Stats 
(assert true)
;(assert (<init>/-954464246 var2381 var875 var1109)) ; Statement: specialinvoke $r1.<com.google.javascript.jscomp.PerformanceTracker$Stats: void <init>(java.lang.String,boolean)>(r2, z0) 

(declare-const var2381!1 var585)
(declare-const var875!1 String)
(declare-const var1109!1 Bool)
;(assert (var3282_push/-2122494828 var647 (cast-from-var585-to-var1885 var2381!1))) ; Statement: interfaceinvoke $r3.<java.util.Deque: void push(java.lang.Object)>($r1) 

(declare-const var647!1 var3282)
(declare-const var2381!2 var585)
(assert true)
(define-const var76 Bool (= var875!1 "toSource")) ; Statement: $z1 = virtualinvoke r2.<java.lang.String: boolean equals(java.lang.Object)>("toSource") 
 ; Statement: if $z1 != 0 goto return 
(assert (not (= (ite var76 1 0) 0))) ; Cond: $z1 != 0 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {currentPass/1842251589=([com.google.javascript.jscomp.PerformanceTracker], java.util.Deque), var585-init=([], com.google.javascript.jscomp.PerformanceTracker$Stats), <init>/-954464246=([com.google.javascript.jscomp.PerformanceTracker$Stats, java.lang.String, boolean], void), var3282_push/-2122494828=([java.util.Deque, java.lang.Object], void), cast-from-var585-to-var1885=([com.google.javascript.jscomp.PerformanceTracker$Stats], java.lang.Object)}
; {var2151=com.google.javascript.jscomp.PerformanceTracker, var353=r0, var875=r2, var1406=null_type, var1109=z0, var3282=java.util.Deque, var647=$r3, var585=com.google.javascript.jscomp.PerformanceTracker$Stats, var2381=$r1, var1885=java.lang.Object, var76=$z1}
; {com.google.javascript.jscomp.PerformanceTracker=var2151, r0=var353, r2=var875, null_type=var1406, z0=var1109, java.util.Deque=var3282, $r3=var647, com.google.javascript.jscomp.PerformanceTracker$Stats=var585, $r1=var2381, java.lang.Object=var1885, $z1=var76}
;seq <java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.PerformanceTracker;	r2 := @parameter0: java.lang.String;	z0 := @parameter1: boolean;	$r3 = r0.<com.google.javascript.jscomp.PerformanceTracker: java.util.Deque currentPass>;	$r1 = new com.google.javascript.jscomp.PerformanceTracker$Stats;	specialinvoke $r1.<com.google.javascript.jscomp.PerformanceTracker$Stats: void <init>(java.lang.String,boolean)>(r2, z0);	interfaceinvoke $r3.<java.util.Deque: void push(java.lang.Object)>($r1);	$z1 = virtualinvoke r2.<java.lang.String: boolean equals(java.lang.Object)>("toSource");	if $z1 != 0 goto return;	return
;block_num 2