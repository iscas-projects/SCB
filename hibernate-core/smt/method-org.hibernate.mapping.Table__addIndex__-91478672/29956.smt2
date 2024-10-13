(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1026 0)
(declare-sort var1566 0)
(declare-sort var3158 0)
(declare-sort var2721 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun indexes/310692072 (var1026) var3158)
(declare-fun getName/-354198463 (var1566) String)
(declare-fun var3158_get/1088891777 (var3158 var2721) var2721)
(declare-fun cast-from-String-to-var2721 (String) var2721)
(declare-fun cast-from-var2721-to-var1566 (var2721) var1566)
(declare-fun var3158_put/1464166817 (var3158 var2721 var2721) var2721)
(declare-fun cast-from-var1566-to-var2721 (var1566) var2721)
(declare-const null-var1026 var1026)
(declare-const null-var1566 var1566)
(declare-const var843 var1026) ; Statement: r0 := @this: org.hibernate.mapping.Table 
(assert (not (= var843 null-var1026)))
(declare-const var3040 var1566) ; Statement: r1 := @parameter0: org.hibernate.mapping.Index 
(assert (not (= var3040 null-var1566)))
(define-const var3508 var3158 (indexes/310692072 var843)) ; Statement: $r2 = r0.<org.hibernate.mapping.Table: java.util.Map indexes> 
(assert true)
(define-const var790 String (getName/-354198463 var3040)) ; Statement: $r3 = virtualinvoke r1.<org.hibernate.mapping.Index: java.lang.String getName()>() 
(define-const var1299 var2721 (var3158_get/1088891777 var3508 (cast-from-String-to-var2721 var790))) ; Statement: $r4 = interfaceinvoke $r2.<java.util.Map: java.lang.Object get(java.lang.Object)>($r3) 
(define-const var1891 var1566 (cast-from-var2721-to-var1566 var1299)) ; Statement: r5 = (org.hibernate.mapping.Index) $r4 
 ; Statement: if r5 == null goto $r6 = r0.<org.hibernate.mapping.Table: java.util.Map indexes> 
(assert (= var1891 null-var1566)) ; Cond: r5 == null 
(define-const var3341 var3158 (indexes/310692072 var843)) ; Statement: $r6 = r0.<org.hibernate.mapping.Table: java.util.Map indexes> 
(assert true)
(define-const var41 String (getName/-354198463 var3040)) ; Statement: $r7 = virtualinvoke r1.<org.hibernate.mapping.Index: java.lang.String getName()>() 
;(assert (var3158_put/1464166817 var3341 (cast-from-String-to-var2721 var41) (cast-from-var1566-to-var2721 var3040))) ; Statement: interfaceinvoke $r6.<java.util.Map: java.lang.Object put(java.lang.Object,java.lang.Object)>($r7, r1) 

(declare-const var3341!1 var3158)
(declare-const var41!1 String)
(declare-const var3040!1 var1566)
 ; Statement: return r1 
(check-sat)
(get-model)
(get-unsat-core)
; {indexes/310692072=([org.hibernate.mapping.Table], java.util.Map), getName/-354198463=([org.hibernate.mapping.Index], java.lang.String), var3158_get/1088891777=([java.util.Map, java.lang.Object], java.lang.Object), cast-from-String-to-var2721=([java.lang.String], java.lang.Object), cast-from-var2721-to-var1566=([java.lang.Object], org.hibernate.mapping.Index), var3158_put/1464166817=([java.util.Map, java.lang.Object, java.lang.Object], java.lang.Object), cast-from-var1566-to-var2721=([org.hibernate.mapping.Index], java.lang.Object)}
; {var1026=org.hibernate.mapping.Table, var843=r0, var1566=org.hibernate.mapping.Index, var3040=r1, var3158=java.util.Map, var3508=$r2, var790=$r3, var2721=java.lang.Object, var1299=$r4, var1891=r5, var3341=$r6, var41=$r7}
; {org.hibernate.mapping.Table=var1026, r0=var843, org.hibernate.mapping.Index=var1566, r1=var3040, java.util.Map=var3158, $r2=var3508, $r3=var790, java.lang.Object=var2721, $r4=var1299, r5=var1891, $r6=var3341, $r7=var41}
;seq 
;cnt {}
;stmts r0 := @this: org.hibernate.mapping.Table;	r1 := @parameter0: org.hibernate.mapping.Index;	$r2 = r0.<org.hibernate.mapping.Table: java.util.Map indexes>;	$r3 = virtualinvoke r1.<org.hibernate.mapping.Index: java.lang.String getName()>();	$r4 = interfaceinvoke $r2.<java.util.Map: java.lang.Object get(java.lang.Object)>($r3);	r5 = (org.hibernate.mapping.Index) $r4;	if r5 == null goto $r6 = r0.<org.hibernate.mapping.Table: java.util.Map indexes>;	$r6 = r0.<org.hibernate.mapping.Table: java.util.Map indexes>;	$r7 = virtualinvoke r1.<org.hibernate.mapping.Index: java.lang.String getName()>();	interfaceinvoke $r6.<java.util.Map: java.lang.Object put(java.lang.Object,java.lang.Object)>($r7, r1);	return r1
;block_num 2