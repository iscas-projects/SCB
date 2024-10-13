(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3030 0)
(declare-sort var1625 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var1625-init () var1625)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/875830710 (var1625 String) void)
(declare-const null-String String)
(declare-const var2068 String) ; Statement: r2 := @parameter0: java.lang.String 
(assert (not (= var2068 null-String)))
(declare-const var785 String) ; Statement: r5 := @parameter1: java.lang.String 
(assert (not (= var785 null-String)))
(define-const var2139 var1625 var1625-init) ; Statement: $r0 = new java.lang.IllegalArgumentException 
(define-const var3816 String String-init) ; Statement: $r1 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3816)) ; Statement: specialinvoke $r1.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3816!1 String)
(assert (= var3816!1 ""))
(assert true)
(define-const var100 String (append/672562846 var3816!1 "Attempt to get field \u0022")) ; Statement: $r3 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Attempt to get field \"") 
(declare-const var3816!2 String)
(assert (= var3816!2 (str.++ var3816!1 "Attempt to get field \u0022")))
(assert true)
(define-const var2801 String (append/672562846 var100 var2068)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r2) 
(declare-const var100!1 String)
(assert (= var100!1 (str.++ var100 var2068)))
(assert true)
(define-const var1248 String (append/672562846 var2801 "\u0022 with illegal data type conversion ")) ; Statement: $r6 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\" with illegal data type conversion ") 
(declare-const var2801!1 String)
(assert (= var2801!1 (str.++ var2801 "\u0022 with illegal data type conversion ")))
(assert true)
(define-const var2579 String (append/672562846 var1248 var785)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r5) 
(declare-const var1248!1 String)
(assert (= var1248!1 (str.++ var1248 var785)))
(assert true)
(define-const var2873 String (toString/-2075883882 var2579)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/875830710 var2139 var2873)) ; Statement: specialinvoke $r0.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r8) 

(declare-const var2139!1 var1625)
(declare-const var2873!1 String)
 ; Statement: return $r0 
(check-sat)
(get-model)
(get-unsat-core)
; {var1625-init=([], java.lang.IllegalArgumentException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/875830710=([java.lang.IllegalArgumentException, java.lang.String], void)}
; {var2068=r2, var3030=null_type, var785=r5, var1625=java.lang.IllegalArgumentException, var2139=$r0, var3816=$r1, var100=$r3, var2801=$r4, var1248=$r6, var2579=$r7, var2873=$r8}
; {r2=var2068, null_type=var3030, r5=var785, java.lang.IllegalArgumentException=var1625, $r0=var2139, $r1=var3816, $r3=var100, $r4=var2801, $r6=var1248, $r7=var2579, $r8=var2873}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 4,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r2 := @parameter0: java.lang.String;	r5 := @parameter1: java.lang.String;	$r0 = new java.lang.IllegalArgumentException;	$r1 = new java.lang.StringBuilder;	specialinvoke $r1.<java.lang.StringBuilder: void <init>()>();	$r3 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Attempt to get field \"");	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r2);	$r6 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\" with illegal data type conversion ");	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r5);	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r0.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r8);	return $r0
;block_num 1