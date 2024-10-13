(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3064 0)
(declare-sort var258 0)
(declare-sort var1821 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun generateIdTableName/735499089 (var1821 String) String)
(declare-fun cast-from-var3064-to-var1821 (var3064) var1821)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-const null-var3064 var3064)
(declare-const null-String String)
(declare-const var2666 var3064) ; Statement: r0 := @this: org.hibernate.dialect.TimesTenDialect$1 
(assert (not (= var2666 null-var3064)))
(declare-const var3847 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var3847 null-String)))
(assert true)
(define-const var3470 String (generateIdTableName/735499089 (cast-from-var3064-to-var1821 var2666) var3847)) ; Statement: r2 = specialinvoke r0.<org.hibernate.hql.spi.id.IdTableSupportStandardImpl: java.lang.String generateIdTableName(java.lang.String)>(r1) 
(assert true)
(define-const var1500 Int (length/-134980193 var3470)) ; Statement: $i0 = virtualinvoke r2.<java.lang.String: int length()>() 
 ; Statement: if $i0 <= 30 goto $r3 = r2 
(assert (<= var1500 30)) ; Cond: $i0 <= 30 
(define-const var2710 String var3470) ; Statement: $r3 = r2 
(assert true) ; Non Conditional
 ; Statement: return $r3 
(check-sat)
(get-model)
(get-unsat-core)
; {generateIdTableName/735499089=([org.hibernate.hql.spi.id.IdTableSupportStandardImpl, java.lang.String], java.lang.String), cast-from-var3064-to-var1821=([org.hibernate.dialect.TimesTenDialect$1], org.hibernate.hql.spi.id.IdTableSupportStandardImpl), length/-134980193=([java.lang.String], int)}
; {var3064=org.hibernate.dialect.TimesTenDialect$1, var2666=r0, var3847=r1, var258=null_type, var1821=org.hibernate.hql.spi.id.IdTableSupportStandardImpl, var3470=r2, var1500=$i0, var2710=$r3}
; {org.hibernate.dialect.TimesTenDialect$1=var3064, r0=var2666, r1=var3847, null_type=var258, org.hibernate.hql.spi.id.IdTableSupportStandardImpl=var1821, r2=var3470, $i0=var1500, $r3=var2710}
;seq <java.lang.String: int length()>
;cnt {"<java.lang.String: int length()>": 1}
;stmts r0 := @this: org.hibernate.dialect.TimesTenDialect$1;	r1 := @parameter0: java.lang.String;	r2 = specialinvoke r0.<org.hibernate.hql.spi.id.IdTableSupportStandardImpl: java.lang.String generateIdTableName(java.lang.String)>(r1);	$i0 = virtualinvoke r2.<java.lang.String: int length()>();	if $i0 <= 30 goto $r3 = r2;	$r3 = r2;	return $r3
;block_num 3