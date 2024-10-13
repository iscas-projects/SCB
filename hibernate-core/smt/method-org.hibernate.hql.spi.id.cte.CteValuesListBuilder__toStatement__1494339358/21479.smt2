(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1184 0)
(declare-sort var3057 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun cteStatement/1280731201 (var1184) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var1184 var1184)
(declare-const null-String String)
(declare-const var3371 var1184) ; Statement: r1 := @this: org.hibernate.hql.spi.id.cte.CteValuesListBuilder 
(assert (not (= var3371 null-var1184)))
(declare-const var2269 String) ; Statement: r3 := @parameter0: java.lang.String 
(assert (not (= var2269 null-String)))
(define-const var989 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var989)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var989!1 String)
(assert (= var989!1 ""))
(define-const var2737 String (cteStatement/1280731201 var3371)) ; Statement: $r2 = r1.<org.hibernate.hql.spi.id.cte.CteValuesListBuilder: java.lang.String cteStatement> 
(assert true)
(define-const var276 String (append/672562846 var989!1 var2737)) ; Statement: $r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2) 
(declare-const var989!2 String)
(assert (= var989!2 (str.++ var989!1 var2737)))
(assert true)
(define-const var2621 String (append/672562846 var276 var2269)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r3) 
(declare-const var276!1 String)
(assert (= var276!1 (str.++ var276 var2269)))
(assert true)
(define-const var1702 String (toString/-2075883882 var2621)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r6 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), cteStatement/1280731201=([org.hibernate.hql.spi.id.cte.CteValuesListBuilder], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var1184=org.hibernate.hql.spi.id.cte.CteValuesListBuilder, var3371=r1, var2269=r3, var3057=null_type, var989=$r0, var2737=$r2, var276=$r4, var2621=$r5, var1702=$r6}
; {org.hibernate.hql.spi.id.cte.CteValuesListBuilder=var1184, r1=var3371, r3=var2269, null_type=var3057, $r0=var989, $r2=var2737, $r4=var276, $r5=var2621, $r6=var1702}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: org.hibernate.hql.spi.id.cte.CteValuesListBuilder;	r3 := @parameter0: java.lang.String;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r2 = r1.<org.hibernate.hql.spi.id.cte.CteValuesListBuilder: java.lang.String cteStatement>;	$r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2);	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r3);	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>();	return $r6
;block_num 1