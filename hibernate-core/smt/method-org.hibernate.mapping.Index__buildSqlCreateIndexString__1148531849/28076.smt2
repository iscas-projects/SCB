(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2813 0)
(declare-sort var3909 0)
(declare-sort var2956 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/-1061048412 ((s String)) String s)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun qualifyIndexName/1384883955 (var2813) Bool)
(declare-fun Iterator_hasNext/-1669924200 (Iterator) Bool)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var2813 var2813)
(declare-const null-String String)
(declare-const null-Iterator Iterator)
(declare-const null-var2956 var2956)
(declare-const null-Bool Bool)
(declare-const var1306 var2813) ; Statement: r2 := @parameter0: org.hibernate.dialect.Dialect 
(assert (not (= var1306 null-var2813)))
(declare-const var1682 String) ; Statement: r3 := @parameter1: java.lang.String 
(assert (not (= var1682 null-String)))
(declare-const var1077 String) ; Statement: r6 := @parameter2: java.lang.String 
(assert (not (= var1077 null-String)))
(declare-const var3776 Iterator) ; Statement: r9 := @parameter3: java.util.Iterator 
(assert (not (= var3776 null-Iterator)))
(declare-const var3294 var2956) ; Statement: r14 := @parameter4: java.util.Map 
(assert (not (= var3294 null-var2956)))
(declare-const var1526 Bool) ; Statement: z0 := @parameter5: boolean 
(assert (not (= var1526 null-Bool)))
(define-const var1341 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/-1061048412 var1341 "create")) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>(java.lang.String)>("create") 
(declare-const var1341!1 String)
(assert (= var1341!1 "create"))
 ; Statement: if z0 == 0 goto $r19 = "" 
(assert (not (= (ite var1526 1 0) 0))) ; Negate: Cond: z0 == 0  
(define-const var561 String " unique") ; Statement: $r19 = " unique" 
 ; Statement: goto [?= $r1 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r19)] 
(assert true) ; Non Conditional
(assert true)
(define-const var386 String (append/672562846 var1341!1 var561)) ; Statement: $r1 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r19) 
(declare-const var1341!2 String)
(assert (= var1341!2 (str.++ var1341!1 var561)))
(assert true)
(define-const var3074 String (append/672562846 var386 " index ")) ; Statement: $r4 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" index ") 
(declare-const var386!1 String)
(assert (= var386!1 (str.++ var386 " index ")))
(assert true)
(define-const var310 Bool (qualifyIndexName/1384883955 var1306)) ; Statement: $z1 = virtualinvoke r2.<org.hibernate.dialect.Dialect: boolean qualifyIndexName()>() 
 ; Statement: if $z1 == 0 goto $r20 = staticinvoke <org.hibernate.internal.util.StringHelper: java.lang.String unqualify(java.lang.String)>(r3) 
(assert (not (= (ite var310 1 0) 0))) ; Negate: Cond: $z1 == 0  
(define-const var796 String var1682) ; Statement: $r20 = r3 
 ; Statement: goto [?= $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r20)] 
(assert true) ; Non Conditional
(assert true)
(define-const var895 String (append/672562846 var3074 var796)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r20) 
(declare-const var3074!1 String)
(assert (= var3074!1 (str.++ var3074 var796)))
(assert true)
(define-const var1468 String (append/672562846 var895 " on ")) ; Statement: $r7 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" on ") 
(declare-const var895!1 String)
(assert (= var895!1 (str.++ var895 " on ")))
(assert true)
(define-const var3434 String (append/672562846 var1468 var1077)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r6) 
(declare-const var1468!1 String)
(assert (= var1468!1 (str.++ var1468 var1077)))
(assert true)
(define-const var3945 String (append/672562846 var3434 " (")) ; Statement: $r18 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" (") 
(declare-const var3434!1 String)
(assert (= var3434!1 (str.++ var3434 " (")))
(assert true) ; Non Conditional
(define-const var1456 Bool (Iterator_hasNext/-1669924200 var3776)) ; Statement: $z4 = interfaceinvoke r9.<java.util.Iterator: boolean hasNext()>() 
 ; Statement: if $z4 == 0 goto virtualinvoke $r18.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(")") 
(assert (= (ite var1456 1 0) 0)) ; Cond: $z4 == 0 
(assert true)
;(assert (append/672562846 var3945 ")")) ; Statement: virtualinvoke $r18.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(")") 
(declare-const var3945!1 String)
(assert (= var3945!1 (str.++ var3945 ")")))
(assert true)
(define-const var738 String (toString/-2075883882 var3945!1)) ; Statement: $r10 = virtualinvoke $r18.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r10 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/-1061048412=([java.lang.StringBuilder, java.lang.String], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), qualifyIndexName/1384883955=([org.hibernate.dialect.Dialect], boolean), Iterator_hasNext/-1669924200=([java.util.Iterator], boolean), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var2813=org.hibernate.dialect.Dialect, var1306=r2, var1682=r3, var3909=null_type, var1077=r6, var3776=r9, var2956=java.util.Map, var3294=r14, var1526=z0, var1341=$r0, var561=$r19, var386=$r1, var3074=$r4, var310=$z1, var796=$r20, var895=$r5, var1468=$r7, var3434=$r8, var3945=$r18, var1456=$z4, var738=$r10}
; {org.hibernate.dialect.Dialect=var2813, r2=var1306, r3=var1682, null_type=var3909, r6=var1077, r9=var3776, java.util.Map=var2956, r14=var3294, z0=var1526, $r0=var1341, $r19=var561, $r1=var386, $r4=var3074, $z1=var310, $r20=var796, $r5=var895, $r7=var1468, $r8=var3434, $r18=var3945, $z4=var1456, $r10=var738}
;seq <java.lang.StringBuilder: void <init>(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 7,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r2 := @parameter0: org.hibernate.dialect.Dialect;	r3 := @parameter1: java.lang.String;	r6 := @parameter2: java.lang.String;	r9 := @parameter3: java.util.Iterator;	r14 := @parameter4: java.util.Map;	z0 := @parameter5: boolean;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>(java.lang.String)>("create");	if z0 == 0 goto $r19 = "";	$r19 = " unique";	goto [?= $r1 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r19)];	$r1 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r19);	$r4 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" index ");	$z1 = virtualinvoke r2.<org.hibernate.dialect.Dialect: boolean qualifyIndexName()>();	if $z1 == 0 goto $r20 = staticinvoke <org.hibernate.internal.util.StringHelper: java.lang.String unqualify(java.lang.String)>(r3);	$r20 = r3;	goto [?= $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r20)];	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r20);	$r7 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" on ");	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r6);	$r18 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" (");	$z4 = interfaceinvoke r9.<java.util.Iterator: boolean hasNext()>();	if $z4 == 0 goto virtualinvoke $r18.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(")");	virtualinvoke $r18.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(")");	$r10 = virtualinvoke $r18.<java.lang.StringBuilder: java.lang.String toString()>();	return $r10
;block_num 7