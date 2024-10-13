(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1452 0)
(declare-sort var2697 0)
(declare-sort var3782 0)
(declare-sort var1235 0)
(declare-sort var3090 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun role/653200166 (var1452) String)
(declare-fun var1235-init () var1235)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-1350304819 (var1235 String) void)
(declare-fun cast-from-var1235-to-var3090 (var1235) var3090)
(declare-const null-var1452 var1452)
(declare-const null-var2697 var2697)
(declare-const null-var3782 var3782)
(declare-const var3352 var1452) ; Statement: r1 := @this: org.hibernate.type.CollectionType 
(assert (not (= var3352 null-var1452)))
(declare-const var3240 var2697) ; Statement: r0 := @parameter0: org.hibernate.engine.spi.SessionFactoryImplementor 
(assert (not (= var3240 null-var2697)))
(define-const var1602 String (role/653200166 var3352)) ; Statement: $r2 = r1.<org.hibernate.type.CollectionType: java.lang.String role> 
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var1706 var3782) ; Statement: $r13 := @caughtexception 
(assert (not (= var1706 null-var3782)))
(define-const var3461 var1235 var1235-init) ; Statement: $r24 = new org.hibernate.MappingException 
(define-const var768 String String-init) ; Statement: $r23 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var768)) ; Statement: specialinvoke $r23.<java.lang.StringBuilder: void <init>()>() 
(declare-const var768!1 String)
(assert (= var768!1 ""))
(assert true)
(define-const var2368 String (append/672562846 var768!1 "collection role is not queryable ")) ; Statement: $r17 = virtualinvoke $r23.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("collection role is not queryable ") 
(declare-const var768!2 String)
(assert (= var768!2 (str.++ var768!1 "collection role is not queryable ")))
(define-const var2899 String (role/653200166 var3352)) ; Statement: $r16 = r1.<org.hibernate.type.CollectionType: java.lang.String role> 
(assert true)
(define-const var1997 String (append/672562846 var2368 var2899)) ; Statement: $r18 = virtualinvoke $r17.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r16) 
(declare-const var2368!1 String)
(assert (= var2368!1 (str.++ var2368 var2899)))
(assert true)
(define-const var3713 String (toString/-2075883882 var1997)) ; Statement: $r19 = virtualinvoke $r18.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-1350304819 var3461 var3713)) ; Statement: specialinvoke $r24.<org.hibernate.MappingException: void <init>(java.lang.String)>($r19) 

(declare-const var3461!1 var1235)
(declare-const var3713!1 String)
(define-const var2292 var3090 (cast-from-var1235-to-var3090 var3461!1)) ; Statement: $r26 = (java.lang.Throwable) $r24 
 ; Statement: throw $r26 
(check-sat)
(get-model)
(get-unsat-core)
; {role/653200166=([org.hibernate.type.CollectionType], java.lang.String), var1235-init=([], org.hibernate.MappingException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-1350304819=([org.hibernate.MappingException, java.lang.String], void), cast-from-var1235-to-var3090=([org.hibernate.MappingException], java.lang.Throwable)}
; {var1452=org.hibernate.type.CollectionType, var3352=r1, var2697=org.hibernate.engine.spi.SessionFactoryImplementor, var3240=r0, var1602=$r2, var3782=java.lang.ClassCastException, var1706=$r13, var1235=org.hibernate.MappingException, var3461=$r24, var768=$r23, var2368=$r17, var2899=$r16, var1997=$r18, var3713=$r19, var3090=java.lang.Throwable, var2292=$r26}
; {org.hibernate.type.CollectionType=var1452, r1=var3352, org.hibernate.engine.spi.SessionFactoryImplementor=var2697, r0=var3240, $r2=var1602, java.lang.ClassCastException=var3782, $r13=var1706, org.hibernate.MappingException=var1235, $r24=var3461, $r23=var768, $r17=var2368, $r16=var2899, $r18=var1997, $r19=var3713, java.lang.Throwable=var3090, $r26=var2292}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: org.hibernate.type.CollectionType;	r0 := @parameter0: org.hibernate.engine.spi.SessionFactoryImplementor;	$r2 = r1.<org.hibernate.type.CollectionType: java.lang.String role>;	$r13 := @caughtexception;	$r24 = new org.hibernate.MappingException;	$r23 = new java.lang.StringBuilder;	specialinvoke $r23.<java.lang.StringBuilder: void <init>()>();	$r17 = virtualinvoke $r23.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("collection role is not queryable ");	$r16 = r1.<org.hibernate.type.CollectionType: java.lang.String role>;	$r18 = virtualinvoke $r17.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r16);	$r19 = virtualinvoke $r18.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r24.<org.hibernate.MappingException: void <init>(java.lang.String)>($r19);	$r26 = (java.lang.Throwable) $r24;	throw $r26
;block_num 2