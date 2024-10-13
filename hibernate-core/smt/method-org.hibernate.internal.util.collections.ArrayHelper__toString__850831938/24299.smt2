(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var361 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getLength-Arr-var361-1 ((Array Int var361)) Int)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-__Array__Int__var361__ (Array Int var361))
(declare-const var67 (Array Int var361)) ; Statement: r1 := @parameter0: java.lang.Object[] 
(assert (not (= var67 null-__Array__Int__var361__)))
(define-const var709 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var709)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var709!1 String)
(assert (= var709!1 ""))
(assert true)
;(assert (append/672562846 var709!1 "[")) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("[") 
(declare-const var709!2 String)
(assert (= var709!2 (str.++ var709!1 "[")))
(define-const var2087 Int 0) ; Statement: i3 = 0 
(assert true) ; Non Conditional
(define-const var489 Int (getLength-Arr-var361-1 var67)) ; Statement: $i0 = lengthof r1 
 ; Statement: if i3 >= $i0 goto virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("]") 
(assert (>= var2087 var489)) ; Cond: i3 >= $i0 
(assert true)
;(assert (append/672562846 var709!2 "]")) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("]") 
(declare-const var709!3 String)
(assert (= var709!3 (str.++ var709!2 "]")))
(assert true)
(define-const var2376 String (toString/-2075883882 var709!3)) ; Statement: $r2 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r2 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), getLength-Arr-var361-1=([java.lang.Object[]], int), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var361=java.lang.Object, var67=r1, var709=$r0, var2087=i3, var489=$i0, var2376=$r2}
; {java.lang.Object=var361, r1=var67, $r0=var709, i3=var2087, $i0=var489, $r2=var2376}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @parameter0: java.lang.Object[];	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("[");	i3 = 0;	$i0 = lengthof r1;	if i3 >= $i0 goto virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("]");	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("]");	$r2 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>();	return $r2
;block_num 3