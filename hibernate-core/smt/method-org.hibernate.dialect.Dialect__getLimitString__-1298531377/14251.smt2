(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1995 0)
(declare-sort var1822 0)
(declare-sort var2327 0)
(declare-sort var1451 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var2327-init () var2327)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getClass/1258963082 (var1451) ClassObject)
(declare-fun cast-from-var1995-to-var1451 (var1995) var1451)
(declare-fun getName/-1958580599 (ClassObject) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-630064361 (var2327 String) void)
(declare-const null-var1995 var1995)
(declare-const null-String String)
(declare-const null-Bool Bool)
(declare-const var1879 var1995) ; Statement: r2 := @this: org.hibernate.dialect.Dialect 
(assert (not (= var1879 null-var1995)))
(declare-const var1037 String) ; Statement: r8 := @parameter0: java.lang.String 
(assert (not (= var1037 null-String)))
(declare-const var3201 Bool) ; Statement: z0 := @parameter1: boolean 
(assert (not (= var3201 null-Bool)))
(define-const var1722 var2327 var2327-init) ; Statement: $r0 = new java.lang.UnsupportedOperationException 
(define-const var3431 String String-init) ; Statement: $r1 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3431)) ; Statement: specialinvoke $r1.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3431!1 String)
(assert (= var3431!1 ""))
(assert true)
(define-const var2232 String (append/672562846 var3431!1 "Paged queries not supported by ")) ; Statement: $r5 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Paged queries not supported by ") 
(declare-const var3431!2 String)
(assert (= var3431!2 (str.++ var3431!1 "Paged queries not supported by ")))
(assert true)
(define-const var1159 ClassObject (getClass/1258963082 (cast-from-var1995-to-var1451 var1879))) ; Statement: $r3 = virtualinvoke r2.<java.lang.Object: java.lang.Class getClass()>() 
(assert true)
(define-const var2917 String (getName/-1958580599 var1159)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.Class: java.lang.String getName()>() 
(assert true)
(define-const var1396 String (append/672562846 var2232 var2917)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r4) 
(declare-const var2232!1 String)
(assert (= var2232!1 (str.++ var2232 var2917)))
(assert true)
(define-const var1911 String (toString/-2075883882 var1396)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-630064361 var1722 var1911)) ; Statement: specialinvoke $r0.<java.lang.UnsupportedOperationException: void <init>(java.lang.String)>($r7) 

(declare-const var1722!1 var2327)
(declare-const var1911!1 String)
 ; Statement: throw $r0 
(check-sat)
(get-model)
(get-unsat-core)
; {var2327-init=([], java.lang.UnsupportedOperationException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), getClass/1258963082=([java.lang.Object], java.lang.Class), cast-from-var1995-to-var1451=([org.hibernate.dialect.Dialect], java.lang.Object), getName/-1958580599=([java.lang.Class], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-630064361=([java.lang.UnsupportedOperationException, java.lang.String], void)}
; {var1995=org.hibernate.dialect.Dialect, var1879=r2, var1037=r8, var1822=null_type, var3201=z0, var2327=java.lang.UnsupportedOperationException, var1722=$r0, var3431=$r1, var2232=$r5, var1451=java.lang.Object, var1159=$r3, var2917=$r4, var1396=$r6, var1911=$r7}
; {org.hibernate.dialect.Dialect=var1995, r2=var1879, r8=var1037, null_type=var1822, z0=var3201, java.lang.UnsupportedOperationException=var2327, $r0=var1722, $r1=var3431, $r5=var2232, java.lang.Object=var1451, $r3=var1159, $r4=var2917, $r6=var1396, $r7=var1911}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r2 := @this: org.hibernate.dialect.Dialect;	r8 := @parameter0: java.lang.String;	z0 := @parameter1: boolean;	$r0 = new java.lang.UnsupportedOperationException;	$r1 = new java.lang.StringBuilder;	specialinvoke $r1.<java.lang.StringBuilder: void <init>()>();	$r5 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Paged queries not supported by ");	$r3 = virtualinvoke r2.<java.lang.Object: java.lang.Class getClass()>();	$r4 = virtualinvoke $r3.<java.lang.Class: java.lang.String getName()>();	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r4);	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r0.<java.lang.UnsupportedOperationException: void <init>(java.lang.String)>($r7);	throw $r0
;block_num 1