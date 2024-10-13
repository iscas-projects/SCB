(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1868 0)
(declare-sort var1454 0)
(declare-sort var3462 0)
(declare-sort var1077 0)
(declare-sort var1224 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var1077-init () var1077)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getClass/1258963082 (var1224) ClassObject)
(declare-fun cast-from-var1868-to-var1224 (var1868) var1224)
(declare-fun getName/-1958580599 (ClassObject) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-630064361 (var1077 String) void)
(declare-const null-var1868 var1868)
(declare-const null-String String)
(declare-const null-var3462 var3462)
(declare-const var2608 var1868) ; Statement: r2 := @this: org.hibernate.dialect.pagination.AbstractLimitHandler 
(assert (not (= var2608 null-var1868)))
(declare-const var2556 String) ; Statement: r8 := @parameter0: java.lang.String 
(assert (not (= var2556 null-String)))
(declare-const var100 var3462) ; Statement: r9 := @parameter1: org.hibernate.engine.spi.RowSelection 
(assert (not (= var100 null-var3462)))
(define-const var2112 var1077 var1077-init) ; Statement: $r0 = new java.lang.UnsupportedOperationException 
(define-const var2180 String String-init) ; Statement: $r1 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2180)) ; Statement: specialinvoke $r1.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2180!1 String)
(assert (= var2180!1 ""))
(assert true)
(define-const var341 String (append/672562846 var2180!1 "Paged queries not supported by ")) ; Statement: $r5 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Paged queries not supported by ") 
(declare-const var2180!2 String)
(assert (= var2180!2 (str.++ var2180!1 "Paged queries not supported by ")))
(assert true)
(define-const var1562 ClassObject (getClass/1258963082 (cast-from-var1868-to-var1224 var2608))) ; Statement: $r3 = virtualinvoke r2.<java.lang.Object: java.lang.Class getClass()>() 
(assert true)
(define-const var2561 String (getName/-1958580599 var1562)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.Class: java.lang.String getName()>() 
(assert true)
(define-const var1759 String (append/672562846 var341 var2561)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r4) 
(declare-const var341!1 String)
(assert (= var341!1 (str.++ var341 var2561)))
(assert true)
(define-const var1376 String (toString/-2075883882 var1759)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-630064361 var2112 var1376)) ; Statement: specialinvoke $r0.<java.lang.UnsupportedOperationException: void <init>(java.lang.String)>($r7) 

(declare-const var2112!1 var1077)
(declare-const var1376!1 String)
 ; Statement: throw $r0 
(check-sat)
(get-model)
(get-unsat-core)
; {var1077-init=([], java.lang.UnsupportedOperationException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), getClass/1258963082=([java.lang.Object], java.lang.Class), cast-from-var1868-to-var1224=([org.hibernate.dialect.pagination.AbstractLimitHandler], java.lang.Object), getName/-1958580599=([java.lang.Class], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-630064361=([java.lang.UnsupportedOperationException, java.lang.String], void)}
; {var1868=org.hibernate.dialect.pagination.AbstractLimitHandler, var2608=r2, var2556=r8, var1454=null_type, var3462=org.hibernate.engine.spi.RowSelection, var100=r9, var1077=java.lang.UnsupportedOperationException, var2112=$r0, var2180=$r1, var341=$r5, var1224=java.lang.Object, var1562=$r3, var2561=$r4, var1759=$r6, var1376=$r7}
; {org.hibernate.dialect.pagination.AbstractLimitHandler=var1868, r2=var2608, r8=var2556, null_type=var1454, org.hibernate.engine.spi.RowSelection=var3462, r9=var100, java.lang.UnsupportedOperationException=var1077, $r0=var2112, $r1=var2180, $r5=var341, java.lang.Object=var1224, $r3=var1562, $r4=var2561, $r6=var1759, $r7=var1376}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r2 := @this: org.hibernate.dialect.pagination.AbstractLimitHandler;	r8 := @parameter0: java.lang.String;	r9 := @parameter1: org.hibernate.engine.spi.RowSelection;	$r0 = new java.lang.UnsupportedOperationException;	$r1 = new java.lang.StringBuilder;	specialinvoke $r1.<java.lang.StringBuilder: void <init>()>();	$r5 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Paged queries not supported by ");	$r3 = virtualinvoke r2.<java.lang.Object: java.lang.Class getClass()>();	$r4 = virtualinvoke $r3.<java.lang.Class: java.lang.String getName()>();	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r4);	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r0.<java.lang.UnsupportedOperationException: void <init>(java.lang.String)>($r7);	throw $r0
;block_num 1