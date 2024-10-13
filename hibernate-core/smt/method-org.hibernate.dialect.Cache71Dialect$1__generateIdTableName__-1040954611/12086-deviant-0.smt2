(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1447 0)
(declare-sort var3536 0)
(declare-sort var3655 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun generateIdTableName/735499089 (var3655 String) String)
(declare-fun cast-from-var1447-to-var3655 (var1447) var3655)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(define-fun substring/-1240304868 ((s String) (begin Int) (end Int)) String (str.substr s begin (- end begin)))
(declare-const null-var1447 var1447)
(declare-const null-String String)
(declare-const var720 var1447) ; Statement: r0 := @this: org.hibernate.dialect.Cache71Dialect$1 
(assert (not (= var720 null-var1447)))
(declare-const var2486 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var2486 null-String)))
(assert true)
(define-const var2351 String (generateIdTableName/735499089 (cast-from-var1447-to-var3655 var720) var2486)) ; Statement: r2 = specialinvoke r0.<org.hibernate.hql.spi.id.IdTableSupportStandardImpl: java.lang.String generateIdTableName(java.lang.String)>(r1) 
(assert true)
(define-const var629 Int (length/-134980193 var2351)) ; Statement: $i0 = virtualinvoke r2.<java.lang.String: int length()>() 
 ; Statement: if $i0 <= 25 goto $r3 = r2 
(assert (not (<= var629 25))) ; Negate: Cond: $i0 <= 25  
(assert (not (and true (and (>= 1 0) (>= (str.len var2351) 25) (>= 25 1)))))
(check-sat)
(get-model)
(get-unsat-core)
; {generateIdTableName/735499089=([org.hibernate.hql.spi.id.IdTableSupportStandardImpl, java.lang.String], java.lang.String), cast-from-var1447-to-var3655=([org.hibernate.dialect.Cache71Dialect$1], org.hibernate.hql.spi.id.IdTableSupportStandardImpl), length/-134980193=([java.lang.String], int), substring/-1240304868=([java.lang.String, int, int], java.lang.String)}
; {var1447=org.hibernate.dialect.Cache71Dialect$1, var720=r0, var2486=r1, var3536=null_type, var3655=org.hibernate.hql.spi.id.IdTableSupportStandardImpl, var2351=r2, var629=$i0, var18=$r3}
; {org.hibernate.dialect.Cache71Dialect$1=var1447, r0=var720, r1=var2486, null_type=var3536, org.hibernate.hql.spi.id.IdTableSupportStandardImpl=var3655, r2=var2351, $i0=var629, $r3=var18}
;seq <java.lang.String: int length()>;	<java.lang.String: java.lang.String substring(int,int)>
;cnt {"<java.lang.String: int length()>": 1,"<java.lang.String: java.lang.String substring(int,int)>": 1}
;stmts r0 := @this: org.hibernate.dialect.Cache71Dialect$1;	r1 := @parameter0: java.lang.String;	r2 = specialinvoke r0.<org.hibernate.hql.spi.id.IdTableSupportStandardImpl: java.lang.String generateIdTableName(java.lang.String)>(r1);	$i0 = virtualinvoke r2.<java.lang.String: int length()>();	if $i0 <= 25 goto $r3 = r2;	$r3 = virtualinvoke r2.<java.lang.String: java.lang.String substring(int,int)>(1, 25);	goto [?= return $r3];	return $r3
;block_num 3