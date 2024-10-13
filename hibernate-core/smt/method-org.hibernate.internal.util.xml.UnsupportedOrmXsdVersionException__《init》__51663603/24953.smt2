(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2203 0)
(declare-sort var2550 0)
(declare-sort var2504 0)
(declare-sort var3471 0)
(declare-sort var836 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun arr-var3471-init () (Array Int var3471))
(declare-fun cast-from-String-to-var3471 (String) var3471)
(declare-fun var2504_getType/1390072776 (var2504) String)
(declare-fun var2504_getName/-329852201 (var2504) String)
(declare-fun String_format/1339386452 (String (Array Int var3471)) String)
(declare-fun <init>/-790357943 (var836 String) void)
(declare-fun cast-from-var2203-to-var836 (var2203) var836)
(declare-const null-var2203 var2203)
(declare-const null-String String)
(declare-const null-var2504 var2504)
(declare-const null-__Array__Int__var3471__ (Array Int var3471))
(declare-const var810 var2203) ; Statement: r0 := @this: org.hibernate.internal.util.xml.UnsupportedOrmXsdVersionException 
(assert (not (= var810 null-var2203)))
(declare-const var1057 String) ; Statement: r2 := @parameter0: java.lang.String 
(assert (not (= var1057 null-String)))
(declare-const var397 var2504) ; Statement: r3 := @parameter1: org.hibernate.internal.util.xml.Origin 
(assert (not (= var397 null-var2504)))
(define-const var43 (Array Int var3471) arr-var3471-init) ; Statement: $r1 = newarray (java.lang.Object)[3] 
(declare-const var43!1 (Array Int var3471))
(assert (not (= var43!1 null-__Array__Int__var3471__)))
(assert (= (select var43!1 0) (cast-from-String-to-var3471 var1057))) ; Statement: $r1[0] = r2 
(define-const var2176 String (var2504_getType/1390072776 var397)) ; Statement: $r4 = interfaceinvoke r3.<org.hibernate.internal.util.xml.Origin: java.lang.String getType()>() 
(declare-const var43!2 (Array Int var3471))
(assert (not (= var43!2 null-__Array__Int__var3471__)))
(assert (= (select var43!2 1) (cast-from-String-to-var3471 var2176))) ; Statement: $r1[1] = $r4 
(define-const var3706 String (var2504_getName/-329852201 var397)) ; Statement: $r5 = interfaceinvoke r3.<org.hibernate.internal.util.xml.Origin: java.lang.String getName()>() 
(declare-const var43!3 (Array Int var3471))
(assert (not (= var43!3 null-__Array__Int__var3471__)))
(assert (= (select var43!3 2) (cast-from-String-to-var3471 var3706))) ; Statement: $r1[2] = $r5 
(define-const var3979 String (String_format/1339386452 "Encountered unsupported orm.xml xsd version [%s] in mapping document [type=%s, name=%s]" var43!3)) ; Statement: $r6 = staticinvoke <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>("Encountered unsupported orm.xml xsd version [%s] in mapping document [type=%s, name=%s]", $r1) 
(assert true)
;(assert (<init>/-790357943 (cast-from-var2203-to-var836 var810) var3979)) ; Statement: specialinvoke r0.<org.hibernate.HibernateException: void <init>(java.lang.String)>($r6) 

(declare-const var810!1 var2203)
(declare-const var3979!1 String)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {arr-var3471-init=([], java.lang.Object[]), cast-from-String-to-var3471=([java.lang.String], java.lang.Object), var2504_getType/1390072776=([org.hibernate.internal.util.xml.Origin], java.lang.String), var2504_getName/-329852201=([org.hibernate.internal.util.xml.Origin], java.lang.String), String_format/1339386452=([java.lang.String, java.lang.Object[]], java.lang.String), <init>/-790357943=([org.hibernate.HibernateException, java.lang.String], void), cast-from-var2203-to-var836=([org.hibernate.internal.util.xml.UnsupportedOrmXsdVersionException], org.hibernate.HibernateException)}
; {var2203=org.hibernate.internal.util.xml.UnsupportedOrmXsdVersionException, var810=r0, var1057=r2, var2550=null_type, var2504=org.hibernate.internal.util.xml.Origin, var397=r3, var3471=java.lang.Object, var43=$r1, var2176=$r4, var3706=$r5, var3979=$r6, var836=org.hibernate.HibernateException}
; {org.hibernate.internal.util.xml.UnsupportedOrmXsdVersionException=var2203, r0=var810, r2=var1057, null_type=var2550, org.hibernate.internal.util.xml.Origin=var2504, r3=var397, java.lang.Object=var3471, $r1=var43, $r4=var2176, $r5=var3706, $r6=var3979, org.hibernate.HibernateException=var836}
;seq <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>
;cnt {"<java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>": 1}
;stmts r0 := @this: org.hibernate.internal.util.xml.UnsupportedOrmXsdVersionException;	r2 := @parameter0: java.lang.String;	r3 := @parameter1: org.hibernate.internal.util.xml.Origin;	$r1 = newarray (java.lang.Object)[3];	$r1[0] = r2;	$r4 = interfaceinvoke r3.<org.hibernate.internal.util.xml.Origin: java.lang.String getType()>();	$r1[1] = $r4;	$r5 = interfaceinvoke r3.<org.hibernate.internal.util.xml.Origin: java.lang.String getName()>();	$r1[2] = $r5;	$r6 = staticinvoke <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>("Encountered unsupported orm.xml xsd version [%s] in mapping document [type=%s, name=%s]", $r1);	specialinvoke r0.<org.hibernate.HibernateException: void <init>(java.lang.String)>($r6);	return
;block_num 1