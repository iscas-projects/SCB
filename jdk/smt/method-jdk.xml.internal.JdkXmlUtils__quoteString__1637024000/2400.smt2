(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1129 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun indexOf/-1037706067 ((s String) (c Int)) Int (str.indexof s (str.from_code c) 0))
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun append/-1166366385 (String Int) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-String String)
(declare-const var995 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var995 null-String)))
(assert true)
(define-const var1580 Int (indexOf/-1037706067 var995 34)) ; Statement: $i0 = virtualinvoke r0.<java.lang.String: int indexOf(int)>(34) 
(define-const var3759 Int (cast-from-Int-to-Int (- 1))) ; Statement: $i5 = (int) -1 
 ; Statement: if $i0 <= $i5 goto $c3 = 34 
(assert (<= var1580 var3759)) ; Cond: $i0 <= $i5 
(define-const var3919 Int 34) ; Statement: $c3 = 34 
(define-const var2307 Int 34) ; Statement: $c2 = 34 
(assert true) ; Non Conditional
(define-const var1351 String String-init) ; Statement: $r6 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1351)) ; Statement: specialinvoke $r6.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1351!1 String)
(assert (= var1351!1 ""))
(assert true)
(define-const var472 String (append/-1166366385 var1351!1 var3919)) ; Statement: $r2 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>($c3) 
(declare-const var1351!2 String)
(assert (str.prefixof var1351!1 var1351!2))
(assert true)
(define-const var3248 String (append/672562846 var472 var995)) ; Statement: $r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r0) 
(declare-const var472!1 String)
(assert (= var472!1 (str.++ var472 var995)))
(assert true)
(define-const var1960 String (append/-1166366385 var3248 var2307)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>($c2) 
(declare-const var3248!1 String)
(assert (str.prefixof var3248 var3248!1))
(assert true)
(define-const var2520 String (toString/-2075883882 var1960)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r5 
(check-sat)
(get-model)
(get-unsat-core)
; {indexOf/-1037706067=([java.lang.String, int], int), cast-from-Int-to-Int=([int], int), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/-1166366385=([java.lang.StringBuilder, char], java.lang.StringBuilder), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var995=r0, var1129=null_type, var1580=$i0, var3759=$i5, var3919=$c3, var2307=$c2, var1351=$r6, var472=$r2, var3248=$r3, var1960=$r4, var2520=$r5}
; {r0=var995, null_type=var1129, $i0=var1580, $i5=var3759, $c3=var3919, $c2=var2307, $r6=var1351, $r2=var472, $r3=var3248, $r4=var1960, $r5=var2520}
;seq <java.lang.String: int indexOf(int)>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.String: int indexOf(int)>": 1,"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(char)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @parameter0: java.lang.String;	$i0 = virtualinvoke r0.<java.lang.String: int indexOf(int)>(34);	$i5 = (int) -1;	if $i0 <= $i5 goto $c3 = 34;	$c3 = 34;	$c2 = 34;	$r6 = new java.lang.StringBuilder;	specialinvoke $r6.<java.lang.StringBuilder: void <init>()>();	$r2 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>($c3);	$r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r0);	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>($c2);	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>();	return $r5
;block_num 3