(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3617 0)
(declare-sort var3521 0)
(declare-sort var2723 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun toLowerCase/415700667 ((s String)) String (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all s "A" "a") "B" "b") "C" "c") "D" "d") "E" "e") "F" "f") "G" "g") "H" "h") "I" "i") "J" "j") "K" "k") "L" "l") "M" "m") "N" "n") "O" "o") "P" "p") "Q" "q") "R" "r") "S" "s") "T" "t") "U" "u") "V" "v") "W" "w") "X" "x") "Y" "y") "Z" "z"))
(declare-fun getLength-Arr-var3521-1 ((Array Int var3521)) Int)
(declare-fun var2723-init () var2723)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/875830710 (var2723 String) void)
(declare-const null-String String)
(declare-const var3521-namedCategories (Array Int var3521))
(declare-const var1485 String) ; Statement: r9 := @parameter0: java.lang.String 
(assert (not (= var1485 null-String)))
(assert true)
(define-const var2119 String (toLowerCase/415700667 var1485)) ; Statement: r10 = virtualinvoke r9.<java.lang.String: java.lang.String toLowerCase()>() 
(define-const var65 (Array Int var3521) var3521-namedCategories) ; Statement: r0 = <org.checkerframework.checker.i18nformatter.qual.I18nConversionCategory: org.checkerframework.checker.i18nformatter.qual.I18nConversionCategory[] namedCategories> 
(define-const var3766 Int (getLength-Arr-var3521-1 var65)) ; Statement: i0 = lengthof r0 
(define-const var3139 Int 0) ; Statement: i2 = 0 
(assert true) ; Non Conditional
 ; Statement: if i2 >= i0 goto $r1 = new java.lang.IllegalArgumentException 
(assert (>= var3139 var3766)) ; Cond: i2 >= i0 
(define-const var26 var2723 var2723-init) ; Statement: $r1 = new java.lang.IllegalArgumentException 
(define-const var235 String String-init) ; Statement: $r2 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var235)) ; Statement: specialinvoke $r2.<java.lang.StringBuilder: void <init>()>() 
(declare-const var235!1 String)
(assert (= var235!1 ""))
(assert true)
(define-const var3501 String (append/672562846 var235!1 "Invalid format type ")) ; Statement: $r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Invalid format type ") 
(declare-const var235!2 String)
(assert (= var235!2 (str.++ var235!1 "Invalid format type ")))
(assert true)
(define-const var844 String (append/672562846 var3501 var2119)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r10) 
(declare-const var3501!1 String)
(assert (= var3501!1 (str.++ var3501 var2119)))
(assert true)
(define-const var303 String (toString/-2075883882 var844)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/875830710 var26 var303)) ; Statement: specialinvoke $r1.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r5) 

(declare-const var26!1 var2723)
(declare-const var303!1 String)
 ; Statement: throw $r1 
(check-sat)
(get-model)
(get-unsat-core)
; {toLowerCase/415700667=([java.lang.String], java.lang.String), getLength-Arr-var3521-1=([org.checkerframework.checker.i18nformatter.qual.I18nConversionCategory[]], int), var2723-init=([], java.lang.IllegalArgumentException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/875830710=([java.lang.IllegalArgumentException, java.lang.String], void)}
; {var1485=r9, var3617=null_type, var2119=r10, var3521=org.checkerframework.checker.i18nformatter.qual.I18nConversionCategory, var65=r0, var3766=i0, var3139=i2, var2723=java.lang.IllegalArgumentException, var26=$r1, var235=$r2, var3501=$r3, var844=$r4, var303=$r5}
; {r9=var1485, null_type=var3617, r10=var2119, org.checkerframework.checker.i18nformatter.qual.I18nConversionCategory=var3521, r0=var65, i0=var3766, i2=var3139, java.lang.IllegalArgumentException=var2723, $r1=var26, $r2=var235, $r3=var3501, $r4=var844, $r5=var303}
;seq <java.lang.String: java.lang.String toLowerCase()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.String: java.lang.String toLowerCase()>": 1,"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r9 := @parameter0: java.lang.String;	r10 = virtualinvoke r9.<java.lang.String: java.lang.String toLowerCase()>();	r0 = <org.checkerframework.checker.i18nformatter.qual.I18nConversionCategory: org.checkerframework.checker.i18nformatter.qual.I18nConversionCategory[] namedCategories>;	i0 = lengthof r0;	i2 = 0;	if i2 >= i0 goto $r1 = new java.lang.IllegalArgumentException;	$r1 = new java.lang.IllegalArgumentException;	$r2 = new java.lang.StringBuilder;	specialinvoke $r2.<java.lang.StringBuilder: void <init>()>();	$r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Invalid format type ");	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r10);	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r1.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r5);	throw $r1
;block_num 3