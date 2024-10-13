(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2764 0)
(declare-sort var3933 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var2764_digit/-929202055 (Int Int) Int)
(declare-fun var3933-init () var3933)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1166366385 (String Int) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/875830710 (var3933 String) void)
(declare-const null-Int Int)
(declare-const var1301 Int) ; Statement: c0 := @parameter0: char 
(assert (not (= var1301 null-Int)))
(define-const var3042 Int (var2764_digit/-929202055 var1301 16)) ; Statement: i1 = staticinvoke <java.lang.Character: int digit(char,int)>(c0, 16) 
 ; Statement: if i1 >= 0 goto return i1 
(assert (not (>= var3042 0))) ; Negate: Cond: i1 >= 0  
(define-const var1901 var3933 var3933-init) ; Statement: $r0 = new java.lang.IllegalArgumentException 
(define-const var1500 String String-init) ; Statement: $r1 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1500)) ; Statement: specialinvoke $r1.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1500!1 String)
(assert (= var1500!1 ""))
(assert true)
(define-const var1988 String (append/672562846 var1500!1 "Cannot interpret \u0027")) ; Statement: $r2 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Cannot interpret \'") 
(declare-const var1500!2 String)
(assert (= var1500!2 (str.++ var1500!1 "Cannot interpret \u0027")))
(assert true)
(define-const var2445 String (append/-1166366385 var1988 var1301)) ; Statement: $r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(c0) 
(declare-const var1988!1 String)
(assert (str.prefixof var1988 var1988!1))
(assert true)
(define-const var3628 String (append/672562846 var2445 "\u0027 as a hexadecimal digit")) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\' as a hexadecimal digit") 
(declare-const var2445!1 String)
(assert (= var2445!1 (str.++ var2445 "\u0027 as a hexadecimal digit")))
(assert true)
(define-const var3254 String (toString/-2075883882 var3628)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/875830710 var1901 var3254)) ; Statement: specialinvoke $r0.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r5) 

(declare-const var1901!1 var3933)
(declare-const var3254!1 String)
 ; Statement: throw $r0 
(check-sat)
(get-model)
(get-unsat-core)
; {var2764_digit/-929202055=([char, int], int), var3933-init=([], java.lang.IllegalArgumentException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1166366385=([java.lang.StringBuilder, char], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/875830710=([java.lang.IllegalArgumentException, java.lang.String], void)}
; {var1301=c0, var2764=java.lang.Character, var3042=i1, var3933=java.lang.IllegalArgumentException, var1901=$r0, var1500=$r1, var1988=$r2, var2445=$r3, var3628=$r4, var3254=$r5}
; {c0=var1301, java.lang.Character=var2764, i1=var3042, java.lang.IllegalArgumentException=var3933, $r0=var1901, $r1=var1500, $r2=var1988, $r3=var2445, $r4=var3628, $r5=var3254}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(char)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts c0 := @parameter0: char;	i1 = staticinvoke <java.lang.Character: int digit(char,int)>(c0, 16);	if i1 >= 0 goto return i1;	$r0 = new java.lang.IllegalArgumentException;	$r1 = new java.lang.StringBuilder;	specialinvoke $r1.<java.lang.StringBuilder: void <init>()>();	$r2 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Cannot interpret \'");	$r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(c0);	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\' as a hexadecimal digit");	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r0.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r5);	throw $r0
;block_num 2