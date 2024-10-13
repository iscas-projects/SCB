(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2092 0)
(declare-sort var3505 0)
(declare-sort var592 0)
(declare-sort var2144 0)
(declare-sort var1997 0)
(declare-sort var3769 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun properties/-1828393569 (var2092) var3505)
(declare-fun var3505_get/1088891777 (var3505 var592) var592)
(declare-fun cast-from-String-to-var592 (String) var592)
(declare-fun cast-from-var592-to-String (var592) String)
(declare-fun var1997-init () var1997)
(declare-fun <init>/-1904291505 (var1997 var3769) void)
(declare-fun cast-from-var2092-to-var3769 (var2092) var3769)
(declare-const null-var2092 var2092)
(declare-const null-String String)
(declare-const var74 var2092) ; Statement: r0 := @this: org.hibernate.internal.SessionFactoryImpl 
(assert (not (= var74 null-var2092)))
(define-const var1974 var3505 (properties/-1828393569 var74)) ; Statement: $r1 = r0.<org.hibernate.internal.SessionFactoryImpl: java.util.Map properties> 
(define-const var2862 var592 (var3505_get/1088891777 var1974 (cast-from-String-to-var592 "hibernate.current_session_context_class"))) ; Statement: $r2 = interfaceinvoke $r1.<java.util.Map: java.lang.Object get(java.lang.Object)>("hibernate.current_session_context_class") 
(define-const var3612 String (cast-from-var592-to-String var2862)) ; Statement: r19 = (java.lang.String) $r2 
 ; Statement: if r19 != null goto $r3 = "jta" 
(assert (not (= var3612 null-String))) ; Cond: r19 != null 
(define-const var3410 String "jta") ; Statement: $r3 = "jta" 
(assert true)
(define-const var1118 Bool (= var3410 var3612)) ; Statement: $z0 = virtualinvoke $r3.<java.lang.String: boolean equals(java.lang.Object)>(r19) 
 ; Statement: if $z0 == 0 goto $r4 = "thread" 
(assert (not (= (ite var1118 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var2826 var1997 var1997-init) ; Statement: $r16 = new org.hibernate.context.internal.JTASessionContext 
(assert true)
;(assert (<init>/-1904291505 var2826 (cast-from-var2092-to-var3769 var74))) ; Statement: specialinvoke $r16.<org.hibernate.context.internal.JTASessionContext: void <init>(org.hibernate.engine.spi.SessionFactoryImplementor)>(r0) 

(declare-const var2826!1 var1997)
(declare-const var74!1 var2092)
 ; Statement: return $r16 
(check-sat)
(get-model)
(get-unsat-core)
; {properties/-1828393569=([org.hibernate.internal.SessionFactoryImpl], java.util.Map), var3505_get/1088891777=([java.util.Map, java.lang.Object], java.lang.Object), cast-from-String-to-var592=([java.lang.String], java.lang.Object), cast-from-var592-to-String=([java.lang.Object], java.lang.String), var1997-init=([], org.hibernate.context.internal.JTASessionContext), <init>/-1904291505=([org.hibernate.context.internal.JTASessionContext, org.hibernate.engine.spi.SessionFactoryImplementor], void), cast-from-var2092-to-var3769=([org.hibernate.internal.SessionFactoryImpl], org.hibernate.engine.spi.SessionFactoryImplementor)}
; {var2092=org.hibernate.internal.SessionFactoryImpl, var74=r0, var3505=java.util.Map, var1974=$r1, var592=java.lang.Object, var2862=$r2, var3612=r19, var2144=null_type, var3410=$r3, var1118=$z0, var1997=org.hibernate.context.internal.JTASessionContext, var2826=$r16, var3769=org.hibernate.engine.spi.SessionFactoryImplementor}
; {org.hibernate.internal.SessionFactoryImpl=var2092, r0=var74, java.util.Map=var3505, $r1=var1974, java.lang.Object=var592, $r2=var2862, r19=var3612, null_type=var2144, $r3=var3410, $z0=var1118, org.hibernate.context.internal.JTASessionContext=var1997, $r16=var2826, org.hibernate.engine.spi.SessionFactoryImplementor=var3769}
;seq <java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r0 := @this: org.hibernate.internal.SessionFactoryImpl;	$r1 = r0.<org.hibernate.internal.SessionFactoryImpl: java.util.Map properties>;	$r2 = interfaceinvoke $r1.<java.util.Map: java.lang.Object get(java.lang.Object)>("hibernate.current_session_context_class");	r19 = (java.lang.String) $r2;	if r19 != null goto $r3 = "jta";	$r3 = "jta";	$z0 = virtualinvoke $r3.<java.lang.String: boolean equals(java.lang.Object)>(r19);	if $z0 == 0 goto $r4 = "thread";	$r16 = new org.hibernate.context.internal.JTASessionContext;	specialinvoke $r16.<org.hibernate.context.internal.JTASessionContext: void <init>(org.hibernate.engine.spi.SessionFactoryImplementor)>(r0);	return $r16
;block_num 3