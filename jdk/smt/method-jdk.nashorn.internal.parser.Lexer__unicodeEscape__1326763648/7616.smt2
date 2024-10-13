(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun Int_toHexString/1865784998 (Int) String)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-Int Int)
(declare-const var924 Int) ; Statement: c0 := @parameter0: char 
(assert (not (= var924 null-Int)))
(define-const var1071 String String-init) ; Statement: $r3 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1071)) ; Statement: specialinvoke $r3.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1071!1 String)
(assert (= var1071!1 ""))
(assert true)
;(assert (append/672562846 var1071!1 "\u005cu")) ; Statement: virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\\u") 
(declare-const var1071!2 String)
(assert (= var1071!2 (str.++ var1071!1 "\u005cu")))
(define-const var1677 Int (cast-from-Int-to-Int var924)) ; Statement: $i2 = (int) c0 
(define-const var1737 String (Int_toHexString/1865784998 var1677)) ; Statement: r1 = staticinvoke <java.lang.Integer: java.lang.String toHexString(int)>($i2) 
(assert true)
(define-const var3396 Int (length/-134980193 var1737)) ; Statement: i1 = virtualinvoke r1.<java.lang.String: int length()>() 
(assert true) ; Non Conditional
 ; Statement: if i1 >= 4 goto virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1) 
(assert (>= var3396 4)) ; Cond: i1 >= 4 
(assert true)
;(assert (append/672562846 var1071!2 var1737)) ; Statement: virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1) 
(declare-const var1071!3 String)
(assert (= var1071!3 (str.++ var1071!2 var1737)))
(assert true)
(define-const var2963 String (toString/-2075883882 var1071!3)) ; Statement: $r2 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r2 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), cast-from-Int-to-Int=([char], int), Int_toHexString/1865784998=([int], java.lang.String), length/-134980193=([java.lang.String], int), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var924=c0, var1071=$r3, var1677=$i2, var1737=r1, var3396=i1, var2963=$r2}
; {c0=var924, $r3=var1071, $i2=var1677, r1=var1737, i1=var3396, $r2=var2963}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.String: int length()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.String: int length()>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts c0 := @parameter0: char;	$r3 = new java.lang.StringBuilder;	specialinvoke $r3.<java.lang.StringBuilder: void <init>()>();	virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\\u");	$i2 = (int) c0;	r1 = staticinvoke <java.lang.Integer: java.lang.String toHexString(int)>($i2);	i1 = virtualinvoke r1.<java.lang.String: int length()>();	if i1 >= 4 goto virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1);	virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1);	$r2 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.String toString()>();	return $r2
;block_num 3