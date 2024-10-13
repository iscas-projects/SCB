(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1844 0)
(declare-sort var3222 0)
(declare-sort var2879 0)
(declare-sort var3736 0)
(declare-sort var3020 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun <init>/-279557996 (var3020) void)
(declare-fun cast-from-var1844-to-var3020 (var1844) var3020)
(declare-fun intern/-1326102057 (String) String)
(declare-fun suffix/853563599 (var1844) String)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun rowIdAlias/853563599 (var1844) String)
(declare-fun userProvidedAliases/853563599 (var1844) var3222)
(declare-fun determineKeyAlias/-1376648462 (var1844 var2879 String) (Array Int String))
(declare-fun suffixedKeyColumns/853563599 (var1844) (Array Int String))
(declare-fun determinePropertyAliases/-697244711 (var1844 var2879) (Array Int (Array Int String)))
(declare-fun suffixedPropertyColumns/853563599 (var1844) (Array Int (Array Int String)))
(declare-fun determineDiscriminatorAlias/-328511215 (var1844 var2879 String) String)
(declare-fun suffixedDiscriminatorColumn/853563599 (var1844) String)
(declare-fun determineVersionAlias/712307504 (var1844 var2879) (Array Int String))
(declare-fun suffixedVersionColumn/853563599 (var1844) (Array Int String))
(declare-const null-var1844 var1844)
(declare-const null-var3222 var3222)
(declare-const null-var2879 var2879)
(declare-const null-String String)
(declare-const null-Bool Bool)
(declare-const var2198 var1844) ; Statement: r0 := @this: org.hibernate.loader.DefaultEntityAliases 
(assert (not (= var2198 null-var1844)))
(declare-const var2579 var3222) ; Statement: r6 := @parameter0: java.util.Map 
(assert (not (= var2579 null-var3222)))
(declare-const var1325 var2879) ; Statement: r7 := @parameter1: org.hibernate.persister.entity.Loadable 
(assert (not (= var1325 null-var2879)))
(declare-const var3667 String) ; Statement: r1 := @parameter2: java.lang.String 
(assert (not (= var3667 null-String)))
(declare-const var3829 Bool) ; Statement: z0 := @parameter3: boolean 
(assert (not (= var3829 null-Bool)))
(assert true)
;(assert (<init>/-279557996 (cast-from-var1844-to-var3020 var2198))) ; Statement: specialinvoke r0.<java.lang.Object: void <init>()>() 

(declare-const var2198!1 var1844)
 ; Statement: if z0 == 0 goto r0.<org.hibernate.loader.DefaultEntityAliases: java.lang.String suffix> = r1 
(assert (not (= (ite var3829 1 0) 0))) ; Negate: Cond: z0 == 0  
(assert true)
(define-const var951 String (intern/-1326102057 var3667)) ; Statement: $r12 = virtualinvoke r1.<java.lang.String: java.lang.String intern()>() 
(declare-const var2198!2 var1844)
(assert (not (= var2198!2 null-var1844)))
(assert (= (suffix/853563599 var2198!2) var951)) ; Statement: r0.<org.hibernate.loader.DefaultEntityAliases: java.lang.String suffix> = $r12 
(define-const var819 String String-init) ; Statement: $r13 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var819)) ; Statement: specialinvoke $r13.<java.lang.StringBuilder: void <init>()>() 
(declare-const var819!1 String)
(assert (= var819!1 ""))
(assert true)
(define-const var3292 String (append/672562846 var819!1 "rowid_")) ; Statement: $r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("rowid_") 
(declare-const var819!2 String)
(assert (= var819!2 (str.++ var819!1 "rowid_")))
(assert true)
(define-const var3323 String (append/672562846 var3292 var3667)) ; Statement: $r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1) 
(declare-const var3292!1 String)
(assert (= var3292!1 (str.++ var3292 var3667)))
(assert true)
(define-const var2570 String (toString/-2075883882 var3323)) ; Statement: $r16 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
(define-const var3982 String (intern/-1326102057 var2570)) ; Statement: $r17 = virtualinvoke $r16.<java.lang.String: java.lang.String intern()>() 
(declare-const var2198!3 var1844)
(assert (not (= var2198!3 null-var1844)))
(assert (= (rowIdAlias/853563599 var2198!3) var3982)) ; Statement: r0.<org.hibernate.loader.DefaultEntityAliases: java.lang.String rowIdAlias> = $r17 
 ; Statement: goto [?= r0.<org.hibernate.loader.DefaultEntityAliases: java.util.Map userProvidedAliases> = r6] 
(assert true) ; Non Conditional
(declare-const var2198!4 var1844)
(assert (not (= var2198!4 null-var1844)))
(assert (= (userProvidedAliases/853563599 var2198!4) var2579)) ; Statement: r0.<org.hibernate.loader.DefaultEntityAliases: java.util.Map userProvidedAliases> = r6 
(assert true)
(define-const var563 (Array Int String) (determineKeyAlias/-1376648462 var2198!4 var1325 var3667)) ; Statement: $r8 = specialinvoke r0.<org.hibernate.loader.DefaultEntityAliases: java.lang.String[] determineKeyAlias(org.hibernate.persister.entity.Loadable,java.lang.String)>(r7, r1) 
(declare-const var2198!5 var1844)
(assert (not (= var2198!5 null-var1844)))
(assert (= (suffixedKeyColumns/853563599 var2198!5) var563)) ; Statement: r0.<org.hibernate.loader.DefaultEntityAliases: java.lang.String[] suffixedKeyColumns> = $r8 
(assert true)
(define-const var632 (Array Int (Array Int String)) (determinePropertyAliases/-697244711 var2198!5 var1325)) ; Statement: $r9 = specialinvoke r0.<org.hibernate.loader.DefaultEntityAliases: java.lang.String[][] determinePropertyAliases(org.hibernate.persister.entity.Loadable)>(r7) 
(declare-const var2198!6 var1844)
(assert (not (= var2198!6 null-var1844)))
(assert (= (suffixedPropertyColumns/853563599 var2198!6) var632)) ; Statement: r0.<org.hibernate.loader.DefaultEntityAliases: java.lang.String[][] suffixedPropertyColumns> = $r9 
(assert true)
(define-const var3418 String (determineDiscriminatorAlias/-328511215 var2198!6 var1325 var3667)) ; Statement: $r10 = specialinvoke r0.<org.hibernate.loader.DefaultEntityAliases: java.lang.String determineDiscriminatorAlias(org.hibernate.persister.entity.Loadable,java.lang.String)>(r7, r1) 
(declare-const var2198!7 var1844)
(assert (not (= var2198!7 null-var1844)))
(assert (= (suffixedDiscriminatorColumn/853563599 var2198!7) var3418)) ; Statement: r0.<org.hibernate.loader.DefaultEntityAliases: java.lang.String suffixedDiscriminatorColumn> = $r10 
(assert true)
(define-const var3837 (Array Int String) (determineVersionAlias/712307504 var2198!7 var1325)) ; Statement: $r11 = specialinvoke r0.<org.hibernate.loader.DefaultEntityAliases: java.lang.String[] determineVersionAlias(org.hibernate.persister.entity.Loadable)>(r7) 
(declare-const var2198!8 var1844)
(assert (not (= var2198!8 null-var1844)))
(assert (= (suffixedVersionColumn/853563599 var2198!8) var3837)) ; Statement: r0.<org.hibernate.loader.DefaultEntityAliases: java.lang.String[] suffixedVersionColumn> = $r11 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {<init>/-279557996=([java.lang.Object], void), cast-from-var1844-to-var3020=([org.hibernate.loader.DefaultEntityAliases], java.lang.Object), intern/-1326102057=([java.lang.String], java.lang.String), suffix/853563599=([org.hibernate.loader.DefaultEntityAliases], java.lang.String), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), rowIdAlias/853563599=([org.hibernate.loader.DefaultEntityAliases], java.lang.String), userProvidedAliases/853563599=([org.hibernate.loader.DefaultEntityAliases], java.util.Map), determineKeyAlias/-1376648462=([org.hibernate.loader.DefaultEntityAliases, org.hibernate.persister.entity.Loadable, java.lang.String], java.lang.String[]), suffixedKeyColumns/853563599=([org.hibernate.loader.DefaultEntityAliases], java.lang.String[]), determinePropertyAliases/-697244711=([org.hibernate.loader.DefaultEntityAliases, org.hibernate.persister.entity.Loadable], java.lang.String[][]), suffixedPropertyColumns/853563599=([org.hibernate.loader.DefaultEntityAliases], java.lang.String[][]), determineDiscriminatorAlias/-328511215=([org.hibernate.loader.DefaultEntityAliases, org.hibernate.persister.entity.Loadable, java.lang.String], java.lang.String), suffixedDiscriminatorColumn/853563599=([org.hibernate.loader.DefaultEntityAliases], java.lang.String), determineVersionAlias/712307504=([org.hibernate.loader.DefaultEntityAliases, org.hibernate.persister.entity.Loadable], java.lang.String[]), suffixedVersionColumn/853563599=([org.hibernate.loader.DefaultEntityAliases], java.lang.String[])}
; {var1844=org.hibernate.loader.DefaultEntityAliases, var2198=r0, var3222=java.util.Map, var2579=r6, var2879=org.hibernate.persister.entity.Loadable, var1325=r7, var3667=r1, var3736=null_type, var3829=z0, var3020=java.lang.Object, var951=$r12, var819=$r13, var3292=$r14, var3323=$r15, var2570=$r16, var3982=$r17, var563=$r8, var632=$r9, var3418=$r10, var3837=$r11}
; {org.hibernate.loader.DefaultEntityAliases=var1844, r0=var2198, java.util.Map=var3222, r6=var2579, org.hibernate.persister.entity.Loadable=var2879, r7=var1325, r1=var3667, null_type=var3736, z0=var3829, java.lang.Object=var3020, $r12=var951, $r13=var819, $r14=var3292, $r15=var3323, $r16=var2570, $r17=var3982, $r8=var563, $r9=var632, $r10=var3418, $r11=var3837}
;seq <java.lang.String: java.lang.String intern()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.String: java.lang.String intern()>
;cnt {"<java.lang.String: java.lang.String intern()>": 2,"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: org.hibernate.loader.DefaultEntityAliases;	r6 := @parameter0: java.util.Map;	r7 := @parameter1: org.hibernate.persister.entity.Loadable;	r1 := @parameter2: java.lang.String;	z0 := @parameter3: boolean;	specialinvoke r0.<java.lang.Object: void <init>()>();	if z0 == 0 goto r0.<org.hibernate.loader.DefaultEntityAliases: java.lang.String suffix> = r1;	$r12 = virtualinvoke r1.<java.lang.String: java.lang.String intern()>();	r0.<org.hibernate.loader.DefaultEntityAliases: java.lang.String suffix> = $r12;	$r13 = new java.lang.StringBuilder;	specialinvoke $r13.<java.lang.StringBuilder: void <init>()>();	$r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("rowid_");	$r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1);	$r16 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.String toString()>();	$r17 = virtualinvoke $r16.<java.lang.String: java.lang.String intern()>();	r0.<org.hibernate.loader.DefaultEntityAliases: java.lang.String rowIdAlias> = $r17;	goto [?= r0.<org.hibernate.loader.DefaultEntityAliases: java.util.Map userProvidedAliases> = r6];	r0.<org.hibernate.loader.DefaultEntityAliases: java.util.Map userProvidedAliases> = r6;	$r8 = specialinvoke r0.<org.hibernate.loader.DefaultEntityAliases: java.lang.String[] determineKeyAlias(org.hibernate.persister.entity.Loadable,java.lang.String)>(r7, r1);	r0.<org.hibernate.loader.DefaultEntityAliases: java.lang.String[] suffixedKeyColumns> = $r8;	$r9 = specialinvoke r0.<org.hibernate.loader.DefaultEntityAliases: java.lang.String[][] determinePropertyAliases(org.hibernate.persister.entity.Loadable)>(r7);	r0.<org.hibernate.loader.DefaultEntityAliases: java.lang.String[][] suffixedPropertyColumns> = $r9;	$r10 = specialinvoke r0.<org.hibernate.loader.DefaultEntityAliases: java.lang.String determineDiscriminatorAlias(org.hibernate.persister.entity.Loadable,java.lang.String)>(r7, r1);	r0.<org.hibernate.loader.DefaultEntityAliases: java.lang.String suffixedDiscriminatorColumn> = $r10;	$r11 = specialinvoke r0.<org.hibernate.loader.DefaultEntityAliases: java.lang.String[] determineVersionAlias(org.hibernate.persister.entity.Loadable)>(r7);	r0.<org.hibernate.loader.DefaultEntityAliases: java.lang.String[] suffixedVersionColumn> = $r11;	return
;block_num 3