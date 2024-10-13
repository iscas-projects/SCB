(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2336 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-String String)
(declare-const var3409 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var3409 null-String)))
(declare-const var838 String) ; Statement: r4 := @parameter1: java.lang.String 
(assert (not (= var838 null-String)))
(define-const var3064 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3064)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3064!1 String)
(assert (= var3064!1 ""))
(assert true)
(define-const var1046 String (append/672562846 var3064!1 "magic property ")) ; Statement: $r2 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("magic property ") 
(declare-const var3064!2 String)
(assert (= var3064!2 (str.++ var3064!1 "magic property ")))
(assert true)
(define-const var1711 String (append/672562846 var1046 var3409)) ; Statement: $r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1) 
(declare-const var1046!1 String)
(assert (= var1046!1 (str.++ var1046 var3409)))
(assert true)
(define-const var628 String (append/672562846 var1711 " ignored as \u0027")) ; Statement: $r5 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" ignored as \'") 
(declare-const var1711!1 String)
(assert (= var1711!1 (str.++ var1711 " ignored as \u0027")))
(assert true)
(define-const var3596 String (append/672562846 var628 var838)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r4) 
(declare-const var628!1 String)
(assert (= var628!1 (str.++ var628 var838)))
(assert true)
(define-const var3591 String (append/672562846 var3596 "\u0027 is not in valid ISO pattern")) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\' is not in valid ISO pattern") 
(declare-const var3596!1 String)
(assert (= var3596!1 (str.++ var3596 "\u0027 is not in valid ISO pattern")))
(assert true)
(define-const var2612 String (toString/-2075883882 var3591)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r8 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var3409=r1, var2336=null_type, var838=r4, var3064=$r0, var1046=$r2, var1711=$r3, var628=$r5, var3596=$r6, var3591=$r7, var2612=$r8}
; {r1=var3409, null_type=var2336, r4=var838, $r0=var3064, $r2=var1046, $r3=var1711, $r5=var628, $r6=var3596, $r7=var3591, $r8=var2612}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 5,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @parameter0: java.lang.String;	r4 := @parameter1: java.lang.String;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r2 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("magic property ");	$r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1);	$r5 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" ignored as \'");	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r4);	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\' is not in valid ISO pattern");	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>();	return $r8
;block_num 1