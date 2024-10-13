(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var363 0)
(declare-sort var2056 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun var2056_qualify/-1563731603 (String String) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-String String)
(declare-const var2069 String) ; Statement: r2 := @parameter0: java.lang.String 
(assert (not (= var2069 null-String)))
(declare-const var3272 String) ; Statement: r1 := @parameter1: java.lang.String 
(assert (not (= var3272 null-String)))
(define-const var3085 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3085)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3085!1 String)
(assert (= var3085!1 ""))
(assert true)
(define-const var2487 String (append/672562846 var3085!1 "drop index ")) ; Statement: $r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("drop index ") 
(declare-const var3085!2 String)
(assert (= var3085!2 (str.++ var3085!1 "drop index ")))
(define-const var3473 String (var2056_qualify/-1563731603 var3272 var2069)) ; Statement: $r3 = staticinvoke <org.hibernate.internal.util.StringHelper: java.lang.String qualify(java.lang.String,java.lang.String)>(r1, r2) 
(assert true)
(define-const var83 String (append/672562846 var2487 var3473)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3) 
(declare-const var2487!1 String)
(assert (= var2487!1 (str.++ var2487 var3473)))
(assert true)
(define-const var3096 String (toString/-2075883882 var83)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r6 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), var2056_qualify/-1563731603=([java.lang.String, java.lang.String], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var2069=r2, var363=null_type, var3272=r1, var3085=$r0, var2487=$r4, var2056=org.hibernate.internal.util.StringHelper, var3473=$r3, var83=$r5, var3096=$r6}
; {r2=var2069, null_type=var363, r1=var3272, $r0=var3085, $r4=var2487, org.hibernate.internal.util.StringHelper=var2056, $r3=var3473, $r5=var83, $r6=var3096}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r2 := @parameter0: java.lang.String;	r1 := @parameter1: java.lang.String;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("drop index ");	$r3 = staticinvoke <org.hibernate.internal.util.StringHelper: java.lang.String qualify(java.lang.String,java.lang.String)>(r1, r2);	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3);	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>();	return $r6
;block_num 1