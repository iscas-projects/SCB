(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1682 0)
(declare-sort var118 0)
(declare-sort var3896 0)
(declare-sort var1789 0)
(declare-sort var1463 0)
(declare-sort var336 0)
(declare-sort var537 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1031950772 (String var1789) String)
(declare-fun cast-from-var3896-to-var1789 (var3896) var1789)
(declare-fun clone/791635256 (var1789) var1789)
(declare-fun cast-from-__Array__Int__var3896__-to-var1789 ((Array Int var3896)) var1789)
(declare-fun cast-from-var1789-to-__Array__Int__var3896__ (var1789) (Array Int var3896))
(declare-fun var1463-init () var1463)
(declare-fun <init>/1650976400 (var1463 var1682) void)
(declare-fun var336_sort/1993974856 ((Array Int var1789) var537) void)
(declare-fun cast-from-__Array__Int__var3896__-to-__Array__Int__var1789__ ((Array Int var3896)) (Array Int var1789))
(declare-fun cast-from-var1463-to-var537 (var1463) var537)
(declare-fun getLength-Arr-var3896-1 ((Array Int var3896)) Int)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun hashedName/-187409326 (var1682 String) String)
(declare-const null-var1682 var1682)
(declare-const null-String String)
(declare-const null-var3896 var3896)
(declare-const null-__Array__Int__var3896__ (Array Int var3896))
(declare-const var2917 var1682) ; Statement: r13 := @this: org.hibernate.boot.model.naming.NamingHelper 
(assert (not (= var2917 null-var1682)))
(declare-const var1138 String) ; Statement: r15 := @parameter0: java.lang.String 
(assert (not (= var1138 null-String)))
(declare-const var3252 var3896) ; Statement: r1 := @parameter1: org.hibernate.boot.model.naming.Identifier 
(assert (not (= var3252 null-var3896)))
(declare-const var3021 var3896) ; Statement: r5 := @parameter2: org.hibernate.boot.model.naming.Identifier 
(assert (not (= var3021 null-var3896)))
(declare-const var3980 (Array Int var3896)) ; Statement: r9 := @parameter3: org.hibernate.boot.model.naming.Identifier[] 
(assert (not (= var3980 null-__Array__Int__var3896__)))
(define-const var188 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var188)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var188!1 String)
(assert (= var188!1 ""))
(assert true)
(define-const var869 String (append/672562846 var188!1 "table`")) ; Statement: $r2 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("table`") 
(declare-const var188!2 String)
(assert (= var188!2 (str.++ var188!1 "table`")))
(assert true)
(define-const var3669 String (append/-1031950772 var869 (cast-from-var3896-to-var1789 var3252))) ; Statement: $r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r1) 
(declare-const var869!1 String)
(assert (str.prefixof var869 var869!1))
(assert true)
(define-const var1063 String (append/672562846 var3669 "`")) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("`") 
(declare-const var3669!1 String)
(assert (= var3669!1 (str.++ var3669 "`")))
(assert true)
(define-const var726 String (append/672562846 var1063 "references`")) ; Statement: $r6 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("references`") 
(declare-const var1063!1 String)
(assert (= var1063!1 (str.++ var1063 "references`")))
(assert true)
(define-const var539 String (append/-1031950772 var726 (cast-from-var3896-to-var1789 var3021))) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r5) 
(declare-const var726!1 String)
(assert (str.prefixof var726 var726!1))
(assert true)
(define-const var2895 String (append/672562846 var539 "`")) ; Statement: r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("`") 
(declare-const var539!1 String)
(assert (= var539!1 (str.++ var539 "`")))
(assert true)
(define-const var3288 var1789 (clone/791635256 (cast-from-__Array__Int__var3896__-to-var1789 var3980))) ; Statement: $r10 = virtualinvoke r9.<java.lang.Object: java.lang.Object clone()>() 
(define-const var1461 (Array Int var3896) (cast-from-var1789-to-__Array__Int__var3896__ var3288)) ; Statement: r11 = (org.hibernate.boot.model.naming.Identifier[]) $r10 
(define-const var1019 var1463 var1463-init) ; Statement: $r12 = new org.hibernate.boot.model.naming.NamingHelper$1 
(assert true)
;(assert (<init>/1650976400 var1019 var2917)) ; Statement: specialinvoke $r12.<org.hibernate.boot.model.naming.NamingHelper$1: void <init>(org.hibernate.boot.model.naming.NamingHelper)>(r13) 

(declare-const var1019!1 var1463)
(declare-const var2917!1 var1682)
;(assert (var336_sort/1993974856 (cast-from-__Array__Int__var3896__-to-__Array__Int__var1789__ var1461) (cast-from-var1463-to-var537 var1019!1))) ; Statement: staticinvoke <java.util.Arrays: void sort(java.lang.Object[],java.util.Comparator)>(r11, $r12) 

(declare-const var1461!1 (Array Int var3896))
(declare-const var1019!2 var1463)
(define-const var1870 Int (getLength-Arr-var3896-1 var1461!1)) ; Statement: i0 = lengthof r11 
(define-const var2042 Int 0) ; Statement: i1 = 0 
(assert true) ; Non Conditional
 ; Statement: if i1 >= i0 goto $r14 = new java.lang.StringBuilder 
(assert (>= var2042 var1870)) ; Cond: i1 >= i0 
(define-const var3324 String String-init) ; Statement: $r14 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3324)) ; Statement: specialinvoke $r14.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3324!1 String)
(assert (= var3324!1 ""))
(assert true)
(define-const var769 String (append/672562846 var3324!1 var1138)) ; Statement: $r18 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r15) 
(declare-const var3324!2 String)
(assert (= var3324!2 (str.++ var3324!1 var1138)))
(assert true)
(define-const var2850 String (toString/-2075883882 var2895)) ; Statement: $r16 = virtualinvoke r8.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
(define-const var2573 String (hashedName/-187409326 var2917!1 var2850)) ; Statement: $r17 = virtualinvoke r13.<org.hibernate.boot.model.naming.NamingHelper: java.lang.String hashedName(java.lang.String)>($r16) 
(assert true)
(define-const var2515 String (append/672562846 var769 var2573)) ; Statement: $r19 = virtualinvoke $r18.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r17) 
(declare-const var769!1 String)
(assert (= var769!1 (str.++ var769 var2573)))
(assert true)
(define-const var3548 String (toString/-2075883882 var2515)) ; Statement: $r20 = virtualinvoke $r19.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r20 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-var3896-to-var1789=([org.hibernate.boot.model.naming.Identifier], java.lang.Object), clone/791635256=([java.lang.Object], java.lang.Object), cast-from-__Array__Int__var3896__-to-var1789=([org.hibernate.boot.model.naming.Identifier[]], java.lang.Object), cast-from-var1789-to-__Array__Int__var3896__=([java.lang.Object], org.hibernate.boot.model.naming.Identifier[]), var1463-init=([], org.hibernate.boot.model.naming.NamingHelper$1), <init>/1650976400=([org.hibernate.boot.model.naming.NamingHelper$1, org.hibernate.boot.model.naming.NamingHelper], void), var336_sort/1993974856=([java.lang.Object[], java.util.Comparator], void), cast-from-__Array__Int__var3896__-to-__Array__Int__var1789__=([org.hibernate.boot.model.naming.Identifier[]], java.lang.Object[]), cast-from-var1463-to-var537=([org.hibernate.boot.model.naming.NamingHelper$1], java.util.Comparator), getLength-Arr-var3896-1=([org.hibernate.boot.model.naming.Identifier[]], int), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), hashedName/-187409326=([org.hibernate.boot.model.naming.NamingHelper, java.lang.String], java.lang.String)}
; {var1682=org.hibernate.boot.model.naming.NamingHelper, var2917=r13, var1138=r15, var118=null_type, var3896=org.hibernate.boot.model.naming.Identifier, var3252=r1, var3021=r5, var3980=r9, var188=$r0, var869=$r2, var1789=java.lang.Object, var3669=$r3, var1063=$r4, var726=$r6, var539=$r7, var2895=r8, var3288=$r10, var1461=r11, var1463=org.hibernate.boot.model.naming.NamingHelper$1, var1019=$r12, var336=java.util.Arrays, var537=java.util.Comparator, var1870=i0, var2042=i1, var3324=$r14, var769=$r18, var2850=$r16, var2573=$r17, var2515=$r19, var3548=$r20}
; {org.hibernate.boot.model.naming.NamingHelper=var1682, r13=var2917, r15=var1138, null_type=var118, org.hibernate.boot.model.naming.Identifier=var3896, r1=var3252, r5=var3021, r9=var3980, $r0=var188, $r2=var869, java.lang.Object=var1789, $r3=var3669, $r4=var1063, $r6=var726, $r7=var539, r8=var2895, $r10=var3288, r11=var1461, org.hibernate.boot.model.naming.NamingHelper$1=var1463, $r12=var1019, java.util.Arrays=var336, java.util.Comparator=var537, i0=var1870, i1=var2042, $r14=var3324, $r18=var769, $r16=var2850, $r17=var2573, $r19=var2515, $r20=var3548}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 6,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 2}
;stmts r13 := @this: org.hibernate.boot.model.naming.NamingHelper;	r15 := @parameter0: java.lang.String;	r1 := @parameter1: org.hibernate.boot.model.naming.Identifier;	r5 := @parameter2: org.hibernate.boot.model.naming.Identifier;	r9 := @parameter3: org.hibernate.boot.model.naming.Identifier[];	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r2 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("table`");	$r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r1);	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("`");	$r6 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("references`");	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r5);	r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("`");	$r10 = virtualinvoke r9.<java.lang.Object: java.lang.Object clone()>();	r11 = (org.hibernate.boot.model.naming.Identifier[]) $r10;	$r12 = new org.hibernate.boot.model.naming.NamingHelper$1;	specialinvoke $r12.<org.hibernate.boot.model.naming.NamingHelper$1: void <init>(org.hibernate.boot.model.naming.NamingHelper)>(r13);	staticinvoke <java.util.Arrays: void sort(java.lang.Object[],java.util.Comparator)>(r11, $r12);	i0 = lengthof r11;	i1 = 0;	if i1 >= i0 goto $r14 = new java.lang.StringBuilder;	$r14 = new java.lang.StringBuilder;	specialinvoke $r14.<java.lang.StringBuilder: void <init>()>();	$r18 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r15);	$r16 = virtualinvoke r8.<java.lang.StringBuilder: java.lang.String toString()>();	$r17 = virtualinvoke r13.<org.hibernate.boot.model.naming.NamingHelper: java.lang.String hashedName(java.lang.String)>($r16);	$r19 = virtualinvoke $r18.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r17);	$r20 = virtualinvoke $r19.<java.lang.StringBuilder: java.lang.String toString()>();	return $r20
;block_num 3