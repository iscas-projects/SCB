(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3997 0)
(declare-sort var1940 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun cast-from-var3997-to-var1940 (var3997) var1940)
(declare-const null-var3997 var3997)
(declare-const null-var1940 var1940)
(declare-const var1322 var3997) ; Statement: r0 := @parameter0: java.lang.Object 
(assert (not (= var1322 null-var3997)))
(declare-const var996 var1940) ; Statement: r1 := @parameter1: org.hibernate.FlushMode 
(assert (not (= var996 null-var1940)))
(define-const var894 Bool false) ; Statement: $z0 = r0 instanceof org.hibernate.FlushMode 
 ; Statement: if $z0 == 0 goto $z1 = r0 instanceof javax.persistence.FlushModeType 
(assert (not (= (ite var894 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var1923 var1940 (cast-from-var3997-to-var1940 var1322)) ; Statement: r9 = (org.hibernate.FlushMode) r0 
 ; Statement: goto [?= (branch)] 
(assert true) ; Non Conditional
 ; Statement: if r9 != null goto return r9 
(assert (not (= var1923 null-var1940))) ; Cond: r9 != null 
 ; Statement: return r9 
(check-sat)
(get-model)
(get-unsat-core)
; {cast-from-var3997-to-var1940=([java.lang.Object], org.hibernate.FlushMode)}
; {var3997=java.lang.Object, var1322=r0, var1940=org.hibernate.FlushMode, var996=r1, var894=$z0, var1923=r9}
; {java.lang.Object=var3997, r0=var1322, org.hibernate.FlushMode=var1940, r1=var996, $z0=var894, r9=var1923}
;seq 
;cnt {}
;stmts r0 := @parameter0: java.lang.Object;	r1 := @parameter1: org.hibernate.FlushMode;	$z0 = r0 instanceof org.hibernate.FlushMode;	if $z0 == 0 goto $z1 = r0 instanceof javax.persistence.FlushModeType;	r9 = (org.hibernate.FlushMode) r0;	goto [?= (branch)];	if r9 != null goto return r9;	return r9
;block_num 4