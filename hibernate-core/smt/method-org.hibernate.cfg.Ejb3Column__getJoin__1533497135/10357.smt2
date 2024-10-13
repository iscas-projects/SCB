(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2786 0)
(declare-sort var1758 0)
(declare-sort var1521 0)
(declare-sort var1828 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun joins/-1522538692 (var2786) var1758)
(declare-fun explicitTableName/-1522538692 (var2786) String)
(declare-fun var1758_get/1088891777 (var1758 var1521) var1521)
(declare-fun cast-from-String-to-var1521 (String) var1521)
(declare-fun cast-from-var1521-to-var1828 (var1521) var1828)
(declare-const null-var2786 var2786)
(declare-const null-var1828 var1828)
(declare-const var3001 var2786) ; Statement: r0 := @this: org.hibernate.cfg.Ejb3Column 
(assert (not (= var3001 null-var2786)))
(define-const var42 var1758 (joins/-1522538692 var3001)) ; Statement: $r2 = r0.<org.hibernate.cfg.Ejb3Column: java.util.Map joins> 
(define-const var3458 String (explicitTableName/-1522538692 var3001)) ; Statement: $r1 = r0.<org.hibernate.cfg.Ejb3Column: java.lang.String explicitTableName> 
(define-const var1128 var1521 (var1758_get/1088891777 var42 (cast-from-String-to-var1521 var3458))) ; Statement: $r3 = interfaceinvoke $r2.<java.util.Map: java.lang.Object get(java.lang.Object)>($r1) 
(define-const var2495 var1828 (cast-from-var1521-to-var1828 var1128)) ; Statement: r20 = (org.hibernate.mapping.Join) $r3 
 ; Statement: if r20 != null goto (branch) 
(assert (not (= var2495 null-var1828))) ; Cond: r20 != null 
 ; Statement: if r20 != null goto return r20 
(assert (not (= var2495 null-var1828))) ; Cond: r20 != null 
 ; Statement: return r20 
(check-sat)
(get-model)
(get-unsat-core)
; {joins/-1522538692=([org.hibernate.cfg.Ejb3Column], java.util.Map), explicitTableName/-1522538692=([org.hibernate.cfg.Ejb3Column], java.lang.String), var1758_get/1088891777=([java.util.Map, java.lang.Object], java.lang.Object), cast-from-String-to-var1521=([java.lang.String], java.lang.Object), cast-from-var1521-to-var1828=([java.lang.Object], org.hibernate.mapping.Join)}
; {var2786=org.hibernate.cfg.Ejb3Column, var3001=r0, var1758=java.util.Map, var42=$r2, var3458=$r1, var1521=java.lang.Object, var1128=$r3, var1828=org.hibernate.mapping.Join, var2495=r20}
; {org.hibernate.cfg.Ejb3Column=var2786, r0=var3001, java.util.Map=var1758, $r2=var42, $r1=var3458, java.lang.Object=var1521, $r3=var1128, org.hibernate.mapping.Join=var1828, r20=var2495}
;seq 
;cnt {}
;stmts r0 := @this: org.hibernate.cfg.Ejb3Column;	$r2 = r0.<org.hibernate.cfg.Ejb3Column: java.util.Map joins>;	$r1 = r0.<org.hibernate.cfg.Ejb3Column: java.lang.String explicitTableName>;	$r3 = interfaceinvoke $r2.<java.util.Map: java.lang.Object get(java.lang.Object)>($r1);	r20 = (org.hibernate.mapping.Join) $r3;	if r20 != null goto (branch);	if r20 != null goto return r20;	return r20
;block_num 3