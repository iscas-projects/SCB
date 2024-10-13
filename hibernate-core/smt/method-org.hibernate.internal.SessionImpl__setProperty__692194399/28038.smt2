(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1777 0)
(declare-sort var63 0)
(declare-sort var3247 0)
(declare-sort var3377 0)
(declare-sort var301 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun checkOpen/1243875042 (var3377) void)
(declare-fun cast-from-var1777-to-var3377 (var1777) var3377)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun arr-var3247-init () (Array Int var3247))
(declare-fun var301_warnf/-408648065 (var301 String (Array Int var3247)) void)
(declare-const null-var1777 var1777)
(declare-const null-String String)
(declare-const null-var3247 var3247)
(declare-const var1777-log var301)
(declare-const var1599 var1777) ; Statement: r0 := @this: org.hibernate.internal.SessionImpl 
(assert (not (= var1599 null-var1777)))
(declare-const var1332 String) ; Statement: r2 := @parameter0: java.lang.String 
(assert (not (= var1332 null-String)))
(declare-const var3708 var3247) ; Statement: r1 := @parameter1: java.lang.Object 
(assert (not (= var3708 null-var3247)))
(assert true)
;(assert (checkOpen/1243875042 (cast-from-var1777-to-var3377 var1599))) ; Statement: virtualinvoke r0.<org.hibernate.internal.SessionImpl: void checkOpen()>() 

(declare-const var1599!1 var1777)
(define-const var791 Bool false) ; Statement: $z0 = r1 instanceof java.io.Serializable 
 ; Statement: if $z0 != 0 goto (branch) 
(assert (not (not (= (ite var791 1 0) 0)))) ; Negate: Cond: $z0 != 0  
(define-const var1743 var301 var1777-log) ; Statement: $r21 = <org.hibernate.internal.SessionImpl: org.hibernate.internal.EntityManagerMessageLogger log> 
(define-const var2330 String String-init) ; Statement: $r20 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2330)) ; Statement: specialinvoke $r20.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2330!1 String)
(assert (= var2330!1 ""))
(assert true)
(define-const var3188 String (append/672562846 var2330!1 "Property \u0027")) ; Statement: $r22 = virtualinvoke $r20.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Property \'") 
(declare-const var2330!2 String)
(assert (= var2330!2 (str.++ var2330!1 "Property \u0027")))
(assert true)
(define-const var1773 String (append/672562846 var3188 var1332)) ; Statement: $r23 = virtualinvoke $r22.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r2) 
(declare-const var3188!1 String)
(assert (= var3188!1 (str.++ var3188 var1332)))
(assert true)
(define-const var32 String (append/672562846 var1773 "\u0027 is not serializable, value won\u0027t be set.")) ; Statement: $r24 = virtualinvoke $r23.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\' is not serializable, value won\'t be set.") 
(declare-const var1773!1 String)
(assert (= var1773!1 (str.++ var1773 "\u0027 is not serializable, value won\u0027t be set.")))
(assert true)
(define-const var3362 String (toString/-2075883882 var32)) ; Statement: $r26 = virtualinvoke $r24.<java.lang.StringBuilder: java.lang.String toString()>() 
(define-const var1433 (Array Int var3247) arr-var3247-init) ; Statement: $r25 = newarray (java.lang.Object)[0] 
;(assert (var301_warnf/-408648065 var1743 var3362 var1433)) ; Statement: interfaceinvoke $r21.<org.hibernate.internal.EntityManagerMessageLogger: void warnf(java.lang.String,java.lang.Object[])>($r26, $r25) 

(declare-const var1743!1 var301)
(declare-const var3362!1 String)
(declare-const var1433!1 (Array Int var3247))
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {checkOpen/1243875042=([org.hibernate.engine.spi.SharedSessionContractImplementor], void), cast-from-var1777-to-var3377=([org.hibernate.internal.SessionImpl], org.hibernate.engine.spi.SharedSessionContractImplementor), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), arr-var3247-init=([], java.lang.Object[]), var301_warnf/-408648065=([org.hibernate.internal.EntityManagerMessageLogger, java.lang.String, java.lang.Object[]], void)}
; {var1777=org.hibernate.internal.SessionImpl, var1599=r0, var1332=r2, var63=null_type, var3247=java.lang.Object, var3708=r1, var3377=org.hibernate.engine.spi.SharedSessionContractImplementor, var791=$z0, var301=org.hibernate.internal.EntityManagerMessageLogger, var1743=$r21, var2330=$r20, var3188=$r22, var1773=$r23, var32=$r24, var3362=$r26, var1433=$r25}
; {org.hibernate.internal.SessionImpl=var1777, r0=var1599, r2=var1332, null_type=var63, java.lang.Object=var3247, r1=var3708, org.hibernate.engine.spi.SharedSessionContractImplementor=var3377, $z0=var791, org.hibernate.internal.EntityManagerMessageLogger=var301, $r21=var1743, $r20=var2330, $r22=var3188, $r23=var1773, $r24=var32, $r26=var3362, $r25=var1433}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: org.hibernate.internal.SessionImpl;	r2 := @parameter0: java.lang.String;	r1 := @parameter1: java.lang.Object;	virtualinvoke r0.<org.hibernate.internal.SessionImpl: void checkOpen()>();	$z0 = r1 instanceof java.io.Serializable;	if $z0 != 0 goto (branch);	$r21 = <org.hibernate.internal.SessionImpl: org.hibernate.internal.EntityManagerMessageLogger log>;	$r20 = new java.lang.StringBuilder;	specialinvoke $r20.<java.lang.StringBuilder: void <init>()>();	$r22 = virtualinvoke $r20.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Property \'");	$r23 = virtualinvoke $r22.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r2);	$r24 = virtualinvoke $r23.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\' is not serializable, value won\'t be set.");	$r26 = virtualinvoke $r24.<java.lang.StringBuilder: java.lang.String toString()>();	$r25 = newarray (java.lang.Object)[0];	interfaceinvoke $r21.<org.hibernate.internal.EntityManagerMessageLogger: void warnf(java.lang.String,java.lang.Object[])>($r26, $r25);	return
;block_num 2