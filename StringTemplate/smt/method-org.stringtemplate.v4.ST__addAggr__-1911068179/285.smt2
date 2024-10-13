(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1805 0)
(declare-sort var82 0)
(declare-sort var2927 0)
(declare-sort var1313 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun indexOf/-1209756239 ((s String) (subs String)) Int (str.indexof s subs 0))
(declare-fun var1313-init () var1313)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/875830710 (var1313 String) void)
(declare-const null-var1805 var1805)
(declare-const null-String String)
(declare-const null-__Array__Int__var2927__ (Array Int var2927))
(declare-const var3078 var1805) ; Statement: r20 := @this: org.stringtemplate.v4.ST 
(assert (not (= var3078 null-var1805)))
(declare-const var1534 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var1534 null-String)))
(declare-const var3099 (Array Int var2927)) ; Statement: r1 := @parameter1: java.lang.Object[] 
(assert (not (= var3099 null-__Array__Int__var2927__)))
(assert true)
(define-const var1234 Int (indexOf/-1209756239 var1534 ".{")) ; Statement: i0 = virtualinvoke r0.<java.lang.String: int indexOf(java.lang.String)>(".{") 
 ; Statement: if r1 == null goto $r2 = new java.lang.IllegalArgumentException 
(assert (= var3099 null-__Array__Int__var2927__)) ; Cond: r1 == null 
(define-const var3953 var1313 var1313-init) ; Statement: $r2 = new java.lang.IllegalArgumentException 
(define-const var3663 String String-init) ; Statement: $r3 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3663)) ; Statement: specialinvoke $r3.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3663!1 String)
(assert (= var3663!1 ""))
(assert true)
(define-const var2312 String (append/672562846 var3663!1 "missing values for aggregate attribute format: ")) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("missing values for aggregate attribute format: ") 
(declare-const var3663!2 String)
(assert (= var3663!2 (str.++ var3663!1 "missing values for aggregate attribute format: ")))
(assert true)
(define-const var1390 String (append/672562846 var2312 var1534)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r0) 
(declare-const var2312!1 String)
(assert (= var2312!1 (str.++ var2312 var1534)))
(assert true)
(define-const var2298 String (toString/-2075883882 var1390)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/875830710 var3953 var2298)) ; Statement: specialinvoke $r2.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r6) 

(declare-const var3953!1 var1313)
(declare-const var2298!1 String)
 ; Statement: throw $r2 
(check-sat)
(get-model)
(get-unsat-core)
; {indexOf/-1209756239=([java.lang.String, java.lang.String], int), var1313-init=([], java.lang.IllegalArgumentException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/875830710=([java.lang.IllegalArgumentException, java.lang.String], void)}
; {var1805=org.stringtemplate.v4.ST, var3078=r20, var1534=r0, var82=null_type, var2927=java.lang.Object, var3099=r1, var1234=i0, var1313=java.lang.IllegalArgumentException, var3953=$r2, var3663=$r3, var2312=$r4, var1390=$r5, var2298=$r6}
; {org.stringtemplate.v4.ST=var1805, r20=var3078, r0=var1534, null_type=var82, java.lang.Object=var2927, r1=var3099, i0=var1234, java.lang.IllegalArgumentException=var1313, $r2=var3953, $r3=var3663, $r4=var2312, $r5=var1390, $r6=var2298}
;seq <java.lang.String: int indexOf(java.lang.String)>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.String: int indexOf(java.lang.String)>": 1,"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r20 := @this: org.stringtemplate.v4.ST;	r0 := @parameter0: java.lang.String;	r1 := @parameter1: java.lang.Object[];	i0 = virtualinvoke r0.<java.lang.String: int indexOf(java.lang.String)>(".{");	if r1 == null goto $r2 = new java.lang.IllegalArgumentException;	$r2 = new java.lang.IllegalArgumentException;	$r3 = new java.lang.StringBuilder;	specialinvoke $r3.<java.lang.StringBuilder: void <init>()>();	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("missing values for aggregate attribute format: ");	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r0);	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r2.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r6);	throw $r2
;block_num 2