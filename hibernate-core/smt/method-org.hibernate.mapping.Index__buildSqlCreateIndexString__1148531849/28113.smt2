(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2032 0)
(declare-sort var3000 0)
(declare-sort var386 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/-1061048412 ((s String)) String s)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun qualifyIndexName/1384883955 (var2032) Bool)
(declare-fun Iterator_hasNext/-1669924200 (Iterator) Bool)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var2032 var2032)
(declare-const null-String String)
(declare-const null-Iterator Iterator)
(declare-const null-var386 var386)
(declare-const null-Bool Bool)
(declare-const var1264 var2032) ; Statement: r2 := @parameter0: org.hibernate.dialect.Dialect 
(assert (not (= var1264 null-var2032)))
(declare-const var2121 String) ; Statement: r3 := @parameter1: java.lang.String 
(assert (not (= var2121 null-String)))
(declare-const var234 String) ; Statement: r6 := @parameter2: java.lang.String 
(assert (not (= var234 null-String)))
(declare-const var2777 Iterator) ; Statement: r9 := @parameter3: java.util.Iterator 
(assert (not (= var2777 null-Iterator)))
(declare-const var337 var386) ; Statement: r14 := @parameter4: java.util.Map 
(assert (not (= var337 null-var386)))
(declare-const var2570 Bool) ; Statement: z0 := @parameter5: boolean 
(assert (not (= var2570 null-Bool)))
(define-const var2975 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/-1061048412 var2975 "create")) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>(java.lang.String)>("create") 
(declare-const var2975!1 String)
(assert (= var2975!1 "create"))
 ; Statement: if z0 == 0 goto $r19 = "" 
(assert (= (ite var2570 1 0) 0)) ; Cond: z0 == 0 
(define-const var1156 String "") ; Statement: $r19 = "" 
(assert true) ; Non Conditional
(assert true)
(define-const var1345 String (append/672562846 var2975!1 var1156)) ; Statement: $r1 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r19) 
(declare-const var2975!2 String)
(assert (= var2975!2 (str.++ var2975!1 var1156)))
(assert true)
(define-const var3347 String (append/672562846 var1345 " index ")) ; Statement: $r4 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" index ") 
(declare-const var1345!1 String)
(assert (= var1345!1 (str.++ var1345 " index ")))
(assert true)
(define-const var3349 Bool (qualifyIndexName/1384883955 var1264)) ; Statement: $z1 = virtualinvoke r2.<org.hibernate.dialect.Dialect: boolean qualifyIndexName()>() 
 ; Statement: if $z1 == 0 goto $r20 = staticinvoke <org.hibernate.internal.util.StringHelper: java.lang.String unqualify(java.lang.String)>(r3) 
(assert (not (= (ite var3349 1 0) 0))) ; Negate: Cond: $z1 == 0  
(define-const var2877 String var2121) ; Statement: $r20 = r3 
 ; Statement: goto [?= $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r20)] 
(assert true) ; Non Conditional
(assert true)
(define-const var2069 String (append/672562846 var3347 var2877)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r20) 
(declare-const var3347!1 String)
(assert (= var3347!1 (str.++ var3347 var2877)))
(assert true)
(define-const var2969 String (append/672562846 var2069 " on ")) ; Statement: $r7 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" on ") 
(declare-const var2069!1 String)
(assert (= var2069!1 (str.++ var2069 " on ")))
(assert true)
(define-const var3625 String (append/672562846 var2969 var234)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r6) 
(declare-const var2969!1 String)
(assert (= var2969!1 (str.++ var2969 var234)))
(assert true)
(define-const var93 String (append/672562846 var3625 " (")) ; Statement: $r18 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" (") 
(declare-const var3625!1 String)
(assert (= var3625!1 (str.++ var3625 " (")))
(assert true) ; Non Conditional
(define-const var1983 Bool (Iterator_hasNext/-1669924200 var2777)) ; Statement: $z4 = interfaceinvoke r9.<java.util.Iterator: boolean hasNext()>() 
 ; Statement: if $z4 == 0 goto virtualinvoke $r18.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(")") 
(assert (= (ite var1983 1 0) 0)) ; Cond: $z4 == 0 
(assert true)
;(assert (append/672562846 var93 ")")) ; Statement: virtualinvoke $r18.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(")") 
(declare-const var93!1 String)
(assert (= var93!1 (str.++ var93 ")")))
(assert true)
(define-const var1920 String (toString/-2075883882 var93!1)) ; Statement: $r10 = virtualinvoke $r18.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r10 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/-1061048412=([java.lang.StringBuilder, java.lang.String], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), qualifyIndexName/1384883955=([org.hibernate.dialect.Dialect], boolean), Iterator_hasNext/-1669924200=([java.util.Iterator], boolean), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var2032=org.hibernate.dialect.Dialect, var1264=r2, var2121=r3, var3000=null_type, var234=r6, var2777=r9, var386=java.util.Map, var337=r14, var2570=z0, var2975=$r0, var1156=$r19, var1345=$r1, var3347=$r4, var3349=$z1, var2877=$r20, var2069=$r5, var2969=$r7, var3625=$r8, var93=$r18, var1983=$z4, var1920=$r10}
; {org.hibernate.dialect.Dialect=var2032, r2=var1264, r3=var2121, null_type=var3000, r6=var234, r9=var2777, java.util.Map=var386, r14=var337, z0=var2570, $r0=var2975, $r19=var1156, $r1=var1345, $r4=var3347, $z1=var3349, $r20=var2877, $r5=var2069, $r7=var2969, $r8=var3625, $r18=var93, $z4=var1983, $r10=var1920}
;seq <java.lang.StringBuilder: void <init>(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 7,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r2 := @parameter0: org.hibernate.dialect.Dialect;	r3 := @parameter1: java.lang.String;	r6 := @parameter2: java.lang.String;	r9 := @parameter3: java.util.Iterator;	r14 := @parameter4: java.util.Map;	z0 := @parameter5: boolean;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>(java.lang.String)>("create");	if z0 == 0 goto $r19 = "";	$r19 = "";	$r1 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r19);	$r4 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" index ");	$z1 = virtualinvoke r2.<org.hibernate.dialect.Dialect: boolean qualifyIndexName()>();	if $z1 == 0 goto $r20 = staticinvoke <org.hibernate.internal.util.StringHelper: java.lang.String unqualify(java.lang.String)>(r3);	$r20 = r3;	goto [?= $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r20)];	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r20);	$r7 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" on ");	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r6);	$r18 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" (");	$z4 = interfaceinvoke r9.<java.util.Iterator: boolean hasNext()>();	if $z4 == 0 goto virtualinvoke $r18.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(")");	virtualinvoke $r18.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(")");	$r10 = virtualinvoke $r18.<java.lang.StringBuilder: java.lang.String toString()>();	return $r10
;block_num 7