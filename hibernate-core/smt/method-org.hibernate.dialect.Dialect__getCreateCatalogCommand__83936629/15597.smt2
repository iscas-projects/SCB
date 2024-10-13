(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1684 0)
(declare-sort var1609 0)
(declare-sort var3889 0)
(declare-sort var2670 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var3889-init () var3889)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getClass/1258963082 (var2670) ClassObject)
(declare-fun cast-from-var1684-to-var2670 (var1684) var2670)
(declare-fun getName/-1958580599 (ClassObject) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-630064361 (var3889 String) void)
(declare-const null-var1684 var1684)
(declare-const null-String String)
(declare-const var24 var1684) ; Statement: r2 := @this: org.hibernate.dialect.Dialect 
(assert (not (= var24 null-var1684)))
(declare-const var957 String) ; Statement: r8 := @parameter0: java.lang.String 
(assert (not (= var957 null-String)))
(define-const var3919 var3889 var3889-init) ; Statement: $r0 = new java.lang.UnsupportedOperationException 
(define-const var703 String String-init) ; Statement: $r1 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var703)) ; Statement: specialinvoke $r1.<java.lang.StringBuilder: void <init>()>() 
(declare-const var703!1 String)
(assert (= var703!1 ""))
(assert true)
(define-const var1018 String (append/672562846 var703!1 "No create catalog syntax supported by ")) ; Statement: $r5 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("No create catalog syntax supported by ") 
(declare-const var703!2 String)
(assert (= var703!2 (str.++ var703!1 "No create catalog syntax supported by ")))
(assert true)
(define-const var531 ClassObject (getClass/1258963082 (cast-from-var1684-to-var2670 var24))) ; Statement: $r3 = virtualinvoke r2.<java.lang.Object: java.lang.Class getClass()>() 
(assert true)
(define-const var207 String (getName/-1958580599 var531)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.Class: java.lang.String getName()>() 
(assert true)
(define-const var3587 String (append/672562846 var1018 var207)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r4) 
(declare-const var1018!1 String)
(assert (= var1018!1 (str.++ var1018 var207)))
(assert true)
(define-const var3748 String (toString/-2075883882 var3587)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-630064361 var3919 var3748)) ; Statement: specialinvoke $r0.<java.lang.UnsupportedOperationException: void <init>(java.lang.String)>($r7) 

(declare-const var3919!1 var3889)
(declare-const var3748!1 String)
 ; Statement: throw $r0 
(check-sat)
(get-model)
(get-unsat-core)
; {var3889-init=([], java.lang.UnsupportedOperationException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), getClass/1258963082=([java.lang.Object], java.lang.Class), cast-from-var1684-to-var2670=([org.hibernate.dialect.Dialect], java.lang.Object), getName/-1958580599=([java.lang.Class], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-630064361=([java.lang.UnsupportedOperationException, java.lang.String], void)}
; {var1684=org.hibernate.dialect.Dialect, var24=r2, var957=r8, var1609=null_type, var3889=java.lang.UnsupportedOperationException, var3919=$r0, var703=$r1, var1018=$r5, var2670=java.lang.Object, var531=$r3, var207=$r4, var3587=$r6, var3748=$r7}
; {org.hibernate.dialect.Dialect=var1684, r2=var24, r8=var957, null_type=var1609, java.lang.UnsupportedOperationException=var3889, $r0=var3919, $r1=var703, $r5=var1018, java.lang.Object=var2670, $r3=var531, $r4=var207, $r6=var3587, $r7=var3748}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r2 := @this: org.hibernate.dialect.Dialect;	r8 := @parameter0: java.lang.String;	$r0 = new java.lang.UnsupportedOperationException;	$r1 = new java.lang.StringBuilder;	specialinvoke $r1.<java.lang.StringBuilder: void <init>()>();	$r5 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("No create catalog syntax supported by ");	$r3 = virtualinvoke r2.<java.lang.Object: java.lang.Class getClass()>();	$r4 = virtualinvoke $r3.<java.lang.Class: java.lang.String getName()>();	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r4);	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r0.<java.lang.UnsupportedOperationException: void <init>(java.lang.String)>($r7);	throw $r0
;block_num 1