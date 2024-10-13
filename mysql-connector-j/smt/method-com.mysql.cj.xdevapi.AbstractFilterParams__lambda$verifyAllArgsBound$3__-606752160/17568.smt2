(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1063 0)
(declare-sort var2501 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var2501-init () var2501)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/302830823 (var2501 String) void)
(declare-const null-String String)
(declare-const var2191 String) ; Statement: r2 := @parameter0: java.lang.String 
(assert (not (= var2191 null-String)))
(define-const var277 var2501 var2501-init) ; Statement: $r0 = new com.mysql.cj.exceptions.WrongArgumentException 
(define-const var3230 String String-init) ; Statement: $r1 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3230)) ; Statement: specialinvoke $r1.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3230!1 String)
(assert (= var3230!1 ""))
(assert true)
(define-const var418 String (append/672562846 var3230!1 "Placeholder \u0027")) ; Statement: $r3 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Placeholder \'") 
(declare-const var3230!2 String)
(assert (= var3230!2 (str.++ var3230!1 "Placeholder \u0027")))
(assert true)
(define-const var884 String (append/672562846 var418 var2191)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r2) 
(declare-const var418!1 String)
(assert (= var418!1 (str.++ var418 var2191)))
(assert true)
(define-const var3483 String (append/672562846 var884 "\u0027 is not bound")) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\' is not bound") 
(declare-const var884!1 String)
(assert (= var884!1 (str.++ var884 "\u0027 is not bound")))
(assert true)
(define-const var3335 String (toString/-2075883882 var3483)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/302830823 var277 var3335)) ; Statement: specialinvoke $r0.<com.mysql.cj.exceptions.WrongArgumentException: void <init>(java.lang.String)>($r6) 

(declare-const var277!1 var2501)
(declare-const var3335!1 String)
 ; Statement: throw $r0 
(check-sat)
(get-model)
(get-unsat-core)
; {var2501-init=([], com.mysql.cj.exceptions.WrongArgumentException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/302830823=([com.mysql.cj.exceptions.WrongArgumentException, java.lang.String], void)}
; {var2191=r2, var1063=null_type, var2501=com.mysql.cj.exceptions.WrongArgumentException, var277=$r0, var3230=$r1, var418=$r3, var884=$r4, var3483=$r5, var3335=$r6}
; {r2=var2191, null_type=var1063, com.mysql.cj.exceptions.WrongArgumentException=var2501, $r0=var277, $r1=var3230, $r3=var418, $r4=var884, $r5=var3483, $r6=var3335}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r2 := @parameter0: java.lang.String;	$r0 = new com.mysql.cj.exceptions.WrongArgumentException;	$r1 = new java.lang.StringBuilder;	specialinvoke $r1.<java.lang.StringBuilder: void <init>()>();	$r3 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Placeholder \'");	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r2);	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\' is not bound");	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r0.<com.mysql.cj.exceptions.WrongArgumentException: void <init>(java.lang.String)>($r6);	throw $r0
;block_num 1