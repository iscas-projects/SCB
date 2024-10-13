(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3089 0)
(declare-sort var3423 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun data/-934077959 (var3089) String)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(define-fun indexOf/1795197748 ((s String) (subs String) (fromIndex Int)) Int (str.indexof s subs fromIndex))
(declare-const null-var3089 var3089)
(declare-const null-String String)
(declare-const null-Int Int)
(declare-const var3416 var3089) ; Statement: r0 := @this: org.hibernate.dialect.AbstractHANADialect$MaterializedNClob 
(assert (not (= var3416 null-var3089)))
(declare-const var1972 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var1972 null-String)))
(declare-const var264 Int) ; Statement: l0 := @parameter1: long 
(assert (not (= var264 null-Int)))
(define-const var3016 String (data/-934077959 var3416)) ; Statement: $r2 = r0.<org.hibernate.dialect.AbstractHANADialect$MaterializedNClob: java.lang.String data> 
(define-const var59 Int (- var264 1)) ; Statement: $l1 = l0 - 1L 
(define-const var3068 Int (cast-from-Int-to-Int var59)) ; Statement: $i2 = (int) $l1 
(assert true)
(define-const var1303 Int (indexOf/1795197748 var3016 var1972 var3068)) ; Statement: $i3 = virtualinvoke $r2.<java.lang.String: int indexOf(java.lang.String,int)>(r1, $i2) 
(define-const var289 Int (cast-from-Int-to-Int var1303)) ; Statement: $l4 = (long) $i3 
 ; Statement: return $l4 
(check-sat)
(get-model)
(get-unsat-core)
; {data/-934077959=([org.hibernate.dialect.AbstractHANADialect$MaterializedNClob], java.lang.String), cast-from-Int-to-Int=([long], int), indexOf/1795197748=([java.lang.String, java.lang.String, int], int)}
; {var3089=org.hibernate.dialect.AbstractHANADialect$MaterializedNClob, var3416=r0, var1972=r1, var3423=null_type, var264=l0, var3016=$r2, var59=$l1, var3068=$i2, var1303=$i3, var289=$l4}
; {org.hibernate.dialect.AbstractHANADialect$MaterializedNClob=var3089, r0=var3416, r1=var1972, null_type=var3423, l0=var264, $r2=var3016, $l1=var59, $i2=var3068, $i3=var1303, $l4=var289}
;seq <java.lang.String: int indexOf(java.lang.String,int)>
;cnt {"<java.lang.String: int indexOf(java.lang.String,int)>": 1}
;stmts r0 := @this: org.hibernate.dialect.AbstractHANADialect$MaterializedNClob;	r1 := @parameter0: java.lang.String;	l0 := @parameter1: long;	$r2 = r0.<org.hibernate.dialect.AbstractHANADialect$MaterializedNClob: java.lang.String data>;	$l1 = l0 - 1L;	$i2 = (int) $l1;	$i3 = virtualinvoke $r2.<java.lang.String: int indexOf(java.lang.String,int)>(r1, $i2);	$l4 = (long) $i3;	return $l4
;block_num 1