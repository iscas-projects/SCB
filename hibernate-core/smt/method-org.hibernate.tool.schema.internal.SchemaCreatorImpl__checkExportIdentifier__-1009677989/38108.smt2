(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3407 0)
(declare-sort var3416 0)
(declare-sort var1954 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var3407_getExportIdentifier/1141844361 (var3407) String)
(declare-fun var3416_contains/1636690605 (var3416 var1954) Bool)
(declare-fun cast-from-String-to-var1954 (String) var1954)
(declare-fun var3416_add/-1142548109 (var3416 var1954) Bool)
(declare-const null-var3407 var3407)
(declare-const null-var3416 var3416)
(declare-const var2003 var3407) ; Statement: r0 := @parameter0: org.hibernate.boot.model.relational.Exportable 
(assert (not (= var2003 null-var3407)))
(declare-const var1582 var3416) ; Statement: r2 := @parameter1: java.util.Set 
(assert (not (= var1582 null-var3416)))
(define-const var3531 String (var3407_getExportIdentifier/1141844361 var2003)) ; Statement: r1 = interfaceinvoke r0.<org.hibernate.boot.model.relational.Exportable: java.lang.String getExportIdentifier()>() 
(define-const var3076 Bool (var3416_contains/1636690605 var1582 (cast-from-String-to-var1954 var3531))) ; Statement: $z0 = interfaceinvoke r2.<java.util.Set: boolean contains(java.lang.Object)>(r1) 
 ; Statement: if $z0 == 0 goto interfaceinvoke r2.<java.util.Set: boolean add(java.lang.Object)>(r1) 
(assert (= (ite var3076 1 0) 0)) ; Cond: $z0 == 0 
;(assert (var3416_add/-1142548109 var1582 (cast-from-String-to-var1954 var3531))) ; Statement: interfaceinvoke r2.<java.util.Set: boolean add(java.lang.Object)>(r1) 

(declare-const var1582!1 var3416)
(declare-const var3531!1 String)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {var3407_getExportIdentifier/1141844361=([org.hibernate.boot.model.relational.Exportable], java.lang.String), var3416_contains/1636690605=([java.util.Set, java.lang.Object], boolean), cast-from-String-to-var1954=([java.lang.String], java.lang.Object), var3416_add/-1142548109=([java.util.Set, java.lang.Object], boolean)}
; {var3407=org.hibernate.boot.model.relational.Exportable, var2003=r0, var3416=java.util.Set, var1582=r2, var3531=r1, var1954=java.lang.Object, var3076=$z0}
; {org.hibernate.boot.model.relational.Exportable=var3407, r0=var2003, java.util.Set=var3416, r2=var1582, r1=var3531, java.lang.Object=var1954, $z0=var3076}
;seq 
;cnt {}
;stmts r0 := @parameter0: org.hibernate.boot.model.relational.Exportable;	r2 := @parameter1: java.util.Set;	r1 = interfaceinvoke r0.<org.hibernate.boot.model.relational.Exportable: java.lang.String getExportIdentifier()>();	$z0 = interfaceinvoke r2.<java.util.Set: boolean contains(java.lang.Object)>(r1);	if $z0 == 0 goto interfaceinvoke r2.<java.util.Set: boolean add(java.lang.Object)>(r1);	interfaceinvoke r2.<java.util.Set: boolean add(java.lang.Object)>(r1);	return
;block_num 2