(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2097 0)
(declare-sort var3819 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-1423672300 (var2097 String String String) void)
(declare-const null-var2097 var2097)
(declare-const null-String String)
(declare-const var3934 var2097) ; Statement: r0 := @this: org.hibernate.DuplicateMappingException 
(assert (not (= var3934 null-var2097)))
(declare-const var3034 String) ; Statement: r2 := @parameter0: java.lang.String 
(assert (not (= var3034 null-String)))
(declare-const var3613 String) ; Statement: r5 := @parameter1: java.lang.String 
(assert (not (= var3613 null-String)))
(define-const var3356 String String-init) ; Statement: $r1 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3356)) ; Statement: specialinvoke $r1.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3356!1 String)
(assert (= var3356!1 ""))
(assert true)
(define-const var1021 String (append/672562846 var3356!1 "Duplicate ")) ; Statement: $r3 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Duplicate ") 
(declare-const var3356!2 String)
(assert (= var3356!2 (str.++ var3356!1 "Duplicate ")))
(assert true)
(define-const var3300 String (append/672562846 var1021 var3034)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r2) 
(declare-const var1021!1 String)
(assert (= var1021!1 (str.++ var1021 var3034)))
(assert true)
(define-const var1977 String (append/672562846 var3300 " mapping ")) ; Statement: $r6 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" mapping ") 
(declare-const var3300!1 String)
(assert (= var3300!1 (str.++ var3300 " mapping ")))
(assert true)
(define-const var3215 String (append/672562846 var1977 var3613)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r5) 
(declare-const var1977!1 String)
(assert (= var1977!1 (str.++ var1977 var3613)))
(assert true)
(define-const var3576 String (toString/-2075883882 var3215)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-1423672300 var3934 var3576 var3034 var3613)) ; Statement: specialinvoke r0.<org.hibernate.DuplicateMappingException: void <init>(java.lang.String,java.lang.String,java.lang.String)>($r8, r2, r5) 

(declare-const var3934!1 var2097)
(declare-const var3576!1 String)
(declare-const var3034!1 String)
(declare-const var3613!1 String)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-1423672300=([org.hibernate.DuplicateMappingException, java.lang.String, java.lang.String, java.lang.String], void)}
; {var2097=org.hibernate.DuplicateMappingException, var3934=r0, var3034=r2, var3819=null_type, var3613=r5, var3356=$r1, var1021=$r3, var3300=$r4, var1977=$r6, var3215=$r7, var3576=$r8}
; {org.hibernate.DuplicateMappingException=var2097, r0=var3934, r2=var3034, null_type=var3819, r5=var3613, $r1=var3356, $r3=var1021, $r4=var3300, $r6=var1977, $r7=var3215, $r8=var3576}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 4,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: org.hibernate.DuplicateMappingException;	r2 := @parameter0: java.lang.String;	r5 := @parameter1: java.lang.String;	$r1 = new java.lang.StringBuilder;	specialinvoke $r1.<java.lang.StringBuilder: void <init>()>();	$r3 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Duplicate ");	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r2);	$r6 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" mapping ");	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r5);	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke r0.<org.hibernate.DuplicateMappingException: void <init>(java.lang.String,java.lang.String,java.lang.String)>($r8, r2, r5);	return
;block_num 1