(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1886 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun var1886-init () var1886)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1166366385 (String Int) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/875830710 (var1886 String) void)
(declare-const null-Int Int)
(declare-const var618 Int) ; Statement: c0 := @parameter0: char 
(assert (not (= var618 null-Int)))
(define-const var604 Int (cast-from-Int-to-Int var618)) ; Statement: $i4 = (int) c0 
 ; Statement: if $i4 < 48 goto $i7 = (int) c0 
(assert (< var604 48)) ; Cond: $i4 < 48 
(define-const var3142 Int (cast-from-Int-to-Int var618)) ; Statement: $i7 = (int) c0 
 ; Statement: if $i7 < 97 goto $r6 = new java.lang.IllegalArgumentException 
(assert (< var3142 97)) ; Cond: $i7 < 97 
(define-const var3026 var1886 var1886-init) ; Statement: $r6 = new java.lang.IllegalArgumentException 
(define-const var547 String String-init) ; Statement: $r5 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var547)) ; Statement: specialinvoke $r5.<java.lang.StringBuilder: void <init>()>() 
(declare-const var547!1 String)
(assert (= var547!1 ""))
(assert true)
(define-const var2860 String (append/672562846 var547!1 "Illegal hexadecimal character: ")) ; Statement: $r2 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Illegal hexadecimal character: ") 
(declare-const var547!2 String)
(assert (= var547!2 (str.++ var547!1 "Illegal hexadecimal character: ")))
(assert true)
(define-const var1271 String (append/-1166366385 var2860 var618)) ; Statement: $r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(c0) 
(declare-const var2860!1 String)
(assert (str.prefixof var2860 var2860!1))
(assert true)
(define-const var1928 String (toString/-2075883882 var1271)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/875830710 var3026 var1928)) ; Statement: specialinvoke $r6.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r4) 

(declare-const var3026!1 var1886)
(declare-const var1928!1 String)
 ; Statement: throw $r6 
(check-sat)
(get-model)
(get-unsat-core)
; {cast-from-Int-to-Int=([char], int), var1886-init=([], java.lang.IllegalArgumentException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1166366385=([java.lang.StringBuilder, char], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/875830710=([java.lang.IllegalArgumentException, java.lang.String], void)}
; {var618=c0, var604=$i4, var3142=$i7, var1886=java.lang.IllegalArgumentException, var3026=$r6, var547=$r5, var2860=$r2, var1271=$r3, var1928=$r4}
; {c0=var618, $i4=var604, $i7=var3142, java.lang.IllegalArgumentException=var1886, $r6=var3026, $r5=var547, $r2=var2860, $r3=var1271, $r4=var1928}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(char)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts c0 := @parameter0: char;	$i4 = (int) c0;	if $i4 < 48 goto $i7 = (int) c0;	$i7 = (int) c0;	if $i7 < 97 goto $r6 = new java.lang.IllegalArgumentException;	$r6 = new java.lang.IllegalArgumentException;	$r5 = new java.lang.StringBuilder;	specialinvoke $r5.<java.lang.StringBuilder: void <init>()>();	$r2 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Illegal hexadecimal character: ");	$r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(c0);	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r6.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r4);	throw $r6
;block_num 3