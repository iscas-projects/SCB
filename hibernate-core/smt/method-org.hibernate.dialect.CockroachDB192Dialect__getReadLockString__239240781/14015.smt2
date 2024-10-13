(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3621 0)
(declare-sort var1114 0)
(declare-sort var581 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun getReadLockString/238544470 (var581 String Int) String)
(declare-fun cast-from-var3621-to-var581 (var3621) var581)
(declare-const null-var3621 var3621)
(declare-const null-String String)
(declare-const null-Int Int)
(declare-const var2436 var3621) ; Statement: r0 := @this: org.hibernate.dialect.CockroachDB192Dialect 
(assert (not (= var2436 null-var3621)))
(declare-const var1905 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var1905 null-String)))
(declare-const var1913 Int) ; Statement: i0 := @parameter1: int 
(assert (not (= var1913 null-Int)))
(define-const var1576 Int (cast-from-Int-to-Int (- 2))) ; Statement: $i2 = (int) -2 
 ; Statement: if i0 != $i2 goto $r2 = specialinvoke r0.<org.hibernate.dialect.Dialect: java.lang.String getReadLockString(java.lang.String,int)>(r1, i0) 
(assert (not (= var1913 var1576))) ; Cond: i0 != $i2 
(assert true)
(define-const var2595 String (getReadLockString/238544470 (cast-from-var3621-to-var581 var2436) var1905 var1913)) ; Statement: $r2 = specialinvoke r0.<org.hibernate.dialect.Dialect: java.lang.String getReadLockString(java.lang.String,int)>(r1, i0) 
 ; Statement: return $r2 
(check-sat)
(get-model)
(get-unsat-core)
; {cast-from-Int-to-Int=([int], int), getReadLockString/238544470=([org.hibernate.dialect.Dialect, java.lang.String, int], java.lang.String), cast-from-var3621-to-var581=([org.hibernate.dialect.CockroachDB192Dialect], org.hibernate.dialect.Dialect)}
; {var3621=org.hibernate.dialect.CockroachDB192Dialect, var2436=r0, var1905=r1, var1114=null_type, var1913=i0, var1576=$i2, var581=org.hibernate.dialect.Dialect, var2595=$r2}
; {org.hibernate.dialect.CockroachDB192Dialect=var3621, r0=var2436, r1=var1905, null_type=var1114, i0=var1913, $i2=var1576, org.hibernate.dialect.Dialect=var581, $r2=var2595}
;seq 
;cnt {}
;stmts r0 := @this: org.hibernate.dialect.CockroachDB192Dialect;	r1 := @parameter0: java.lang.String;	i0 := @parameter1: int;	$i2 = (int) -2;	if i0 != $i2 goto $r2 = specialinvoke r0.<org.hibernate.dialect.Dialect: java.lang.String getReadLockString(java.lang.String,int)>(r1, i0);	$r2 = specialinvoke r0.<org.hibernate.dialect.Dialect: java.lang.String getReadLockString(java.lang.String,int)>(r1, i0);	return $r2
;block_num 2