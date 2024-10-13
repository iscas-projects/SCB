(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2274 0)
(declare-sort var2581 0)
(declare-sort var1728 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun toString/-522406933 (var2581) String)
(declare-fun cast-from-var2274-to-var2581 (var2274) var2581)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1166366385 (String Int) String)
(declare-fun chars/922855258 (var2274) (Array Int Int))
(declare-fun var1728_toString/685783178 ((Array Int Int)) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var2274 var2274)
(declare-const var1531 var2274) ; Statement: r1 := @this: org.apache.commons.lang3.text.StrMatcher$StringMatcher 
(assert (not (= var1531 null-var2274)))
(define-const var704 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var704)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var704!1 String)
(assert (= var704!1 ""))
(assert true)
(define-const var941 String (toString/-522406933 (cast-from-var2274-to-var2581 var1531))) ; Statement: $r2 = specialinvoke r1.<java.lang.Object: java.lang.String toString()>() 
(assert true)
(define-const var3325 String (append/672562846 var704!1 var941)) ; Statement: $r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2) 
(declare-const var704!2 String)
(assert (= var704!2 (str.++ var704!1 var941)))
(assert true)
(define-const var2660 String (append/-1166366385 var3325 32)) ; Statement: $r6 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(32) 
(declare-const var3325!1 String)
(assert (str.prefixof var3325 var3325!1))
(define-const var3944 (Array Int Int) (chars/922855258 var1531)) ; Statement: $r4 = r1.<org.apache.commons.lang3.text.StrMatcher$StringMatcher: char[] chars> 
(define-const var3338 String (var1728_toString/685783178 var3944)) ; Statement: $r5 = staticinvoke <java.util.Arrays: java.lang.String toString(char[])>($r4) 
(assert true)
(define-const var1670 String (append/672562846 var2660 var3338)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r5) 
(declare-const var2660!1 String)
(assert (= var2660!1 (str.++ var2660 var3338)))
(assert true)
(define-const var2048 String (toString/-2075883882 var1670)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r8 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), toString/-522406933=([java.lang.Object], java.lang.String), cast-from-var2274-to-var2581=([org.apache.commons.lang3.text.StrMatcher$StringMatcher], java.lang.Object), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1166366385=([java.lang.StringBuilder, char], java.lang.StringBuilder), chars/922855258=([org.apache.commons.lang3.text.StrMatcher$StringMatcher], char[]), var1728_toString/685783178=([char[]], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var2274=org.apache.commons.lang3.text.StrMatcher$StringMatcher, var1531=r1, var704=$r0, var2581=java.lang.Object, var941=$r2, var3325=$r3, var2660=$r6, var3944=$r4, var1728=java.util.Arrays, var3338=$r5, var1670=$r7, var2048=$r8}
; {org.apache.commons.lang3.text.StrMatcher$StringMatcher=var2274, r1=var1531, $r0=var704, java.lang.Object=var2581, $r2=var941, $r3=var3325, $r6=var2660, $r4=var3944, java.util.Arrays=var1728, $r5=var3338, $r7=var1670, $r8=var2048}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.Object: java.lang.String toString()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.util.Arrays: java.lang.String toString(char[])>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(char)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: org.apache.commons.lang3.text.StrMatcher$StringMatcher;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r2 = specialinvoke r1.<java.lang.Object: java.lang.String toString()>();	$r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2);	$r6 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(32);	$r4 = r1.<org.apache.commons.lang3.text.StrMatcher$StringMatcher: char[] chars>;	$r5 = staticinvoke <java.util.Arrays: java.lang.String toString(char[])>($r4);	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r5);	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>();	return $r8
;block_num 1