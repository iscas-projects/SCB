(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3079 0)
(declare-sort var416 0)
(declare-sort var3419 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun <init>/-279557996 (var416) void)
(declare-fun cast-from-var3079-to-var416 (var3079) var416)
(declare-fun maxSize/1914422220 (var3079) Int)
(declare-fun arr-var3419-init () (Array Int var3419))
(declare-fun ea/1914422220 (var3079) (Array Int var3419))
(declare-fun first/1914422220 (var3079) Int)
(declare-fun last/1914422220 (var3079) Int)
(declare-fun numElems/1914422220 (var3079) Int)
(declare-const null-var3079 var3079)
(declare-const null-Int Int)
(declare-const var2313 var3079) ; Statement: r0 := @this: org.apache.log4j.helpers.CyclicBuffer 
(assert (not (= var2313 null-var3079)))
(declare-const var2552 Int) ; Statement: i0 := @parameter0: int 
(assert (not (= var2552 null-Int)))
(assert true)
;(assert (<init>/-279557996 (cast-from-var3079-to-var416 var2313))) ; Statement: specialinvoke r0.<java.lang.Object: void <init>()>() 

(declare-const var2313!1 var3079)
 ; Statement: if i0 >= 1 goto r0.<org.apache.log4j.helpers.CyclicBuffer: int maxSize> = i0 
(assert (>= var2552 1)) ; Cond: i0 >= 1 
(declare-const var2313!2 var3079)
(assert (not (= var2313!2 null-var3079)))
(assert (= (maxSize/1914422220 var2313!2) var2552)) ; Statement: r0.<org.apache.log4j.helpers.CyclicBuffer: int maxSize> = i0 
(define-const var1285 (Array Int var3419) arr-var3419-init) ; Statement: $r1 = newarray (org.apache.log4j.spi.LoggingEvent)[i0] 
(declare-const var2313!3 var3079)
(assert (not (= var2313!3 null-var3079)))
(assert (= (ea/1914422220 var2313!3) var1285)) ; Statement: r0.<org.apache.log4j.helpers.CyclicBuffer: org.apache.log4j.spi.LoggingEvent[] ea> = $r1 
(declare-const var2313!4 var3079)
(assert (not (= var2313!4 null-var3079)))
(assert (= (first/1914422220 var2313!4) 0)) ; Statement: r0.<org.apache.log4j.helpers.CyclicBuffer: int first> = 0 
(declare-const var2313!5 var3079)
(assert (not (= var2313!5 null-var3079)))
(assert (= (last/1914422220 var2313!5) 0)) ; Statement: r0.<org.apache.log4j.helpers.CyclicBuffer: int last> = 0 
(declare-const var2313!6 var3079)
(assert (not (= var2313!6 null-var3079)))
(assert (= (numElems/1914422220 var2313!6) 0)) ; Statement: r0.<org.apache.log4j.helpers.CyclicBuffer: int numElems> = 0 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {<init>/-279557996=([java.lang.Object], void), cast-from-var3079-to-var416=([org.apache.log4j.helpers.CyclicBuffer], java.lang.Object), maxSize/1914422220=([org.apache.log4j.helpers.CyclicBuffer], int), arr-var3419-init=([], org.apache.log4j.spi.LoggingEvent[]), ea/1914422220=([org.apache.log4j.helpers.CyclicBuffer], org.apache.log4j.spi.LoggingEvent[]), first/1914422220=([org.apache.log4j.helpers.CyclicBuffer], int), last/1914422220=([org.apache.log4j.helpers.CyclicBuffer], int), numElems/1914422220=([org.apache.log4j.helpers.CyclicBuffer], int)}
; {var3079=org.apache.log4j.helpers.CyclicBuffer, var2313=r0, var2552=i0, var416=java.lang.Object, var3419=org.apache.log4j.spi.LoggingEvent, var1285=$r1}
; {org.apache.log4j.helpers.CyclicBuffer=var3079, r0=var2313, i0=var2552, java.lang.Object=var416, org.apache.log4j.spi.LoggingEvent=var3419, $r1=var1285}
;seq 
;cnt {}
;stmts r0 := @this: org.apache.log4j.helpers.CyclicBuffer;	i0 := @parameter0: int;	specialinvoke r0.<java.lang.Object: void <init>()>();	if i0 >= 1 goto r0.<org.apache.log4j.helpers.CyclicBuffer: int maxSize> = i0;	r0.<org.apache.log4j.helpers.CyclicBuffer: int maxSize> = i0;	$r1 = newarray (org.apache.log4j.spi.LoggingEvent)[i0];	r0.<org.apache.log4j.helpers.CyclicBuffer: org.apache.log4j.spi.LoggingEvent[] ea> = $r1;	r0.<org.apache.log4j.helpers.CyclicBuffer: int first> = 0;	r0.<org.apache.log4j.helpers.CyclicBuffer: int last> = 0;	r0.<org.apache.log4j.helpers.CyclicBuffer: int numElems> = 0;	return
;block_num 2