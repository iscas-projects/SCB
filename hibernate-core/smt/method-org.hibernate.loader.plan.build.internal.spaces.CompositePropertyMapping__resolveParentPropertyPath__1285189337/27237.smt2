(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3748 0)
(declare-sort var3323 0)
(declare-sort var3141 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun parentPropertyName/1979368882 (var3748) String)
(declare-fun var3141_isEmpty/1672864985 (String) Bool)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1166366385 (String Int) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var3748 var3748)
(declare-const null-String String)
(declare-const var648 var3748) ; Statement: r0 := @this: org.hibernate.loader.plan.build.internal.spaces.CompositePropertyMapping 
(assert (not (= var648 null-var3748)))
(declare-const var178 String) ; Statement: r5 := @parameter0: java.lang.String 
(assert (not (= var178 null-String)))
(define-const var3924 String (parentPropertyName/1979368882 var648)) ; Statement: $r1 = r0.<org.hibernate.loader.plan.build.internal.spaces.CompositePropertyMapping: java.lang.String parentPropertyName> 
(define-const var3230 Bool (var3141_isEmpty/1672864985 var3924)) ; Statement: $z0 = staticinvoke <org.hibernate.internal.util.StringHelper: boolean isEmpty(java.lang.String)>($r1) 
 ; Statement: if $z0 == 0 goto $r2 = new java.lang.StringBuilder 
(assert (= (ite var3230 1 0) 0)) ; Cond: $z0 == 0 
(define-const var1317 String String-init) ; Statement: $r2 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1317)) ; Statement: specialinvoke $r2.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1317!1 String)
(assert (= var1317!1 ""))
(define-const var2205 String (parentPropertyName/1979368882 var648)) ; Statement: $r3 = r0.<org.hibernate.loader.plan.build.internal.spaces.CompositePropertyMapping: java.lang.String parentPropertyName> 
(assert true)
(define-const var483 String (append/672562846 var1317!1 var2205)) ; Statement: $r4 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3) 
(declare-const var1317!2 String)
(assert (= var1317!2 (str.++ var1317!1 var2205)))
(assert true)
(define-const var2796 String (append/-1166366385 var483 46)) ; Statement: $r6 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(46) 
(declare-const var483!1 String)
(assert (str.prefixof var483 var483!1))
(assert true)
(define-const var3022 String (append/672562846 var2796 var178)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r5) 
(declare-const var2796!1 String)
(assert (= var2796!1 (str.++ var2796 var178)))
(assert true)
(define-const var3673 String (toString/-2075883882 var3022)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r8 
(check-sat)
(get-model)
(get-unsat-core)
; {parentPropertyName/1979368882=([org.hibernate.loader.plan.build.internal.spaces.CompositePropertyMapping], java.lang.String), var3141_isEmpty/1672864985=([java.lang.String], boolean), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1166366385=([java.lang.StringBuilder, char], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var3748=org.hibernate.loader.plan.build.internal.spaces.CompositePropertyMapping, var648=r0, var178=r5, var3323=null_type, var3924=$r1, var3141=org.hibernate.internal.util.StringHelper, var3230=$z0, var1317=$r2, var2205=$r3, var483=$r4, var2796=$r6, var3022=$r7, var3673=$r8}
; {org.hibernate.loader.plan.build.internal.spaces.CompositePropertyMapping=var3748, r0=var648, r5=var178, null_type=var3323, $r1=var3924, org.hibernate.internal.util.StringHelper=var3141, $z0=var3230, $r2=var1317, $r3=var2205, $r4=var483, $r6=var2796, $r7=var3022, $r8=var3673}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(char)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: org.hibernate.loader.plan.build.internal.spaces.CompositePropertyMapping;	r5 := @parameter0: java.lang.String;	$r1 = r0.<org.hibernate.loader.plan.build.internal.spaces.CompositePropertyMapping: java.lang.String parentPropertyName>;	$z0 = staticinvoke <org.hibernate.internal.util.StringHelper: boolean isEmpty(java.lang.String)>($r1);	if $z0 == 0 goto $r2 = new java.lang.StringBuilder;	$r2 = new java.lang.StringBuilder;	specialinvoke $r2.<java.lang.StringBuilder: void <init>()>();	$r3 = r0.<org.hibernate.loader.plan.build.internal.spaces.CompositePropertyMapping: java.lang.String parentPropertyName>;	$r4 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3);	$r6 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(46);	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r5);	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>();	return $r8
;block_num 2