(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var146 0)
(declare-sort var3675 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun configuration/-1562462879 (var146) var3675)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun type/-1562462879 (var146) ClassObject)
(declare-fun getName/-1958580599 (ClassObject) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun isResourceLoaded/780923239 (var3675 String) Bool)
(declare-const null-var146 var146)
(declare-const var3545 var146) ; Statement: r0 := @this: org.apache.ibatis.builder.annotation.MapperAnnotationBuilder 
(assert (not (= var3545 null-var146)))
(define-const var2967 var3675 (configuration/-1562462879 var3545)) ; Statement: $r2 = r0.<org.apache.ibatis.builder.'annotation'.MapperAnnotationBuilder: org.apache.ibatis.session.Configuration configuration> 
(define-const var3553 String String-init) ; Statement: $r1 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3553)) ; Statement: specialinvoke $r1.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3553!1 String)
(assert (= var3553!1 ""))
(assert true)
(define-const var2559 String (append/672562846 var3553!1 "namespace:")) ; Statement: $r5 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("namespace:") 
(declare-const var3553!2 String)
(assert (= var3553!2 (str.++ var3553!1 "namespace:")))
(define-const var1728 ClassObject (type/-1562462879 var3545)) ; Statement: $r3 = r0.<org.apache.ibatis.builder.'annotation'.MapperAnnotationBuilder: java.lang.Class type> 
(assert true)
(define-const var2302 String (getName/-1958580599 var1728)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.Class: java.lang.String getName()>() 
(assert true)
(define-const var1335 String (append/672562846 var2559 var2302)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r4) 
(declare-const var2559!1 String)
(assert (= var2559!1 (str.++ var2559 var2302)))
(assert true)
(define-const var1791 String (toString/-2075883882 var1335)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
(define-const var1157 Bool (isResourceLoaded/780923239 var2967 var1791)) ; Statement: $z0 = virtualinvoke $r2.<org.apache.ibatis.session.Configuration: boolean isResourceLoaded(java.lang.String)>($r7) 
 ; Statement: if $z0 != 0 goto return 
(assert (not (= (ite var1157 1 0) 0))) ; Cond: $z0 != 0 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {configuration/-1562462879=([org.apache.ibatis.builder.annotation.MapperAnnotationBuilder], org.apache.ibatis.session.Configuration), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), type/-1562462879=([org.apache.ibatis.builder.annotation.MapperAnnotationBuilder], java.lang.Class), getName/-1958580599=([java.lang.Class], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), isResourceLoaded/780923239=([org.apache.ibatis.session.Configuration, java.lang.String], boolean)}
; {var146=org.apache.ibatis.builder.annotation.MapperAnnotationBuilder, var3545=r0, var3675=org.apache.ibatis.session.Configuration, var2967=$r2, var3553=$r1, var2559=$r5, var1728=$r3, var2302=$r4, var1335=$r6, var1791=$r7, var1157=$z0}
; {org.apache.ibatis.builder.annotation.MapperAnnotationBuilder=var146, r0=var3545, org.apache.ibatis.session.Configuration=var3675, $r2=var2967, $r1=var3553, $r5=var2559, $r3=var1728, $r4=var2302, $r6=var1335, $r7=var1791, $z0=var1157}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: org.apache.ibatis.builder.annotation.MapperAnnotationBuilder;	$r2 = r0.<org.apache.ibatis.builder.'annotation'.MapperAnnotationBuilder: org.apache.ibatis.session.Configuration configuration>;	$r1 = new java.lang.StringBuilder;	specialinvoke $r1.<java.lang.StringBuilder: void <init>()>();	$r5 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("namespace:");	$r3 = r0.<org.apache.ibatis.builder.'annotation'.MapperAnnotationBuilder: java.lang.Class type>;	$r4 = virtualinvoke $r3.<java.lang.Class: java.lang.String getName()>();	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r4);	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>();	$z0 = virtualinvoke $r2.<org.apache.ibatis.session.Configuration: boolean isResourceLoaded(java.lang.String)>($r7);	if $z0 != 0 goto return;	return
;block_num 2