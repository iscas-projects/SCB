(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3183 0)
(declare-sort var2812 0)
(declare-sort var274 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun generateIdTableName/735499089 (var274 String) String)
(declare-fun cast-from-var3183-to-var274 (var3183) var274)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(define-fun substring/-1240304868 ((s String) (begin Int) (end Int)) String (str.substr s begin (- end begin)))
(declare-const null-var3183 var3183)
(declare-const null-String String)
(declare-const var239 var3183) ; Statement: r0 := @this: org.hibernate.dialect.Oracle9Dialect$2 
(assert (not (= var239 null-var3183)))
(declare-const var1427 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var1427 null-String)))
(assert true)
(define-const var2840 String (generateIdTableName/735499089 (cast-from-var3183-to-var274 var239) var1427)) ; Statement: r2 = specialinvoke r0.<org.hibernate.hql.spi.id.IdTableSupportStandardImpl: java.lang.String generateIdTableName(java.lang.String)>(r1) 
(assert true)
(define-const var3164 Int (length/-134980193 var2840)) ; Statement: $i0 = virtualinvoke r2.<java.lang.String: int length()>() 
 ; Statement: if $i0 <= 30 goto $r3 = r2 
(assert (not (<= var3164 30))) ; Negate: Cond: $i0 <= 30  
(assert (and true (and (>= 0 0) (>= (str.len var2840) 30) (>= 30 0))))
(define-const var2712 String (substring/-1240304868 var2840 0 30)) ; Statement: $r3 = virtualinvoke r2.<java.lang.String: java.lang.String substring(int,int)>(0, 30) 
 ; Statement: goto [?= return $r3] 
(assert true) ; Non Conditional
 ; Statement: return $r3 
(check-sat)
(get-model)
(get-unsat-core)
; {generateIdTableName/735499089=([org.hibernate.hql.spi.id.IdTableSupportStandardImpl, java.lang.String], java.lang.String), cast-from-var3183-to-var274=([org.hibernate.dialect.Oracle9Dialect$2], org.hibernate.hql.spi.id.IdTableSupportStandardImpl), length/-134980193=([java.lang.String], int), substring/-1240304868=([java.lang.String, int, int], java.lang.String)}
; {var3183=org.hibernate.dialect.Oracle9Dialect$2, var239=r0, var1427=r1, var2812=null_type, var274=org.hibernate.hql.spi.id.IdTableSupportStandardImpl, var2840=r2, var3164=$i0, var2712=$r3}
; {org.hibernate.dialect.Oracle9Dialect$2=var3183, r0=var239, r1=var1427, null_type=var2812, org.hibernate.hql.spi.id.IdTableSupportStandardImpl=var274, r2=var2840, $i0=var3164, $r3=var2712}
;seq <java.lang.String: int length()>;	<java.lang.String: java.lang.String substring(int,int)>
;cnt {"<java.lang.String: int length()>": 1,"<java.lang.String: java.lang.String substring(int,int)>": 1}
;stmts r0 := @this: org.hibernate.dialect.Oracle9Dialect$2;	r1 := @parameter0: java.lang.String;	r2 = specialinvoke r0.<org.hibernate.hql.spi.id.IdTableSupportStandardImpl: java.lang.String generateIdTableName(java.lang.String)>(r1);	$i0 = virtualinvoke r2.<java.lang.String: int length()>();	if $i0 <= 30 goto $r3 = r2;	$r3 = virtualinvoke r2.<java.lang.String: java.lang.String substring(int,int)>(0, 30);	goto [?= return $r3];	return $r3
;block_num 3