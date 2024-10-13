(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2278 0)
(declare-sort var2071 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-const null-var2278 var2278)
(declare-const null-var2071 var2071)
(declare-const var215 var2278) ; Statement: r1 := @this: org.apache.tomcat.util.buf.StringCache$CharEntry 
(assert (not (= var215 null-var2278)))
(declare-const var3549 var2071) ; Statement: r0 := @parameter0: java.lang.Object 
(assert (not (= var3549 null-var2071)))
(define-const var1693 Bool false) ; Statement: $z0 = r0 instanceof org.apache.tomcat.util.buf.StringCache$CharEntry 
 ; Statement: if $z0 == 0 goto return 0 
(assert (= (ite var1693 1 0) 0)) ; Cond: $z0 == 0 
 ; Statement: return 0 
(check-sat)
(get-model)
(get-unsat-core)
; {}
; {var2278=org.apache.tomcat.util.buf.StringCache$CharEntry, var215=r1, var2071=java.lang.Object, var3549=r0, var1693=$z0}
; {org.apache.tomcat.util.buf.StringCache$CharEntry=var2278, r1=var215, java.lang.Object=var2071, r0=var3549, $z0=var1693}
;seq 
;cnt {}
;stmts r1 := @this: org.apache.tomcat.util.buf.StringCache$CharEntry;	r0 := @parameter0: java.lang.Object;	$z0 = r0 instanceof org.apache.tomcat.util.buf.StringCache$CharEntry;	if $z0 == 0 goto return 0;	return 0
;block_num 2