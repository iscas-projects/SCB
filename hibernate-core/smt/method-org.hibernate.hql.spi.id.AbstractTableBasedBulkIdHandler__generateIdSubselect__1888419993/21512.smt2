(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var381 0)
(declare-sort var1993 0)
(declare-sort var3282 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun var1993_getIdentifierColumnNames/-1025856963 (var1993) (Array Int String))
(declare-fun String_join/-1520935655 (String (Array Int String)) String)
(define-fun cast-from-String-to-String ((arg String)) String arg)
(define-fun cast-from-__Array__Int__String__-to-__Array__Int__String__ ((arg (Array Int String))) (Array Int String) arg)
(declare-fun var3282_getQualifiedIdTableName/2100166941 (var3282) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var381 var381)
(declare-const null-var1993 var1993)
(declare-const null-var3282 var3282)
(declare-const var2731 var381) ; Statement: r11 := @this: org.hibernate.hql.spi.id.AbstractTableBasedBulkIdHandler 
(assert (not (= var2731 null-var381)))
(declare-const var902 var1993) ; Statement: r1 := @parameter0: org.hibernate.persister.entity.Queryable 
(assert (not (= var902 null-var1993)))
(declare-const var1893 var3282) ; Statement: r6 := @parameter1: org.hibernate.hql.spi.id.IdTableInfo 
(assert (not (= var1893 null-var3282)))
(define-const var3726 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3726)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3726!1 String)
(assert (= var3726!1 ""))
(assert true)
(define-const var2181 String (append/672562846 var3726!1 "select ")) ; Statement: $r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("select ") 
(declare-const var3726!2 String)
(assert (= var3726!2 (str.++ var3726!1 "select ")))
(define-const var1503 (Array Int String) (var1993_getIdentifierColumnNames/-1025856963 var902)) ; Statement: $r2 = interfaceinvoke r1.<org.hibernate.persister.entity.Queryable: java.lang.String[] getIdentifierColumnNames()>() 
(define-const var375 String (String_join/-1520935655 (cast-from-String-to-String ", ") (cast-from-__Array__Int__String__-to-__Array__Int__String__ var1503))) ; Statement: $r3 = staticinvoke <java.lang.String: java.lang.String join(java.lang.CharSequence,java.lang.CharSequence[])>(", ", $r2) 
(assert true)
(define-const var2379 String (append/672562846 var2181 var375)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3) 
(declare-const var2181!1 String)
(assert (= var2181!1 (str.++ var2181 var375)))
(assert true)
(define-const var3216 String (append/672562846 var2379 " from ")) ; Statement: $r8 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" from ") 
(declare-const var2379!1 String)
(assert (= var2379!1 (str.++ var2379 " from ")))
(define-const var1525 String (var3282_getQualifiedIdTableName/2100166941 var1893)) ; Statement: $r7 = interfaceinvoke r6.<org.hibernate.hql.spi.id.IdTableInfo: java.lang.String getQualifiedIdTableName()>() 
(assert true)
(define-const var3531 String (append/672562846 var3216 var1525)) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r7) 
(declare-const var3216!1 String)
(assert (= var3216!1 (str.++ var3216 var1525)))
(assert true)
(define-const var1723 String (toString/-2075883882 var3531)) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r10 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), var1993_getIdentifierColumnNames/-1025856963=([org.hibernate.persister.entity.Queryable], java.lang.String[]), String_join/-1520935655=([java.lang.CharSequence, java.lang.CharSequence[]], java.lang.String), cast-from-String-to-String=([java.lang.String], java.lang.CharSequence), cast-from-__Array__Int__String__-to-__Array__Int__String__=([java.lang.String[]], java.lang.CharSequence[]), var3282_getQualifiedIdTableName/2100166941=([org.hibernate.hql.spi.id.IdTableInfo], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var381=org.hibernate.hql.spi.id.AbstractTableBasedBulkIdHandler, var2731=r11, var1993=org.hibernate.persister.entity.Queryable, var902=r1, var3282=org.hibernate.hql.spi.id.IdTableInfo, var1893=r6, var3726=$r0, var2181=$r4, var1503=$r2, var375=$r3, var2379=$r5, var3216=$r8, var1525=$r7, var3531=$r9, var1723=$r10}
; {org.hibernate.hql.spi.id.AbstractTableBasedBulkIdHandler=var381, r11=var2731, org.hibernate.persister.entity.Queryable=var1993, r1=var902, org.hibernate.hql.spi.id.IdTableInfo=var3282, r6=var1893, $r0=var3726, $r4=var2181, $r2=var1503, $r3=var375, $r5=var2379, $r8=var3216, $r7=var1525, $r9=var3531, $r10=var1723}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.String: java.lang.String join(java.lang.CharSequence,java.lang.CharSequence[])>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 4,"<java.lang.String: java.lang.String join(java.lang.CharSequence,java.lang.CharSequence[])>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r11 := @this: org.hibernate.hql.spi.id.AbstractTableBasedBulkIdHandler;	r1 := @parameter0: org.hibernate.persister.entity.Queryable;	r6 := @parameter1: org.hibernate.hql.spi.id.IdTableInfo;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("select ");	$r2 = interfaceinvoke r1.<org.hibernate.persister.entity.Queryable: java.lang.String[] getIdentifierColumnNames()>();	$r3 = staticinvoke <java.lang.String: java.lang.String join(java.lang.CharSequence,java.lang.CharSequence[])>(", ", $r2);	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3);	$r8 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" from ");	$r7 = interfaceinvoke r6.<org.hibernate.hql.spi.id.IdTableInfo: java.lang.String getQualifiedIdTableName()>();	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r7);	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.String toString()>();	return $r10
;block_num 1