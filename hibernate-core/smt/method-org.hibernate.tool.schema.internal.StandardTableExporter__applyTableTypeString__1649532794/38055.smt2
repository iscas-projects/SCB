(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1775 0)
(declare-sort var3285 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun dialect/1825021694 (var1775) var3285)
(declare-fun getTableTypeString/-1260720415 (var3285) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-const null-var1775 var1775)
(declare-const null-String String)
(declare-const var1564 var1775) ; Statement: r1 := @this: org.hibernate.tool.schema.internal.StandardTableExporter 
(assert (not (= var1564 null-var1775)))
(declare-const var2132 String) ; Statement: r0 := @parameter0: java.lang.StringBuilder 
(assert (not (= var2132 null-String)))
(define-const var1638 var3285 (dialect/1825021694 var1564)) ; Statement: $r2 = r1.<org.hibernate.tool.schema.internal.StandardTableExporter: org.hibernate.dialect.Dialect dialect> 
(assert true)
(define-const var3038 String (getTableTypeString/-1260720415 var1638)) ; Statement: $r3 = virtualinvoke $r2.<org.hibernate.dialect.Dialect: java.lang.String getTableTypeString()>() 
(assert true)
;(assert (append/672562846 var2132 var3038)) ; Statement: virtualinvoke r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3) 
(declare-const var2132!1 String)
(assert (= var2132!1 (str.++ var2132 var3038)))
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {dialect/1825021694=([org.hibernate.tool.schema.internal.StandardTableExporter], org.hibernate.dialect.Dialect), getTableTypeString/-1260720415=([org.hibernate.dialect.Dialect], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder)}
; {var1775=org.hibernate.tool.schema.internal.StandardTableExporter, var1564=r1, var2132=r0, var3285=org.hibernate.dialect.Dialect, var1638=$r2, var3038=$r3}
; {org.hibernate.tool.schema.internal.StandardTableExporter=var1775, r1=var1564, r0=var2132, org.hibernate.dialect.Dialect=var3285, $r2=var1638, $r3=var3038}
;seq <java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>
;cnt {"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1}
;stmts r1 := @this: org.hibernate.tool.schema.internal.StandardTableExporter;	r0 := @parameter0: java.lang.StringBuilder;	$r2 = r1.<org.hibernate.tool.schema.internal.StandardTableExporter: org.hibernate.dialect.Dialect dialect>;	$r3 = virtualinvoke $r2.<org.hibernate.dialect.Dialect: java.lang.String getTableTypeString()>();	virtualinvoke r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3);	return
;block_num 1