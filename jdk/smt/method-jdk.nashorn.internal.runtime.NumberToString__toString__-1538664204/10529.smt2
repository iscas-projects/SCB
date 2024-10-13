(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2446 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(declare-fun <init>/543593434 (String Int) void)
(declare-fun isNegative/642660948 (var2446) Bool)
(declare-fun isNaN/642660948 (var2446) Bool)
(declare-fun digits/642660948 (var2446) (Array Int Int))
(declare-fun nDigits/642660948 (var2446) Int)
(declare-fun append/-1748486345 (String (Array Int Int) Int Int) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var2446 var2446)
(declare-const var2934 var2446) ; Statement: r1 := @this: jdk.nashorn.internal.runtime.NumberToString 
(assert (not (= var2934 null-var2446)))
(define-const var3672 String String-init) ; Statement: $r11 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/543593434 var3672 32)) ; Statement: specialinvoke $r11.<java.lang.StringBuilder: void <init>(int)>(32) 

(declare-const var3672!1 String)
(declare-const var1255 Int)
(define-const var3047 Bool (isNegative/642660948 var2934)) ; Statement: $z0 = r1.<jdk.nashorn.internal.runtime.NumberToString: boolean isNegative> 
 ; Statement: if $z0 == 0 goto $z1 = r1.<jdk.nashorn.internal.runtime.NumberToString: boolean isNaN> 
(assert (= (ite var3047 1 0) 0)) ; Cond: $z0 == 0 
(define-const var410 Bool (isNaN/642660948 var2934)) ; Statement: $z1 = r1.<jdk.nashorn.internal.runtime.NumberToString: boolean isNaN> 
 ; Statement: if $z1 == 0 goto $i0 = r1.<jdk.nashorn.internal.runtime.NumberToString: int decimalExponent> 
(assert (not (= (ite var410 1 0) 0))) ; Negate: Cond: $z1 == 0  
(define-const var1700 (Array Int Int) (digits/642660948 var2934)) ; Statement: $r9 = r1.<jdk.nashorn.internal.runtime.NumberToString: char[] digits> 
(define-const var2644 Int (nDigits/642660948 var2934)) ; Statement: $i34 = r1.<jdk.nashorn.internal.runtime.NumberToString: int nDigits> 
(assert true)
;(assert (append/-1748486345 var3672!1 var1700 0 var2644)) ; Statement: virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(char[],int,int)>($r9, 0, $i34) 
(declare-const var3672!2 String)
(assert (str.prefixof var3672!1 var3672!2))
 ; Statement: goto [?= $r10 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.String toString()>()] 
(assert true) ; Non Conditional
(assert true)
(define-const var3744 String (toString/-2075883882 var3672!2)) ; Statement: $r10 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r10 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/543593434=([java.lang.StringBuilder, int], void), isNegative/642660948=([jdk.nashorn.internal.runtime.NumberToString], boolean), isNaN/642660948=([jdk.nashorn.internal.runtime.NumberToString], boolean), digits/642660948=([jdk.nashorn.internal.runtime.NumberToString], char[]), nDigits/642660948=([jdk.nashorn.internal.runtime.NumberToString], int), append/-1748486345=([java.lang.StringBuilder, char[], int, int], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var2446=jdk.nashorn.internal.runtime.NumberToString, var2934=r1, var3672=$r11, var1255=32, var3047=$z0, var410=$z1, var1700=$r9, var2644=$i34, var3744=$r10}
; {jdk.nashorn.internal.runtime.NumberToString=var2446, r1=var2934, $r11=var3672, 32=var1255, $z0=var3047, $z1=var410, $r9=var1700, $i34=var2644, $r10=var3744}
;seq <java.lang.StringBuilder: void <init>(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char[],int,int)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>(int)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(char[],int,int)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: jdk.nashorn.internal.runtime.NumberToString;	$r11 = new java.lang.StringBuilder;	specialinvoke $r11.<java.lang.StringBuilder: void <init>(int)>(32);	$z0 = r1.<jdk.nashorn.internal.runtime.NumberToString: boolean isNegative>;	if $z0 == 0 goto $z1 = r1.<jdk.nashorn.internal.runtime.NumberToString: boolean isNaN>;	$z1 = r1.<jdk.nashorn.internal.runtime.NumberToString: boolean isNaN>;	if $z1 == 0 goto $i0 = r1.<jdk.nashorn.internal.runtime.NumberToString: int decimalExponent>;	$r9 = r1.<jdk.nashorn.internal.runtime.NumberToString: char[] digits>;	$i34 = r1.<jdk.nashorn.internal.runtime.NumberToString: int nDigits>;	virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(char[],int,int)>($r9, 0, $i34);	goto [?= $r10 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.String toString()>()];	$r10 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.String toString()>();	return $r10
;block_num 4