(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var539 0)
(declare-sort var3458 0)
(declare-sort var2375 0)
(declare-sort var116 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/-1061048412 ((s String)) String s)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun qualifyIndexName/1384883955 (var539) Bool)
(declare-fun var116_unqualify/-238008441 (String) String)
(declare-fun Iterator_hasNext/-1669924200 (Iterator) Bool)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var539 var539)
(declare-const null-String String)
(declare-const null-Iterator Iterator)
(declare-const null-var2375 var2375)
(declare-const null-Bool Bool)
(declare-const var2370 var539) ; Statement: r2 := @parameter0: org.hibernate.dialect.Dialect 
(assert (not (= var2370 null-var539)))
(declare-const var980 String) ; Statement: r3 := @parameter1: java.lang.String 
(assert (not (= var980 null-String)))
(declare-const var2112 String) ; Statement: r6 := @parameter2: java.lang.String 
(assert (not (= var2112 null-String)))
(declare-const var3227 Iterator) ; Statement: r9 := @parameter3: java.util.Iterator 
(assert (not (= var3227 null-Iterator)))
(declare-const var3190 var2375) ; Statement: r14 := @parameter4: java.util.Map 
(assert (not (= var3190 null-var2375)))
(declare-const var2288 Bool) ; Statement: z0 := @parameter5: boolean 
(assert (not (= var2288 null-Bool)))
(define-const var3047 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/-1061048412 var3047 "create")) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>(java.lang.String)>("create") 
(declare-const var3047!1 String)
(assert (= var3047!1 "create"))
 ; Statement: if z0 == 0 goto $r19 = "" 
(assert (= (ite var2288 1 0) 0)) ; Cond: z0 == 0 
(define-const var3741 String "") ; Statement: $r19 = "" 
(assert true) ; Non Conditional
(assert true)
(define-const var2790 String (append/672562846 var3047!1 var3741)) ; Statement: $r1 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r19) 
(declare-const var3047!2 String)
(assert (= var3047!2 (str.++ var3047!1 var3741)))
(assert true)
(define-const var1479 String (append/672562846 var2790 " index ")) ; Statement: $r4 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" index ") 
(declare-const var2790!1 String)
(assert (= var2790!1 (str.++ var2790 " index ")))
(assert true)
(define-const var516 Bool (qualifyIndexName/1384883955 var2370)) ; Statement: $z1 = virtualinvoke r2.<org.hibernate.dialect.Dialect: boolean qualifyIndexName()>() 
 ; Statement: if $z1 == 0 goto $r20 = staticinvoke <org.hibernate.internal.util.StringHelper: java.lang.String unqualify(java.lang.String)>(r3) 
(assert (= (ite var516 1 0) 0)) ; Cond: $z1 == 0 
(define-const var261 String (var116_unqualify/-238008441 var980)) ; Statement: $r20 = staticinvoke <org.hibernate.internal.util.StringHelper: java.lang.String unqualify(java.lang.String)>(r3) 
(assert true) ; Non Conditional
(assert true)
(define-const var397 String (append/672562846 var1479 var261)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r20) 
(declare-const var1479!1 String)
(assert (= var1479!1 (str.++ var1479 var261)))
(assert true)
(define-const var3867 String (append/672562846 var397 " on ")) ; Statement: $r7 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" on ") 
(declare-const var397!1 String)
(assert (= var397!1 (str.++ var397 " on ")))
(assert true)
(define-const var2065 String (append/672562846 var3867 var2112)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r6) 
(declare-const var3867!1 String)
(assert (= var3867!1 (str.++ var3867 var2112)))
(assert true)
(define-const var409 String (append/672562846 var2065 " (")) ; Statement: $r18 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" (") 
(declare-const var2065!1 String)
(assert (= var2065!1 (str.++ var2065 " (")))
(assert true) ; Non Conditional
(define-const var1457 Bool (Iterator_hasNext/-1669924200 var3227)) ; Statement: $z4 = interfaceinvoke r9.<java.util.Iterator: boolean hasNext()>() 
 ; Statement: if $z4 == 0 goto virtualinvoke $r18.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(")") 
(assert (= (ite var1457 1 0) 0)) ; Cond: $z4 == 0 
(assert true)
;(assert (append/672562846 var409 ")")) ; Statement: virtualinvoke $r18.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(")") 
(declare-const var409!1 String)
(assert (= var409!1 (str.++ var409 ")")))
(assert true)
(define-const var53 String (toString/-2075883882 var409!1)) ; Statement: $r10 = virtualinvoke $r18.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r10 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/-1061048412=([java.lang.StringBuilder, java.lang.String], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), qualifyIndexName/1384883955=([org.hibernate.dialect.Dialect], boolean), var116_unqualify/-238008441=([java.lang.String], java.lang.String), Iterator_hasNext/-1669924200=([java.util.Iterator], boolean), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var539=org.hibernate.dialect.Dialect, var2370=r2, var980=r3, var3458=null_type, var2112=r6, var3227=r9, var2375=java.util.Map, var3190=r14, var2288=z0, var3047=$r0, var3741=$r19, var2790=$r1, var1479=$r4, var516=$z1, var116=org.hibernate.internal.util.StringHelper, var261=$r20, var397=$r5, var3867=$r7, var2065=$r8, var409=$r18, var1457=$z4, var53=$r10}
; {org.hibernate.dialect.Dialect=var539, r2=var2370, r3=var980, null_type=var3458, r6=var2112, r9=var3227, java.util.Map=var2375, r14=var3190, z0=var2288, $r0=var3047, $r19=var3741, $r1=var2790, $r4=var1479, $z1=var516, org.hibernate.internal.util.StringHelper=var116, $r20=var261, $r5=var397, $r7=var3867, $r8=var2065, $r18=var409, $z4=var1457, $r10=var53}
;seq <java.lang.StringBuilder: void <init>(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 7,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r2 := @parameter0: org.hibernate.dialect.Dialect;	r3 := @parameter1: java.lang.String;	r6 := @parameter2: java.lang.String;	r9 := @parameter3: java.util.Iterator;	r14 := @parameter4: java.util.Map;	z0 := @parameter5: boolean;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>(java.lang.String)>("create");	if z0 == 0 goto $r19 = "";	$r19 = "";	$r1 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r19);	$r4 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" index ");	$z1 = virtualinvoke r2.<org.hibernate.dialect.Dialect: boolean qualifyIndexName()>();	if $z1 == 0 goto $r20 = staticinvoke <org.hibernate.internal.util.StringHelper: java.lang.String unqualify(java.lang.String)>(r3);	$r20 = staticinvoke <org.hibernate.internal.util.StringHelper: java.lang.String unqualify(java.lang.String)>(r3);	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r20);	$r7 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" on ");	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r6);	$r18 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" (");	$z4 = interfaceinvoke r9.<java.util.Iterator: boolean hasNext()>();	if $z4 == 0 goto virtualinvoke $r18.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(")");	virtualinvoke $r18.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(")");	$r10 = virtualinvoke $r18.<java.lang.StringBuilder: java.lang.String toString()>();	return $r10
;block_num 7