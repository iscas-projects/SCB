(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun append/-1166366385 (String Int) String)
(declare-fun getLength-Arr-Int-1 ((Array Int Int)) Int)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-__Array__Int__Int__ (Array Int Int))
(declare-const var877 (Array Int Int)) ; Statement: r1 := @parameter0: int[] 
(assert (not (= var877 null-__Array__Int__Int__)))
(define-const var2705 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2705)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2705!1 String)
(assert (= var2705!1 ""))
(assert true)
;(assert (append/-1166366385 var2705!1 34)) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(34) 
(declare-const var2705!2 String)
(assert (str.prefixof var2705!1 var2705!2))
(define-const var3872 Int (getLength-Arr-Int-1 var877)) ; Statement: i0 = lengthof r1 
(define-const var2272 Int 0) ; Statement: i2 = 0 
(assert true) ; Non Conditional
 ; Statement: if i2 >= i0 goto virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(34) 
(assert (>= var2272 var3872)) ; Cond: i2 >= i0 
(assert true)
;(assert (append/-1166366385 var2705!2 34)) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(34) 
(declare-const var2705!3 String)
(assert (str.prefixof var2705!2 var2705!3))
(assert true)
(define-const var1809 String (toString/-2075883882 var2705!3)) ; Statement: $r2 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r2 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/-1166366385=([java.lang.StringBuilder, char], java.lang.StringBuilder), getLength-Arr-Int-1=([int[]], int), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var877=r1, var2705=$r0, var3872=i0, var2272=i2, var1809=$r2}
; {r1=var877, $r0=var2705, i0=var3872, i2=var2272, $r2=var1809}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(char)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @parameter0: int[];	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(34);	i0 = lengthof r1;	i2 = 0;	if i2 >= i0 goto virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(34);	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(34);	$r2 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>();	return $r2
;block_num 3