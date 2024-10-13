(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun append/-1166366385 (String Int) String)
(declare-fun getLength-Arr-Float64-1 ((Array Int Float64)) Int)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-__Array__Int__Float64__ (Array Int Float64))
(declare-const var1384 (Array Int Float64)) ; Statement: r1 := @parameter0: double[] 
(assert (not (= var1384 null-__Array__Int__Float64__)))
(declare-const var2938 (Array Int Float64)) ; Statement: r3 := @parameter1: double[] 
(assert (not (= var2938 null-__Array__Int__Float64__)))
(define-const var3948 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3948)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3948!1 String)
(assert (= var3948!1 ""))
(assert true)
;(assert (append/-1166366385 var3948!1 91)) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(91) 
(declare-const var3948!2 String)
(assert (str.prefixof var3948!1 var3948!2))
(define-const var54 Int 0) ; Statement: i3 = 0 
(assert true) ; Non Conditional
(define-const var2178 Int (getLength-Arr-Float64-1 var1384)) ; Statement: $i0 = lengthof r1 
 ; Statement: if i3 >= $i0 goto virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(93) 
(assert (>= var54 var2178)) ; Cond: i3 >= $i0 
(assert true)
;(assert (append/-1166366385 var3948!2 93)) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(93) 
(declare-const var3948!3 String)
(assert (str.prefixof var3948!2 var3948!3))
(assert true)
(define-const var3169 String (toString/-2075883882 var3948!3)) ; Statement: $r2 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r2 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/-1166366385=([java.lang.StringBuilder, char], java.lang.StringBuilder), getLength-Arr-Float64-1=([double[]], int), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var1384=r1, var2938=r3, var3948=$r0, var54=i3, var2178=$i0, var3169=$r2}
; {r1=var1384, r3=var2938, $r0=var3948, i3=var54, $i0=var2178, $r2=var3169}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(char)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @parameter0: double[];	r3 := @parameter1: double[];	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(91);	i3 = 0;	$i0 = lengthof r1;	if i3 >= $i0 goto virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(93);	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(93);	$r2 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>();	return $r2
;block_num 3