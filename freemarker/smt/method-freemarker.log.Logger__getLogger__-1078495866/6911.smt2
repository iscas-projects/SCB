(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1452 0)
(declare-sort var3934 0)
(declare-sort var2463 0)
(declare-sort var2151 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-const null-String String)
(declare-const var3934-categoryPrefix String)
(declare-const var3934-loggersByCategory var2463)
(declare-const null-var2151 var2151)
(declare-const var1737 String) ; Statement: r12 := @parameter0: java.lang.String 
(assert (not (= var1737 null-String)))
(define-const var2435 String var3934-categoryPrefix) ; Statement: $r0 = <freemarker.log.Logger: java.lang.String categoryPrefix> 
(assert true)
(define-const var3777 Int (length/-134980193 var2435)) ; Statement: $i0 = virtualinvoke $r0.<java.lang.String: int length()>() 
 ; Statement: if $i0 == 0 goto $r1 = <freemarker.log.Logger: java.util.Map loggersByCategory> 
(assert (= var3777 0)) ; Cond: $i0 == 0 
(define-const var3604 var2463 var3934-loggersByCategory) ; Statement: $r1 = <freemarker.log.Logger: java.util.Map loggersByCategory> 
 ; Statement: entermonitor $r1 
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var1193 var2151) ; Statement: $r11 := @caughtexception 
(assert (not (= var1193 null-var2151)))
(assert true) ; Non Conditional
 ; Statement: exitmonitor $r1 
(assert true) ; Non Conditional
 ; Statement: throw $r11 
(check-sat)
(get-model)
(get-unsat-core)
; {length/-134980193=([java.lang.String], int)}
; {var1737=r12, var1452=null_type, var3934=freemarker.log.Logger, var2435=$r0, var3777=$i0, var2463=java.util.Map, var3604=$r1, var2151=java.lang.Throwable, var1193=$r11}
; {r12=var1737, null_type=var1452, freemarker.log.Logger=var3934, $r0=var2435, $i0=var3777, java.util.Map=var2463, $r1=var3604, java.lang.Throwable=var2151, $r11=var1193}
;seq <java.lang.String: int length()>
;cnt {"<java.lang.String: int length()>": 1}
;stmts r12 := @parameter0: java.lang.String;	$r0 = <freemarker.log.Logger: java.lang.String categoryPrefix>;	$i0 = virtualinvoke $r0.<java.lang.String: int length()>();	if $i0 == 0 goto $r1 = <freemarker.log.Logger: java.util.Map loggersByCategory>;	$r1 = <freemarker.log.Logger: java.util.Map loggersByCategory>;	entermonitor $r1;	$r11 := @caughtexception;	exitmonitor $r1;	throw $r11
;block_num 5