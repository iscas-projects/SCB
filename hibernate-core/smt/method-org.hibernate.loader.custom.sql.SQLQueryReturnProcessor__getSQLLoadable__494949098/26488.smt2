(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3127 0)
(declare-sort var2297 0)
(declare-sort var3849 0)
(declare-sort var3747 0)
(declare-sort var3145 0)
(declare-sort var1514 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun factory/181402656 (var3127) var3849)
(declare-fun var3849_getEntityPersister/1301528620 (var3849 String) var3747)
(declare-fun var3145-init () var3145)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-1350304819 (var3145 String) void)
(declare-fun cast-from-var3145-to-var1514 (var3145) var1514)
(declare-const null-var3127 var3127)
(declare-const null-String String)
(declare-const var3448 var3127) ; Statement: r0 := @this: org.hibernate.loader.custom.sql.SQLQueryReturnProcessor 
(assert (not (= var3448 null-var3127)))
(declare-const var3545 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var3545 null-String)))
(define-const var2595 var3849 (factory/181402656 var3448)) ; Statement: $r2 = r0.<org.hibernate.loader.custom.sql.SQLQueryReturnProcessor: org.hibernate.engine.spi.SessionFactoryImplementor factory> 
(define-const var1060 var3747 (var3849_getEntityPersister/1301528620 var2595 var3545)) ; Statement: r3 = interfaceinvoke $r2.<org.hibernate.engine.spi.SessionFactoryImplementor: org.hibernate.persister.entity.EntityPersister getEntityPersister(java.lang.String)>(r1) 
(define-const var987 Bool true) ; Statement: $z0 = r3 instanceof org.hibernate.persister.entity.SQLLoadable 
 ; Statement: if $z0 != 0 goto $r4 = (org.hibernate.persister.entity.SQLLoadable) r3 
(assert (not (not (= (ite var987 1 0) 0)))) ; Negate: Cond: $z0 != 0  
(define-const var977 var3145 var3145-init) ; Statement: $r11 = new org.hibernate.MappingException 
(define-const var1574 String String-init) ; Statement: $r10 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1574)) ; Statement: specialinvoke $r10.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1574!1 String)
(assert (= var1574!1 ""))
(assert true)
(define-const var376 String (append/672562846 var1574!1 "class persister is not SQLLoadable: ")) ; Statement: $r7 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("class persister is not SQLLoadable: ") 
(declare-const var1574!2 String)
(assert (= var1574!2 (str.++ var1574!1 "class persister is not SQLLoadable: ")))
(assert true)
(define-const var2733 String (append/672562846 var376 var3545)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1) 
(declare-const var376!1 String)
(assert (= var376!1 (str.++ var376 var3545)))
(assert true)
(define-const var469 String (toString/-2075883882 var2733)) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-1350304819 var977 var469)) ; Statement: specialinvoke $r11.<org.hibernate.MappingException: void <init>(java.lang.String)>($r9) 

(declare-const var977!1 var3145)
(declare-const var469!1 String)
(define-const var926 var1514 (cast-from-var3145-to-var1514 var977!1)) ; Statement: $r12 = (java.lang.Throwable) $r11 
 ; Statement: throw $r12 
(check-sat)
(get-model)
(get-unsat-core)
; {factory/181402656=([org.hibernate.loader.custom.sql.SQLQueryReturnProcessor], org.hibernate.engine.spi.SessionFactoryImplementor), var3849_getEntityPersister/1301528620=([org.hibernate.engine.spi.SessionFactoryImplementor, java.lang.String], org.hibernate.persister.entity.EntityPersister), var3145-init=([], org.hibernate.MappingException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-1350304819=([org.hibernate.MappingException, java.lang.String], void), cast-from-var3145-to-var1514=([org.hibernate.MappingException], java.lang.Throwable)}
; {var3127=org.hibernate.loader.custom.sql.SQLQueryReturnProcessor, var3448=r0, var3545=r1, var2297=null_type, var3849=org.hibernate.engine.spi.SessionFactoryImplementor, var2595=$r2, var3747=org.hibernate.persister.entity.EntityPersister, var1060=r3, var987=$z0, var3145=org.hibernate.MappingException, var977=$r11, var1574=$r10, var376=$r7, var2733=$r8, var469=$r9, var1514=java.lang.Throwable, var926=$r12}
; {org.hibernate.loader.custom.sql.SQLQueryReturnProcessor=var3127, r0=var3448, r1=var3545, null_type=var2297, org.hibernate.engine.spi.SessionFactoryImplementor=var3849, $r2=var2595, org.hibernate.persister.entity.EntityPersister=var3747, r3=var1060, $z0=var987, org.hibernate.MappingException=var3145, $r11=var977, $r10=var1574, $r7=var376, $r8=var2733, $r9=var469, java.lang.Throwable=var1514, $r12=var926}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: org.hibernate.loader.custom.sql.SQLQueryReturnProcessor;	r1 := @parameter0: java.lang.String;	$r2 = r0.<org.hibernate.loader.custom.sql.SQLQueryReturnProcessor: org.hibernate.engine.spi.SessionFactoryImplementor factory>;	r3 = interfaceinvoke $r2.<org.hibernate.engine.spi.SessionFactoryImplementor: org.hibernate.persister.entity.EntityPersister getEntityPersister(java.lang.String)>(r1);	$z0 = r3 instanceof org.hibernate.persister.entity.SQLLoadable;	if $z0 != 0 goto $r4 = (org.hibernate.persister.entity.SQLLoadable) r3;	$r11 = new org.hibernate.MappingException;	$r10 = new java.lang.StringBuilder;	specialinvoke $r10.<java.lang.StringBuilder: void <init>()>();	$r7 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("class persister is not SQLLoadable: ");	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1);	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r11.<org.hibernate.MappingException: void <init>(java.lang.String)>($r9);	$r12 = (java.lang.Throwable) $r11;	throw $r12
;block_num 2