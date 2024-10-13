(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1403 0)
(declare-sort var3803 0)
(declare-sort var3665 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun generateIdTableName/735499089 (var3665 String) String)
(declare-fun cast-from-var1403-to-var3665 (var1403) var3665)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(define-fun substring/-1240304868 ((s String) (begin Int) (end Int)) String (str.substr s begin (- end begin)))
(declare-const null-var1403 var1403)
(declare-const null-String String)
(declare-const var688 var1403) ; Statement: r0 := @this: org.hibernate.dialect.TimesTenDialect$1 
(assert (not (= var688 null-var1403)))
(declare-const var3985 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var3985 null-String)))
(assert true)
(define-const var1988 String (generateIdTableName/735499089 (cast-from-var1403-to-var3665 var688) var3985)) ; Statement: r2 = specialinvoke r0.<org.hibernate.hql.spi.id.IdTableSupportStandardImpl: java.lang.String generateIdTableName(java.lang.String)>(r1) 
(assert true)
(define-const var2441 Int (length/-134980193 var1988)) ; Statement: $i0 = virtualinvoke r2.<java.lang.String: int length()>() 
 ; Statement: if $i0 <= 30 goto $r3 = r2 
(assert (not (<= var2441 30))) ; Negate: Cond: $i0 <= 30  
(assert (not (and true (and (>= 1 0) (>= (str.len var1988) 30) (>= 30 1)))))
(check-sat)
(get-model)
(get-unsat-core)
; {generateIdTableName/735499089=([org.hibernate.hql.spi.id.IdTableSupportStandardImpl, java.lang.String], java.lang.String), cast-from-var1403-to-var3665=([org.hibernate.dialect.TimesTenDialect$1], org.hibernate.hql.spi.id.IdTableSupportStandardImpl), length/-134980193=([java.lang.String], int), substring/-1240304868=([java.lang.String, int, int], java.lang.String)}
; {var1403=org.hibernate.dialect.TimesTenDialect$1, var688=r0, var3985=r1, var3803=null_type, var3665=org.hibernate.hql.spi.id.IdTableSupportStandardImpl, var1988=r2, var2441=$i0, var2836=$r3}
; {org.hibernate.dialect.TimesTenDialect$1=var1403, r0=var688, r1=var3985, null_type=var3803, org.hibernate.hql.spi.id.IdTableSupportStandardImpl=var3665, r2=var1988, $i0=var2441, $r3=var2836}
;seq <java.lang.String: int length()>;	<java.lang.String: java.lang.String substring(int,int)>
;cnt {"<java.lang.String: int length()>": 1,"<java.lang.String: java.lang.String substring(int,int)>": 1}
;stmts r0 := @this: org.hibernate.dialect.TimesTenDialect$1;	r1 := @parameter0: java.lang.String;	r2 = specialinvoke r0.<org.hibernate.hql.spi.id.IdTableSupportStandardImpl: java.lang.String generateIdTableName(java.lang.String)>(r1);	$i0 = virtualinvoke r2.<java.lang.String: int length()>();	if $i0 <= 30 goto $r3 = r2;	$r3 = virtualinvoke r2.<java.lang.String: java.lang.String substring(int,int)>(1, 30);	goto [?= return $r3];	return $r3
;block_num 3