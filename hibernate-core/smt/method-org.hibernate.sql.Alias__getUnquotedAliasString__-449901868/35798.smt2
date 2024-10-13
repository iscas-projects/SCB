(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var621 0)
(declare-sort var3565 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-fun length/2037073258 (var621) Int)
(declare-fun suffix/2037073258 (var621) String)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var621 var621)
(declare-const null-String String)
(declare-const null-Int Int)
(declare-const var1072 var621) ; Statement: r1 := @this: org.hibernate.sql.Alias 
(assert (not (= var1072 null-var621)))
(declare-const var3996 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var3996 null-String)))
(declare-const var2923 Int) ; Statement: i0 := @parameter1: int 
(assert (not (= var2923 null-Int)))
(define-const var3347 String var3996) ; Statement: r7 = r0 
 ; Statement: if i0 < 0 goto $i2 = virtualinvoke r7.<java.lang.String: int length()>() 
(assert (< var2923 0)) ; Cond: i0 < 0 
(assert true)
(define-const var455 Int (length/-134980193 var3347)) ; Statement: $i2 = virtualinvoke r7.<java.lang.String: int length()>() 
(define-const var3013 Int (length/2037073258 var1072)) ; Statement: $i1 = r1.<org.hibernate.sql.Alias: int length> 
 ; Statement: if $i2 <= $i1 goto $r2 = r1.<org.hibernate.sql.Alias: java.lang.String suffix> 
(assert (<= var455 var3013)) ; Cond: $i2 <= $i1 
(define-const var239 String (suffix/2037073258 var1072)) ; Statement: $r2 = r1.<org.hibernate.sql.Alias: java.lang.String suffix> 
 ; Statement: if $r2 != null goto $r3 = new java.lang.StringBuilder 
(assert (not (= var239 null-String))) ; Cond: $r2 != null 
(define-const var3493 String String-init) ; Statement: $r3 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3493)) ; Statement: specialinvoke $r3.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3493!1 String)
(assert (= var3493!1 ""))
(assert true)
(define-const var2633 String (append/672562846 var3493!1 var3347)) ; Statement: $r5 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r7) 
(declare-const var3493!2 String)
(assert (= var3493!2 (str.++ var3493!1 var3347)))
(define-const var3922 String (suffix/2037073258 var1072)) ; Statement: $r4 = r1.<org.hibernate.sql.Alias: java.lang.String suffix> 
(assert true)
(define-const var3862 String (append/672562846 var2633 var3922)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r4) 
(declare-const var2633!1 String)
(assert (= var2633!1 (str.++ var2633 var3922)))
(assert true)
(define-const var946 String (toString/-2075883882 var3862)) ; Statement: $r8 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true) ; Non Conditional
 ; Statement: return $r8 
(check-sat)
(get-model)
(get-unsat-core)
; {length/-134980193=([java.lang.String], int), length/2037073258=([org.hibernate.sql.Alias], int), suffix/2037073258=([org.hibernate.sql.Alias], java.lang.String), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var621=org.hibernate.sql.Alias, var1072=r1, var3996=r0, var3565=null_type, var2923=i0, var3347=r7, var455=$i2, var3013=$i1, var239=$r2, var3493=$r3, var2633=$r5, var3922=$r4, var3862=$r6, var946=$r8}
; {org.hibernate.sql.Alias=var621, r1=var1072, r0=var3996, null_type=var3565, i0=var2923, r7=var3347, $i2=var455, $i1=var3013, $r2=var239, $r3=var3493, $r5=var2633, $r4=var3922, $r6=var3862, $r8=var946}
;seq <java.lang.String: int length()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.String: int length()>": 1,"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: org.hibernate.sql.Alias;	r0 := @parameter0: java.lang.String;	i0 := @parameter1: int;	r7 = r0;	if i0 < 0 goto $i2 = virtualinvoke r7.<java.lang.String: int length()>();	$i2 = virtualinvoke r7.<java.lang.String: int length()>();	$i1 = r1.<org.hibernate.sql.Alias: int length>;	if $i2 <= $i1 goto $r2 = r1.<org.hibernate.sql.Alias: java.lang.String suffix>;	$r2 = r1.<org.hibernate.sql.Alias: java.lang.String suffix>;	if $r2 != null goto $r3 = new java.lang.StringBuilder;	$r3 = new java.lang.StringBuilder;	specialinvoke $r3.<java.lang.StringBuilder: void <init>()>();	$r5 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r7);	$r4 = r1.<org.hibernate.sql.Alias: java.lang.String suffix>;	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r4);	$r8 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>();	return $r8
;block_num 5