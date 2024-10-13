(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var846 0)
(declare-sort var3950 0)
(declare-sort var3751 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun <init>/-279557996 (var3751) void)
(declare-fun cast-from-var846-to-var3751 (var846) var3751)
(declare-fun parent/776480911 (var846) var846)
(declare-fun property/776480911 (var846) String)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun fullPath/776480911 (var846) String)
(declare-const null-var846 var846)
(declare-const null-String String)
(declare-const var1073 var846) ; Statement: r0 := @this: org.hibernate.loader.PropertyPath 
(assert (not (= var1073 null-var846)))
(declare-const var1087 var846) ; Statement: r1 := @parameter0: org.hibernate.loader.PropertyPath 
(assert (not (= var1087 null-var846)))
(declare-const var3502 String) ; Statement: r2 := @parameter1: java.lang.String 
(assert (not (= var3502 null-String)))
(assert true)
;(assert (<init>/-279557996 (cast-from-var846-to-var3751 var1073))) ; Statement: specialinvoke r0.<java.lang.Object: void <init>()>() 

(declare-const var1073!1 var846)
(declare-const var1073!2 var846)
(assert (not (= var1073!2 null-var846)))
(assert (= (parent/776480911 var1073!2) var1087)) ; Statement: r0.<org.hibernate.loader.PropertyPath: org.hibernate.loader.PropertyPath parent> = r1 
(declare-const var1073!3 var846)
(assert (not (= var1073!3 null-var846)))
(assert (= (property/776480911 var1073!3) var3502)) ; Statement: r0.<org.hibernate.loader.PropertyPath: java.lang.String property> = r2 
(define-const var1942 String "_identifierMapper") ; Statement: $r3 = "_identifierMapper" 
(assert true)
(define-const var3400 Bool (= var1942 var3502)) ; Statement: $z0 = virtualinvoke $r3.<java.lang.String: boolean equals(java.lang.Object)>(r2) 
 ; Statement: if $z0 == 0 goto (branch) 
(assert (= (ite var3400 1 0) 0)) ; Cond: $z0 == 0 
 ; Statement: if r1 == null goto r13 = "" 
(assert (= var1087 null-var846)) ; Cond: r1 == null 
(define-const var1346 String "") ; Statement: r13 = "" 
(assert true) ; Non Conditional
(define-const var74 String String-init) ; Statement: $r4 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var74)) ; Statement: specialinvoke $r4.<java.lang.StringBuilder: void <init>()>() 
(declare-const var74!1 String)
(assert (= var74!1 ""))
(assert true)
(define-const var2205 String (append/672562846 var74!1 var1346)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r13) 
(declare-const var74!2 String)
(assert (= var74!2 (str.++ var74!1 var1346)))
(assert true)
(define-const var983 String (append/672562846 var2205 var3502)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r2) 
(declare-const var2205!1 String)
(assert (= var2205!1 (str.++ var2205 var3502)))
(assert true)
(define-const var3216 String (toString/-2075883882 var983)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>() 
(declare-const var1073!4 var846)
(assert (not (= var1073!4 null-var846)))
(assert (= (fullPath/776480911 var1073!4) var3216)) ; Statement: r0.<org.hibernate.loader.PropertyPath: java.lang.String fullPath> = $r7 
(assert true) ; Non Conditional
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {<init>/-279557996=([java.lang.Object], void), cast-from-var846-to-var3751=([org.hibernate.loader.PropertyPath], java.lang.Object), parent/776480911=([org.hibernate.loader.PropertyPath], org.hibernate.loader.PropertyPath), property/776480911=([org.hibernate.loader.PropertyPath], java.lang.String), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), fullPath/776480911=([org.hibernate.loader.PropertyPath], java.lang.String)}
; {var846=org.hibernate.loader.PropertyPath, var1073=r0, var1087=r1, var3502=r2, var3950=null_type, var3751=java.lang.Object, var1942=$r3, var3400=$z0, var1346=r13, var74=$r4, var2205=$r5, var983=$r6, var3216=$r7}
; {org.hibernate.loader.PropertyPath=var846, r0=var1073, r1=var1087, r2=var3502, null_type=var3950, java.lang.Object=var3751, $r3=var1942, $z0=var3400, r13=var1346, $r4=var74, $r5=var2205, $r6=var983, $r7=var3216}
;seq <java.lang.String: boolean equals(java.lang.Object)>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1,"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: org.hibernate.loader.PropertyPath;	r1 := @parameter0: org.hibernate.loader.PropertyPath;	r2 := @parameter1: java.lang.String;	specialinvoke r0.<java.lang.Object: void <init>()>();	r0.<org.hibernate.loader.PropertyPath: org.hibernate.loader.PropertyPath parent> = r1;	r0.<org.hibernate.loader.PropertyPath: java.lang.String property> = r2;	$r3 = "_identifierMapper";	$z0 = virtualinvoke $r3.<java.lang.String: boolean equals(java.lang.Object)>(r2);	if $z0 == 0 goto (branch);	if r1 == null goto r13 = "";	r13 = "";	$r4 = new java.lang.StringBuilder;	specialinvoke $r4.<java.lang.StringBuilder: void <init>()>();	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r13);	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r2);	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>();	r0.<org.hibernate.loader.PropertyPath: java.lang.String fullPath> = $r7;	return
;block_num 5