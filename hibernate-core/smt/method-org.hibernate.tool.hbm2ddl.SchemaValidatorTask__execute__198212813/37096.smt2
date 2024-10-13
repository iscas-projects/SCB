(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3736 0)
(declare-sort var2448 0)
(declare-sort var3735 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var2448-init () var2448)
(declare-const null-var3736 var3736)
(declare-const null-var3735 var3735)
(declare-const var2316 var3736) ; Statement: r1 := @this: org.hibernate.tool.hbm2ddl.SchemaValidatorTask 
(assert (not (= var2316 null-var3736)))
(define-const var2773 var2448 var2448-init) ; Statement: $r27 = new org.hibernate.boot.registry.StandardServiceRegistryBuilder 
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var3879 var3735) ; Statement: $r11 := @caughtexception 
(assert (not (= var3879 null-var3735)))
 ; Statement: throw $r11 
(check-sat)
(get-model)
(get-unsat-core)
; {var2448-init=([], org.hibernate.boot.registry.StandardServiceRegistryBuilder)}
; {var3736=org.hibernate.tool.hbm2ddl.SchemaValidatorTask, var2316=r1, var2448=org.hibernate.boot.registry.StandardServiceRegistryBuilder, var2773=$r27, var3735=java.lang.Throwable, var3879=$r11}
; {org.hibernate.tool.hbm2ddl.SchemaValidatorTask=var3736, r1=var2316, org.hibernate.boot.registry.StandardServiceRegistryBuilder=var2448, $r27=var2773, java.lang.Throwable=var3735, $r11=var3879}
;seq 
;cnt {}
;stmts r1 := @this: org.hibernate.tool.hbm2ddl.SchemaValidatorTask;	$r27 = new org.hibernate.boot.registry.StandardServiceRegistryBuilder;	$r11 := @caughtexception;	throw $r11
;block_num 2