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
(declare-const null-__Array__Int__String__ (Array Int String))
(declare-const var518 (Array Int Int)) ; Statement: r1 := @parameter0: int[] 
(assert (not (= var518 null-__Array__Int__Int__)))
(declare-const var3910 (Array Int Int)) ; Statement: r3 := @parameter1: int[] 
(assert (not (= var3910 null-__Array__Int__Int__)))
(declare-const var2581 (Array Int String)) ; Statement: r4 := @parameter2: java.lang.String[] 
(assert (not (= var2581 null-__Array__Int__String__)))
(define-const var3462 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3462)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3462!1 String)
(assert (= var3462!1 ""))
(assert true)
;(assert (append/-1166366385 var3462!1 40)) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(40) 
(declare-const var3462!2 String)
(assert (str.prefixof var3462!1 var3462!2))
(define-const var3638 Int (getLength-Arr-Int-1 var518)) ; Statement: i0 = lengthof r1 
 ; Statement: if i0 <= 0 goto virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(41) 
(assert (<= var3638 0)) ; Cond: i0 <= 0 
(assert true)
;(assert (append/-1166366385 var3462!2 41)) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(41) 
(declare-const var3462!3 String)
(assert (str.prefixof var3462!2 var3462!3))
(assert true)
(define-const var2777 String (toString/-2075883882 var3462!3)) ; Statement: $r2 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r2 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/-1166366385=([java.lang.StringBuilder, char], java.lang.StringBuilder), getLength-Arr-Int-1=([int[]], int), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var518=r1, var3910=r3, var2581=r4, var3462=$r0, var3638=i0, var2777=$r2}
; {r1=var518, r3=var3910, r4=var2581, $r0=var3462, i0=var3638, $r2=var2777}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(char)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @parameter0: int[];	r3 := @parameter1: int[];	r4 := @parameter2: java.lang.String[];	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(40);	i0 = lengthof r1;	if i0 <= 0 goto virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(41);	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(41);	$r2 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>();	return $r2
;block_num 2