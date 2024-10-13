(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1130 0)
(declare-sort var1284 0)
(declare-sort var3034 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun generateIdTableName/735499089 (var3034 String) String)
(declare-fun cast-from-var1130-to-var3034 (var1130) var3034)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(define-fun substring/-1240304868 ((s String) (begin Int) (end Int)) String (str.substr s begin (- end begin)))
(declare-const null-var1130 var1130)
(declare-const null-String String)
(declare-const var147 var1130) ; Statement: r0 := @this: org.hibernate.dialect.Oracle8iDialect$4 
(assert (not (= var147 null-var1130)))
(declare-const var2939 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var2939 null-String)))
(assert true)
(define-const var3946 String (generateIdTableName/735499089 (cast-from-var1130-to-var3034 var147) var2939)) ; Statement: r2 = specialinvoke r0.<org.hibernate.hql.spi.id.IdTableSupportStandardImpl: java.lang.String generateIdTableName(java.lang.String)>(r1) 
(assert true)
(define-const var1884 Int (length/-134980193 var3946)) ; Statement: $i0 = virtualinvoke r2.<java.lang.String: int length()>() 
 ; Statement: if $i0 <= 30 goto $r3 = r2 
(assert (not (<= var1884 30))) ; Negate: Cond: $i0 <= 30  
(assert (and true (and (>= 0 0) (>= (str.len var3946) 30) (>= 30 0))))
(define-const var2695 String (substring/-1240304868 var3946 0 30)) ; Statement: $r3 = virtualinvoke r2.<java.lang.String: java.lang.String substring(int,int)>(0, 30) 
 ; Statement: goto [?= return $r3] 
(assert true) ; Non Conditional
 ; Statement: return $r3 
(check-sat)
(get-model)
(get-unsat-core)
; {generateIdTableName/735499089=([org.hibernate.hql.spi.id.IdTableSupportStandardImpl, java.lang.String], java.lang.String), cast-from-var1130-to-var3034=([org.hibernate.dialect.Oracle8iDialect$4], org.hibernate.hql.spi.id.IdTableSupportStandardImpl), length/-134980193=([java.lang.String], int), substring/-1240304868=([java.lang.String, int, int], java.lang.String)}
; {var1130=org.hibernate.dialect.Oracle8iDialect$4, var147=r0, var2939=r1, var1284=null_type, var3034=org.hibernate.hql.spi.id.IdTableSupportStandardImpl, var3946=r2, var1884=$i0, var2695=$r3}
; {org.hibernate.dialect.Oracle8iDialect$4=var1130, r0=var147, r1=var2939, null_type=var1284, org.hibernate.hql.spi.id.IdTableSupportStandardImpl=var3034, r2=var3946, $i0=var1884, $r3=var2695}
;seq <java.lang.String: int length()>;	<java.lang.String: java.lang.String substring(int,int)>
;cnt {"<java.lang.String: int length()>": 1,"<java.lang.String: java.lang.String substring(int,int)>": 1}
;stmts r0 := @this: org.hibernate.dialect.Oracle8iDialect$4;	r1 := @parameter0: java.lang.String;	r2 = specialinvoke r0.<org.hibernate.hql.spi.id.IdTableSupportStandardImpl: java.lang.String generateIdTableName(java.lang.String)>(r1);	$i0 = virtualinvoke r2.<java.lang.String: int length()>();	if $i0 <= 30 goto $r3 = r2;	$r3 = virtualinvoke r2.<java.lang.String: java.lang.String substring(int,int)>(0, 30);	goto [?= return $r3];	return $r3
;block_num 3