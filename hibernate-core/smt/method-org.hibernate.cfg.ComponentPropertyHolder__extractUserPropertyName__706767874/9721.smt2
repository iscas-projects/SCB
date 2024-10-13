(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1555 0)
(declare-sort var3516 0)
(declare-sort var1119 0)
(declare-sort var3442 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun component/-798700690 (var1555) var1119)
(declare-fun getOwner/805163706 (var1119) var3442)
(declare-fun getClassName/1810648442 (var3442) String)
(define-fun startsWith/-1785782452 ((s String) (prefix String)) Bool (str.prefixof prefix s))
(declare-const null-var1555 var1555)
(declare-const null-String String)
(declare-const var850 var1555) ; Statement: r0 := @this: org.hibernate.cfg.ComponentPropertyHolder 
(assert (not (= var850 null-var1555)))
(declare-const var473 String) ; Statement: r5 := @parameter0: java.lang.String 
(assert (not (= var473 null-String)))
(declare-const var1499 String) ; Statement: r4 := @parameter1: java.lang.String 
(assert (not (= var1499 null-String)))
(define-const var3512 String null-String) ; Statement: r11 = null 
(define-const var1826 var1119 (component/-798700690 var850)) ; Statement: $r1 = r0.<org.hibernate.cfg.ComponentPropertyHolder: org.hibernate.mapping.Component component> 
(assert true)
(define-const var2466 var3442 (getOwner/805163706 var1826)) ; Statement: $r2 = virtualinvoke $r1.<org.hibernate.mapping.Component: org.hibernate.mapping.PersistentClass getOwner()>() 
(assert true)
(define-const var432 String (getClassName/1810648442 var2466)) ; Statement: r3 = virtualinvoke $r2.<org.hibernate.mapping.PersistentClass: java.lang.String getClassName()>() 
(assert true)
(define-const var502 Bool (startsWith/-1785782452 var1499 var432)) ; Statement: $z0 = virtualinvoke r4.<java.lang.String: boolean startsWith(java.lang.String)>(r3) 
 ; Statement: if $z0 == 0 goto return r11 
(assert (= (ite var502 1 0) 0)) ; Cond: $z0 == 0 
 ; Statement: return r11 
(check-sat)
(get-model)
(get-unsat-core)
; {component/-798700690=([org.hibernate.cfg.ComponentPropertyHolder], org.hibernate.mapping.Component), getOwner/805163706=([org.hibernate.mapping.Component], org.hibernate.mapping.PersistentClass), getClassName/1810648442=([org.hibernate.mapping.PersistentClass], java.lang.String), startsWith/-1785782452=([java.lang.String, java.lang.String], boolean)}
; {var1555=org.hibernate.cfg.ComponentPropertyHolder, var850=r0, var473=r5, var3516=null_type, var1499=r4, var3512=r11, var1119=org.hibernate.mapping.Component, var1826=$r1, var3442=org.hibernate.mapping.PersistentClass, var2466=$r2, var432=r3, var502=$z0}
; {org.hibernate.cfg.ComponentPropertyHolder=var1555, r0=var850, r5=var473, null_type=var3516, r4=var1499, r11=var3512, org.hibernate.mapping.Component=var1119, $r1=var1826, org.hibernate.mapping.PersistentClass=var3442, $r2=var2466, r3=var432, $z0=var502}
;seq <java.lang.String: boolean startsWith(java.lang.String)>
;cnt {"<java.lang.String: boolean startsWith(java.lang.String)>": 1}
;stmts r0 := @this: org.hibernate.cfg.ComponentPropertyHolder;	r5 := @parameter0: java.lang.String;	r4 := @parameter1: java.lang.String;	r11 = null;	$r1 = r0.<org.hibernate.cfg.ComponentPropertyHolder: org.hibernate.mapping.Component component>;	$r2 = virtualinvoke $r1.<org.hibernate.mapping.Component: org.hibernate.mapping.PersistentClass getOwner()>();	r3 = virtualinvoke $r2.<org.hibernate.mapping.PersistentClass: java.lang.String getClassName()>();	$z0 = virtualinvoke r4.<java.lang.String: boolean startsWith(java.lang.String)>(r3);	if $z0 == 0 goto return r11;	return r11
;block_num 2