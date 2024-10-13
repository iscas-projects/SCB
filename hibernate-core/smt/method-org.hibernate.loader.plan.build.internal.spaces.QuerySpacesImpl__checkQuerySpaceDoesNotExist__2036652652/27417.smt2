(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2458 0)
(declare-sort var3828 0)
(declare-sort var2846 0)
(declare-sort var1868 0)
(declare-sort var2804 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun querySpaceByUid/86166741 (var2458) var2846)
(declare-fun var2846_containsKey/1715618542 (var2846 var1868) Bool)
(declare-fun cast-from-String-to-var1868 (String) var1868)
(declare-fun var2804-init () var2804)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-1092629202 (var2804 String) void)
(declare-const null-var2458 var2458)
(declare-const null-String String)
(declare-const var1352 var2458) ; Statement: r0 := @this: org.hibernate.loader.plan.build.internal.spaces.QuerySpacesImpl 
(assert (not (= var1352 null-var2458)))
(declare-const var400 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var400 null-String)))
(define-const var215 var2846 (querySpaceByUid/86166741 var1352)) ; Statement: $r2 = r0.<org.hibernate.loader.plan.build.internal.spaces.QuerySpacesImpl: java.util.Map querySpaceByUid> 
(define-const var3523 Bool (var2846_containsKey/1715618542 var215 (cast-from-String-to-var1868 var400))) ; Statement: $z0 = interfaceinvoke $r2.<java.util.Map: boolean containsKey(java.lang.Object)>(r1) 
 ; Statement: if $z0 == 0 goto return 
(assert (not (= (ite var3523 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var1720 var2804 var2804-init) ; Statement: $r3 = new java.lang.IllegalStateException 
(define-const var3004 String String-init) ; Statement: $r4 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3004)) ; Statement: specialinvoke $r4.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3004!1 String)
(assert (= var3004!1 ""))
(assert true)
(define-const var523 String (append/672562846 var3004!1 "Encountered duplicate QuerySpace uid : ")) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Encountered duplicate QuerySpace uid : ") 
(declare-const var3004!2 String)
(assert (= var3004!2 (str.++ var3004!1 "Encountered duplicate QuerySpace uid : ")))
(assert true)
(define-const var2281 String (append/672562846 var523 var400)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1) 
(declare-const var523!1 String)
(assert (= var523!1 (str.++ var523 var400)))
(assert true)
(define-const var2863 String (toString/-2075883882 var2281)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-1092629202 var1720 var2863)) ; Statement: specialinvoke $r3.<java.lang.IllegalStateException: void <init>(java.lang.String)>($r7) 

(declare-const var1720!1 var2804)
(declare-const var2863!1 String)
 ; Statement: throw $r3 
(check-sat)
(get-model)
(get-unsat-core)
; {querySpaceByUid/86166741=([org.hibernate.loader.plan.build.internal.spaces.QuerySpacesImpl], java.util.Map), var2846_containsKey/1715618542=([java.util.Map, java.lang.Object], boolean), cast-from-String-to-var1868=([java.lang.String], java.lang.Object), var2804-init=([], java.lang.IllegalStateException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-1092629202=([java.lang.IllegalStateException, java.lang.String], void)}
; {var2458=org.hibernate.loader.plan.build.internal.spaces.QuerySpacesImpl, var1352=r0, var400=r1, var3828=null_type, var2846=java.util.Map, var215=$r2, var1868=java.lang.Object, var3523=$z0, var2804=java.lang.IllegalStateException, var1720=$r3, var3004=$r4, var523=$r5, var2281=$r6, var2863=$r7}
; {org.hibernate.loader.plan.build.internal.spaces.QuerySpacesImpl=var2458, r0=var1352, r1=var400, null_type=var3828, java.util.Map=var2846, $r2=var215, java.lang.Object=var1868, $z0=var3523, java.lang.IllegalStateException=var2804, $r3=var1720, $r4=var3004, $r5=var523, $r6=var2281, $r7=var2863}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: org.hibernate.loader.plan.build.internal.spaces.QuerySpacesImpl;	r1 := @parameter0: java.lang.String;	$r2 = r0.<org.hibernate.loader.plan.build.internal.spaces.QuerySpacesImpl: java.util.Map querySpaceByUid>;	$z0 = interfaceinvoke $r2.<java.util.Map: boolean containsKey(java.lang.Object)>(r1);	if $z0 == 0 goto return;	$r3 = new java.lang.IllegalStateException;	$r4 = new java.lang.StringBuilder;	specialinvoke $r4.<java.lang.StringBuilder: void <init>()>();	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Encountered duplicate QuerySpace uid : ");	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1);	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r3.<java.lang.IllegalStateException: void <init>(java.lang.String)>($r7);	throw $r3
;block_num 2