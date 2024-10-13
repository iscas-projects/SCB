(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1399 0)
(declare-sort var2151 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var2151-init () var2151)
(declare-fun data/-934077959 (var1399) String)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(define-fun substring/-1240304868 ((s String) (begin Int) (end Int)) String (str.substr s begin (- end begin)))
(declare-fun <init>/814598262 (var2151 String) void)
(declare-const null-var1399 var1399)
(declare-const null-Int Int)
(declare-const var2053 var1399) ; Statement: r1 := @this: org.hibernate.dialect.AbstractHANADialect$MaterializedNClob 
(assert (not (= var2053 null-var1399)))
(declare-const var321 Int) ; Statement: l0 := @parameter0: long 
(assert (not (= var321 null-Int)))
(declare-const var3497 Int) ; Statement: l2 := @parameter1: long 
(assert (not (= var3497 null-Int)))
(define-const var3999 var2151 var2151-init) ; Statement: $r0 = new java.io.StringReader 
(define-const var1011 String (data/-934077959 var2053)) ; Statement: $r2 = r1.<org.hibernate.dialect.AbstractHANADialect$MaterializedNClob: java.lang.String data> 
(define-const var3821 Int (- var321 1)) ; Statement: $l1 = l0 - 1L 
(define-const var1284 Int (cast-from-Int-to-Int var3821)) ; Statement: $i6 = (int) $l1 
(define-const var1293 Int (- var321 1)) ; Statement: $l3 = l0 - 1L 
(define-const var3607 Int (+ var1293 var3497)) ; Statement: $l4 = $l3 + l2 
(define-const var909 Int (cast-from-Int-to-Int var3607)) ; Statement: $i5 = (int) $l4 
(assert (and true (and (>= var1284 0) (>= (str.len var1011) var909) (>= var909 var1284))))
(define-const var2930 String (substring/-1240304868 var1011 var1284 var909)) ; Statement: $r3 = virtualinvoke $r2.<java.lang.String: java.lang.String substring(int,int)>($i6, $i5) 
(assert true)
;(assert (<init>/814598262 var3999 var2930)) ; Statement: specialinvoke $r0.<java.io.StringReader: void <init>(java.lang.String)>($r3) 

(declare-const var3999!1 var2151)
(declare-const var2930!1 String)
 ; Statement: return $r0 
(check-sat)
(get-model)
(get-unsat-core)
; {var2151-init=([], java.io.StringReader), data/-934077959=([org.hibernate.dialect.AbstractHANADialect$MaterializedNClob], java.lang.String), cast-from-Int-to-Int=([long], int), substring/-1240304868=([java.lang.String, int, int], java.lang.String), <init>/814598262=([java.io.StringReader, java.lang.String], void)}
; {var1399=org.hibernate.dialect.AbstractHANADialect$MaterializedNClob, var2053=r1, var321=l0, var3497=l2, var2151=java.io.StringReader, var3999=$r0, var1011=$r2, var3821=$l1, var1284=$i6, var1293=$l3, var3607=$l4, var909=$i5, var2930=$r3}
; {org.hibernate.dialect.AbstractHANADialect$MaterializedNClob=var1399, r1=var2053, l0=var321, l2=var3497, java.io.StringReader=var2151, $r0=var3999, $r2=var1011, $l1=var3821, $i6=var1284, $l3=var1293, $l4=var3607, $i5=var909, $r3=var2930}
;seq <java.lang.String: java.lang.String substring(int,int)>
;cnt {"<java.lang.String: java.lang.String substring(int,int)>": 1}
;stmts r1 := @this: org.hibernate.dialect.AbstractHANADialect$MaterializedNClob;	l0 := @parameter0: long;	l2 := @parameter1: long;	$r0 = new java.io.StringReader;	$r2 = r1.<org.hibernate.dialect.AbstractHANADialect$MaterializedNClob: java.lang.String data>;	$l1 = l0 - 1L;	$i6 = (int) $l1;	$l3 = l0 - 1L;	$l4 = $l3 + l2;	$i5 = (int) $l4;	$r3 = virtualinvoke $r2.<java.lang.String: java.lang.String substring(int,int)>($i6, $i5);	specialinvoke $r0.<java.io.StringReader: void <init>(java.lang.String)>($r3);	return $r0
;block_num 1