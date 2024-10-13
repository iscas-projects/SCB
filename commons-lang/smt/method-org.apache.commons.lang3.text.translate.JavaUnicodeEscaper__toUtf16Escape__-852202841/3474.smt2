(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2254 0)
(declare-sort var1950 0)
(declare-sort var2167 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var1950_toChars/-1738819595 (Int) (Array Int Int))
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun var2167_hex/-1308539637 (Int) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var2254 var2254)
(declare-const null-Int Int)
(declare-const var2866 var2254) ; Statement: r9 := @this: org.apache.commons.lang3.text.translate.JavaUnicodeEscaper 
(assert (not (= var2866 null-var2254)))
(declare-const var1337 Int) ; Statement: i0 := @parameter0: int 
(assert (not (= var1337 null-Int)))
(define-const var3795 (Array Int Int) (var1950_toChars/-1738819595 var1337)) ; Statement: r0 = staticinvoke <java.lang.Character: char[] toChars(int)>(i0) 
(define-const var3251 String String-init) ; Statement: $r10 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3251)) ; Statement: specialinvoke $r10.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3251!1 String)
(assert (= var3251!1 ""))
(assert true)
(define-const var645 String (append/672562846 var3251!1 "\u005cu")) ; Statement: $r3 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\\u") 
(declare-const var3251!2 String)
(assert (= var3251!2 (str.++ var3251!1 "\u005cu")))
(define-const var3309 Int (select var3795 0)) ; Statement: $c1 = r0[0] 
(define-const var2628 Int (cast-from-Int-to-Int var3309)) ; Statement: $i3 = (int) $c1 
(define-const var358 String (var2167_hex/-1308539637 var2628)) ; Statement: $r2 = staticinvoke <org.apache.commons.lang3.text.translate.JavaUnicodeEscaper: java.lang.String hex(int)>($i3) 
(assert true)
(define-const var2497 String (append/672562846 var645 var358)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2) 
(declare-const var645!1 String)
(assert (= var645!1 (str.++ var645 var358)))
(assert true)
(define-const var107 String (append/672562846 var2497 "\u005cu")) ; Statement: $r6 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\\u") 
(declare-const var2497!1 String)
(assert (= var2497!1 (str.++ var2497 "\u005cu")))
(define-const var1708 Int (select var3795 1)) ; Statement: $c2 = r0[1] 
(define-const var1592 Int (cast-from-Int-to-Int var1708)) ; Statement: $i4 = (int) $c2 
(define-const var1806 String (var2167_hex/-1308539637 var1592)) ; Statement: $r5 = staticinvoke <org.apache.commons.lang3.text.translate.JavaUnicodeEscaper: java.lang.String hex(int)>($i4) 
(assert true)
(define-const var139 String (append/672562846 var107 var1806)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r5) 
(declare-const var107!1 String)
(assert (= var107!1 (str.++ var107 var1806)))
(assert true)
(define-const var2203 String (toString/-2075883882 var139)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r8 
(check-sat)
(get-model)
(get-unsat-core)
; {var1950_toChars/-1738819595=([int], char[]), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), cast-from-Int-to-Int=([char], int), var2167_hex/-1308539637=([int], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var2254=org.apache.commons.lang3.text.translate.JavaUnicodeEscaper, var2866=r9, var1337=i0, var1950=java.lang.Character, var3795=r0, var3251=$r10, var645=$r3, var3309=$c1, var2628=$i3, var2167=org.apache.commons.lang3.text.translate.CharSequenceTranslator, var358=$r2, var2497=$r4, var107=$r6, var1708=$c2, var1592=$i4, var1806=$r5, var139=$r7, var2203=$r8}
; {org.apache.commons.lang3.text.translate.JavaUnicodeEscaper=var2254, r9=var2866, i0=var1337, java.lang.Character=var1950, r0=var3795, $r10=var3251, $r3=var645, $c1=var3309, $i3=var2628, org.apache.commons.lang3.text.translate.CharSequenceTranslator=var2167, $r2=var358, $r4=var2497, $r6=var107, $c2=var1708, $i4=var1592, $r5=var1806, $r7=var139, $r8=var2203}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 4,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r9 := @this: org.apache.commons.lang3.text.translate.JavaUnicodeEscaper;	i0 := @parameter0: int;	r0 = staticinvoke <java.lang.Character: char[] toChars(int)>(i0);	$r10 = new java.lang.StringBuilder;	specialinvoke $r10.<java.lang.StringBuilder: void <init>()>();	$r3 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\\u");	$c1 = r0[0];	$i3 = (int) $c1;	$r2 = staticinvoke <org.apache.commons.lang3.text.translate.JavaUnicodeEscaper: java.lang.String hex(int)>($i3);	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2);	$r6 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\\u");	$c2 = r0[1];	$i4 = (int) $c2;	$r5 = staticinvoke <org.apache.commons.lang3.text.translate.JavaUnicodeEscaper: java.lang.String hex(int)>($i4);	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r5);	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>();	return $r8
;block_num 1