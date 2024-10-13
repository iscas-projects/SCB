(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3924 0)
(declare-sort var413 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getLength-Arr-var3924-1 ((Array Int var3924)) Int)
(declare-fun var413-init () var413)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1166366385 (String Int) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/875830710 (var413 String) void)
(declare-const null-Int Int)
(declare-const var3924-conversionCategoriesWithChar (Array Int var3924))
(declare-const var503 Int) ; Statement: c1 := @parameter0: char 
(assert (not (= var503 null-Int)))
(define-const var3664 (Array Int var3924) var3924-conversionCategoriesWithChar) ; Statement: r0 = <org.checkerframework.checker.formatter.qual.ConversionCategory: org.checkerframework.checker.formatter.qual.ConversionCategory[] conversionCategoriesWithChar> 
(define-const var2288 Int (getLength-Arr-var3924-1 var3664)) ; Statement: i0 = lengthof r0 
(define-const var2187 Int 0) ; Statement: i2 = 0 
(assert true) ; Non Conditional
 ; Statement: if i2 >= i0 goto $r1 = new java.lang.IllegalArgumentException 
(assert (>= var2187 var2288)) ; Cond: i2 >= i0 
(define-const var2964 var413 var413-init) ; Statement: $r1 = new java.lang.IllegalArgumentException 
(define-const var210 String String-init) ; Statement: $r2 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var210)) ; Statement: specialinvoke $r2.<java.lang.StringBuilder: void <init>()>() 
(declare-const var210!1 String)
(assert (= var210!1 ""))
(assert true)
(define-const var500 String (append/672562846 var210!1 "Bad conversion character ")) ; Statement: $r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Bad conversion character ") 
(declare-const var210!2 String)
(assert (= var210!2 (str.++ var210!1 "Bad conversion character ")))
(assert true)
(define-const var3658 String (append/-1166366385 var500 var503)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(c1) 
(declare-const var500!1 String)
(assert (str.prefixof var500 var500!1))
(assert true)
(define-const var3671 String (toString/-2075883882 var3658)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/875830710 var2964 var3671)) ; Statement: specialinvoke $r1.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r5) 

(declare-const var2964!1 var413)
(declare-const var3671!1 String)
 ; Statement: throw $r1 
(check-sat)
(get-model)
(get-unsat-core)
; {getLength-Arr-var3924-1=([org.checkerframework.checker.formatter.qual.ConversionCategory[]], int), var413-init=([], java.lang.IllegalArgumentException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1166366385=([java.lang.StringBuilder, char], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/875830710=([java.lang.IllegalArgumentException, java.lang.String], void)}
; {var503=c1, var3924=org.checkerframework.checker.formatter.qual.ConversionCategory, var3664=r0, var2288=i0, var2187=i2, var413=java.lang.IllegalArgumentException, var2964=$r1, var210=$r2, var500=$r3, var3658=$r4, var3671=$r5}
; {c1=var503, org.checkerframework.checker.formatter.qual.ConversionCategory=var3924, r0=var3664, i0=var2288, i2=var2187, java.lang.IllegalArgumentException=var413, $r1=var2964, $r2=var210, $r3=var500, $r4=var3658, $r5=var3671}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(char)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts c1 := @parameter0: char;	r0 = <org.checkerframework.checker.formatter.qual.ConversionCategory: org.checkerframework.checker.formatter.qual.ConversionCategory[] conversionCategoriesWithChar>;	i0 = lengthof r0;	i2 = 0;	if i2 >= i0 goto $r1 = new java.lang.IllegalArgumentException;	$r1 = new java.lang.IllegalArgumentException;	$r2 = new java.lang.StringBuilder;	specialinvoke $r2.<java.lang.StringBuilder: void <init>()>();	$r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Bad conversion character ");	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(c1);	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r1.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r5);	throw $r1
;block_num 3