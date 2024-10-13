(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1475 0)
(declare-sort var2741 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var2741-init () var2741)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/875830710 (var2741 String) void)
(declare-const null-String String)
(declare-const var650 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var650 null-String)))
(declare-const var2828 String) ; Statement: r3 := @parameter1: java.lang.String 
(assert (not (= var2828 null-String)))
 ; Statement: if r0 == null goto $r9 = new java.lang.IllegalArgumentException 
(assert (= var650 null-String)) ; Cond: r0 == null 
(define-const var910 var2741 var2741-init) ; Statement: $r9 = new java.lang.IllegalArgumentException 
(define-const var2585 String String-init) ; Statement: $r8 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2585)) ; Statement: specialinvoke $r8.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2585!1 String)
(assert (= var2585!1 ""))
(assert true)
(define-const var2732 String (append/672562846 var2585!1 "Invalid ")) ; Statement: $r4 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Invalid ") 
(declare-const var2585!2 String)
(assert (= var2585!2 (str.++ var2585!1 "Invalid ")))
(assert true)
(define-const var3107 String (append/672562846 var2732 var2828)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r3) 
(declare-const var2732!1 String)
(assert (= var2732!1 (str.++ var2732 var2828)))
(assert true)
(define-const var1959 String (append/672562846 var3107 " (must not be null or empty)")) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" (must not be null or empty)") 
(declare-const var3107!1 String)
(assert (= var3107!1 (str.++ var3107 " (must not be null or empty)")))
(assert true)
(define-const var3623 String (toString/-2075883882 var1959)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/875830710 var910 var3623)) ; Statement: specialinvoke $r9.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r7) 

(declare-const var910!1 var2741)
(declare-const var3623!1 String)
 ; Statement: throw $r9 
(check-sat)
(get-model)
(get-unsat-core)
; {var2741-init=([], java.lang.IllegalArgumentException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/875830710=([java.lang.IllegalArgumentException, java.lang.String], void)}
; {var650=r0, var1475=null_type, var2828=r3, var2741=java.lang.IllegalArgumentException, var910=$r9, var2585=$r8, var2732=$r4, var3107=$r5, var1959=$r6, var3623=$r7}
; {r0=var650, null_type=var1475, r3=var2828, java.lang.IllegalArgumentException=var2741, $r9=var910, $r8=var2585, $r4=var2732, $r5=var3107, $r6=var1959, $r7=var3623}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @parameter0: java.lang.String;	r3 := @parameter1: java.lang.String;	if r0 == null goto $r9 = new java.lang.IllegalArgumentException;	$r9 = new java.lang.IllegalArgumentException;	$r8 = new java.lang.StringBuilder;	specialinvoke $r8.<java.lang.StringBuilder: void <init>()>();	$r4 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Invalid ");	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r3);	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" (must not be null or empty)");	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r9.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r7);	throw $r9
;block_num 2