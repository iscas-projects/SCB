(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var718 0)
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
(declare-const var1347 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var1347 null-String)))
(assert true)
(define-const var3366 Int (indexOf/-1037706067 var1347 34)) ; Statement: $i0 = virtualinvoke r0.<java.lang.String: int indexOf(int)>(34) 
(define-const var3284 Int (cast-from-Int-to-Int (- 1))) ; Statement: $i5 = (int) -1 
 ; Statement: if $i0 <= $i5 goto $c3 = 34 
(assert (not (<= var3366 var3284))) ; Negate: Cond: $i0 <= $i5  
(define-const var3606 Int 39) ; Statement: $c3 = 39 
(define-const var2625 Int 39) ; Statement: $c2 = 39 
 ; Statement: goto [?= $r6 = new java.lang.StringBuilder] 
(assert true) ; Non Conditional
(define-const var434 String String-init) ; Statement: $r6 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var434)) ; Statement: specialinvoke $r6.<java.lang.StringBuilder: void <init>()>() 
(declare-const var434!1 String)
(assert (= var434!1 ""))
(assert true)
(define-const var1660 String (append/-1166366385 var434!1 var3606)) ; Statement: $r2 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>($c3) 
(declare-const var434!2 String)
(assert (str.prefixof var434!1 var434!2))
(assert true)
(define-const var3213 String (append/672562846 var1660 var1347)) ; Statement: $r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r0) 
(declare-const var1660!1 String)
(assert (= var1660!1 (str.++ var1660 var1347)))
(assert true)
(define-const var1632 String (append/-1166366385 var3213 var2625)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>($c2) 
(declare-const var3213!1 String)
(assert (str.prefixof var3213 var3213!1))
(assert true)
(define-const var1925 String (toString/-2075883882 var1632)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r5 
(check-sat)
(get-model)
(get-unsat-core)
; {indexOf/-1037706067=([java.lang.String, int], int), cast-from-Int-to-Int=([int], int), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/-1166366385=([java.lang.StringBuilder, char], java.lang.StringBuilder), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var1347=r0, var718=null_type, var3366=$i0, var3284=$i5, var3606=$c3, var2625=$c2, var434=$r6, var1660=$r2, var3213=$r3, var1632=$r4, var1925=$r5}
; {r0=var1347, null_type=var718, $i0=var3366, $i5=var3284, $c3=var3606, $c2=var2625, $r6=var434, $r2=var1660, $r3=var3213, $r4=var1632, $r5=var1925}
;seq <java.lang.String: int indexOf(int)>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.String: int indexOf(int)>": 1,"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(char)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @parameter0: java.lang.String;	$i0 = virtualinvoke r0.<java.lang.String: int indexOf(int)>(34);	$i5 = (int) -1;	if $i0 <= $i5 goto $c3 = 34;	$c3 = 39;	$c2 = 39;	goto [?= $r6 = new java.lang.StringBuilder];	$r6 = new java.lang.StringBuilder;	specialinvoke $r6.<java.lang.StringBuilder: void <init>()>();	$r2 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>($c3);	$r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r0);	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>($c2);	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>();	return $r5
;block_num 3