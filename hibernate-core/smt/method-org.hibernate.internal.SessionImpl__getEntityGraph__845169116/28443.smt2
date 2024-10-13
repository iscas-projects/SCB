(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2155 0)
(declare-sort var3303 0)
(declare-sort var3004 0)
(declare-sort var74 0)
(declare-sort var2287 0)
(declare-sort var3048 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun checkOpen/1243875042 (var3004) void)
(declare-fun cast-from-var2155-to-var3004 (var2155) var3004)
(declare-fun getEntityManagerFactory/2119227344 (var2155) var74)
(declare-fun var74_findEntityGraphByName/1550525312 (var74 String) var2287)
(declare-fun var3048-init () var3048)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/875830710 (var3048 String) void)
(declare-const null-var2155 var2155)
(declare-const null-String String)
(declare-const null-var2287 var2287)
(declare-const var2723 var2155) ; Statement: r0 := @this: org.hibernate.internal.SessionImpl 
(assert (not (= var2723 null-var2155)))
(declare-const var3917 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var3917 null-String)))
(assert true)
;(assert (checkOpen/1243875042 (cast-from-var2155-to-var3004 var2723))) ; Statement: virtualinvoke r0.<org.hibernate.internal.SessionImpl: void checkOpen()>() 

(declare-const var2723!1 var2155)
(assert true)
(define-const var2077 var74 (getEntityManagerFactory/2119227344 var2723!1)) ; Statement: $r2 = virtualinvoke r0.<org.hibernate.internal.SessionImpl: org.hibernate.engine.spi.SessionFactoryImplementor getEntityManagerFactory()>() 
(define-const var3029 var2287 (var74_findEntityGraphByName/1550525312 var2077 var3917)) ; Statement: r3 = interfaceinvoke $r2.<org.hibernate.engine.spi.SessionFactoryImplementor: org.hibernate.graph.spi.RootGraphImplementor findEntityGraphByName(java.lang.String)>(r1) 
 ; Statement: if r3 != null goto return r3 
(assert (not (not (= var3029 null-var2287)))) ; Negate: Cond: r3 != null  
(define-const var2040 var3048 var3048-init) ; Statement: $r4 = new java.lang.IllegalArgumentException 
(define-const var3523 String String-init) ; Statement: $r5 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3523)) ; Statement: specialinvoke $r5.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3523!1 String)
(assert (= var3523!1 ""))
(assert true)
(define-const var2546 String (append/672562846 var3523!1 "Could not locate EntityGraph with given name : ")) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Could not locate EntityGraph with given name : ") 
(declare-const var3523!2 String)
(assert (= var3523!2 (str.++ var3523!1 "Could not locate EntityGraph with given name : ")))
(assert true)
(define-const var1209 String (append/672562846 var2546 var3917)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1) 
(declare-const var2546!1 String)
(assert (= var2546!1 (str.++ var2546 var3917)))
(assert true)
(define-const var3160 String (toString/-2075883882 var1209)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/875830710 var2040 var3160)) ; Statement: specialinvoke $r4.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r8) 

(declare-const var2040!1 var3048)
(declare-const var3160!1 String)
 ; Statement: throw $r4 
(check-sat)
(get-model)
(get-unsat-core)
; {checkOpen/1243875042=([org.hibernate.engine.spi.SharedSessionContractImplementor], void), cast-from-var2155-to-var3004=([org.hibernate.internal.SessionImpl], org.hibernate.engine.spi.SharedSessionContractImplementor), getEntityManagerFactory/2119227344=([org.hibernate.internal.SessionImpl], org.hibernate.engine.spi.SessionFactoryImplementor), var74_findEntityGraphByName/1550525312=([org.hibernate.engine.spi.SessionFactoryImplementor, java.lang.String], org.hibernate.graph.spi.RootGraphImplementor), var3048-init=([], java.lang.IllegalArgumentException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/875830710=([java.lang.IllegalArgumentException, java.lang.String], void)}
; {var2155=org.hibernate.internal.SessionImpl, var2723=r0, var3917=r1, var3303=null_type, var3004=org.hibernate.engine.spi.SharedSessionContractImplementor, var74=org.hibernate.engine.spi.SessionFactoryImplementor, var2077=$r2, var2287=org.hibernate.graph.spi.RootGraphImplementor, var3029=r3, var3048=java.lang.IllegalArgumentException, var2040=$r4, var3523=$r5, var2546=$r6, var1209=$r7, var3160=$r8}
; {org.hibernate.internal.SessionImpl=var2155, r0=var2723, r1=var3917, null_type=var3303, org.hibernate.engine.spi.SharedSessionContractImplementor=var3004, org.hibernate.engine.spi.SessionFactoryImplementor=var74, $r2=var2077, org.hibernate.graph.spi.RootGraphImplementor=var2287, r3=var3029, java.lang.IllegalArgumentException=var3048, $r4=var2040, $r5=var3523, $r6=var2546, $r7=var1209, $r8=var3160}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: org.hibernate.internal.SessionImpl;	r1 := @parameter0: java.lang.String;	virtualinvoke r0.<org.hibernate.internal.SessionImpl: void checkOpen()>();	$r2 = virtualinvoke r0.<org.hibernate.internal.SessionImpl: org.hibernate.engine.spi.SessionFactoryImplementor getEntityManagerFactory()>();	r3 = interfaceinvoke $r2.<org.hibernate.engine.spi.SessionFactoryImplementor: org.hibernate.graph.spi.RootGraphImplementor findEntityGraphByName(java.lang.String)>(r1);	if r3 != null goto return r3;	$r4 = new java.lang.IllegalArgumentException;	$r5 = new java.lang.StringBuilder;	specialinvoke $r5.<java.lang.StringBuilder: void <init>()>();	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Could not locate EntityGraph with given name : ");	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1);	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r4.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r8);	throw $r4
;block_num 2