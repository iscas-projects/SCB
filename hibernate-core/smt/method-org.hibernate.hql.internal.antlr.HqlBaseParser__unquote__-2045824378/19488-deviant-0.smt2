(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1725 0)
(declare-sort var1213 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(define-fun substring/-1240304868 ((s String) (begin Int) (end Int)) String (str.substr s begin (- end begin)))
(declare-const null-var1725 var1725)
(declare-const null-String String)
(declare-const var3352 var1725) ; Statement: r2 := @this: org.hibernate.hql.internal.antlr.HqlBaseParser 
(assert (not (= var3352 null-var1725)))
(declare-const var1764 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var1764 null-String)))
(assert true)
(define-const var2874 Int (length/-134980193 var1764)) ; Statement: $i0 = virtualinvoke r0.<java.lang.String: int length()>() 
(define-const var412 Int (- var2874 1)) ; Statement: $i1 = $i0 - 1 
(assert (not (and true (and (>= 1 0) (>= (str.len var1764) var412) (>= var412 1)))))
(check-sat)
(get-model)
(get-unsat-core)
; {length/-134980193=([java.lang.String], int), substring/-1240304868=([java.lang.String, int, int], java.lang.String)}
; {var1725=org.hibernate.hql.internal.antlr.HqlBaseParser, var3352=r2, var1764=r0, var1213=null_type, var2874=$i0, var412=$i1, var1880=$r1}
; {org.hibernate.hql.internal.antlr.HqlBaseParser=var1725, r2=var3352, r0=var1764, null_type=var1213, $i0=var2874, $i1=var412, $r1=var1880}
;seq <java.lang.String: int length()>;	<java.lang.String: java.lang.String substring(int,int)>
;cnt {"<java.lang.String: int length()>": 1,"<java.lang.String: java.lang.String substring(int,int)>": 1}
;stmts r2 := @this: org.hibernate.hql.internal.antlr.HqlBaseParser;	r0 := @parameter0: java.lang.String;	$i0 = virtualinvoke r0.<java.lang.String: int length()>();	$i1 = $i0 - 1;	$r1 = virtualinvoke r0.<java.lang.String: java.lang.String substring(int,int)>(1, $i1);	return $r1
;block_num 1