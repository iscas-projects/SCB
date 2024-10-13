(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1540 0)
(declare-sort var2167 0)
(declare-sort var393 0)
(declare-sort var755 0)
(declare-sort var1848 0)
(declare-sort var1308 0)
(declare-sort var394 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun checkOpen/1243875042 (var393) void)
(declare-fun cast-from-var1540-to-var393 (var1540) var393)
(declare-fun factory/-778087690 (var1540) var755)
(declare-fun getNamedQueryRepository/-457165058 (var755) var1848)
(declare-fun getNamedProcedureCallMemento/425417961 (var1848 String) var1308)
(declare-fun var394-init () var394)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/875830710 (var394 String) void)
(declare-const null-var1540 var1540)
(declare-const null-String String)
(declare-const null-var1308 var1308)
(declare-const var3392 var1540) ; Statement: r0 := @this: org.hibernate.internal.AbstractSharedSessionContract 
(assert (not (= var3392 null-var1540)))
(declare-const var374 String) ; Statement: r2 := @parameter0: java.lang.String 
(assert (not (= var374 null-String)))
(assert true)
;(assert (checkOpen/1243875042 (cast-from-var1540-to-var393 var3392))) ; Statement: virtualinvoke r0.<org.hibernate.internal.AbstractSharedSessionContract: void checkOpen()>() 

(declare-const var3392!1 var1540)
(define-const var1979 var755 (factory/-778087690 var3392!1)) ; Statement: $r1 = r0.<org.hibernate.internal.AbstractSharedSessionContract: org.hibernate.internal.SessionFactoryImpl factory> 
(assert true)
(define-const var3205 var1848 (getNamedQueryRepository/-457165058 var1979)) ; Statement: $r3 = virtualinvoke $r1.<org.hibernate.internal.SessionFactoryImpl: org.hibernate.query.spi.NamedQueryRepository getNamedQueryRepository()>() 
(assert true)
(define-const var3556 var1308 (getNamedProcedureCallMemento/425417961 var3205 var374)) ; Statement: r4 = virtualinvoke $r3.<org.hibernate.query.spi.NamedQueryRepository: org.hibernate.procedure.ProcedureCallMemento getNamedProcedureCallMemento(java.lang.String)>(r2) 
 ; Statement: if r4 != null goto r5 = interfaceinvoke r4.<org.hibernate.procedure.ProcedureCallMemento: org.hibernate.procedure.ProcedureCall makeProcedureCall(org.hibernate.engine.spi.SharedSessionContractImplementor)>(r0) 
(assert (not (not (= var3556 null-var1308)))) ; Negate: Cond: r4 != null  
(define-const var2699 var394 var394-init) ; Statement: $r6 = new java.lang.IllegalArgumentException 
(define-const var2121 String String-init) ; Statement: $r7 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2121)) ; Statement: specialinvoke $r7.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2121!1 String)
(assert (= var2121!1 ""))
(assert true)
(define-const var1170 String (append/672562846 var2121!1 "Could not find named stored procedure call with that registration name : ")) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Could not find named stored procedure call with that registration name : ") 
(declare-const var2121!2 String)
(assert (= var2121!2 (str.++ var2121!1 "Could not find named stored procedure call with that registration name : ")))
(assert true)
(define-const var1787 String (append/672562846 var1170 var374)) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r2) 
(declare-const var1170!1 String)
(assert (= var1170!1 (str.++ var1170 var374)))
(assert true)
(define-const var994 String (toString/-2075883882 var1787)) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/875830710 var2699 var994)) ; Statement: specialinvoke $r6.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r10) 

(declare-const var2699!1 var394)
(declare-const var994!1 String)
 ; Statement: throw $r6 
(check-sat)
(get-model)
(get-unsat-core)
; {checkOpen/1243875042=([org.hibernate.engine.spi.SharedSessionContractImplementor], void), cast-from-var1540-to-var393=([org.hibernate.internal.AbstractSharedSessionContract], org.hibernate.engine.spi.SharedSessionContractImplementor), factory/-778087690=([org.hibernate.internal.AbstractSharedSessionContract], org.hibernate.internal.SessionFactoryImpl), getNamedQueryRepository/-457165058=([org.hibernate.internal.SessionFactoryImpl], org.hibernate.query.spi.NamedQueryRepository), getNamedProcedureCallMemento/425417961=([org.hibernate.query.spi.NamedQueryRepository, java.lang.String], org.hibernate.procedure.ProcedureCallMemento), var394-init=([], java.lang.IllegalArgumentException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/875830710=([java.lang.IllegalArgumentException, java.lang.String], void)}
; {var1540=org.hibernate.internal.AbstractSharedSessionContract, var3392=r0, var374=r2, var2167=null_type, var393=org.hibernate.engine.spi.SharedSessionContractImplementor, var755=org.hibernate.internal.SessionFactoryImpl, var1979=$r1, var1848=org.hibernate.query.spi.NamedQueryRepository, var3205=$r3, var1308=org.hibernate.procedure.ProcedureCallMemento, var3556=r4, var394=java.lang.IllegalArgumentException, var2699=$r6, var2121=$r7, var1170=$r8, var1787=$r9, var994=$r10}
; {org.hibernate.internal.AbstractSharedSessionContract=var1540, r0=var3392, r2=var374, null_type=var2167, org.hibernate.engine.spi.SharedSessionContractImplementor=var393, org.hibernate.internal.SessionFactoryImpl=var755, $r1=var1979, org.hibernate.query.spi.NamedQueryRepository=var1848, $r3=var3205, org.hibernate.procedure.ProcedureCallMemento=var1308, r4=var3556, java.lang.IllegalArgumentException=var394, $r6=var2699, $r7=var2121, $r8=var1170, $r9=var1787, $r10=var994}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: org.hibernate.internal.AbstractSharedSessionContract;	r2 := @parameter0: java.lang.String;	virtualinvoke r0.<org.hibernate.internal.AbstractSharedSessionContract: void checkOpen()>();	$r1 = r0.<org.hibernate.internal.AbstractSharedSessionContract: org.hibernate.internal.SessionFactoryImpl factory>;	$r3 = virtualinvoke $r1.<org.hibernate.internal.SessionFactoryImpl: org.hibernate.query.spi.NamedQueryRepository getNamedQueryRepository()>();	r4 = virtualinvoke $r3.<org.hibernate.query.spi.NamedQueryRepository: org.hibernate.procedure.ProcedureCallMemento getNamedProcedureCallMemento(java.lang.String)>(r2);	if r4 != null goto r5 = interfaceinvoke r4.<org.hibernate.procedure.ProcedureCallMemento: org.hibernate.procedure.ProcedureCall makeProcedureCall(org.hibernate.engine.spi.SharedSessionContractImplementor)>(r0);	$r6 = new java.lang.IllegalArgumentException;	$r7 = new java.lang.StringBuilder;	specialinvoke $r7.<java.lang.StringBuilder: void <init>()>();	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Could not find named stored procedure call with that registration name : ");	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r2);	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r6.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r10);	throw $r6
;block_num 2