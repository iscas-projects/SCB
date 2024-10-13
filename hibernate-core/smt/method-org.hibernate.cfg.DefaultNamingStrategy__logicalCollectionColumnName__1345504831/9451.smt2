(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3958 0)
(declare-sort var47 0)
(declare-sort var3920 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var3920_isNotEmpty/-74719548 (String) Bool)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var3958 var3958)
(declare-const null-String String)
(declare-const var2574 var3958) ; Statement: r7 := @this: org.hibernate.cfg.DefaultNamingStrategy 
(assert (not (= var2574 null-var3958)))
(declare-const var2911 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var2911 null-String)))
(declare-const var1431 String) ; Statement: r2 := @parameter1: java.lang.String 
(assert (not (= var1431 null-String)))
(declare-const var331 String) ; Statement: r4 := @parameter2: java.lang.String 
(assert (not (= var331 null-String)))
(define-const var1143 Bool (var3920_isNotEmpty/-74719548 var2911)) ; Statement: $z0 = staticinvoke <org.hibernate.internal.util.StringHelper: boolean isNotEmpty(java.lang.String)>(r0) 
 ; Statement: if $z0 == 0 goto $r1 = new java.lang.StringBuilder 
(assert (= (ite var1143 1 0) 0)) ; Cond: $z0 == 0 
(define-const var3828 String String-init) ; Statement: $r1 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3828)) ; Statement: specialinvoke $r1.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3828!1 String)
(assert (= var3828!1 ""))
(assert true)
(define-const var2882 String (append/672562846 var3828!1 var1431)) ; Statement: $r3 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r2) 
(declare-const var3828!2 String)
(assert (= var3828!2 (str.++ var3828!1 var1431)))
(assert true)
(define-const var2149 String (append/672562846 var2882 "_")) ; Statement: $r5 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("_") 
(declare-const var2882!1 String)
(assert (= var2882!1 (str.++ var2882 "_")))
(assert true)
(define-const var487 String (append/672562846 var2149 var331)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r4) 
(declare-const var2149!1 String)
(assert (= var2149!1 (str.++ var2149 var331)))
(assert true)
(define-const var2511 String (toString/-2075883882 var487)) ; Statement: $r8 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true) ; Non Conditional
 ; Statement: return $r8 
(check-sat)
(get-model)
(get-unsat-core)
; {var3920_isNotEmpty/-74719548=([java.lang.String], boolean), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var3958=org.hibernate.cfg.DefaultNamingStrategy, var2574=r7, var2911=r0, var47=null_type, var1431=r2, var331=r4, var3920=org.hibernate.internal.util.StringHelper, var1143=$z0, var3828=$r1, var2882=$r3, var2149=$r5, var487=$r6, var2511=$r8}
; {org.hibernate.cfg.DefaultNamingStrategy=var3958, r7=var2574, r0=var2911, null_type=var47, r2=var1431, r4=var331, org.hibernate.internal.util.StringHelper=var3920, $z0=var1143, $r1=var3828, $r3=var2882, $r5=var2149, $r6=var487, $r8=var2511}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r7 := @this: org.hibernate.cfg.DefaultNamingStrategy;	r0 := @parameter0: java.lang.String;	r2 := @parameter1: java.lang.String;	r4 := @parameter2: java.lang.String;	$z0 = staticinvoke <org.hibernate.internal.util.StringHelper: boolean isNotEmpty(java.lang.String)>(r0);	if $z0 == 0 goto $r1 = new java.lang.StringBuilder;	$r1 = new java.lang.StringBuilder;	specialinvoke $r1.<java.lang.StringBuilder: void <init>()>();	$r3 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r2);	$r5 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("_");	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r4);	$r8 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>();	return $r8
;block_num 3