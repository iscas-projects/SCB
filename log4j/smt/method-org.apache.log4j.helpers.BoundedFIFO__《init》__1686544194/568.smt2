(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2416 0)
(declare-sort var243 0)
(declare-sort var3777 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun <init>/-279557996 (var243) void)
(declare-fun cast-from-var2416-to-var243 (var2416) var243)
(declare-fun numElements/-1449898730 (var2416) Int)
(declare-fun first/-1449898730 (var2416) Int)
(declare-fun next/-1449898730 (var2416) Int)
(declare-fun maxSize/-1449898730 (var2416) Int)
(declare-fun arr-var3777-init () (Array Int var3777))
(declare-fun buf/-1449898730 (var2416) (Array Int var3777))
(declare-const null-var2416 var2416)
(declare-const null-Int Int)
(declare-const var2120 var2416) ; Statement: r0 := @this: org.apache.log4j.helpers.BoundedFIFO 
(assert (not (= var2120 null-var2416)))
(declare-const var113 Int) ; Statement: i0 := @parameter0: int 
(assert (not (= var113 null-Int)))
(assert true)
;(assert (<init>/-279557996 (cast-from-var2416-to-var243 var2120))) ; Statement: specialinvoke r0.<java.lang.Object: void <init>()>() 

(declare-const var2120!1 var2416)
(declare-const var2120!2 var2416)
(assert (not (= var2120!2 null-var2416)))
(assert (= (numElements/-1449898730 var2120!2) 0)) ; Statement: r0.<org.apache.log4j.helpers.BoundedFIFO: int numElements> = 0 
(declare-const var2120!3 var2416)
(assert (not (= var2120!3 null-var2416)))
(assert (= (first/-1449898730 var2120!3) 0)) ; Statement: r0.<org.apache.log4j.helpers.BoundedFIFO: int first> = 0 
(declare-const var2120!4 var2416)
(assert (not (= var2120!4 null-var2416)))
(assert (= (next/-1449898730 var2120!4) 0)) ; Statement: r0.<org.apache.log4j.helpers.BoundedFIFO: int next> = 0 
 ; Statement: if i0 >= 1 goto r0.<org.apache.log4j.helpers.BoundedFIFO: int maxSize> = i0 
(assert (>= var113 1)) ; Cond: i0 >= 1 
(declare-const var2120!5 var2416)
(assert (not (= var2120!5 null-var2416)))
(assert (= (maxSize/-1449898730 var2120!5) var113)) ; Statement: r0.<org.apache.log4j.helpers.BoundedFIFO: int maxSize> = i0 
(define-const var743 (Array Int var3777) arr-var3777-init) ; Statement: $r1 = newarray (org.apache.log4j.spi.LoggingEvent)[i0] 
(declare-const var2120!6 var2416)
(assert (not (= var2120!6 null-var2416)))
(assert (= (buf/-1449898730 var2120!6) var743)) ; Statement: r0.<org.apache.log4j.helpers.BoundedFIFO: org.apache.log4j.spi.LoggingEvent[] buf> = $r1 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {<init>/-279557996=([java.lang.Object], void), cast-from-var2416-to-var243=([org.apache.log4j.helpers.BoundedFIFO], java.lang.Object), numElements/-1449898730=([org.apache.log4j.helpers.BoundedFIFO], int), first/-1449898730=([org.apache.log4j.helpers.BoundedFIFO], int), next/-1449898730=([org.apache.log4j.helpers.BoundedFIFO], int), maxSize/-1449898730=([org.apache.log4j.helpers.BoundedFIFO], int), arr-var3777-init=([], org.apache.log4j.spi.LoggingEvent[]), buf/-1449898730=([org.apache.log4j.helpers.BoundedFIFO], org.apache.log4j.spi.LoggingEvent[])}
; {var2416=org.apache.log4j.helpers.BoundedFIFO, var2120=r0, var113=i0, var243=java.lang.Object, var3777=org.apache.log4j.spi.LoggingEvent, var743=$r1}
; {org.apache.log4j.helpers.BoundedFIFO=var2416, r0=var2120, i0=var113, java.lang.Object=var243, org.apache.log4j.spi.LoggingEvent=var3777, $r1=var743}
;seq 
;cnt {}
;stmts r0 := @this: org.apache.log4j.helpers.BoundedFIFO;	i0 := @parameter0: int;	specialinvoke r0.<java.lang.Object: void <init>()>();	r0.<org.apache.log4j.helpers.BoundedFIFO: int numElements> = 0;	r0.<org.apache.log4j.helpers.BoundedFIFO: int first> = 0;	r0.<org.apache.log4j.helpers.BoundedFIFO: int next> = 0;	if i0 >= 1 goto r0.<org.apache.log4j.helpers.BoundedFIFO: int maxSize> = i0;	r0.<org.apache.log4j.helpers.BoundedFIFO: int maxSize> = i0;	$r1 = newarray (org.apache.log4j.spi.LoggingEvent)[i0];	r0.<org.apache.log4j.helpers.BoundedFIFO: org.apache.log4j.spi.LoggingEvent[] buf> = $r1;	return
;block_num 2