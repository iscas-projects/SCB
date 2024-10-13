(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3886 0)
(declare-sort var3421 0)
(declare-sort var2310 0)
(declare-sort var3779 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun columnsByPropertyPath/-293507329 (var3886) var2310)
(declare-fun var2310_get/1088891777 (var2310 var3779) var3779)
(declare-fun cast-from-String-to-var3779 (String) var3779)
(declare-fun cast-from-var3779-to-__Array__Int__String__ (var3779) (Array Int String))
(declare-const null-var3886 var3886)
(declare-const null-String String)
(declare-const null-__Array__Int__String__ (Array Int String))
(declare-const var732 var3886) ; Statement: r0 := @this: org.hibernate.persister.entity.AbstractPropertyMapping 
(assert (not (= var732 null-var3886)))
(declare-const var1270 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var1270 null-String)))
(define-const var1667 var2310 (columnsByPropertyPath/-293507329 var732)) ; Statement: $r2 = r0.<org.hibernate.persister.entity.AbstractPropertyMapping: java.util.Map columnsByPropertyPath> 
(define-const var3974 var3779 (var2310_get/1088891777 var1667 (cast-from-String-to-var3779 var1270))) ; Statement: $r3 = interfaceinvoke $r2.<java.util.Map: java.lang.Object get(java.lang.Object)>(r1) 
(define-const var1845 (Array Int String) (cast-from-var3779-to-__Array__Int__String__ var3974)) ; Statement: r4 = (java.lang.String[]) $r3 
 ; Statement: if r4 != null goto return r4 
(assert (not (= var1845 null-__Array__Int__String__))) ; Cond: r4 != null 
 ; Statement: return r4 
(check-sat)
(get-model)
(get-unsat-core)
; {columnsByPropertyPath/-293507329=([org.hibernate.persister.entity.AbstractPropertyMapping], java.util.Map), var2310_get/1088891777=([java.util.Map, java.lang.Object], java.lang.Object), cast-from-String-to-var3779=([java.lang.String], java.lang.Object), cast-from-var3779-to-__Array__Int__String__=([java.lang.Object], java.lang.String[])}
; {var3886=org.hibernate.persister.entity.AbstractPropertyMapping, var732=r0, var1270=r1, var3421=null_type, var2310=java.util.Map, var1667=$r2, var3779=java.lang.Object, var3974=$r3, var1845=r4}
; {org.hibernate.persister.entity.AbstractPropertyMapping=var3886, r0=var732, r1=var1270, null_type=var3421, java.util.Map=var2310, $r2=var1667, java.lang.Object=var3779, $r3=var3974, r4=var1845}
;seq 
;cnt {}
;stmts r0 := @this: org.hibernate.persister.entity.AbstractPropertyMapping;	r1 := @parameter0: java.lang.String;	$r2 = r0.<org.hibernate.persister.entity.AbstractPropertyMapping: java.util.Map columnsByPropertyPath>;	$r3 = interfaceinvoke $r2.<java.util.Map: java.lang.Object get(java.lang.Object)>(r1);	r4 = (java.lang.String[]) $r3;	if r4 != null goto return r4;	return r4
;block_num 2