(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var104 0)
(declare-sort var475 0)
(declare-sort var773 0)
(declare-sort var1553 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun monitor/674028316 (var104) var475)
(declare-fun isStartable/674028316 (var104) var773)
(declare-fun enterIf/-1391026303 (var475 var773) Bool)
(declare-fun leave/-1006761083 (var475) void)
(declare-fun dispatchListenerEvents/-466241168 (var104) void)
(declare-const null-var104 var104)
(declare-const null-var1553 var1553)
(declare-const var200 var104) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.com.google.common.util.concurrent.AbstractService 
(assert (not (= var200 null-var104)))
(define-const var1005 var475 (monitor/674028316 var200)) ; Statement: $r2 = r0.<com.google.javascript.jscomp.jarjar.com.google.common.util.concurrent.AbstractService: com.google.javascript.jscomp.jarjar.com.google.common.util.concurrent.Monitor monitor> 
(define-const var2487 var773 (isStartable/674028316 var200)) ; Statement: $r1 = r0.<com.google.javascript.jscomp.jarjar.com.google.common.util.concurrent.AbstractService: com.google.javascript.jscomp.jarjar.com.google.common.util.concurrent.Monitor$Guard isStartable> 
(assert true)
(define-const var3656 Bool (enterIf/-1391026303 var1005 var2487)) ; Statement: $z0 = virtualinvoke $r2.<com.google.javascript.jscomp.jarjar.com.google.common.util.concurrent.Monitor: boolean enterIf(com.google.javascript.jscomp.jarjar.com.google.common.util.concurrent.Monitor$Guard)>($r1) 
 ; Statement: if $z0 == 0 goto $r3 = new java.lang.IllegalStateException 
(assert (not (= (ite var3656 1 0) 0))) ; Negate: Cond: $z0 == 0  
(declare-const var3159 var1553) ; Statement: $r12 := @caughtexception 
(assert (not (= var3159 null-var1553)))
(define-const var1260 var475 (monitor/674028316 var200)) ; Statement: $r13 = r0.<com.google.javascript.jscomp.jarjar.com.google.common.util.concurrent.AbstractService: com.google.javascript.jscomp.jarjar.com.google.common.util.concurrent.Monitor monitor> 
(assert true)
;(assert (leave/-1006761083 var1260)) ; Statement: virtualinvoke $r13.<com.google.javascript.jscomp.jarjar.com.google.common.util.concurrent.Monitor: void leave()>() 

(declare-const var1260!1 var475)
(assert true)
;(assert (dispatchListenerEvents/-466241168 var200)) ; Statement: specialinvoke r0.<com.google.javascript.jscomp.jarjar.com.google.common.util.concurrent.AbstractService: void dispatchListenerEvents()>() 

(declare-const var200!1 var104)
 ; Statement: throw $r12 
(check-sat)
(get-model)
(get-unsat-core)
; {monitor/674028316=([com.google.javascript.jscomp.jarjar.com.google.common.util.concurrent.AbstractService], com.google.javascript.jscomp.jarjar.com.google.common.util.concurrent.Monitor), isStartable/674028316=([com.google.javascript.jscomp.jarjar.com.google.common.util.concurrent.AbstractService], com.google.javascript.jscomp.jarjar.com.google.common.util.concurrent.Monitor$Guard), enterIf/-1391026303=([com.google.javascript.jscomp.jarjar.com.google.common.util.concurrent.Monitor, com.google.javascript.jscomp.jarjar.com.google.common.util.concurrent.Monitor$Guard], boolean), leave/-1006761083=([com.google.javascript.jscomp.jarjar.com.google.common.util.concurrent.Monitor], void), dispatchListenerEvents/-466241168=([com.google.javascript.jscomp.jarjar.com.google.common.util.concurrent.AbstractService], void)}
; {var104=com.google.javascript.jscomp.jarjar.com.google.common.util.concurrent.AbstractService, var200=r0, var475=com.google.javascript.jscomp.jarjar.com.google.common.util.concurrent.Monitor, var1005=$r2, var773=com.google.javascript.jscomp.jarjar.com.google.common.util.concurrent.Monitor$Guard, var2487=$r1, var3656=$z0, var1553=java.lang.Throwable, var3159=$r12, var1260=$r13}
; {com.google.javascript.jscomp.jarjar.com.google.common.util.concurrent.AbstractService=var104, r0=var200, com.google.javascript.jscomp.jarjar.com.google.common.util.concurrent.Monitor=var475, $r2=var1005, com.google.javascript.jscomp.jarjar.com.google.common.util.concurrent.Monitor$Guard=var773, $r1=var2487, $z0=var3656, java.lang.Throwable=var1553, $r12=var3159, $r13=var1260}
;seq 
;cnt {}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.com.google.common.util.concurrent.AbstractService;	$r2 = r0.<com.google.javascript.jscomp.jarjar.com.google.common.util.concurrent.AbstractService: com.google.javascript.jscomp.jarjar.com.google.common.util.concurrent.Monitor monitor>;	$r1 = r0.<com.google.javascript.jscomp.jarjar.com.google.common.util.concurrent.AbstractService: com.google.javascript.jscomp.jarjar.com.google.common.util.concurrent.Monitor$Guard isStartable>;	$z0 = virtualinvoke $r2.<com.google.javascript.jscomp.jarjar.com.google.common.util.concurrent.Monitor: boolean enterIf(com.google.javascript.jscomp.jarjar.com.google.common.util.concurrent.Monitor$Guard)>($r1);	if $z0 == 0 goto $r3 = new java.lang.IllegalStateException;	$r12 := @caughtexception;	$r13 = r0.<com.google.javascript.jscomp.jarjar.com.google.common.util.concurrent.AbstractService: com.google.javascript.jscomp.jarjar.com.google.common.util.concurrent.Monitor monitor>;	virtualinvoke $r13.<com.google.javascript.jscomp.jarjar.com.google.common.util.concurrent.Monitor: void leave()>();	specialinvoke r0.<com.google.javascript.jscomp.jarjar.com.google.common.util.concurrent.AbstractService: void dispatchListenerEvents()>();	throw $r12
;block_num 2