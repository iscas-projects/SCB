(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3217 0)
(declare-sort var2437 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(declare-fun <init>/543593434 (String Int) void)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun quote/1287717023 (var3217 String) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var3217 var3217)
(declare-const null-String String)
(declare-const var549 var3217) ; Statement: r1 := @this: org.hibernate.dialect.Dialect 
(assert (not (= var549 null-var3217)))
(declare-const var1494 String) ; Statement: r2 := @parameter0: java.lang.String 
(assert (not (= var1494 null-String)))
(declare-const var3159 String) ; Statement: r6 := @parameter1: java.lang.String 
(assert (not (= var3159 null-String)))
(define-const var1772 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/543593434 var1772 30)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>(int)>(30) 

(declare-const var1772!1 String)
(declare-const var90 Int)
(assert true)
(define-const var2526 String (append/672562846 var1772!1 " add constraint ")) ; Statement: $r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" add constraint ") 
(declare-const var1772!2 String)
(assert (= var1772!2 (str.++ var1772!1 " add constraint ")))
(assert true)
(define-const var2986 String (quote/1287717023 var549 var1494)) ; Statement: $r3 = virtualinvoke r1.<org.hibernate.dialect.Dialect: java.lang.String quote(java.lang.String)>(r2) 
(assert true)
(define-const var564 String (append/672562846 var2526 var2986)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3) 
(declare-const var2526!1 String)
(assert (= var2526!1 (str.++ var2526 var2986)))
(assert true)
(define-const var1263 String (append/672562846 var564 " ")) ; Statement: $r7 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" ") 
(declare-const var564!1 String)
(assert (= var564!1 (str.++ var564 " ")))
(assert true)
(define-const var3054 String (append/672562846 var1263 var3159)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r6) 
(declare-const var1263!1 String)
(assert (= var1263!1 (str.++ var1263 var3159)))
(assert true)
(define-const var3528 String (toString/-2075883882 var3054)) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r9 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/543593434=([java.lang.StringBuilder, int], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), quote/1287717023=([org.hibernate.dialect.Dialect, java.lang.String], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var3217=org.hibernate.dialect.Dialect, var549=r1, var1494=r2, var2437=null_type, var3159=r6, var1772=$r0, var90=30, var2526=$r4, var2986=$r3, var564=$r5, var1263=$r7, var3054=$r8, var3528=$r9}
; {org.hibernate.dialect.Dialect=var3217, r1=var549, r2=var1494, null_type=var2437, r6=var3159, $r0=var1772, 30=var90, $r4=var2526, $r3=var2986, $r5=var564, $r7=var1263, $r8=var3054, $r9=var3528}
;seq <java.lang.StringBuilder: void <init>(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>(int)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 4,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: org.hibernate.dialect.Dialect;	r2 := @parameter0: java.lang.String;	r6 := @parameter1: java.lang.String;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>(int)>(30);	$r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" add constraint ");	$r3 = virtualinvoke r1.<org.hibernate.dialect.Dialect: java.lang.String quote(java.lang.String)>(r2);	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3);	$r7 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" ");	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r6);	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>();	return $r9
;block_num 1