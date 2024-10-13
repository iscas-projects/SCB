(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var527 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/-1061048412 ((s String)) String s)
(declare-fun size/1399086874 (var527) Int)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var527 var527)
(declare-const var3561 var527) ; Statement: r1 := @this: freemarker.core.HashLiteral 
(assert (not (= var3561 null-var527)))
(define-const var889 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/-1061048412 var889 "{")) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>(java.lang.String)>("{") 
(declare-const var889!1 String)
(assert (= var889!1 "{"))
(define-const var2961 Int 0) ; Statement: i3 = 0 
(assert true) ; Non Conditional
(define-const var3400 Int (size/1399086874 var3561)) ; Statement: $i0 = r1.<freemarker.core.HashLiteral: int size> 
 ; Statement: if i3 >= $i0 goto virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("}") 
(assert (>= var2961 var3400)) ; Cond: i3 >= $i0 
(assert true)
;(assert (append/672562846 var889!1 "}")) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("}") 
(declare-const var889!2 String)
(assert (= var889!2 (str.++ var889!1 "}")))
(assert true)
(define-const var1108 String (toString/-2075883882 var889!2)) ; Statement: $r2 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r2 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/-1061048412=([java.lang.StringBuilder, java.lang.String], void), size/1399086874=([freemarker.core.HashLiteral], int), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var527=freemarker.core.HashLiteral, var3561=r1, var889=$r0, var2961=i3, var3400=$i0, var1108=$r2}
; {freemarker.core.HashLiteral=var527, r1=var3561, $r0=var889, i3=var2961, $i0=var3400, $r2=var1108}
;seq <java.lang.StringBuilder: void <init>(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: freemarker.core.HashLiteral;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>(java.lang.String)>("{");	i3 = 0;	$i0 = r1.<freemarker.core.HashLiteral: int size>;	if i3 >= $i0 goto virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("}");	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("}");	$r2 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>();	return $r2
;block_num 3