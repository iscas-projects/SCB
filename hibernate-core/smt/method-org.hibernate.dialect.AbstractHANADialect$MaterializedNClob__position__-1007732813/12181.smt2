(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1684 0)
(declare-sort var273 0)
(declare-sort var1534 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun data/-934077959 (var1684) String)
(declare-fun var1534_extractString/-1914180119 (var273) String)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(define-fun indexOf/1795197748 ((s String) (subs String) (fromIndex Int)) Int (str.indexof s subs fromIndex))
(declare-const null-var1684 var1684)
(declare-const null-var273 var273)
(declare-const null-Int Int)
(declare-const var2711 var1684) ; Statement: r0 := @this: org.hibernate.dialect.AbstractHANADialect$MaterializedNClob 
(assert (not (= var2711 null-var1684)))
(declare-const var462 var273) ; Statement: r1 := @parameter0: java.sql.Clob 
(assert (not (= var462 null-var273)))
(declare-const var1412 Int) ; Statement: l0 := @parameter1: long 
(assert (not (= var1412 null-Int)))
(define-const var3184 String (data/-934077959 var2711)) ; Statement: $r2 = r0.<org.hibernate.dialect.AbstractHANADialect$MaterializedNClob: java.lang.String data> 
(define-const var763 String (var1534_extractString/-1914180119 var462)) ; Statement: $r3 = staticinvoke <org.hibernate.type.descriptor.java.DataHelper: java.lang.String extractString(java.sql.Clob)>(r1) 
(define-const var3595 Int (- var1412 1)) ; Statement: $l1 = l0 - 1L 
(define-const var741 Int (cast-from-Int-to-Int var3595)) ; Statement: $i2 = (int) $l1 
(assert true)
(define-const var979 Int (indexOf/1795197748 var3184 var763 var741)) ; Statement: $i3 = virtualinvoke $r2.<java.lang.String: int indexOf(java.lang.String,int)>($r3, $i2) 
(define-const var1026 Int (cast-from-Int-to-Int var979)) ; Statement: $l4 = (long) $i3 
 ; Statement: return $l4 
(check-sat)
(get-model)
(get-unsat-core)
; {data/-934077959=([org.hibernate.dialect.AbstractHANADialect$MaterializedNClob], java.lang.String), var1534_extractString/-1914180119=([java.sql.Clob], java.lang.String), cast-from-Int-to-Int=([long], int), indexOf/1795197748=([java.lang.String, java.lang.String, int], int)}
; {var1684=org.hibernate.dialect.AbstractHANADialect$MaterializedNClob, var2711=r0, var273=java.sql.Clob, var462=r1, var1412=l0, var3184=$r2, var1534=org.hibernate.type.descriptor.java.DataHelper, var763=$r3, var3595=$l1, var741=$i2, var979=$i3, var1026=$l4}
; {org.hibernate.dialect.AbstractHANADialect$MaterializedNClob=var1684, r0=var2711, java.sql.Clob=var273, r1=var462, l0=var1412, $r2=var3184, org.hibernate.type.descriptor.java.DataHelper=var1534, $r3=var763, $l1=var3595, $i2=var741, $i3=var979, $l4=var1026}
;seq <java.lang.String: int indexOf(java.lang.String,int)>
;cnt {"<java.lang.String: int indexOf(java.lang.String,int)>": 1}
;stmts r0 := @this: org.hibernate.dialect.AbstractHANADialect$MaterializedNClob;	r1 := @parameter0: java.sql.Clob;	l0 := @parameter1: long;	$r2 = r0.<org.hibernate.dialect.AbstractHANADialect$MaterializedNClob: java.lang.String data>;	$r3 = staticinvoke <org.hibernate.type.descriptor.java.DataHelper: java.lang.String extractString(java.sql.Clob)>(r1);	$l1 = l0 - 1L;	$i2 = (int) $l1;	$i3 = virtualinvoke $r2.<java.lang.String: int indexOf(java.lang.String,int)>($r3, $i2);	$l4 = (long) $i3;	return $l4
;block_num 1