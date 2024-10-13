(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3122 0)
(declare-sort var1828 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun arr-String-init () (Array Int String))
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var3122 var3122)
(declare-const null-String String)
(declare-const null-__Array__Int__String__ (Array Int String))
(declare-const var590 var3122) ; Statement: r6 := @this: org.hibernate.dialect.Dialect 
(assert (not (= var590 null-var3122)))
(declare-const var2510 String) ; Statement: r2 := @parameter0: java.lang.String 
(assert (not (= var2510 null-String)))
(define-const var3728 (Array Int String) arr-String-init) ; Statement: $r0 = newarray (java.lang.String)[1] 
(define-const var2755 String String-init) ; Statement: $r1 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2755)) ; Statement: specialinvoke $r1.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2755!1 String)
(assert (= var2755!1 ""))
(assert true)
(define-const var1698 String (append/672562846 var2755!1 "drop schema ")) ; Statement: $r3 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("drop schema ") 
(declare-const var2755!2 String)
(assert (= var2755!2 (str.++ var2755!1 "drop schema ")))
(assert true)
(define-const var2476 String (append/672562846 var1698 var2510)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r2) 
(declare-const var1698!1 String)
(assert (= var1698!1 (str.++ var1698 var2510)))
(assert true)
(define-const var3581 String (toString/-2075883882 var2476)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>() 
(declare-const var3728!1 (Array Int String))
(assert (not (= var3728!1 null-__Array__Int__String__)))
(assert (= (select var3728!1 0) var3581)) ; Statement: $r0[0] = $r5 
 ; Statement: return $r0 
(check-sat)
(get-model)
(get-unsat-core)
; {arr-String-init=([], java.lang.String[]), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var3122=org.hibernate.dialect.Dialect, var590=r6, var2510=r2, var1828=null_type, var3728=$r0, var2755=$r1, var1698=$r3, var2476=$r4, var3581=$r5}
; {org.hibernate.dialect.Dialect=var3122, r6=var590, r2=var2510, null_type=var1828, $r0=var3728, $r1=var2755, $r3=var1698, $r4=var2476, $r5=var3581}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r6 := @this: org.hibernate.dialect.Dialect;	r2 := @parameter0: java.lang.String;	$r0 = newarray (java.lang.String)[1];	$r1 = new java.lang.StringBuilder;	specialinvoke $r1.<java.lang.StringBuilder: void <init>()>();	$r3 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("drop schema ");	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r2);	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>();	$r0[0] = $r5;	return $r0
;block_num 1