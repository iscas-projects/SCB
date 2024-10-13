(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3726 0)
(declare-sort var1740 0)
(declare-sort var2834 0)
(declare-sort var3182 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun generateIdSubselect/1888419993 (var3182 var1740 var2834) String)
(declare-fun cast-from-var3726-to-var3182 (var3726) var3182)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var3726 var3726)
(declare-const null-var1740 var1740)
(declare-const null-var2834 var2834)
(declare-const var2312 var3726) ; Statement: r1 := @this: org.hibernate.hql.spi.id.persistent.UpdateHandlerImpl 
(assert (not (= var2312 null-var3726)))
(declare-const var297 var1740) ; Statement: r2 := @parameter0: org.hibernate.persister.entity.Queryable 
(assert (not (= var297 null-var1740)))
(declare-const var211 var2834) ; Statement: r3 := @parameter1: org.hibernate.hql.spi.id.IdTableInfo 
(assert (not (= var211 null-var2834)))
(define-const var352 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var352)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var352!1 String)
(assert (= var352!1 ""))
(assert true)
(define-const var2254 String (generateIdSubselect/1888419993 (cast-from-var3726-to-var3182 var2312) var297 var211)) ; Statement: $r4 = specialinvoke r1.<org.hibernate.hql.spi.id.TableBasedUpdateHandlerImpl: java.lang.String generateIdSubselect(org.hibernate.persister.entity.Queryable,org.hibernate.hql.spi.id.IdTableInfo)>(r2, r3) 
(assert true)
(define-const var2984 String (append/672562846 var352!1 var2254)) ; Statement: $r5 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r4) 
(declare-const var352!2 String)
(assert (= var352!2 (str.++ var352!1 var2254)))
(assert true)
(define-const var3267 String (append/672562846 var2984 " where ")) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" where ") 
(declare-const var2984!1 String)
(assert (= var2984!1 (str.++ var2984 " where ")))
(assert true)
(define-const var3829 String (append/672562846 var3267 "hib_sess_id")) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("hib_sess_id") 
(declare-const var3267!1 String)
(assert (= var3267!1 (str.++ var3267 "hib_sess_id")))
(assert true)
(define-const var1814 String (append/672562846 var3829 "=?")) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("=?") 
(declare-const var3829!1 String)
(assert (= var3829!1 (str.++ var3829 "=?")))
(assert true)
(define-const var1027 String (toString/-2075883882 var1814)) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r9 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), generateIdSubselect/1888419993=([org.hibernate.hql.spi.id.AbstractTableBasedBulkIdHandler, org.hibernate.persister.entity.Queryable, org.hibernate.hql.spi.id.IdTableInfo], java.lang.String), cast-from-var3726-to-var3182=([org.hibernate.hql.spi.id.persistent.UpdateHandlerImpl], org.hibernate.hql.spi.id.AbstractTableBasedBulkIdHandler), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var3726=org.hibernate.hql.spi.id.persistent.UpdateHandlerImpl, var2312=r1, var1740=org.hibernate.persister.entity.Queryable, var297=r2, var2834=org.hibernate.hql.spi.id.IdTableInfo, var211=r3, var352=$r0, var3182=org.hibernate.hql.spi.id.AbstractTableBasedBulkIdHandler, var2254=$r4, var2984=$r5, var3267=$r6, var3829=$r7, var1814=$r8, var1027=$r9}
; {org.hibernate.hql.spi.id.persistent.UpdateHandlerImpl=var3726, r1=var2312, org.hibernate.persister.entity.Queryable=var1740, r2=var297, org.hibernate.hql.spi.id.IdTableInfo=var2834, r3=var211, $r0=var352, org.hibernate.hql.spi.id.AbstractTableBasedBulkIdHandler=var3182, $r4=var2254, $r5=var2984, $r6=var3267, $r7=var3829, $r8=var1814, $r9=var1027}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 4,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: org.hibernate.hql.spi.id.persistent.UpdateHandlerImpl;	r2 := @parameter0: org.hibernate.persister.entity.Queryable;	r3 := @parameter1: org.hibernate.hql.spi.id.IdTableInfo;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r4 = specialinvoke r1.<org.hibernate.hql.spi.id.TableBasedUpdateHandlerImpl: java.lang.String generateIdSubselect(org.hibernate.persister.entity.Queryable,org.hibernate.hql.spi.id.IdTableInfo)>(r2, r3);	$r5 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r4);	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" where ");	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("hib_sess_id");	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("=?");	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>();	return $r9
;block_num 1