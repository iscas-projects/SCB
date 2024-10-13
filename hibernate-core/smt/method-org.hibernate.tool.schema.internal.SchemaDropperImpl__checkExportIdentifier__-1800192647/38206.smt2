(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2487 0)
(declare-sort var389 0)
(declare-sort var2341 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var2487_getExportIdentifier/1141844361 (var2487) String)
(declare-fun var389_contains/1636690605 (var389 var2341) Bool)
(declare-fun cast-from-String-to-var2341 (String) var2341)
(declare-fun var389_add/-1142548109 (var389 var2341) Bool)
(declare-const null-var2487 var2487)
(declare-const null-var389 var389)
(declare-const var1924 var2487) ; Statement: r0 := @parameter0: org.hibernate.boot.model.relational.Exportable 
(assert (not (= var1924 null-var2487)))
(declare-const var253 var389) ; Statement: r2 := @parameter1: java.util.Set 
(assert (not (= var253 null-var389)))
(define-const var638 String (var2487_getExportIdentifier/1141844361 var1924)) ; Statement: r1 = interfaceinvoke r0.<org.hibernate.boot.model.relational.Exportable: java.lang.String getExportIdentifier()>() 
(define-const var3861 Bool (var389_contains/1636690605 var253 (cast-from-String-to-var2341 var638))) ; Statement: $z0 = interfaceinvoke r2.<java.util.Set: boolean contains(java.lang.Object)>(r1) 
 ; Statement: if $z0 == 0 goto interfaceinvoke r2.<java.util.Set: boolean add(java.lang.Object)>(r1) 
(assert (= (ite var3861 1 0) 0)) ; Cond: $z0 == 0 
;(assert (var389_add/-1142548109 var253 (cast-from-String-to-var2341 var638))) ; Statement: interfaceinvoke r2.<java.util.Set: boolean add(java.lang.Object)>(r1) 

(declare-const var253!1 var389)
(declare-const var638!1 String)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {var2487_getExportIdentifier/1141844361=([org.hibernate.boot.model.relational.Exportable], java.lang.String), var389_contains/1636690605=([java.util.Set, java.lang.Object], boolean), cast-from-String-to-var2341=([java.lang.String], java.lang.Object), var389_add/-1142548109=([java.util.Set, java.lang.Object], boolean)}
; {var2487=org.hibernate.boot.model.relational.Exportable, var1924=r0, var389=java.util.Set, var253=r2, var638=r1, var2341=java.lang.Object, var3861=$z0}
; {org.hibernate.boot.model.relational.Exportable=var2487, r0=var1924, java.util.Set=var389, r2=var253, r1=var638, java.lang.Object=var2341, $z0=var3861}
;seq 
;cnt {}
;stmts r0 := @parameter0: org.hibernate.boot.model.relational.Exportable;	r2 := @parameter1: java.util.Set;	r1 = interfaceinvoke r0.<org.hibernate.boot.model.relational.Exportable: java.lang.String getExportIdentifier()>();	$z0 = interfaceinvoke r2.<java.util.Set: boolean contains(java.lang.Object)>(r1);	if $z0 == 0 goto interfaceinvoke r2.<java.util.Set: boolean add(java.lang.Object)>(r1);	interfaceinvoke r2.<java.util.Set: boolean add(java.lang.Object)>(r1);	return
;block_num 2