(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var873 0)
(declare-sort var699 0)
(declare-sort var1754 0)
(declare-sort var55 0)
(declare-sort var298 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun arr-var55-init () (Array Int var55))
(declare-fun cast-from-var1754-to-var55 (var1754) var55)
(declare-fun cast-from-String-to-var55 (String) var55)
(declare-fun String_format/1339386452 (String (Array Int var55)) String)
(declare-fun <init>/-790357943 (var298 String) void)
(declare-fun cast-from-var873-to-var298 (var873) var298)
(declare-fun identifier/1497668478 (var873) var1754)
(declare-fun entityName/1497668478 (var873) String)
(declare-const null-var873 var873)
(declare-const null-String String)
(declare-const null-var1754 var1754)
(declare-const null-__Array__Int__var55__ (Array Int var55))
(declare-const var2553 var873) ; Statement: r0 := @this: org.hibernate.WrongClassException 
(assert (not (= var2553 null-var873)))
(declare-const var3656 String) ; Statement: r4 := @parameter0: java.lang.String 
(assert (not (= var3656 null-String)))
(declare-const var1101 var1754) ; Statement: r2 := @parameter1: java.io.Serializable 
(assert (not (= var1101 null-var1754)))
(declare-const var2371 String) ; Statement: r3 := @parameter2: java.lang.String 
(assert (not (= var2371 null-String)))
(define-const var1224 (Array Int var55) arr-var55-init) ; Statement: $r1 = newarray (java.lang.Object)[3] 
(declare-const var1224!1 (Array Int var55))
(assert (not (= var1224!1 null-__Array__Int__var55__)))
(assert (= (select var1224!1 0) (cast-from-var1754-to-var55 var1101))) ; Statement: $r1[0] = r2 
(declare-const var1224!2 (Array Int var55))
(assert (not (= var1224!2 null-__Array__Int__var55__)))
(assert (= (select var1224!2 1) (cast-from-String-to-var55 var2371))) ; Statement: $r1[1] = r3 
(declare-const var1224!3 (Array Int var55))
(assert (not (= var1224!3 null-__Array__Int__var55__)))
(assert (= (select var1224!3 2) (cast-from-String-to-var55 var3656))) ; Statement: $r1[2] = r4 
(define-const var1794 String (String_format/1339386452 "Object [id=%s] was not of the specified subclass [%s] : %s" var1224!3)) ; Statement: $r5 = staticinvoke <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>("Object [id=%s] was not of the specified subclass [%s] : %s", $r1) 
(assert true)
;(assert (<init>/-790357943 (cast-from-var873-to-var298 var2553) var1794)) ; Statement: specialinvoke r0.<org.hibernate.HibernateException: void <init>(java.lang.String)>($r5) 

(declare-const var2553!1 var873)
(declare-const var1794!1 String)
(declare-const var2553!2 var873)
(assert (not (= var2553!2 null-var873)))
(assert (= (identifier/1497668478 var2553!2) var1101)) ; Statement: r0.<org.hibernate.WrongClassException: java.io.Serializable identifier> = r2 
(declare-const var2553!3 var873)
(assert (not (= var2553!3 null-var873)))
(assert (= (entityName/1497668478 var2553!3) var2371)) ; Statement: r0.<org.hibernate.WrongClassException: java.lang.String entityName> = r3 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {arr-var55-init=([], java.lang.Object[]), cast-from-var1754-to-var55=([java.io.Serializable], java.lang.Object), cast-from-String-to-var55=([java.lang.String], java.lang.Object), String_format/1339386452=([java.lang.String, java.lang.Object[]], java.lang.String), <init>/-790357943=([org.hibernate.HibernateException, java.lang.String], void), cast-from-var873-to-var298=([org.hibernate.WrongClassException], org.hibernate.HibernateException), identifier/1497668478=([org.hibernate.WrongClassException], java.io.Serializable), entityName/1497668478=([org.hibernate.WrongClassException], java.lang.String)}
; {var873=org.hibernate.WrongClassException, var2553=r0, var3656=r4, var699=null_type, var1754=java.io.Serializable, var1101=r2, var2371=r3, var55=java.lang.Object, var1224=$r1, var1794=$r5, var298=org.hibernate.HibernateException}
; {org.hibernate.WrongClassException=var873, r0=var2553, r4=var3656, null_type=var699, java.io.Serializable=var1754, r2=var1101, r3=var2371, java.lang.Object=var55, $r1=var1224, $r5=var1794, org.hibernate.HibernateException=var298}
;seq <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>
;cnt {"<java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>": 1}
;stmts r0 := @this: org.hibernate.WrongClassException;	r4 := @parameter0: java.lang.String;	r2 := @parameter1: java.io.Serializable;	r3 := @parameter2: java.lang.String;	$r1 = newarray (java.lang.Object)[3];	$r1[0] = r2;	$r1[1] = r3;	$r1[2] = r4;	$r5 = staticinvoke <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>("Object [id=%s] was not of the specified subclass [%s] : %s", $r1);	specialinvoke r0.<org.hibernate.HibernateException: void <init>(java.lang.String)>($r5);	r0.<org.hibernate.WrongClassException: java.io.Serializable identifier> = r2;	r0.<org.hibernate.WrongClassException: java.lang.String entityName> = r3;	return
;block_num 1