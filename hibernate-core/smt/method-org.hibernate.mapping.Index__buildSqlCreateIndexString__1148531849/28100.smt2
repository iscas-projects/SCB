(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var709 0)
(declare-sort var3343 0)
(declare-sort var3469 0)
(declare-sort var899 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/-1061048412 ((s String)) String s)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun qualifyIndexName/1384883955 (var709) Bool)
(declare-fun var899_unqualify/-238008441 (String) String)
(declare-fun Iterator_hasNext/-1669924200 (Iterator) Bool)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var709 var709)
(declare-const null-String String)
(declare-const null-Iterator Iterator)
(declare-const null-var3469 var3469)
(declare-const null-Bool Bool)
(declare-const var2595 var709) ; Statement: r2 := @parameter0: org.hibernate.dialect.Dialect 
(assert (not (= var2595 null-var709)))
(declare-const var206 String) ; Statement: r3 := @parameter1: java.lang.String 
(assert (not (= var206 null-String)))
(declare-const var900 String) ; Statement: r6 := @parameter2: java.lang.String 
(assert (not (= var900 null-String)))
(declare-const var962 Iterator) ; Statement: r9 := @parameter3: java.util.Iterator 
(assert (not (= var962 null-Iterator)))
(declare-const var3442 var3469) ; Statement: r14 := @parameter4: java.util.Map 
(assert (not (= var3442 null-var3469)))
(declare-const var2232 Bool) ; Statement: z0 := @parameter5: boolean 
(assert (not (= var2232 null-Bool)))
(define-const var2227 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/-1061048412 var2227 "create")) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>(java.lang.String)>("create") 
(declare-const var2227!1 String)
(assert (= var2227!1 "create"))
 ; Statement: if z0 == 0 goto $r19 = "" 
(assert (not (= (ite var2232 1 0) 0))) ; Negate: Cond: z0 == 0  
(define-const var2816 String " unique") ; Statement: $r19 = " unique" 
 ; Statement: goto [?= $r1 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r19)] 
(assert true) ; Non Conditional
(assert true)
(define-const var1912 String (append/672562846 var2227!1 var2816)) ; Statement: $r1 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r19) 
(declare-const var2227!2 String)
(assert (= var2227!2 (str.++ var2227!1 var2816)))
(assert true)
(define-const var404 String (append/672562846 var1912 " index ")) ; Statement: $r4 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" index ") 
(declare-const var1912!1 String)
(assert (= var1912!1 (str.++ var1912 " index ")))
(assert true)
(define-const var830 Bool (qualifyIndexName/1384883955 var2595)) ; Statement: $z1 = virtualinvoke r2.<org.hibernate.dialect.Dialect: boolean qualifyIndexName()>() 
 ; Statement: if $z1 == 0 goto $r20 = staticinvoke <org.hibernate.internal.util.StringHelper: java.lang.String unqualify(java.lang.String)>(r3) 
(assert (= (ite var830 1 0) 0)) ; Cond: $z1 == 0 
(define-const var804 String (var899_unqualify/-238008441 var206)) ; Statement: $r20 = staticinvoke <org.hibernate.internal.util.StringHelper: java.lang.String unqualify(java.lang.String)>(r3) 
(assert true) ; Non Conditional
(assert true)
(define-const var3627 String (append/672562846 var404 var804)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r20) 
(declare-const var404!1 String)
(assert (= var404!1 (str.++ var404 var804)))
(assert true)
(define-const var376 String (append/672562846 var3627 " on ")) ; Statement: $r7 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" on ") 
(declare-const var3627!1 String)
(assert (= var3627!1 (str.++ var3627 " on ")))
(assert true)
(define-const var1599 String (append/672562846 var376 var900)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r6) 
(declare-const var376!1 String)
(assert (= var376!1 (str.++ var376 var900)))
(assert true)
(define-const var91 String (append/672562846 var1599 " (")) ; Statement: $r18 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" (") 
(declare-const var1599!1 String)
(assert (= var1599!1 (str.++ var1599 " (")))
(assert true) ; Non Conditional
(define-const var2048 Bool (Iterator_hasNext/-1669924200 var962)) ; Statement: $z4 = interfaceinvoke r9.<java.util.Iterator: boolean hasNext()>() 
 ; Statement: if $z4 == 0 goto virtualinvoke $r18.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(")") 
(assert (= (ite var2048 1 0) 0)) ; Cond: $z4 == 0 
(assert true)
;(assert (append/672562846 var91 ")")) ; Statement: virtualinvoke $r18.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(")") 
(declare-const var91!1 String)
(assert (= var91!1 (str.++ var91 ")")))
(assert true)
(define-const var569 String (toString/-2075883882 var91!1)) ; Statement: $r10 = virtualinvoke $r18.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r10 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/-1061048412=([java.lang.StringBuilder, java.lang.String], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), qualifyIndexName/1384883955=([org.hibernate.dialect.Dialect], boolean), var899_unqualify/-238008441=([java.lang.String], java.lang.String), Iterator_hasNext/-1669924200=([java.util.Iterator], boolean), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var709=org.hibernate.dialect.Dialect, var2595=r2, var206=r3, var3343=null_type, var900=r6, var962=r9, var3469=java.util.Map, var3442=r14, var2232=z0, var2227=$r0, var2816=$r19, var1912=$r1, var404=$r4, var830=$z1, var899=org.hibernate.internal.util.StringHelper, var804=$r20, var3627=$r5, var376=$r7, var1599=$r8, var91=$r18, var2048=$z4, var569=$r10}
; {org.hibernate.dialect.Dialect=var709, r2=var2595, r3=var206, null_type=var3343, r6=var900, r9=var962, java.util.Map=var3469, r14=var3442, z0=var2232, $r0=var2227, $r19=var2816, $r1=var1912, $r4=var404, $z1=var830, org.hibernate.internal.util.StringHelper=var899, $r20=var804, $r5=var3627, $r7=var376, $r8=var1599, $r18=var91, $z4=var2048, $r10=var569}
;seq <java.lang.StringBuilder: void <init>(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 7,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r2 := @parameter0: org.hibernate.dialect.Dialect;	r3 := @parameter1: java.lang.String;	r6 := @parameter2: java.lang.String;	r9 := @parameter3: java.util.Iterator;	r14 := @parameter4: java.util.Map;	z0 := @parameter5: boolean;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>(java.lang.String)>("create");	if z0 == 0 goto $r19 = "";	$r19 = " unique";	goto [?= $r1 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r19)];	$r1 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r19);	$r4 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" index ");	$z1 = virtualinvoke r2.<org.hibernate.dialect.Dialect: boolean qualifyIndexName()>();	if $z1 == 0 goto $r20 = staticinvoke <org.hibernate.internal.util.StringHelper: java.lang.String unqualify(java.lang.String)>(r3);	$r20 = staticinvoke <org.hibernate.internal.util.StringHelper: java.lang.String unqualify(java.lang.String)>(r3);	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r20);	$r7 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" on ");	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r6);	$r18 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" (");	$z4 = interfaceinvoke r9.<java.util.Iterator: boolean hasNext()>();	if $z4 == 0 goto virtualinvoke $r18.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(")");	virtualinvoke $r18.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(")");	$r10 = virtualinvoke $r18.<java.lang.StringBuilder: java.lang.String toString()>();	return $r10
;block_num 7