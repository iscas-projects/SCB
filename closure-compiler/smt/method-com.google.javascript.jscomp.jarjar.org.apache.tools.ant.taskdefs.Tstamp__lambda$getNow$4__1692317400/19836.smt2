(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2203 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-String String)
(declare-const var576 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var576 null-String)))
(declare-const var1335 String) ; Statement: r4 := @parameter1: java.lang.String 
(assert (not (= var1335 null-String)))
(define-const var2272 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2272)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2272!1 String)
(assert (= var2272!1 ""))
(assert true)
(define-const var3345 String (append/672562846 var2272!1 "magic property ")) ; Statement: $r2 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("magic property ") 
(declare-const var2272!2 String)
(assert (= var2272!2 (str.++ var2272!1 "magic property ")))
(assert true)
(define-const var2317 String (append/672562846 var3345 var576)) ; Statement: $r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1) 
(declare-const var3345!1 String)
(assert (= var3345!1 (str.++ var3345 var576)))
(assert true)
(define-const var2680 String (append/672562846 var2317 " ignored as ")) ; Statement: $r5 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" ignored as ") 
(declare-const var2317!1 String)
(assert (= var2317!1 (str.++ var2317 " ignored as ")))
(assert true)
(define-const var1601 String (append/672562846 var2680 var1335)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r4) 
(declare-const var2680!1 String)
(assert (= var2680!1 (str.++ var2680 var1335)))
(assert true)
(define-const var1379 String (append/672562846 var1601 " is not a valid number")) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" is not a valid number") 
(declare-const var1601!1 String)
(assert (= var1601!1 (str.++ var1601 " is not a valid number")))
(assert true)
(define-const var628 String (toString/-2075883882 var1379)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r8 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var576=r1, var2203=null_type, var1335=r4, var2272=$r0, var3345=$r2, var2317=$r3, var2680=$r5, var1601=$r6, var1379=$r7, var628=$r8}
; {r1=var576, null_type=var2203, r4=var1335, $r0=var2272, $r2=var3345, $r3=var2317, $r5=var2680, $r6=var1601, $r7=var1379, $r8=var628}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 5,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @parameter0: java.lang.String;	r4 := @parameter1: java.lang.String;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r2 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("magic property ");	$r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1);	$r5 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" ignored as ");	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r4);	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" is not a valid number");	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>();	return $r8
;block_num 1