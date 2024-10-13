(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2745 0)
(declare-sort var2749 0)
(declare-sort var2784 0)
(declare-sort var3142 0)
(declare-sort var3268 0)
(declare-sort var378 0)
(declare-sort var607 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun idTableInfoMap/-1094019945 (var2745) var2784)
(declare-fun var2784_get/1088891777 (var2784 var3142) var3142)
(declare-fun cast-from-String-to-var3142 (String) var3142)
(declare-fun cast-from-var3142-to-var3268 (var3142) var3268)
(declare-fun var378-init () var378)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-1391884909 (var378 String) void)
(declare-fun cast-from-var378-to-var607 (var378) var607)
(declare-const null-var2745 var2745)
(declare-const null-String String)
(declare-const null-var3268 var3268)
(declare-const var2548 var2745) ; Statement: r0 := @this: org.hibernate.hql.spi.id.AbstractMultiTableBulkIdStrategyImpl 
(assert (not (= var2548 null-var2745)))
(declare-const var1355 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var1355 null-String)))
(define-const var3026 var2784 (idTableInfoMap/-1094019945 var2548)) ; Statement: $r2 = r0.<org.hibernate.hql.spi.id.AbstractMultiTableBulkIdStrategyImpl: java.util.Map idTableInfoMap> 
(define-const var321 var3142 (var2784_get/1088891777 var3026 (cast-from-String-to-var3142 var1355))) ; Statement: $r3 = interfaceinvoke $r2.<java.util.Map: java.lang.Object get(java.lang.Object)>(r1) 
(define-const var2623 var3268 (cast-from-var3142-to-var3268 var321)) ; Statement: r4 = (org.hibernate.hql.spi.id.IdTableInfo) $r3 
 ; Statement: if r4 != null goto return r4 
(assert (not (not (= var2623 null-var3268)))) ; Negate: Cond: r4 != null  
(define-const var2980 var378 var378-init) ; Statement: $r11 = new org.hibernate.QueryException 
(define-const var3440 String String-init) ; Statement: $r10 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3440)) ; Statement: specialinvoke $r10.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3440!1 String)
(assert (= var3440!1 ""))
(assert true)
(define-const var2414 String (append/672562846 var3440!1 "Entity does not have an id table for multi-table handling : ")) ; Statement: $r7 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Entity does not have an id table for multi-table handling : ") 
(declare-const var3440!2 String)
(assert (= var3440!2 (str.++ var3440!1 "Entity does not have an id table for multi-table handling : ")))
(assert true)
(define-const var3280 String (append/672562846 var2414 var1355)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1) 
(declare-const var2414!1 String)
(assert (= var2414!1 (str.++ var2414 var1355)))
(assert true)
(define-const var3975 String (toString/-2075883882 var3280)) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-1391884909 var2980 var3975)) ; Statement: specialinvoke $r11.<org.hibernate.QueryException: void <init>(java.lang.String)>($r9) 

(declare-const var2980!1 var378)
(declare-const var3975!1 String)
(define-const var8 var607 (cast-from-var378-to-var607 var2980!1)) ; Statement: $r12 = (java.lang.Throwable) $r11 
 ; Statement: throw $r12 
(check-sat)
(get-model)
(get-unsat-core)
; {idTableInfoMap/-1094019945=([org.hibernate.hql.spi.id.AbstractMultiTableBulkIdStrategyImpl], java.util.Map), var2784_get/1088891777=([java.util.Map, java.lang.Object], java.lang.Object), cast-from-String-to-var3142=([java.lang.String], java.lang.Object), cast-from-var3142-to-var3268=([java.lang.Object], org.hibernate.hql.spi.id.IdTableInfo), var378-init=([], org.hibernate.QueryException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-1391884909=([org.hibernate.QueryException, java.lang.String], void), cast-from-var378-to-var607=([org.hibernate.QueryException], java.lang.Throwable)}
; {var2745=org.hibernate.hql.spi.id.AbstractMultiTableBulkIdStrategyImpl, var2548=r0, var1355=r1, var2749=null_type, var2784=java.util.Map, var3026=$r2, var3142=java.lang.Object, var321=$r3, var3268=org.hibernate.hql.spi.id.IdTableInfo, var2623=r4, var378=org.hibernate.QueryException, var2980=$r11, var3440=$r10, var2414=$r7, var3280=$r8, var3975=$r9, var607=java.lang.Throwable, var8=$r12}
; {org.hibernate.hql.spi.id.AbstractMultiTableBulkIdStrategyImpl=var2745, r0=var2548, r1=var1355, null_type=var2749, java.util.Map=var2784, $r2=var3026, java.lang.Object=var3142, $r3=var321, org.hibernate.hql.spi.id.IdTableInfo=var3268, r4=var2623, org.hibernate.QueryException=var378, $r11=var2980, $r10=var3440, $r7=var2414, $r8=var3280, $r9=var3975, java.lang.Throwable=var607, $r12=var8}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: org.hibernate.hql.spi.id.AbstractMultiTableBulkIdStrategyImpl;	r1 := @parameter0: java.lang.String;	$r2 = r0.<org.hibernate.hql.spi.id.AbstractMultiTableBulkIdStrategyImpl: java.util.Map idTableInfoMap>;	$r3 = interfaceinvoke $r2.<java.util.Map: java.lang.Object get(java.lang.Object)>(r1);	r4 = (org.hibernate.hql.spi.id.IdTableInfo) $r3;	if r4 != null goto return r4;	$r11 = new org.hibernate.QueryException;	$r10 = new java.lang.StringBuilder;	specialinvoke $r10.<java.lang.StringBuilder: void <init>()>();	$r7 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Entity does not have an id table for multi-table handling : ");	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1);	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r11.<org.hibernate.QueryException: void <init>(java.lang.String)>($r9);	$r12 = (java.lang.Throwable) $r11;	throw $r12
;block_num 2