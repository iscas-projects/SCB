(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3090 0)
(declare-sort var3716 0)
(declare-sort var3908 0)
(declare-sort var1163 0)
(declare-sort var1223 0)
(declare-sort var2414 0)
(declare-sort var3058 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun getIdTableSupport/-186027504 (var1223) var1163)
(declare-fun cast-from-var3090-to-var1223 (var3090) var1223)
(declare-fun var1163_getTruncateIdTableCommand/-1722201058 (var1163) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var3090 var3090)
(declare-const null-String String)
(declare-const null-var3908 var3908)
(declare-const null-var2414 var2414)
(declare-const null-var3058 var3058)
(declare-const var3041 var3090) ; Statement: r1 := @this: org.hibernate.hql.spi.id.global.GlobalTemporaryTableBulkIdStrategy 
(assert (not (= var3041 null-var3090)))
(declare-const var80 String) ; Statement: r5 := @parameter0: java.lang.String 
(assert (not (= var80 null-String)))
(declare-const var1642 var3908) ; Statement: r9 := @parameter1: org.hibernate.engine.spi.SharedSessionContractImplementor 
(assert (not (= var1642 null-var3908)))
(define-const var1876 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1876)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1876!1 String)
(assert (= var1876!1 ""))
(assert true)
(define-const var61 var1163 (getIdTableSupport/-186027504 (cast-from-var3090-to-var1223 var3041))) ; Statement: $r2 = virtualinvoke r1.<org.hibernate.hql.spi.id.global.GlobalTemporaryTableBulkIdStrategy: org.hibernate.hql.spi.id.IdTableSupport getIdTableSupport()>() 
(define-const var1486 String (var1163_getTruncateIdTableCommand/-1722201058 var61)) ; Statement: $r3 = interfaceinvoke $r2.<org.hibernate.hql.spi.id.IdTableSupport: java.lang.String getTruncateIdTableCommand()>() 
(assert true)
(define-const var870 String (append/672562846 var1876!1 var1486)) ; Statement: $r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3) 
(declare-const var1876!2 String)
(assert (= var1876!2 (str.++ var1876!1 var1486)))
(assert true)
(define-const var774 String (append/672562846 var870 " ")) ; Statement: $r6 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" ") 
(declare-const var870!1 String)
(assert (= var870!1 (str.++ var870 " ")))
(assert true)
(define-const var1512 String (append/672562846 var774 var80)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r5) 
(declare-const var774!1 String)
(assert (= var774!1 (str.++ var774 var80)))
(assert true)
(define-const var927 String (toString/-2075883882 var1512)) ; Statement: r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>() 
(define-const var1081 var2414 null-var2414) ; Statement: r23 = null 
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var909 var3058) ; Statement: $r18 := @caughtexception 
(assert (not (= var909 null-var3058)))
(assert true) ; Non Conditional
 ; Statement: if r23 == null goto throw $r18 
(assert (= var1081 null-var2414)) ; Cond: r23 == null 
 ; Statement: throw $r18 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), getIdTableSupport/-186027504=([org.hibernate.hql.spi.id.AbstractMultiTableBulkIdStrategyImpl], org.hibernate.hql.spi.id.IdTableSupport), cast-from-var3090-to-var1223=([org.hibernate.hql.spi.id.global.GlobalTemporaryTableBulkIdStrategy], org.hibernate.hql.spi.id.AbstractMultiTableBulkIdStrategyImpl), var1163_getTruncateIdTableCommand/-1722201058=([org.hibernate.hql.spi.id.IdTableSupport], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var3090=org.hibernate.hql.spi.id.global.GlobalTemporaryTableBulkIdStrategy, var3041=r1, var80=r5, var3716=null_type, var3908=org.hibernate.engine.spi.SharedSessionContractImplementor, var1642=r9, var1876=$r0, var1163=org.hibernate.hql.spi.id.IdTableSupport, var1223=org.hibernate.hql.spi.id.AbstractMultiTableBulkIdStrategyImpl, var61=$r2, var1486=$r3, var870=$r4, var774=$r6, var1512=$r7, var927=r8, var2414=java.sql.PreparedStatement, var1081=r23, var3058=java.lang.Throwable, var909=$r18}
; {org.hibernate.hql.spi.id.global.GlobalTemporaryTableBulkIdStrategy=var3090, r1=var3041, r5=var80, null_type=var3716, org.hibernate.engine.spi.SharedSessionContractImplementor=var3908, r9=var1642, $r0=var1876, org.hibernate.hql.spi.id.IdTableSupport=var1163, org.hibernate.hql.spi.id.AbstractMultiTableBulkIdStrategyImpl=var1223, $r2=var61, $r3=var1486, $r4=var870, $r6=var774, $r7=var1512, r8=var927, java.sql.PreparedStatement=var2414, r23=var1081, java.lang.Throwable=var3058, $r18=var909}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: org.hibernate.hql.spi.id.global.GlobalTemporaryTableBulkIdStrategy;	r5 := @parameter0: java.lang.String;	r9 := @parameter1: org.hibernate.engine.spi.SharedSessionContractImplementor;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r2 = virtualinvoke r1.<org.hibernate.hql.spi.id.global.GlobalTemporaryTableBulkIdStrategy: org.hibernate.hql.spi.id.IdTableSupport getIdTableSupport()>();	$r3 = interfaceinvoke $r2.<org.hibernate.hql.spi.id.IdTableSupport: java.lang.String getTruncateIdTableCommand()>();	$r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3);	$r6 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" ");	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r5);	r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>();	r23 = null;	$r18 := @caughtexception;	if r23 == null goto throw $r18;	throw $r18
;block_num 4