(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var424 0)
(declare-sort var3120 0)
(declare-sort var3268 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var424_getName/-564791716 (var424) String)
(declare-fun toString/-522406933 (var3268) String)
(declare-fun cast-from-var424-to-var3268 (var424) var3268)
(declare-const null-var424 var424)
(declare-const null-String String)
(declare-const var863 var424) ; Statement: r0 := @parameter0: org.apache.log4j.Appender 
(assert (not (= var863 null-var424)))
(define-const var131 String (var424_getName/-564791716 var863)) ; Statement: r2 = interfaceinvoke r0.<org.apache.log4j.Appender: java.lang.String getName()>() 
 ; Statement: if r2 == null goto r2 = virtualinvoke r0.<java.lang.Object: java.lang.String toString()>() 
(assert (= var131 null-String)) ; Cond: r2 == null 
(assert true)
(define-const var131!1 String (toString/-522406933 (cast-from-var424-to-var3268 var863))) ; Statement: r2 = virtualinvoke r0.<java.lang.Object: java.lang.String toString()>() 
(assert true) ; Non Conditional
 ; Statement: return r2 
(check-sat)
(get-model)
(get-unsat-core)
; {var424_getName/-564791716=([org.apache.log4j.Appender], java.lang.String), toString/-522406933=([java.lang.Object], java.lang.String), cast-from-var424-to-var3268=([org.apache.log4j.Appender], java.lang.Object)}
; {var424=org.apache.log4j.Appender, var863=r0, var131=r2, var3120=null_type, var3268=java.lang.Object}
; {org.apache.log4j.Appender=var424, r0=var863, r2=var131, null_type=var3120, java.lang.Object=var3268}
;seq <java.lang.Object: java.lang.String toString()>
;cnt {}
;stmts r0 := @parameter0: org.apache.log4j.Appender;	r2 = interfaceinvoke r0.<org.apache.log4j.Appender: java.lang.String getName()>();	if r2 == null goto r2 = virtualinvoke r0.<java.lang.Object: java.lang.String toString()>();	r2 = virtualinvoke r0.<java.lang.Object: java.lang.String toString()>();	return r2
;block_num 3