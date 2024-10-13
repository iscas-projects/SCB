(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2862 0)
(declare-sort var542 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var2862_isAsciiNumeric/641335549 (Int) Bool)
(declare-fun var542-init () var542)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1166366385 (String Int) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/875830710 (var542 String) void)
(declare-const null-Int Int)
(declare-const var2914 Int) ; Statement: c0 := @parameter0: char 
(assert (not (= var2914 null-Int)))
(define-const var3158 Bool (var2862_isAsciiNumeric/641335549 var2914)) ; Statement: $z0 = staticinvoke <org.apache.commons.lang3.CharUtils: boolean isAsciiNumeric(char)>(c0) 
 ; Statement: if $z0 != 0 goto $i2 = (int) c0 
(assert (not (not (= (ite var3158 1 0) 0)))) ; Negate: Cond: $z0 != 0  
(define-const var3286 var542 var542-init) ; Statement: $r7 = new java.lang.IllegalArgumentException 
(define-const var588 String String-init) ; Statement: $r6 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var588)) ; Statement: specialinvoke $r6.<java.lang.StringBuilder: void <init>()>() 
(declare-const var588!1 String)
(assert (= var588!1 ""))
(assert true)
(define-const var3507 String (append/672562846 var588!1 "The character ")) ; Statement: $r2 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("The character ") 
(declare-const var588!2 String)
(assert (= var588!2 (str.++ var588!1 "The character ")))
(assert true)
(define-const var2303 String (append/-1166366385 var3507 var2914)) ; Statement: $r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(c0) 
(declare-const var3507!1 String)
(assert (str.prefixof var3507 var3507!1))
(assert true)
(define-const var1579 String (append/672562846 var2303 " is not in the range \u00270\u0027 - \u00279\u0027")) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" is not in the range \'0\' - \'9\'") 
(declare-const var2303!1 String)
(assert (= var2303!1 (str.++ var2303 " is not in the range \u00270\u0027 - \u00279\u0027")))
(assert true)
(define-const var2326 String (toString/-2075883882 var1579)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/875830710 var3286 var2326)) ; Statement: specialinvoke $r7.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r5) 

(declare-const var3286!1 var542)
(declare-const var2326!1 String)
 ; Statement: throw $r7 
(check-sat)
(get-model)
(get-unsat-core)
; {var2862_isAsciiNumeric/641335549=([char], boolean), var542-init=([], java.lang.IllegalArgumentException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1166366385=([java.lang.StringBuilder, char], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/875830710=([java.lang.IllegalArgumentException, java.lang.String], void)}
; {var2914=c0, var2862=org.apache.commons.lang3.CharUtils, var3158=$z0, var542=java.lang.IllegalArgumentException, var3286=$r7, var588=$r6, var3507=$r2, var2303=$r3, var1579=$r4, var2326=$r5}
; {c0=var2914, org.apache.commons.lang3.CharUtils=var2862, $z0=var3158, java.lang.IllegalArgumentException=var542, $r7=var3286, $r6=var588, $r2=var3507, $r3=var2303, $r4=var1579, $r5=var2326}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(char)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts c0 := @parameter0: char;	$z0 = staticinvoke <org.apache.commons.lang3.CharUtils: boolean isAsciiNumeric(char)>(c0);	if $z0 != 0 goto $i2 = (int) c0;	$r7 = new java.lang.IllegalArgumentException;	$r6 = new java.lang.StringBuilder;	specialinvoke $r6.<java.lang.StringBuilder: void <init>()>();	$r2 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("The character ");	$r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(c0);	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" is not in the range \'0\' - \'9\'");	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r7.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r5);	throw $r7
;block_num 2