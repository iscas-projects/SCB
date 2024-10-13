(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3565 0)
(declare-sort var520 0)
(declare-sort var1278 0)
(declare-sort var3090 0)
(declare-sort var1369 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun generateIdSubselect/-1804962917 (var1369 var520 var1278 var3090) String)
(declare-fun cast-from-var3565-to-var1369 (var3565) var1369)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var3565 var3565)
(declare-const null-var520 var520)
(declare-const null-var1278 var1278)
(declare-const null-var3090 var3090)
(declare-const var1866 var3565) ; Statement: r1 := @this: org.hibernate.hql.spi.id.persistent.DeleteHandlerImpl 
(assert (not (= var1866 null-var3565)))
(declare-const var448 var520) ; Statement: r2 := @parameter0: org.hibernate.persister.entity.Queryable 
(assert (not (= var448 null-var520)))
(declare-const var1735 var1278) ; Statement: r3 := @parameter1: org.hibernate.persister.collection.AbstractCollectionPersister 
(assert (not (= var1735 null-var1278)))
(declare-const var838 var3090) ; Statement: r4 := @parameter2: org.hibernate.hql.spi.id.IdTableInfo 
(assert (not (= var838 null-var3090)))
(define-const var1549 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1549)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1549!1 String)
(assert (= var1549!1 ""))
(assert true)
(define-const var3863 String (generateIdSubselect/-1804962917 (cast-from-var3565-to-var1369 var1866) var448 var1735 var838)) ; Statement: $r5 = specialinvoke r1.<org.hibernate.hql.spi.id.TableBasedDeleteHandlerImpl: java.lang.String generateIdSubselect(org.hibernate.persister.entity.Queryable,org.hibernate.persister.collection.AbstractCollectionPersister,org.hibernate.hql.spi.id.IdTableInfo)>(r2, r3, r4) 
(assert true)
(define-const var1635 String (append/672562846 var1549!1 var3863)) ; Statement: $r6 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r5) 
(declare-const var1549!2 String)
(assert (= var1549!2 (str.++ var1549!1 var3863)))
(assert true)
(define-const var182 String (append/672562846 var1635 " where ")) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" where ") 
(declare-const var1635!1 String)
(assert (= var1635!1 (str.++ var1635 " where ")))
(assert true)
(define-const var21 String (append/672562846 var182 "hib_sess_id")) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("hib_sess_id") 
(declare-const var182!1 String)
(assert (= var182!1 (str.++ var182 "hib_sess_id")))
(assert true)
(define-const var176 String (append/672562846 var21 "=?")) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("=?") 
(declare-const var21!1 String)
(assert (= var21!1 (str.++ var21 "=?")))
(assert true)
(define-const var3437 String (toString/-2075883882 var176)) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r10 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), generateIdSubselect/-1804962917=([org.hibernate.hql.spi.id.AbstractTableBasedBulkIdHandler, org.hibernate.persister.entity.Queryable, org.hibernate.persister.collection.AbstractCollectionPersister, org.hibernate.hql.spi.id.IdTableInfo], java.lang.String), cast-from-var3565-to-var1369=([org.hibernate.hql.spi.id.persistent.DeleteHandlerImpl], org.hibernate.hql.spi.id.AbstractTableBasedBulkIdHandler), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var3565=org.hibernate.hql.spi.id.persistent.DeleteHandlerImpl, var1866=r1, var520=org.hibernate.persister.entity.Queryable, var448=r2, var1278=org.hibernate.persister.collection.AbstractCollectionPersister, var1735=r3, var3090=org.hibernate.hql.spi.id.IdTableInfo, var838=r4, var1549=$r0, var1369=org.hibernate.hql.spi.id.AbstractTableBasedBulkIdHandler, var3863=$r5, var1635=$r6, var182=$r7, var21=$r8, var176=$r9, var3437=$r10}
; {org.hibernate.hql.spi.id.persistent.DeleteHandlerImpl=var3565, r1=var1866, org.hibernate.persister.entity.Queryable=var520, r2=var448, org.hibernate.persister.collection.AbstractCollectionPersister=var1278, r3=var1735, org.hibernate.hql.spi.id.IdTableInfo=var3090, r4=var838, $r0=var1549, org.hibernate.hql.spi.id.AbstractTableBasedBulkIdHandler=var1369, $r5=var3863, $r6=var1635, $r7=var182, $r8=var21, $r9=var176, $r10=var3437}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 4,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: org.hibernate.hql.spi.id.persistent.DeleteHandlerImpl;	r2 := @parameter0: org.hibernate.persister.entity.Queryable;	r3 := @parameter1: org.hibernate.persister.collection.AbstractCollectionPersister;	r4 := @parameter2: org.hibernate.hql.spi.id.IdTableInfo;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r5 = specialinvoke r1.<org.hibernate.hql.spi.id.TableBasedDeleteHandlerImpl: java.lang.String generateIdSubselect(org.hibernate.persister.entity.Queryable,org.hibernate.persister.collection.AbstractCollectionPersister,org.hibernate.hql.spi.id.IdTableInfo)>(r2, r3, r4);	$r6 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r5);	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" where ");	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("hib_sess_id");	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("=?");	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.String toString()>();	return $r10
;block_num 1