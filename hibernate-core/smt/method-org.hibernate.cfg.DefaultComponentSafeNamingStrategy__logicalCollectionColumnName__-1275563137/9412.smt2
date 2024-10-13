(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3897 0)
(declare-sort var3993 0)
(declare-sort var1859 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var1859_isNotEmpty/-74719548 (String) Bool)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var3897 var3897)
(declare-const null-String String)
(declare-const var2491 var3897) ; Statement: r7 := @this: org.hibernate.cfg.DefaultComponentSafeNamingStrategy 
(assert (not (= var2491 null-var3897)))
(declare-const var2964 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var2964 null-String)))
(declare-const var815 String) ; Statement: r2 := @parameter1: java.lang.String 
(assert (not (= var815 null-String)))
(declare-const var3856 String) ; Statement: r4 := @parameter2: java.lang.String 
(assert (not (= var3856 null-String)))
(define-const var570 Bool (var1859_isNotEmpty/-74719548 var2964)) ; Statement: $z0 = staticinvoke <org.hibernate.internal.util.StringHelper: boolean isNotEmpty(java.lang.String)>(r0) 
 ; Statement: if $z0 == 0 goto $r1 = new java.lang.StringBuilder 
(assert (= (ite var570 1 0) 0)) ; Cond: $z0 == 0 
(define-const var876 String String-init) ; Statement: $r1 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var876)) ; Statement: specialinvoke $r1.<java.lang.StringBuilder: void <init>()>() 
(declare-const var876!1 String)
(assert (= var876!1 ""))
(assert true)
(define-const var2645 String (append/672562846 var876!1 var815)) ; Statement: $r3 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r2) 
(declare-const var876!2 String)
(assert (= var876!2 (str.++ var876!1 var815)))
(assert true)
(define-const var3225 String (append/672562846 var2645 "_")) ; Statement: $r5 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("_") 
(declare-const var2645!1 String)
(assert (= var2645!1 (str.++ var2645 "_")))
(assert true)
(define-const var267 String (append/672562846 var3225 var3856)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r4) 
(declare-const var3225!1 String)
(assert (= var3225!1 (str.++ var3225 var3856)))
(assert true)
(define-const var807 String (toString/-2075883882 var267)) ; Statement: $r8 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true) ; Non Conditional
 ; Statement: return $r8 
(check-sat)
(get-model)
(get-unsat-core)
; {var1859_isNotEmpty/-74719548=([java.lang.String], boolean), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var3897=org.hibernate.cfg.DefaultComponentSafeNamingStrategy, var2491=r7, var2964=r0, var3993=null_type, var815=r2, var3856=r4, var1859=org.hibernate.internal.util.StringHelper, var570=$z0, var876=$r1, var2645=$r3, var3225=$r5, var267=$r6, var807=$r8}
; {org.hibernate.cfg.DefaultComponentSafeNamingStrategy=var3897, r7=var2491, r0=var2964, null_type=var3993, r2=var815, r4=var3856, org.hibernate.internal.util.StringHelper=var1859, $z0=var570, $r1=var876, $r3=var2645, $r5=var3225, $r6=var267, $r8=var807}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r7 := @this: org.hibernate.cfg.DefaultComponentSafeNamingStrategy;	r0 := @parameter0: java.lang.String;	r2 := @parameter1: java.lang.String;	r4 := @parameter2: java.lang.String;	$z0 = staticinvoke <org.hibernate.internal.util.StringHelper: boolean isNotEmpty(java.lang.String)>(r0);	if $z0 == 0 goto $r1 = new java.lang.StringBuilder;	$r1 = new java.lang.StringBuilder;	specialinvoke $r1.<java.lang.StringBuilder: void <init>()>();	$r3 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r2);	$r5 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("_");	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r4);	$r8 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>();	return $r8
;block_num 3