(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var457 0)
(declare-sort var1359 0)
(declare-sort var2822 0)
(declare-sort var1877 0)
(declare-sort var2301 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun <init>/-279557996 (var2301) void)
(declare-fun cast-from-var457-to-var2301 (var457) var2301)
(declare-fun suffix/853563599 (var457) String)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun rowIdAlias/853563599 (var457) String)
(declare-fun userProvidedAliases/853563599 (var457) var1359)
(declare-fun determineKeyAlias/-1376648462 (var457 var2822 String) (Array Int String))
(declare-fun suffixedKeyColumns/853563599 (var457) (Array Int String))
(declare-fun determinePropertyAliases/-697244711 (var457 var2822) (Array Int (Array Int String)))
(declare-fun suffixedPropertyColumns/853563599 (var457) (Array Int (Array Int String)))
(declare-fun determineDiscriminatorAlias/-328511215 (var457 var2822 String) String)
(declare-fun suffixedDiscriminatorColumn/853563599 (var457) String)
(declare-fun determineVersionAlias/712307504 (var457 var2822) (Array Int String))
(declare-fun suffixedVersionColumn/853563599 (var457) (Array Int String))
(declare-const null-var457 var457)
(declare-const null-var1359 var1359)
(declare-const null-var2822 var2822)
(declare-const null-String String)
(declare-const null-Bool Bool)
(declare-const var3663 var457) ; Statement: r0 := @this: org.hibernate.loader.DefaultEntityAliases 
(assert (not (= var3663 null-var457)))
(declare-const var3037 var1359) ; Statement: r6 := @parameter0: java.util.Map 
(assert (not (= var3037 null-var1359)))
(declare-const var724 var2822) ; Statement: r7 := @parameter1: org.hibernate.persister.entity.Loadable 
(assert (not (= var724 null-var2822)))
(declare-const var1017 String) ; Statement: r1 := @parameter2: java.lang.String 
(assert (not (= var1017 null-String)))
(declare-const var3143 Bool) ; Statement: z0 := @parameter3: boolean 
(assert (not (= var3143 null-Bool)))
(assert true)
;(assert (<init>/-279557996 (cast-from-var457-to-var2301 var3663))) ; Statement: specialinvoke r0.<java.lang.Object: void <init>()>() 

(declare-const var3663!1 var457)
 ; Statement: if z0 == 0 goto r0.<org.hibernate.loader.DefaultEntityAliases: java.lang.String suffix> = r1 
(assert (= (ite var3143 1 0) 0)) ; Cond: z0 == 0 
(declare-const var3663!2 var457)
(assert (not (= var3663!2 null-var457)))
(assert (= (suffix/853563599 var3663!2) var1017)) ; Statement: r0.<org.hibernate.loader.DefaultEntityAliases: java.lang.String suffix> = r1 
(define-const var1368 String String-init) ; Statement: $r2 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1368)) ; Statement: specialinvoke $r2.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1368!1 String)
(assert (= var1368!1 ""))
(assert true)
(define-const var3156 String (append/672562846 var1368!1 "rowid_")) ; Statement: $r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("rowid_") 
(declare-const var1368!2 String)
(assert (= var1368!2 (str.++ var1368!1 "rowid_")))
(assert true)
(define-const var587 String (append/672562846 var3156 var1017)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1) 
(declare-const var3156!1 String)
(assert (= var3156!1 (str.++ var3156 var1017)))
(assert true)
(define-const var3433 String (toString/-2075883882 var587)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>() 
(declare-const var3663!3 var457)
(assert (not (= var3663!3 null-var457)))
(assert (= (rowIdAlias/853563599 var3663!3) var3433)) ; Statement: r0.<org.hibernate.loader.DefaultEntityAliases: java.lang.String rowIdAlias> = $r5 
(assert true) ; Non Conditional
(declare-const var3663!4 var457)
(assert (not (= var3663!4 null-var457)))
(assert (= (userProvidedAliases/853563599 var3663!4) var3037)) ; Statement: r0.<org.hibernate.loader.DefaultEntityAliases: java.util.Map userProvidedAliases> = r6 
(assert true)
(define-const var586 (Array Int String) (determineKeyAlias/-1376648462 var3663!4 var724 var1017)) ; Statement: $r8 = specialinvoke r0.<org.hibernate.loader.DefaultEntityAliases: java.lang.String[] determineKeyAlias(org.hibernate.persister.entity.Loadable,java.lang.String)>(r7, r1) 
(declare-const var3663!5 var457)
(assert (not (= var3663!5 null-var457)))
(assert (= (suffixedKeyColumns/853563599 var3663!5) var586)) ; Statement: r0.<org.hibernate.loader.DefaultEntityAliases: java.lang.String[] suffixedKeyColumns> = $r8 
(assert true)
(define-const var105 (Array Int (Array Int String)) (determinePropertyAliases/-697244711 var3663!5 var724)) ; Statement: $r9 = specialinvoke r0.<org.hibernate.loader.DefaultEntityAliases: java.lang.String[][] determinePropertyAliases(org.hibernate.persister.entity.Loadable)>(r7) 
(declare-const var3663!6 var457)
(assert (not (= var3663!6 null-var457)))
(assert (= (suffixedPropertyColumns/853563599 var3663!6) var105)) ; Statement: r0.<org.hibernate.loader.DefaultEntityAliases: java.lang.String[][] suffixedPropertyColumns> = $r9 
(assert true)
(define-const var1389 String (determineDiscriminatorAlias/-328511215 var3663!6 var724 var1017)) ; Statement: $r10 = specialinvoke r0.<org.hibernate.loader.DefaultEntityAliases: java.lang.String determineDiscriminatorAlias(org.hibernate.persister.entity.Loadable,java.lang.String)>(r7, r1) 
(declare-const var3663!7 var457)
(assert (not (= var3663!7 null-var457)))
(assert (= (suffixedDiscriminatorColumn/853563599 var3663!7) var1389)) ; Statement: r0.<org.hibernate.loader.DefaultEntityAliases: java.lang.String suffixedDiscriminatorColumn> = $r10 
(assert true)
(define-const var1109 (Array Int String) (determineVersionAlias/712307504 var3663!7 var724)) ; Statement: $r11 = specialinvoke r0.<org.hibernate.loader.DefaultEntityAliases: java.lang.String[] determineVersionAlias(org.hibernate.persister.entity.Loadable)>(r7) 
(declare-const var3663!8 var457)
(assert (not (= var3663!8 null-var457)))
(assert (= (suffixedVersionColumn/853563599 var3663!8) var1109)) ; Statement: r0.<org.hibernate.loader.DefaultEntityAliases: java.lang.String[] suffixedVersionColumn> = $r11 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {<init>/-279557996=([java.lang.Object], void), cast-from-var457-to-var2301=([org.hibernate.loader.DefaultEntityAliases], java.lang.Object), suffix/853563599=([org.hibernate.loader.DefaultEntityAliases], java.lang.String), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), rowIdAlias/853563599=([org.hibernate.loader.DefaultEntityAliases], java.lang.String), userProvidedAliases/853563599=([org.hibernate.loader.DefaultEntityAliases], java.util.Map), determineKeyAlias/-1376648462=([org.hibernate.loader.DefaultEntityAliases, org.hibernate.persister.entity.Loadable, java.lang.String], java.lang.String[]), suffixedKeyColumns/853563599=([org.hibernate.loader.DefaultEntityAliases], java.lang.String[]), determinePropertyAliases/-697244711=([org.hibernate.loader.DefaultEntityAliases, org.hibernate.persister.entity.Loadable], java.lang.String[][]), suffixedPropertyColumns/853563599=([org.hibernate.loader.DefaultEntityAliases], java.lang.String[][]), determineDiscriminatorAlias/-328511215=([org.hibernate.loader.DefaultEntityAliases, org.hibernate.persister.entity.Loadable, java.lang.String], java.lang.String), suffixedDiscriminatorColumn/853563599=([org.hibernate.loader.DefaultEntityAliases], java.lang.String), determineVersionAlias/712307504=([org.hibernate.loader.DefaultEntityAliases, org.hibernate.persister.entity.Loadable], java.lang.String[]), suffixedVersionColumn/853563599=([org.hibernate.loader.DefaultEntityAliases], java.lang.String[])}
; {var457=org.hibernate.loader.DefaultEntityAliases, var3663=r0, var1359=java.util.Map, var3037=r6, var2822=org.hibernate.persister.entity.Loadable, var724=r7, var1017=r1, var1877=null_type, var3143=z0, var2301=java.lang.Object, var1368=$r2, var3156=$r3, var587=$r4, var3433=$r5, var586=$r8, var105=$r9, var1389=$r10, var1109=$r11}
; {org.hibernate.loader.DefaultEntityAliases=var457, r0=var3663, java.util.Map=var1359, r6=var3037, org.hibernate.persister.entity.Loadable=var2822, r7=var724, r1=var1017, null_type=var1877, z0=var3143, java.lang.Object=var2301, $r2=var1368, $r3=var3156, $r4=var587, $r5=var3433, $r8=var586, $r9=var105, $r10=var1389, $r11=var1109}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: org.hibernate.loader.DefaultEntityAliases;	r6 := @parameter0: java.util.Map;	r7 := @parameter1: org.hibernate.persister.entity.Loadable;	r1 := @parameter2: java.lang.String;	z0 := @parameter3: boolean;	specialinvoke r0.<java.lang.Object: void <init>()>();	if z0 == 0 goto r0.<org.hibernate.loader.DefaultEntityAliases: java.lang.String suffix> = r1;	r0.<org.hibernate.loader.DefaultEntityAliases: java.lang.String suffix> = r1;	$r2 = new java.lang.StringBuilder;	specialinvoke $r2.<java.lang.StringBuilder: void <init>()>();	$r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("rowid_");	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1);	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>();	r0.<org.hibernate.loader.DefaultEntityAliases: java.lang.String rowIdAlias> = $r5;	r0.<org.hibernate.loader.DefaultEntityAliases: java.util.Map userProvidedAliases> = r6;	$r8 = specialinvoke r0.<org.hibernate.loader.DefaultEntityAliases: java.lang.String[] determineKeyAlias(org.hibernate.persister.entity.Loadable,java.lang.String)>(r7, r1);	r0.<org.hibernate.loader.DefaultEntityAliases: java.lang.String[] suffixedKeyColumns> = $r8;	$r9 = specialinvoke r0.<org.hibernate.loader.DefaultEntityAliases: java.lang.String[][] determinePropertyAliases(org.hibernate.persister.entity.Loadable)>(r7);	r0.<org.hibernate.loader.DefaultEntityAliases: java.lang.String[][] suffixedPropertyColumns> = $r9;	$r10 = specialinvoke r0.<org.hibernate.loader.DefaultEntityAliases: java.lang.String determineDiscriminatorAlias(org.hibernate.persister.entity.Loadable,java.lang.String)>(r7, r1);	r0.<org.hibernate.loader.DefaultEntityAliases: java.lang.String suffixedDiscriminatorColumn> = $r10;	$r11 = specialinvoke r0.<org.hibernate.loader.DefaultEntityAliases: java.lang.String[] determineVersionAlias(org.hibernate.persister.entity.Loadable)>(r7);	r0.<org.hibernate.loader.DefaultEntityAliases: java.lang.String[] suffixedVersionColumn> = $r11;	return
;block_num 3