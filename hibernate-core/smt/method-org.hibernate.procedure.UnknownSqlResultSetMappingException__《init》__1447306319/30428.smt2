(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var181 0)
(declare-sort var909 0)
(declare-sort var511 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-1350304819 (var511 String) void)
(declare-fun cast-from-var181-to-var511 (var181) var511)
(declare-fun unknownSqlResultSetMappingName/1756231713 (var181) String)
(declare-const null-var181 var181)
(declare-const null-String String)
(declare-const var697 var181) ; Statement: r0 := @this: org.hibernate.procedure.UnknownSqlResultSetMappingException 
(assert (not (= var697 null-var181)))
(declare-const var418 String) ; Statement: r2 := @parameter0: java.lang.String 
(assert (not (= var418 null-String)))
(define-const var1465 String String-init) ; Statement: $r1 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1465)) ; Statement: specialinvoke $r1.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1465!1 String)
(assert (= var1465!1 ""))
(assert true)
(define-const var387 String (append/672562846 var1465!1 "The given SqlResultSetMapping name [")) ; Statement: $r3 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("The given SqlResultSetMapping name [") 
(declare-const var1465!2 String)
(assert (= var1465!2 (str.++ var1465!1 "The given SqlResultSetMapping name [")))
(assert true)
(define-const var2065 String (append/672562846 var387 var418)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r2) 
(declare-const var387!1 String)
(assert (= var387!1 (str.++ var387 var418)))
(assert true)
(define-const var2758 String (append/672562846 var2065 "] is unknown")) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("] is unknown") 
(declare-const var2065!1 String)
(assert (= var2065!1 (str.++ var2065 "] is unknown")))
(assert true)
(define-const var3964 String (toString/-2075883882 var2758)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-1350304819 (cast-from-var181-to-var511 var697) var3964)) ; Statement: specialinvoke r0.<org.hibernate.MappingException: void <init>(java.lang.String)>($r6) 

(declare-const var697!1 var181)
(declare-const var3964!1 String)
(declare-const var697!2 var181)
(assert (not (= var697!2 null-var181)))
(assert (= (unknownSqlResultSetMappingName/1756231713 var697!2) var418)) ; Statement: r0.<org.hibernate.procedure.UnknownSqlResultSetMappingException: java.lang.String unknownSqlResultSetMappingName> = r2 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-1350304819=([org.hibernate.MappingException, java.lang.String], void), cast-from-var181-to-var511=([org.hibernate.procedure.UnknownSqlResultSetMappingException], org.hibernate.MappingException), unknownSqlResultSetMappingName/1756231713=([org.hibernate.procedure.UnknownSqlResultSetMappingException], java.lang.String)}
; {var181=org.hibernate.procedure.UnknownSqlResultSetMappingException, var697=r0, var418=r2, var909=null_type, var1465=$r1, var387=$r3, var2065=$r4, var2758=$r5, var3964=$r6, var511=org.hibernate.MappingException}
; {org.hibernate.procedure.UnknownSqlResultSetMappingException=var181, r0=var697, r2=var418, null_type=var909, $r1=var1465, $r3=var387, $r4=var2065, $r5=var2758, $r6=var3964, org.hibernate.MappingException=var511}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: org.hibernate.procedure.UnknownSqlResultSetMappingException;	r2 := @parameter0: java.lang.String;	$r1 = new java.lang.StringBuilder;	specialinvoke $r1.<java.lang.StringBuilder: void <init>()>();	$r3 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("The given SqlResultSetMapping name [");	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r2);	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("] is unknown");	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke r0.<org.hibernate.MappingException: void <init>(java.lang.String)>($r6);	r0.<org.hibernate.procedure.UnknownSqlResultSetMappingException: java.lang.String unknownSqlResultSetMappingName> = r2;	return
;block_num 1