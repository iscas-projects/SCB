(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var722 0)
(declare-sort var3802 0)
(declare-sort var47 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun entityNamingSource/949001044 (var722) var3802)
(declare-fun var47_getEntityName/-119580260 (var47) String)
(declare-fun cast-from-var3802-to-var47 (var3802) var47)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1166366385 (String Int) String)
(declare-fun inLineViewCount/949001044 (var722) Int)
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var722 var722)
(declare-const var1032 var722) ; Statement: r1 := @this: org.hibernate.boot.model.source.internal.hbm.AbstractEntitySourceImpl 
(assert (not (= var1032 null-var722)))
(define-const var3995 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3995)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3995!1 String)
(assert (= var3995!1 ""))
(define-const var3505 var3802 (entityNamingSource/949001044 var1032)) ; Statement: $r2 = r1.<org.hibernate.boot.model.source.internal.hbm.AbstractEntitySourceImpl: org.hibernate.boot.model.source.spi.EntityNamingSource entityNamingSource> 
(define-const var3823 String (var47_getEntityName/-119580260 (cast-from-var3802-to-var47 var3505))) ; Statement: $r3 = interfaceinvoke $r2.<org.hibernate.boot.model.source.spi.EntityNamingSource: java.lang.String getEntityName()>() 
(assert true)
(define-const var2627 String (append/672562846 var3995!1 var3823)) ; Statement: $r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3) 
(declare-const var3995!2 String)
(assert (= var3995!2 (str.++ var3995!1 var3823)))
(assert true)
(define-const var1241 String (append/-1166366385 var2627 35)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(35) 
(declare-const var2627!1 String)
(assert (str.prefixof var2627 var2627!1))
(define-const var121 Int (inLineViewCount/949001044 var1032)) ; Statement: $i0 = r1.<org.hibernate.boot.model.source.internal.hbm.AbstractEntitySourceImpl: int inLineViewCount> 
(define-const var3863 Int (+ var121 1)) ; Statement: $i1 = $i0 + 1 
(declare-const var1032!1 var722)
(assert (not (= var1032!1 null-var722)))
(assert (= (inLineViewCount/949001044 var1032!1) var3863)) ; Statement: r1.<org.hibernate.boot.model.source.internal.hbm.AbstractEntitySourceImpl: int inLineViewCount> = $i1 
(assert true)
(define-const var1222 String (append/-1001720160 var1241 var3863)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i1) 
(declare-const var1241!1 String)
(assert (str.prefixof var1241 var1241!1))
(assert true)
(define-const var2260 String (toString/-2075883882 var1222)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r7 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), entityNamingSource/949001044=([org.hibernate.boot.model.source.internal.hbm.AbstractEntitySourceImpl], org.hibernate.boot.model.source.spi.EntityNamingSource), var47_getEntityName/-119580260=([org.hibernate.boot.model.naming.EntityNaming], java.lang.String), cast-from-var3802-to-var47=([org.hibernate.boot.model.source.spi.EntityNamingSource], org.hibernate.boot.model.naming.EntityNaming), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1166366385=([java.lang.StringBuilder, char], java.lang.StringBuilder), inLineViewCount/949001044=([org.hibernate.boot.model.source.internal.hbm.AbstractEntitySourceImpl], int), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var722=org.hibernate.boot.model.source.internal.hbm.AbstractEntitySourceImpl, var1032=r1, var3995=$r0, var3802=org.hibernate.boot.model.source.spi.EntityNamingSource, var3505=$r2, var47=org.hibernate.boot.model.naming.EntityNaming, var3823=$r3, var2627=$r4, var1241=$r5, var121=$i0, var3863=$i1, var1222=$r6, var2260=$r7}
; {org.hibernate.boot.model.source.internal.hbm.AbstractEntitySourceImpl=var722, r1=var1032, $r0=var3995, org.hibernate.boot.model.source.spi.EntityNamingSource=var3802, $r2=var3505, org.hibernate.boot.model.naming.EntityNaming=var47, $r3=var3823, $r4=var2627, $r5=var1241, $i0=var121, $i1=var3863, $r6=var1222, $r7=var2260}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(char)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: org.hibernate.boot.model.source.internal.hbm.AbstractEntitySourceImpl;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r2 = r1.<org.hibernate.boot.model.source.internal.hbm.AbstractEntitySourceImpl: org.hibernate.boot.model.source.spi.EntityNamingSource entityNamingSource>;	$r3 = interfaceinvoke $r2.<org.hibernate.boot.model.source.spi.EntityNamingSource: java.lang.String getEntityName()>();	$r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3);	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(35);	$i0 = r1.<org.hibernate.boot.model.source.internal.hbm.AbstractEntitySourceImpl: int inLineViewCount>;	$i1 = $i0 + 1;	r1.<org.hibernate.boot.model.source.internal.hbm.AbstractEntitySourceImpl: int inLineViewCount> = $i1;	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i1);	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>();	return $r7
;block_num 1