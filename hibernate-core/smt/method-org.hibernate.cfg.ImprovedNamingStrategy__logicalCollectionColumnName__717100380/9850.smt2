(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3018 0)
(declare-sort var2389 0)
(declare-sort var2453 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var2453_isNotEmpty/-74719548 (String) Bool)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun var2453_unqualify/-238008441 (String) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var3018 var3018)
(declare-const null-String String)
(declare-const var1945 var3018) ; Statement: r8 := @this: org.hibernate.cfg.ImprovedNamingStrategy 
(assert (not (= var1945 null-var3018)))
(declare-const var3043 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var3043 null-String)))
(declare-const var3726 String) ; Statement: r2 := @parameter1: java.lang.String 
(assert (not (= var3726 null-String)))
(declare-const var1224 String) ; Statement: r5 := @parameter2: java.lang.String 
(assert (not (= var1224 null-String)))
(define-const var3417 Bool (var2453_isNotEmpty/-74719548 var3043)) ; Statement: $z0 = staticinvoke <org.hibernate.internal.util.StringHelper: boolean isNotEmpty(java.lang.String)>(r0) 
 ; Statement: if $z0 == 0 goto $r1 = new java.lang.StringBuilder 
(assert (= (ite var3417 1 0) 0)) ; Cond: $z0 == 0 
(define-const var388 String String-init) ; Statement: $r1 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var388)) ; Statement: specialinvoke $r1.<java.lang.StringBuilder: void <init>()>() 
(declare-const var388!1 String)
(assert (= var388!1 ""))
(define-const var2671 String (var2453_unqualify/-238008441 var3726)) ; Statement: $r3 = staticinvoke <org.hibernate.internal.util.StringHelper: java.lang.String unqualify(java.lang.String)>(r2) 
(assert true)
(define-const var3401 String (append/672562846 var388!1 var2671)) ; Statement: $r4 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3) 
(declare-const var388!2 String)
(assert (= var388!2 (str.++ var388!1 var2671)))
(assert true)
(define-const var3385 String (append/672562846 var3401 "_")) ; Statement: $r6 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("_") 
(declare-const var3401!1 String)
(assert (= var3401!1 (str.++ var3401 "_")))
(assert true)
(define-const var575 String (append/672562846 var3385 var1224)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r5) 
(declare-const var3385!1 String)
(assert (= var3385!1 (str.++ var3385 var1224)))
(assert true)
(define-const var787 String (toString/-2075883882 var575)) ; Statement: $r9 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true) ; Non Conditional
 ; Statement: return $r9 
(check-sat)
(get-model)
(get-unsat-core)
; {var2453_isNotEmpty/-74719548=([java.lang.String], boolean), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), var2453_unqualify/-238008441=([java.lang.String], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var3018=org.hibernate.cfg.ImprovedNamingStrategy, var1945=r8, var3043=r0, var2389=null_type, var3726=r2, var1224=r5, var2453=org.hibernate.internal.util.StringHelper, var3417=$z0, var388=$r1, var2671=$r3, var3401=$r4, var3385=$r6, var575=$r7, var787=$r9}
; {org.hibernate.cfg.ImprovedNamingStrategy=var3018, r8=var1945, r0=var3043, null_type=var2389, r2=var3726, r5=var1224, org.hibernate.internal.util.StringHelper=var2453, $z0=var3417, $r1=var388, $r3=var2671, $r4=var3401, $r6=var3385, $r7=var575, $r9=var787}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r8 := @this: org.hibernate.cfg.ImprovedNamingStrategy;	r0 := @parameter0: java.lang.String;	r2 := @parameter1: java.lang.String;	r5 := @parameter2: java.lang.String;	$z0 = staticinvoke <org.hibernate.internal.util.StringHelper: boolean isNotEmpty(java.lang.String)>(r0);	if $z0 == 0 goto $r1 = new java.lang.StringBuilder;	$r1 = new java.lang.StringBuilder;	specialinvoke $r1.<java.lang.StringBuilder: void <init>()>();	$r3 = staticinvoke <org.hibernate.internal.util.StringHelper: java.lang.String unqualify(java.lang.String)>(r2);	$r4 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3);	$r6 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("_");	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r5);	$r9 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>();	return $r9
;block_num 3