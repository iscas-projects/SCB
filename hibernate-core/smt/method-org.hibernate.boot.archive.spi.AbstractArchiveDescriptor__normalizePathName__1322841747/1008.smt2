(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3567 0)
(declare-sort var485 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun startsWith/-1785782452 ((s String) (prefix String)) Bool (str.prefixof prefix s))
(declare-const null-var3567 var3567)
(declare-const null-String String)
(declare-const var242 var3567) ; Statement: r1 := @this: org.hibernate.boot.archive.spi.AbstractArchiveDescriptor 
(assert (not (= var242 null-var3567)))
(declare-const var2664 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var2664 null-String)))
(assert true)
(define-const var2814 Bool (startsWith/-1785782452 var2664 "/")) ; Statement: $z0 = virtualinvoke r0.<java.lang.String: boolean startsWith(java.lang.String)>("/") 
 ; Statement: if $z0 == 0 goto $r2 = r0 
(assert (= (ite var2814 1 0) 0)) ; Cond: $z0 == 0 
(define-const var292 String var2664) ; Statement: $r2 = r0 
(assert true) ; Non Conditional
 ; Statement: return $r2 
(check-sat)
(get-model)
(get-unsat-core)
; {startsWith/-1785782452=([java.lang.String, java.lang.String], boolean)}
; {var3567=org.hibernate.boot.archive.spi.AbstractArchiveDescriptor, var242=r1, var2664=r0, var485=null_type, var2814=$z0, var292=$r2}
; {org.hibernate.boot.archive.spi.AbstractArchiveDescriptor=var3567, r1=var242, r0=var2664, null_type=var485, $z0=var2814, $r2=var292}
;seq <java.lang.String: boolean startsWith(java.lang.String)>
;cnt {"<java.lang.String: boolean startsWith(java.lang.String)>": 1}
;stmts r1 := @this: org.hibernate.boot.archive.spi.AbstractArchiveDescriptor;	r0 := @parameter0: java.lang.String;	$z0 = virtualinvoke r0.<java.lang.String: boolean startsWith(java.lang.String)>("/");	if $z0 == 0 goto $r2 = r0;	$r2 = r0;	return $r2
;block_num 3