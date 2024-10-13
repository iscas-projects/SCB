(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3486 0)
(declare-sort var532 0)
(declare-sort var3673 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun getReadLockString/1164155235 (var3673 String Int) String)
(declare-fun cast-from-var3486-to-var3673 (var3486) var3673)
(declare-const null-var3486 var3486)
(declare-const null-String String)
(declare-const null-Int Int)
(declare-const var2794 var3486) ; Statement: r0 := @this: org.hibernate.dialect.PostgreSQL95Dialect 
(assert (not (= var2794 null-var3486)))
(declare-const var1533 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var1533 null-String)))
(declare-const var2327 Int) ; Statement: i0 := @parameter1: int 
(assert (not (= var2327 null-Int)))
(define-const var3839 Int (cast-from-Int-to-Int (- 2))) ; Statement: $i2 = (int) -2 
 ; Statement: if i0 != $i2 goto $r2 = specialinvoke r0.<org.hibernate.dialect.PostgreSQL94Dialect: java.lang.String getReadLockString(java.lang.String,int)>(r1, i0) 
(assert (not (= var2327 var3839))) ; Cond: i0 != $i2 
(assert true)
(define-const var1981 String (getReadLockString/1164155235 (cast-from-var3486-to-var3673 var2794) var1533 var2327)) ; Statement: $r2 = specialinvoke r0.<org.hibernate.dialect.PostgreSQL94Dialect: java.lang.String getReadLockString(java.lang.String,int)>(r1, i0) 
 ; Statement: return $r2 
(check-sat)
(get-model)
(get-unsat-core)
; {cast-from-Int-to-Int=([int], int), getReadLockString/1164155235=([org.hibernate.dialect.PostgreSQL81Dialect, java.lang.String, int], java.lang.String), cast-from-var3486-to-var3673=([org.hibernate.dialect.PostgreSQL95Dialect], org.hibernate.dialect.PostgreSQL81Dialect)}
; {var3486=org.hibernate.dialect.PostgreSQL95Dialect, var2794=r0, var1533=r1, var532=null_type, var2327=i0, var3839=$i2, var3673=org.hibernate.dialect.PostgreSQL81Dialect, var1981=$r2}
; {org.hibernate.dialect.PostgreSQL95Dialect=var3486, r0=var2794, r1=var1533, null_type=var532, i0=var2327, $i2=var3839, org.hibernate.dialect.PostgreSQL81Dialect=var3673, $r2=var1981}
;seq 
;cnt {}
;stmts r0 := @this: org.hibernate.dialect.PostgreSQL95Dialect;	r1 := @parameter0: java.lang.String;	i0 := @parameter1: int;	$i2 = (int) -2;	if i0 != $i2 goto $r2 = specialinvoke r0.<org.hibernate.dialect.PostgreSQL94Dialect: java.lang.String getReadLockString(java.lang.String,int)>(r1, i0);	$r2 = specialinvoke r0.<org.hibernate.dialect.PostgreSQL94Dialect: java.lang.String getReadLockString(java.lang.String,int)>(r1, i0);	return $r2
;block_num 2