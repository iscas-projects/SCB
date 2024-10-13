(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1842 0)
(declare-sort var2727 0)
(declare-sort var1109 0)
(declare-sort var3968 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun alias/297517062 (var1842) String)
(declare-fun loadable/297517062 (var1842) var1109)
(declare-fun var1109_getIdentifierColumnNames/-230260269 (var1109) (Array Int String))
(declare-fun var3968_qualify/-195745679 (String (Array Int String)) (Array Int String))
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun String_join/-1520935655 (String (Array Int String)) String)
(define-fun cast-from-String-to-String ((arg String)) String arg)
(define-fun cast-from-__Array__Int__String__-to-__Array__Int__String__ ((arg (Array Int String))) (Array Int String) arg)
(declare-fun queryString/297517062 (var1842) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var1842 var1842)
(declare-const null-String String)
(declare-const var2090 var1842) ; Statement: r1 := @this: org.hibernate.engine.spi.SubselectFetch 
(assert (not (= var2090 null-var1842)))
(declare-const var1157 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var1157 null-String)))
 ; Statement: if r0 != null goto $r2 = r1.<org.hibernate.engine.spi.SubselectFetch: org.hibernate.persister.entity.Loadable loadable> 
(assert (not (not (= var1157 null-String)))) ; Negate: Cond: r0 != null  
(define-const var3676 String (alias/297517062 var2090)) ; Statement: $r13 = r1.<org.hibernate.engine.spi.SubselectFetch: java.lang.String alias> 
(define-const var2131 var1109 (loadable/297517062 var2090)) ; Statement: $r12 = r1.<org.hibernate.engine.spi.SubselectFetch: org.hibernate.persister.entity.Loadable loadable> 
(define-const var267 (Array Int String) (var1109_getIdentifierColumnNames/-230260269 var2131)) ; Statement: $r14 = interfaceinvoke $r12.<org.hibernate.persister.entity.Loadable: java.lang.String[] getIdentifierColumnNames()>() 
(define-const var2008 (Array Int String) (var3968_qualify/-195745679 var3676 var267)) ; Statement: $r15 = staticinvoke <org.hibernate.internal.util.StringHelper: java.lang.String[] qualify(java.lang.String,java.lang.String[])>($r13, $r14) 
 ; Statement: goto [?= $r5 = new java.lang.StringBuilder] 
(assert true) ; Non Conditional
(define-const var3252 String String-init) ; Statement: $r5 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3252)) ; Statement: specialinvoke $r5.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3252!1 String)
(assert (= var3252!1 ""))
(assert true)
(define-const var1349 String (append/672562846 var3252!1 "select ")) ; Statement: $r7 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("select ") 
(declare-const var3252!2 String)
(assert (= var3252!2 (str.++ var3252!1 "select ")))
(define-const var3097 String (String_join/-1520935655 (cast-from-String-to-String ", ") (cast-from-__Array__Int__String__-to-__Array__Int__String__ var2008))) ; Statement: $r6 = staticinvoke <java.lang.String: java.lang.String join(java.lang.CharSequence,java.lang.CharSequence[])>(", ", $r15) 
(assert true)
(define-const var414 String (append/672562846 var1349 var3097)) ; Statement: $r9 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r6) 
(declare-const var1349!1 String)
(assert (= var1349!1 (str.++ var1349 var3097)))
(define-const var2924 String (queryString/297517062 var2090)) ; Statement: $r8 = r1.<org.hibernate.engine.spi.SubselectFetch: java.lang.String queryString> 
(assert true)
(define-const var132 String (append/672562846 var414 var2924)) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r8) 
(declare-const var414!1 String)
(assert (= var414!1 (str.++ var414 var2924)))
(assert true)
(define-const var2889 String (toString/-2075883882 var132)) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r11 
(check-sat)
(get-model)
(get-unsat-core)
; {alias/297517062=([org.hibernate.engine.spi.SubselectFetch], java.lang.String), loadable/297517062=([org.hibernate.engine.spi.SubselectFetch], org.hibernate.persister.entity.Loadable), var1109_getIdentifierColumnNames/-230260269=([org.hibernate.persister.entity.Loadable], java.lang.String[]), var3968_qualify/-195745679=([java.lang.String, java.lang.String[]], java.lang.String[]), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), String_join/-1520935655=([java.lang.CharSequence, java.lang.CharSequence[]], java.lang.String), cast-from-String-to-String=([java.lang.String], java.lang.CharSequence), cast-from-__Array__Int__String__-to-__Array__Int__String__=([java.lang.String[]], java.lang.CharSequence[]), queryString/297517062=([org.hibernate.engine.spi.SubselectFetch], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var1842=org.hibernate.engine.spi.SubselectFetch, var2090=r1, var1157=r0, var2727=null_type, var3676=$r13, var1109=org.hibernate.persister.entity.Loadable, var2131=$r12, var267=$r14, var3968=org.hibernate.internal.util.StringHelper, var2008=$r15, var3252=$r5, var1349=$r7, var3097=$r6, var414=$r9, var2924=$r8, var132=$r10, var2889=$r11}
; {org.hibernate.engine.spi.SubselectFetch=var1842, r1=var2090, r0=var1157, null_type=var2727, $r13=var3676, org.hibernate.persister.entity.Loadable=var1109, $r12=var2131, $r14=var267, org.hibernate.internal.util.StringHelper=var3968, $r15=var2008, $r5=var3252, $r7=var1349, $r6=var3097, $r9=var414, $r8=var2924, $r10=var132, $r11=var2889}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.String: java.lang.String join(java.lang.CharSequence,java.lang.CharSequence[])>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.String: java.lang.String join(java.lang.CharSequence,java.lang.CharSequence[])>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: org.hibernate.engine.spi.SubselectFetch;	r0 := @parameter0: java.lang.String;	if r0 != null goto $r2 = r1.<org.hibernate.engine.spi.SubselectFetch: org.hibernate.persister.entity.Loadable loadable>;	$r13 = r1.<org.hibernate.engine.spi.SubselectFetch: java.lang.String alias>;	$r12 = r1.<org.hibernate.engine.spi.SubselectFetch: org.hibernate.persister.entity.Loadable loadable>;	$r14 = interfaceinvoke $r12.<org.hibernate.persister.entity.Loadable: java.lang.String[] getIdentifierColumnNames()>();	$r15 = staticinvoke <org.hibernate.internal.util.StringHelper: java.lang.String[] qualify(java.lang.String,java.lang.String[])>($r13, $r14);	goto [?= $r5 = new java.lang.StringBuilder];	$r5 = new java.lang.StringBuilder;	specialinvoke $r5.<java.lang.StringBuilder: void <init>()>();	$r7 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("select ");	$r6 = staticinvoke <java.lang.String: java.lang.String join(java.lang.CharSequence,java.lang.CharSequence[])>(", ", $r15);	$r9 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r6);	$r8 = r1.<org.hibernate.engine.spi.SubselectFetch: java.lang.String queryString>;	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r8);	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.String toString()>();	return $r11
;block_num 3