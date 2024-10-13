(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var410 0)
(declare-sort var348 0)
(declare-sort var150 0)
(declare-sort var323 0)
(declare-sort var1768 0)
(declare-sort var543 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun role/-190296674 (var410) String)
(declare-fun key/-190296674 (var410) var150)
(declare-fun String-init () String)
(define-fun <init>/-1061048412 ((s String)) String s)
(declare-fun var1768_collectionInfoString/-1227200478 (String var150) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun var543_isDebugEnabled/1662963326 (var543) Bool)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var410 var410)
(declare-const null-var348 var348)
(declare-const null-String String)
(declare-const var410-LOG var543)
(declare-const var3985 var410) ; Statement: r0 := @this: org.hibernate.collection.internal.AbstractPersistentCollection 
(assert (not (= var3985 null-var410)))
(declare-const var2177 var348) ; Statement: r4 := @parameter0: org.hibernate.engine.spi.SharedSessionContractImplementor 
(assert (not (= var2177 null-var348)))
(define-const var802 String (role/-190296674 var3985)) ; Statement: r1 = r0.<org.hibernate.collection.internal.AbstractPersistentCollection: java.lang.String role> 
(define-const var3142 var150 (key/-190296674 var3985)) ; Statement: r2 = r0.<org.hibernate.collection.internal.AbstractPersistentCollection: java.io.Serializable key> 
(define-const var3530 String String-init) ; Statement: $r3 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/-1061048412 var3530 "Collection : ")) ; Statement: specialinvoke $r3.<java.lang.StringBuilder: void <init>(java.lang.String)>("Collection : ") 
(declare-const var3530!1 String)
(assert (= var3530!1 "Collection : "))
 ; Statement: if r1 == null goto $r5 = interfaceinvoke r4.<org.hibernate.engine.spi.SharedSessionContractImplementor: org.hibernate.engine.spi.PersistenceContext getPersistenceContextInternal()>() 
(assert (not (= var802 null-String))) ; Negate: Cond: r1 == null  
(define-const var110 String (var1768_collectionInfoString/-1227200478 var802 var3142)) ; Statement: $r11 = staticinvoke <org.hibernate.pretty.MessageHelper: java.lang.String collectionInfoString(java.lang.String,java.io.Serializable)>(r1, r2) 
(assert true)
;(assert (append/672562846 var3530!1 var110)) ; Statement: virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r11) 
(declare-const var3530!2 String)
(assert (= var3530!2 (str.++ var3530!1 var110)))
 ; Statement: goto [?= $r13 = <org.hibernate.collection.internal.AbstractPersistentCollection: org.hibernate.internal.CoreMessageLogger LOG>] 
(assert true) ; Non Conditional
(define-const var1236 var543 var410-LOG) ; Statement: $r13 = <org.hibernate.collection.internal.AbstractPersistentCollection: org.hibernate.internal.CoreMessageLogger LOG> 
(define-const var42 Bool (var543_isDebugEnabled/1662963326 var1236)) ; Statement: $z1 = interfaceinvoke $r13.<org.hibernate.internal.CoreMessageLogger: boolean isDebugEnabled()>() 
 ; Statement: if $z1 == 0 goto $r15 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert (= (ite var42 1 0) 0)) ; Cond: $z1 == 0 
(assert true)
(define-const var3557 String (toString/-2075883882 var3530!2)) ; Statement: $r15 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r15 
(check-sat)
(get-model)
(get-unsat-core)
; {role/-190296674=([org.hibernate.collection.internal.AbstractPersistentCollection], java.lang.String), key/-190296674=([org.hibernate.collection.internal.AbstractPersistentCollection], java.io.Serializable), String-init=([], java.lang.StringBuilder), <init>/-1061048412=([java.lang.StringBuilder, java.lang.String], void), var1768_collectionInfoString/-1227200478=([java.lang.String, java.io.Serializable], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), var543_isDebugEnabled/1662963326=([org.hibernate.internal.CoreMessageLogger], boolean), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var410=org.hibernate.collection.internal.AbstractPersistentCollection, var3985=r0, var348=org.hibernate.engine.spi.SharedSessionContractImplementor, var2177=r4, var802=r1, var150=java.io.Serializable, var3142=r2, var3530=$r3, var323=null_type, var1768=org.hibernate.pretty.MessageHelper, var110=$r11, var543=org.hibernate.internal.CoreMessageLogger, var1236=$r13, var42=$z1, var3557=$r15}
; {org.hibernate.collection.internal.AbstractPersistentCollection=var410, r0=var3985, org.hibernate.engine.spi.SharedSessionContractImplementor=var348, r4=var2177, r1=var802, java.io.Serializable=var150, r2=var3142, $r3=var3530, null_type=var323, org.hibernate.pretty.MessageHelper=var1768, $r11=var110, org.hibernate.internal.CoreMessageLogger=var543, $r13=var1236, $z1=var42, $r15=var3557}
;seq <java.lang.StringBuilder: void <init>(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: org.hibernate.collection.internal.AbstractPersistentCollection;	r4 := @parameter0: org.hibernate.engine.spi.SharedSessionContractImplementor;	r1 = r0.<org.hibernate.collection.internal.AbstractPersistentCollection: java.lang.String role>;	r2 = r0.<org.hibernate.collection.internal.AbstractPersistentCollection: java.io.Serializable key>;	$r3 = new java.lang.StringBuilder;	specialinvoke $r3.<java.lang.StringBuilder: void <init>(java.lang.String)>("Collection : ");	if r1 == null goto $r5 = interfaceinvoke r4.<org.hibernate.engine.spi.SharedSessionContractImplementor: org.hibernate.engine.spi.PersistenceContext getPersistenceContextInternal()>();	$r11 = staticinvoke <org.hibernate.pretty.MessageHelper: java.lang.String collectionInfoString(java.lang.String,java.io.Serializable)>(r1, r2);	virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r11);	goto [?= $r13 = <org.hibernate.collection.internal.AbstractPersistentCollection: org.hibernate.internal.CoreMessageLogger LOG>];	$r13 = <org.hibernate.collection.internal.AbstractPersistentCollection: org.hibernate.internal.CoreMessageLogger LOG>;	$z1 = interfaceinvoke $r13.<org.hibernate.internal.CoreMessageLogger: boolean isDebugEnabled()>();	if $z1 == 0 goto $r15 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.String toString()>();	$r15 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.String toString()>();	return $r15
;block_num 4