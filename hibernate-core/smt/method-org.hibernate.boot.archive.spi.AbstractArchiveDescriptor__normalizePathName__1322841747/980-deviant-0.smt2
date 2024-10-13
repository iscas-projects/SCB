(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2575 0)
(declare-sort var3881 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun startsWith/-1785782452 ((s String) (prefix String)) Bool (str.prefixof prefix s))
(define-fun substring/850833817 ((s String) (begin Int)) String (str.substr s begin (- (str.len s) begin)))
(declare-const null-var2575 var2575)
(declare-const null-String String)
(declare-const var2208 var2575) ; Statement: r1 := @this: org.hibernate.boot.archive.spi.AbstractArchiveDescriptor 
(assert (not (= var2208 null-var2575)))
(declare-const var2387 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var2387 null-String)))
(assert true)
(define-const var3089 Bool (startsWith/-1785782452 var2387 "/")) ; Statement: $z0 = virtualinvoke r0.<java.lang.String: boolean startsWith(java.lang.String)>("/") 
 ; Statement: if $z0 == 0 goto $r2 = r0 
(assert (not (= (ite var3089 1 0) 0))) ; Negate: Cond: $z0 == 0  
(assert (not (and true (and (>= 1 0) (>= (str.len var2387) 1)))))
(check-sat)
(get-model)
(get-unsat-core)
; {startsWith/-1785782452=([java.lang.String, java.lang.String], boolean), substring/850833817=([java.lang.String, int], java.lang.String)}
; {var2575=org.hibernate.boot.archive.spi.AbstractArchiveDescriptor, var2208=r1, var2387=r0, var3881=null_type, var3089=$z0, var1335=$r2}
; {org.hibernate.boot.archive.spi.AbstractArchiveDescriptor=var2575, r1=var2208, r0=var2387, null_type=var3881, $z0=var3089, $r2=var1335}
;seq <java.lang.String: boolean startsWith(java.lang.String)>;	<java.lang.String: java.lang.String substring(int)>
;cnt {"<java.lang.String: boolean startsWith(java.lang.String)>": 1,"<java.lang.String: java.lang.String substring(int)>": 1}
;stmts r1 := @this: org.hibernate.boot.archive.spi.AbstractArchiveDescriptor;	r0 := @parameter0: java.lang.String;	$z0 = virtualinvoke r0.<java.lang.String: boolean startsWith(java.lang.String)>("/");	if $z0 == 0 goto $r2 = r0;	$r2 = virtualinvoke r0.<java.lang.String: java.lang.String substring(int)>(1);	goto [?= return $r2];	return $r2
;block_num 3