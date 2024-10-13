(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2995 0)
(declare-sort var2042 0)
(declare-sort var3404 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun toJoinFragment/-1227616158 (var2995 var2042 Bool) var3404)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun String_join/-1520935655 (String (Array Int String)) String)
(define-fun cast-from-String-to-String ((arg String)) String arg)
(define-fun cast-from-__Array__Int__String__-to-__Array__Int__String__ ((arg (Array Int String))) (Array Int String) arg)
(declare-fun toFromFragmentString/701527262 (var3404) String)
(define-fun substring/850833817 ((s String) (begin Int)) String (str.substr s begin (- (str.len s) begin)))
(declare-fun toWhereFragmentString/-1276368279 (var3404) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var2995 var2995)
(declare-const null-var2042 var2042)
(declare-const null-__Array__Int__String__ (Array Int String))
(declare-const var1440 var2995) ; Statement: r0 := @parameter0: org.hibernate.engine.internal.JoinSequence 
(assert (not (= var1440 null-var2995)))
(declare-const var1303 var2042) ; Statement: r1 := @parameter1: java.util.Map 
(assert (not (= var1303 null-var2042)))
(declare-const var901 (Array Int String)) ; Statement: r4 := @parameter2: java.lang.String[] 
(assert (not (= var901 null-__Array__Int__String__)))
(assert true)
(define-const var1031 var3404 (toJoinFragment/-1227616158 var1440 var1303 (ite (= 1 1) true false))) ; Statement: r2 = virtualinvoke r0.<org.hibernate.engine.internal.JoinSequence: org.hibernate.sql.JoinFragment toJoinFragment(java.util.Map,boolean)>(r1, 1) 
(define-const var3906 String String-init) ; Statement: $r3 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3906)) ; Statement: specialinvoke $r3.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3906!1 String)
(assert (= var3906!1 ""))
(assert true)
(define-const var2632 String (append/672562846 var3906!1 "select ")) ; Statement: $r6 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("select ") 
(declare-const var3906!2 String)
(assert (= var3906!2 (str.++ var3906!1 "select ")))
(define-const var3861 String (String_join/-1520935655 (cast-from-String-to-String ", ") (cast-from-__Array__Int__String__-to-__Array__Int__String__ var901))) ; Statement: $r5 = staticinvoke <java.lang.String: java.lang.String join(java.lang.CharSequence,java.lang.CharSequence[])>(", ", r4) 
(assert true)
(define-const var2238 String (append/672562846 var2632 var3861)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r5) 
(declare-const var2632!1 String)
(assert (= var2632!1 (str.++ var2632 var3861)))
(assert true)
(define-const var1686 String (append/672562846 var2238 " from ")) ; Statement: $r10 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" from ") 
(declare-const var2238!1 String)
(assert (= var2238!1 (str.++ var2238 " from ")))
(assert true)
(define-const var3954 String (toFromFragmentString/701527262 var1031)) ; Statement: $r8 = virtualinvoke r2.<org.hibernate.sql.JoinFragment: java.lang.String toFromFragmentString()>() 
(assert (and true (and (>= 2 0) (>= (str.len var3954) 2))))
(define-const var636 String (substring/850833817 var3954 2)) ; Statement: $r9 = virtualinvoke $r8.<java.lang.String: java.lang.String substring(int)>(2) 
(assert true)
(define-const var1584 String (append/672562846 var1686 var636)) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r9) 
(declare-const var1686!1 String)
(assert (= var1686!1 (str.++ var1686 var636)))
(assert true)
(define-const var270 String (append/672562846 var1584 " where ")) ; Statement: $r14 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" where ") 
(declare-const var1584!1 String)
(assert (= var1584!1 (str.++ var1584 " where ")))
(assert true)
(define-const var2231 String (toWhereFragmentString/-1276368279 var1031)) ; Statement: $r12 = virtualinvoke r2.<org.hibernate.sql.JoinFragment: java.lang.String toWhereFragmentString()>() 
(assert (not (and true (and (>= 5 0) (>= (str.len var2231) 5)))))
(check-sat)
(get-model)
(get-unsat-core)
; {toJoinFragment/-1227616158=([org.hibernate.engine.internal.JoinSequence, java.util.Map, boolean], org.hibernate.sql.JoinFragment), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), String_join/-1520935655=([java.lang.CharSequence, java.lang.CharSequence[]], java.lang.String), cast-from-String-to-String=([java.lang.String], java.lang.CharSequence), cast-from-__Array__Int__String__-to-__Array__Int__String__=([java.lang.String[]], java.lang.CharSequence[]), toFromFragmentString/701527262=([org.hibernate.sql.JoinFragment], java.lang.String), substring/850833817=([java.lang.String, int], java.lang.String), toWhereFragmentString/-1276368279=([org.hibernate.sql.JoinFragment], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var2995=org.hibernate.engine.internal.JoinSequence, var1440=r0, var2042=java.util.Map, var1303=r1, var901=r4, var3404=org.hibernate.sql.JoinFragment, var1031=r2, var3906=$r3, var2632=$r6, var3861=$r5, var2238=$r7, var1686=$r10, var3954=$r8, var636=$r9, var1584=$r11, var270=$r14, var2231=$r12, var1619=$r13, var1699=$r15, var2255=$r16}
; {org.hibernate.engine.internal.JoinSequence=var2995, r0=var1440, java.util.Map=var2042, r1=var1303, r4=var901, org.hibernate.sql.JoinFragment=var3404, r2=var1031, $r3=var3906, $r6=var2632, $r5=var3861, $r7=var2238, $r10=var1686, $r8=var3954, $r9=var636, $r11=var1584, $r14=var270, $r12=var2231, $r13=var1619, $r15=var1699, $r16=var2255}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.String: java.lang.String join(java.lang.CharSequence,java.lang.CharSequence[])>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.String: java.lang.String substring(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.String: java.lang.String substring(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 6,"<java.lang.String: java.lang.String join(java.lang.CharSequence,java.lang.CharSequence[])>": 1,"<java.lang.String: java.lang.String substring(int)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @parameter0: org.hibernate.engine.internal.JoinSequence;	r1 := @parameter1: java.util.Map;	r4 := @parameter2: java.lang.String[];	r2 = virtualinvoke r0.<org.hibernate.engine.internal.JoinSequence: org.hibernate.sql.JoinFragment toJoinFragment(java.util.Map,boolean)>(r1, 1);	$r3 = new java.lang.StringBuilder;	specialinvoke $r3.<java.lang.StringBuilder: void <init>()>();	$r6 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("select ");	$r5 = staticinvoke <java.lang.String: java.lang.String join(java.lang.CharSequence,java.lang.CharSequence[])>(", ", r4);	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r5);	$r10 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" from ");	$r8 = virtualinvoke r2.<org.hibernate.sql.JoinFragment: java.lang.String toFromFragmentString()>();	$r9 = virtualinvoke $r8.<java.lang.String: java.lang.String substring(int)>(2);	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r9);	$r14 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" where ");	$r12 = virtualinvoke r2.<org.hibernate.sql.JoinFragment: java.lang.String toWhereFragmentString()>();	$r13 = virtualinvoke $r12.<java.lang.String: java.lang.String substring(int)>(5);	$r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r13);	$r16 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.String toString()>();	return $r16
;block_num 1