(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2490 0)
(declare-sort var2731 0)
(declare-sort var1354 0)
(declare-sort var3832 0)
(declare-sort var2888 0)
(declare-sort var904 0)
(declare-sort var3022 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1031950772 (String var3832) String)
(declare-fun cast-from-var1354-to-var3832 (var1354) var3832)
(define-fun toString/-2075883882 ((s String)) String s)
(define-fun <init>/-1061048412 ((s String)) String s)
(declare-fun clone/791635256 (var3832) var3832)
(declare-fun cast-from-__Array__Int__var1354__-to-var3832 ((Array Int var1354)) var3832)
(declare-fun cast-from-var3832-to-__Array__Int__var1354__ (var3832) (Array Int var1354))
(declare-fun var2888-init () var2888)
(declare-fun <init>/484280081 (var2888 var2490) void)
(declare-fun var904_sort/1993974856 ((Array Int var3832) var3022) void)
(declare-fun cast-from-__Array__Int__var1354__-to-__Array__Int__var3832__ ((Array Int var1354)) (Array Int var3832))
(declare-fun cast-from-var2888-to-var3022 (var2888) var3022)
(declare-fun getLength-Arr-var1354-1 ((Array Int var1354)) Int)
(declare-fun hashedName/-187409326 (var2490 String) String)
(declare-const null-var2490 var2490)
(declare-const null-String String)
(declare-const null-var1354 var1354)
(declare-const null-__Array__Int__var1354__ (Array Int var1354))
(declare-const var538 var2490) ; Statement: r11 := @this: org.hibernate.boot.model.naming.NamingHelper 
(assert (not (= var538 null-var2490)))
(declare-const var137 String) ; Statement: r13 := @parameter0: java.lang.String 
(assert (not (= var137 null-String)))
(declare-const var3739 var1354) ; Statement: r2 := @parameter1: org.hibernate.boot.model.naming.Identifier 
(assert (not (= var3739 null-var1354)))
(declare-const var1287 (Array Int var1354)) ; Statement: r7 := @parameter2: org.hibernate.boot.model.naming.Identifier[] 
(assert (not (= var1287 null-__Array__Int__var1354__)))
(define-const var605 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(define-const var3935 String String-init) ; Statement: $r1 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3935)) ; Statement: specialinvoke $r1.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3935!1 String)
(assert (= var3935!1 ""))
(assert true)
(define-const var967 String (append/672562846 var3935!1 "table`")) ; Statement: $r3 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("table`") 
(declare-const var3935!2 String)
(assert (= var3935!2 (str.++ var3935!1 "table`")))
(assert true)
(define-const var3799 String (append/-1031950772 var967 (cast-from-var1354-to-var3832 var3739))) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r2) 
(declare-const var967!1 String)
(assert (str.prefixof var967 var967!1))
(assert true)
(define-const var319 String (append/672562846 var3799 "`")) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("`") 
(declare-const var3799!1 String)
(assert (= var3799!1 (str.++ var3799 "`")))
(assert true)
(define-const var2770 String (toString/-2075883882 var319)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-1061048412 var605 var2770)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>(java.lang.String)>($r6) 
(declare-const var605!1 String)
(assert (= var605!1 var2770))
(assert true)
(define-const var978 var3832 (clone/791635256 (cast-from-__Array__Int__var1354__-to-var3832 var1287))) ; Statement: $r8 = virtualinvoke r7.<java.lang.Object: java.lang.Object clone()>() 
(define-const var2699 (Array Int var1354) (cast-from-var3832-to-__Array__Int__var1354__ var978)) ; Statement: r9 = (org.hibernate.boot.model.naming.Identifier[]) $r8 
(define-const var1282 var2888 var2888-init) ; Statement: $r10 = new org.hibernate.boot.model.naming.NamingHelper$2 
(assert true)
;(assert (<init>/484280081 var1282 var538)) ; Statement: specialinvoke $r10.<org.hibernate.boot.model.naming.NamingHelper$2: void <init>(org.hibernate.boot.model.naming.NamingHelper)>(r11) 

(declare-const var1282!1 var2888)
(declare-const var538!1 var2490)
;(assert (var904_sort/1993974856 (cast-from-__Array__Int__var1354__-to-__Array__Int__var3832__ var2699) (cast-from-var2888-to-var3022 var1282!1))) ; Statement: staticinvoke <java.util.Arrays: void sort(java.lang.Object[],java.util.Comparator)>(r9, $r10) 

(declare-const var2699!1 (Array Int var1354))
(declare-const var1282!2 var2888)
(define-const var2464 Int (getLength-Arr-var1354-1 var2699!1)) ; Statement: i0 = lengthof r9 
(define-const var3338 Int 0) ; Statement: i1 = 0 
(assert true) ; Non Conditional
 ; Statement: if i1 >= i0 goto $r12 = new java.lang.StringBuilder 
(assert (>= var3338 var2464)) ; Cond: i1 >= i0 
(define-const var1714 String String-init) ; Statement: $r12 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1714)) ; Statement: specialinvoke $r12.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1714!1 String)
(assert (= var1714!1 ""))
(assert true)
(define-const var1385 String (append/672562846 var1714!1 var137)) ; Statement: $r16 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r13) 
(declare-const var1714!2 String)
(assert (= var1714!2 (str.++ var1714!1 var137)))
(assert true)
(define-const var3669 String (toString/-2075883882 var605!1)) ; Statement: $r14 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
(define-const var2524 String (hashedName/-187409326 var538!1 var3669)) ; Statement: $r15 = virtualinvoke r11.<org.hibernate.boot.model.naming.NamingHelper: java.lang.String hashedName(java.lang.String)>($r14) 
(assert true)
(define-const var2808 String (append/672562846 var1385 var2524)) ; Statement: $r17 = virtualinvoke $r16.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r15) 
(declare-const var1385!1 String)
(assert (= var1385!1 (str.++ var1385 var2524)))
(assert true)
(define-const var3987 String (toString/-2075883882 var2808)) ; Statement: $r18 = virtualinvoke $r17.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r18 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-var1354-to-var3832=([org.hibernate.boot.model.naming.Identifier], java.lang.Object), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-1061048412=([java.lang.StringBuilder, java.lang.String], void), clone/791635256=([java.lang.Object], java.lang.Object), cast-from-__Array__Int__var1354__-to-var3832=([org.hibernate.boot.model.naming.Identifier[]], java.lang.Object), cast-from-var3832-to-__Array__Int__var1354__=([java.lang.Object], org.hibernate.boot.model.naming.Identifier[]), var2888-init=([], org.hibernate.boot.model.naming.NamingHelper$2), <init>/484280081=([org.hibernate.boot.model.naming.NamingHelper$2, org.hibernate.boot.model.naming.NamingHelper], void), var904_sort/1993974856=([java.lang.Object[], java.util.Comparator], void), cast-from-__Array__Int__var1354__-to-__Array__Int__var3832__=([org.hibernate.boot.model.naming.Identifier[]], java.lang.Object[]), cast-from-var2888-to-var3022=([org.hibernate.boot.model.naming.NamingHelper$2], java.util.Comparator), getLength-Arr-var1354-1=([org.hibernate.boot.model.naming.Identifier[]], int), hashedName/-187409326=([org.hibernate.boot.model.naming.NamingHelper, java.lang.String], java.lang.String)}
; {var2490=org.hibernate.boot.model.naming.NamingHelper, var538=r11, var137=r13, var2731=null_type, var1354=org.hibernate.boot.model.naming.Identifier, var3739=r2, var1287=r7, var605=$r0, var3935=$r1, var967=$r3, var3832=java.lang.Object, var3799=$r4, var319=$r5, var2770=$r6, var978=$r8, var2699=r9, var2888=org.hibernate.boot.model.naming.NamingHelper$2, var1282=$r10, var904=java.util.Arrays, var3022=java.util.Comparator, var2464=i0, var3338=i1, var1714=$r12, var1385=$r16, var3669=$r14, var2524=$r15, var2808=$r17, var3987=$r18}
; {org.hibernate.boot.model.naming.NamingHelper=var2490, r11=var538, r13=var137, null_type=var2731, org.hibernate.boot.model.naming.Identifier=var1354, r2=var3739, r7=var1287, $r0=var605, $r1=var3935, $r3=var967, java.lang.Object=var3832, $r4=var3799, $r5=var319, $r6=var2770, $r8=var978, r9=var2699, org.hibernate.boot.model.naming.NamingHelper$2=var2888, $r10=var1282, java.util.Arrays=var904, java.util.Comparator=var3022, i0=var2464, i1=var3338, $r12=var1714, $r16=var1385, $r14=var3669, $r15=var2524, $r17=var2808, $r18=var3987}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.StringBuilder: void <init>(java.lang.String)>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 4,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 3,"<java.lang.StringBuilder: void <init>(java.lang.String)>": 1}
;stmts r11 := @this: org.hibernate.boot.model.naming.NamingHelper;	r13 := @parameter0: java.lang.String;	r2 := @parameter1: org.hibernate.boot.model.naming.Identifier;	r7 := @parameter2: org.hibernate.boot.model.naming.Identifier[];	$r0 = new java.lang.StringBuilder;	$r1 = new java.lang.StringBuilder;	specialinvoke $r1.<java.lang.StringBuilder: void <init>()>();	$r3 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("table`");	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r2);	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("`");	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r0.<java.lang.StringBuilder: void <init>(java.lang.String)>($r6);	$r8 = virtualinvoke r7.<java.lang.Object: java.lang.Object clone()>();	r9 = (org.hibernate.boot.model.naming.Identifier[]) $r8;	$r10 = new org.hibernate.boot.model.naming.NamingHelper$2;	specialinvoke $r10.<org.hibernate.boot.model.naming.NamingHelper$2: void <init>(org.hibernate.boot.model.naming.NamingHelper)>(r11);	staticinvoke <java.util.Arrays: void sort(java.lang.Object[],java.util.Comparator)>(r9, $r10);	i0 = lengthof r9;	i1 = 0;	if i1 >= i0 goto $r12 = new java.lang.StringBuilder;	$r12 = new java.lang.StringBuilder;	specialinvoke $r12.<java.lang.StringBuilder: void <init>()>();	$r16 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r13);	$r14 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>();	$r15 = virtualinvoke r11.<org.hibernate.boot.model.naming.NamingHelper: java.lang.String hashedName(java.lang.String)>($r14);	$r17 = virtualinvoke $r16.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r15);	$r18 = virtualinvoke $r17.<java.lang.StringBuilder: java.lang.String toString()>();	return $r18
;block_num 3