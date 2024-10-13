(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3219 0)
(declare-sort var750 0)
(declare-sort var3025 0)
(declare-sort var2440 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun loadable/297517062 (var3219) var3025)
(declare-fun cast-from-var3025-to-var2440 (var3025) var2440)
(declare-fun alias/297517062 (var3219) String)
(declare-fun var2440_toColumns/701355653 (var2440 String String) (Array Int String))
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun String_join/-1520935655 (String (Array Int String)) String)
(define-fun cast-from-String-to-String ((arg String)) String arg)
(define-fun cast-from-__Array__Int__String__-to-__Array__Int__String__ ((arg (Array Int String))) (Array Int String) arg)
(declare-fun queryString/297517062 (var3219) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var3219 var3219)
(declare-const null-String String)
(declare-const var3105 var3219) ; Statement: r1 := @this: org.hibernate.engine.spi.SubselectFetch 
(assert (not (= var3105 null-var3219)))
(declare-const var931 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var931 null-String)))
 ; Statement: if r0 != null goto $r2 = r1.<org.hibernate.engine.spi.SubselectFetch: org.hibernate.persister.entity.Loadable loadable> 
(assert (not (= var931 null-String))) ; Cond: r0 != null 
(define-const var1373 var3025 (loadable/297517062 var3105)) ; Statement: $r2 = r1.<org.hibernate.engine.spi.SubselectFetch: org.hibernate.persister.entity.Loadable loadable> 
(define-const var722 var2440 (cast-from-var3025-to-var2440 var1373)) ; Statement: $r4 = (org.hibernate.persister.entity.PropertyMapping) $r2 
(define-const var2726 String (alias/297517062 var3105)) ; Statement: $r3 = r1.<org.hibernate.engine.spi.SubselectFetch: java.lang.String alias> 
(define-const var3935 (Array Int String) (var2440_toColumns/701355653 var722 var2726 var931)) ; Statement: $r15 = interfaceinvoke $r4.<org.hibernate.persister.entity.PropertyMapping: java.lang.String[] toColumns(java.lang.String,java.lang.String)>($r3, r0) 
(assert true) ; Non Conditional
(define-const var3430 String String-init) ; Statement: $r5 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3430)) ; Statement: specialinvoke $r5.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3430!1 String)
(assert (= var3430!1 ""))
(assert true)
(define-const var3171 String (append/672562846 var3430!1 "select ")) ; Statement: $r7 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("select ") 
(declare-const var3430!2 String)
(assert (= var3430!2 (str.++ var3430!1 "select ")))
(define-const var2960 String (String_join/-1520935655 (cast-from-String-to-String ", ") (cast-from-__Array__Int__String__-to-__Array__Int__String__ var3935))) ; Statement: $r6 = staticinvoke <java.lang.String: java.lang.String join(java.lang.CharSequence,java.lang.CharSequence[])>(", ", $r15) 
(assert true)
(define-const var463 String (append/672562846 var3171 var2960)) ; Statement: $r9 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r6) 
(declare-const var3171!1 String)
(assert (= var3171!1 (str.++ var3171 var2960)))
(define-const var3283 String (queryString/297517062 var3105)) ; Statement: $r8 = r1.<org.hibernate.engine.spi.SubselectFetch: java.lang.String queryString> 
(assert true)
(define-const var3147 String (append/672562846 var463 var3283)) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r8) 
(declare-const var463!1 String)
(assert (= var463!1 (str.++ var463 var3283)))
(assert true)
(define-const var3680 String (toString/-2075883882 var3147)) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r11 
(check-sat)
(get-model)
(get-unsat-core)
; {loadable/297517062=([org.hibernate.engine.spi.SubselectFetch], org.hibernate.persister.entity.Loadable), cast-from-var3025-to-var2440=([org.hibernate.persister.entity.Loadable], org.hibernate.persister.entity.PropertyMapping), alias/297517062=([org.hibernate.engine.spi.SubselectFetch], java.lang.String), var2440_toColumns/701355653=([org.hibernate.persister.entity.PropertyMapping, java.lang.String, java.lang.String], java.lang.String[]), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), String_join/-1520935655=([java.lang.CharSequence, java.lang.CharSequence[]], java.lang.String), cast-from-String-to-String=([java.lang.String], java.lang.CharSequence), cast-from-__Array__Int__String__-to-__Array__Int__String__=([java.lang.String[]], java.lang.CharSequence[]), queryString/297517062=([org.hibernate.engine.spi.SubselectFetch], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var3219=org.hibernate.engine.spi.SubselectFetch, var3105=r1, var931=r0, var750=null_type, var3025=org.hibernate.persister.entity.Loadable, var1373=$r2, var2440=org.hibernate.persister.entity.PropertyMapping, var722=$r4, var2726=$r3, var3935=$r15, var3430=$r5, var3171=$r7, var2960=$r6, var463=$r9, var3283=$r8, var3147=$r10, var3680=$r11}
; {org.hibernate.engine.spi.SubselectFetch=var3219, r1=var3105, r0=var931, null_type=var750, org.hibernate.persister.entity.Loadable=var3025, $r2=var1373, org.hibernate.persister.entity.PropertyMapping=var2440, $r4=var722, $r3=var2726, $r15=var3935, $r5=var3430, $r7=var3171, $r6=var2960, $r9=var463, $r8=var3283, $r10=var3147, $r11=var3680}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.String: java.lang.String join(java.lang.CharSequence,java.lang.CharSequence[])>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.String: java.lang.String join(java.lang.CharSequence,java.lang.CharSequence[])>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: org.hibernate.engine.spi.SubselectFetch;	r0 := @parameter0: java.lang.String;	if r0 != null goto $r2 = r1.<org.hibernate.engine.spi.SubselectFetch: org.hibernate.persister.entity.Loadable loadable>;	$r2 = r1.<org.hibernate.engine.spi.SubselectFetch: org.hibernate.persister.entity.Loadable loadable>;	$r4 = (org.hibernate.persister.entity.PropertyMapping) $r2;	$r3 = r1.<org.hibernate.engine.spi.SubselectFetch: java.lang.String alias>;	$r15 = interfaceinvoke $r4.<org.hibernate.persister.entity.PropertyMapping: java.lang.String[] toColumns(java.lang.String,java.lang.String)>($r3, r0);	$r5 = new java.lang.StringBuilder;	specialinvoke $r5.<java.lang.StringBuilder: void <init>()>();	$r7 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("select ");	$r6 = staticinvoke <java.lang.String: java.lang.String join(java.lang.CharSequence,java.lang.CharSequence[])>(", ", $r15);	$r9 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r6);	$r8 = r1.<org.hibernate.engine.spi.SubselectFetch: java.lang.String queryString>;	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r8);	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.String toString()>();	return $r11
;block_num 3