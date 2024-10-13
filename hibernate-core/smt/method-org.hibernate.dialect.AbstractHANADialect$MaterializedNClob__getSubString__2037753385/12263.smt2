(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3646 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun data/-934077959 (var3646) String)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(define-fun substring/-1240304868 ((s String) (begin Int) (end Int)) String (str.substr s begin (- end begin)))
(declare-const null-var3646 var3646)
(declare-const null-Int Int)
(declare-const var729 var3646) ; Statement: r0 := @this: org.hibernate.dialect.AbstractHANADialect$MaterializedNClob 
(assert (not (= var729 null-var3646)))
(declare-const var3058 Int) ; Statement: l0 := @parameter0: long 
(assert (not (= var3058 null-Int)))
(declare-const var1847 Int) ; Statement: i2 := @parameter1: int 
(assert (not (= var1847 null-Int)))
(define-const var2295 String (data/-934077959 var729)) ; Statement: $r1 = r0.<org.hibernate.dialect.AbstractHANADialect$MaterializedNClob: java.lang.String data> 
(define-const var2133 Int (- var3058 1)) ; Statement: $l1 = l0 - 1L 
(define-const var64 Int (cast-from-Int-to-Int var2133)) ; Statement: $i7 = (int) $l1 
(define-const var3912 Int (- var3058 1)) ; Statement: $l4 = l0 - 1L 
(define-const var606 Int (cast-from-Int-to-Int var1847)) ; Statement: $l3 = (long) i2 
(define-const var1055 Int (+ var3912 var606)) ; Statement: $l5 = $l4 + $l3 
(define-const var3153 Int (cast-from-Int-to-Int var1055)) ; Statement: $i6 = (int) $l5 
(assert (and true (and (>= var64 0) (>= (str.len var2295) var3153) (>= var3153 var64))))
(define-const var3799 String (substring/-1240304868 var2295 var64 var3153)) ; Statement: $r2 = virtualinvoke $r1.<java.lang.String: java.lang.String substring(int,int)>($i7, $i6) 
 ; Statement: return $r2 
(check-sat)
(get-model)
(get-unsat-core)
; {data/-934077959=([org.hibernate.dialect.AbstractHANADialect$MaterializedNClob], java.lang.String), cast-from-Int-to-Int=([long], int), substring/-1240304868=([java.lang.String, int, int], java.lang.String)}
; {var3646=org.hibernate.dialect.AbstractHANADialect$MaterializedNClob, var729=r0, var3058=l0, var1847=i2, var2295=$r1, var2133=$l1, var64=$i7, var3912=$l4, var606=$l3, var1055=$l5, var3153=$i6, var3799=$r2}
; {org.hibernate.dialect.AbstractHANADialect$MaterializedNClob=var3646, r0=var729, l0=var3058, i2=var1847, $r1=var2295, $l1=var2133, $i7=var64, $l4=var3912, $l3=var606, $l5=var1055, $i6=var3153, $r2=var3799}
;seq <java.lang.String: java.lang.String substring(int,int)>
;cnt {"<java.lang.String: java.lang.String substring(int,int)>": 1}
;stmts r0 := @this: org.hibernate.dialect.AbstractHANADialect$MaterializedNClob;	l0 := @parameter0: long;	i2 := @parameter1: int;	$r1 = r0.<org.hibernate.dialect.AbstractHANADialect$MaterializedNClob: java.lang.String data>;	$l1 = l0 - 1L;	$i7 = (int) $l1;	$l4 = l0 - 1L;	$l3 = (long) i2;	$l5 = $l4 + $l3;	$i6 = (int) $l5;	$r2 = virtualinvoke $r1.<java.lang.String: java.lang.String substring(int,int)>($i7, $i6);	return $r2
;block_num 1