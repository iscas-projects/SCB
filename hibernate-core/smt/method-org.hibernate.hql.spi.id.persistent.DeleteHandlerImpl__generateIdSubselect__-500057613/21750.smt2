(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3322 0)
(declare-sort var1139 0)
(declare-sort var651 0)
(declare-sort var1960 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun generateIdSubselect/1888419993 (var1960 var1139 var651) String)
(declare-fun cast-from-var3322-to-var1960 (var3322) var1960)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var3322 var3322)
(declare-const null-var1139 var1139)
(declare-const null-var651 var651)
(declare-const var2917 var3322) ; Statement: r1 := @this: org.hibernate.hql.spi.id.persistent.DeleteHandlerImpl 
(assert (not (= var2917 null-var3322)))
(declare-const var331 var1139) ; Statement: r2 := @parameter0: org.hibernate.persister.entity.Queryable 
(assert (not (= var331 null-var1139)))
(declare-const var1639 var651) ; Statement: r3 := @parameter1: org.hibernate.hql.spi.id.IdTableInfo 
(assert (not (= var1639 null-var651)))
(define-const var985 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var985)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var985!1 String)
(assert (= var985!1 ""))
(assert true)
(define-const var870 String (generateIdSubselect/1888419993 (cast-from-var3322-to-var1960 var2917) var331 var1639)) ; Statement: $r4 = specialinvoke r1.<org.hibernate.hql.spi.id.TableBasedDeleteHandlerImpl: java.lang.String generateIdSubselect(org.hibernate.persister.entity.Queryable,org.hibernate.hql.spi.id.IdTableInfo)>(r2, r3) 
(assert true)
(define-const var3997 String (append/672562846 var985!1 var870)) ; Statement: $r5 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r4) 
(declare-const var985!2 String)
(assert (= var985!2 (str.++ var985!1 var870)))
(assert true)
(define-const var3420 String (append/672562846 var3997 " where ")) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" where ") 
(declare-const var3997!1 String)
(assert (= var3997!1 (str.++ var3997 " where ")))
(assert true)
(define-const var2006 String (append/672562846 var3420 "hib_sess_id")) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("hib_sess_id") 
(declare-const var3420!1 String)
(assert (= var3420!1 (str.++ var3420 "hib_sess_id")))
(assert true)
(define-const var1617 String (append/672562846 var2006 "=?")) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("=?") 
(declare-const var2006!1 String)
(assert (= var2006!1 (str.++ var2006 "=?")))
(assert true)
(define-const var2630 String (toString/-2075883882 var1617)) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r9 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), generateIdSubselect/1888419993=([org.hibernate.hql.spi.id.AbstractTableBasedBulkIdHandler, org.hibernate.persister.entity.Queryable, org.hibernate.hql.spi.id.IdTableInfo], java.lang.String), cast-from-var3322-to-var1960=([org.hibernate.hql.spi.id.persistent.DeleteHandlerImpl], org.hibernate.hql.spi.id.AbstractTableBasedBulkIdHandler), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var3322=org.hibernate.hql.spi.id.persistent.DeleteHandlerImpl, var2917=r1, var1139=org.hibernate.persister.entity.Queryable, var331=r2, var651=org.hibernate.hql.spi.id.IdTableInfo, var1639=r3, var985=$r0, var1960=org.hibernate.hql.spi.id.AbstractTableBasedBulkIdHandler, var870=$r4, var3997=$r5, var3420=$r6, var2006=$r7, var1617=$r8, var2630=$r9}
; {org.hibernate.hql.spi.id.persistent.DeleteHandlerImpl=var3322, r1=var2917, org.hibernate.persister.entity.Queryable=var1139, r2=var331, org.hibernate.hql.spi.id.IdTableInfo=var651, r3=var1639, $r0=var985, org.hibernate.hql.spi.id.AbstractTableBasedBulkIdHandler=var1960, $r4=var870, $r5=var3997, $r6=var3420, $r7=var2006, $r8=var1617, $r9=var2630}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 4,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: org.hibernate.hql.spi.id.persistent.DeleteHandlerImpl;	r2 := @parameter0: org.hibernate.persister.entity.Queryable;	r3 := @parameter1: org.hibernate.hql.spi.id.IdTableInfo;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r4 = specialinvoke r1.<org.hibernate.hql.spi.id.TableBasedDeleteHandlerImpl: java.lang.String generateIdSubselect(org.hibernate.persister.entity.Queryable,org.hibernate.hql.spi.id.IdTableInfo)>(r2, r3);	$r5 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r4);	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" where ");	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("hib_sess_id");	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("=?");	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>();	return $r9
;block_num 1