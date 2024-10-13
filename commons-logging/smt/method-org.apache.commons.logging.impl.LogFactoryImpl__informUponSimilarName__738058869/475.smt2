(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3698 0)
(declare-sort var1794 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun regionMatches/-1964120983 (String Bool Int String Int Int) Bool)
(declare-const null-var3698 var3698)
(declare-const null-String String)
(declare-const var3698-PKG_LEN Int)
(declare-const var3234 var3698) ; Statement: r3 := @this: org.apache.commons.logging.impl.LogFactoryImpl 
(assert (not (= var3234 null-var3698)))
(declare-const var1369 String) ; Statement: r2 := @parameter0: java.lang.StringBuilder 
(assert (not (= var1369 null-String)))
(declare-const var1377 String) ; Statement: r0 := @parameter1: java.lang.String 
(assert (not (= var1377 null-String)))
(declare-const var505 String) ; Statement: r1 := @parameter2: java.lang.String 
(assert (not (= var505 null-String)))
(assert true)
(define-const var189 Bool (= var1377 var505)) ; Statement: $z0 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>(r1) 
 ; Statement: if $z0 == 0 goto $i0 = <org.apache.commons.logging.impl.LogFactoryImpl: int PKG_LEN> 
(assert (= (ite var189 1 0) 0)) ; Cond: $z0 == 0 
(define-const var3231 Int var3698-PKG_LEN) ; Statement: $i0 = <org.apache.commons.logging.impl.LogFactoryImpl: int PKG_LEN> 
(define-const var1728 Int (+ var3231 5)) ; Statement: $i1 = $i0 + 5 
(assert true)
(define-const var3338 Bool (regionMatches/-1964120983 var1377 (ite (= 1 1) true false) 0 var505 0 var1728)) ; Statement: $z1 = virtualinvoke r0.<java.lang.String: boolean regionMatches(boolean,int,java.lang.String,int,int)>(1, 0, r1, 0, $i1) 
 ; Statement: if $z1 == 0 goto return 
(assert (= (ite var3338 1 0) 0)) ; Cond: $z1 == 0 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {regionMatches/-1964120983=([java.lang.String, boolean, int, java.lang.String, int, int], boolean)}
; {var3698=org.apache.commons.logging.impl.LogFactoryImpl, var3234=r3, var1369=r2, var1377=r0, var1794=null_type, var505=r1, var189=$z0, var3231=$i0, var1728=$i1, var3338=$z1}
; {org.apache.commons.logging.impl.LogFactoryImpl=var3698, r3=var3234, r2=var1369, r0=var1377, null_type=var1794, r1=var505, $z0=var189, $i0=var3231, $i1=var1728, $z1=var3338}
;seq <java.lang.String: boolean equals(java.lang.Object)>;	<java.lang.String: boolean regionMatches(boolean,int,java.lang.String,int,int)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1,"<java.lang.String: boolean regionMatches(boolean,int,java.lang.String,int,int)>": 1}
;stmts r3 := @this: org.apache.commons.logging.impl.LogFactoryImpl;	r2 := @parameter0: java.lang.StringBuilder;	r0 := @parameter1: java.lang.String;	r1 := @parameter2: java.lang.String;	$z0 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>(r1);	if $z0 == 0 goto $i0 = <org.apache.commons.logging.impl.LogFactoryImpl: int PKG_LEN>;	$i0 = <org.apache.commons.logging.impl.LogFactoryImpl: int PKG_LEN>;	$i1 = $i0 + 5;	$z1 = virtualinvoke r0.<java.lang.String: boolean regionMatches(boolean,int,java.lang.String,int,int)>(1, 0, r1, 0, $i1);	if $z1 == 0 goto return;	return
;block_num 3