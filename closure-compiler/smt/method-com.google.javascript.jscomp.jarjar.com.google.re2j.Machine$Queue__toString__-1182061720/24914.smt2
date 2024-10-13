(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2100 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun append/-1166366385 (String Int) String)
(declare-fun size/2040289992 (var2100) Int)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var2100 var2100)
(declare-const var3465 var2100) ; Statement: r1 := @this: com.google.javascript.jscomp.jarjar.com.google.re2j.Machine$Queue 
(assert (not (= var3465 null-var2100)))
(define-const var667 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var667)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var667!1 String)
(assert (= var667!1 ""))
(assert true)
;(assert (append/-1166366385 var667!1 123)) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(123) 
(declare-const var667!2 String)
(assert (str.prefixof var667!1 var667!2))
(define-const var9 Int 0) ; Statement: i2 = 0 
(assert true) ; Non Conditional
(define-const var3889 Int (size/2040289992 var3465)) ; Statement: $i0 = r1.<com.google.javascript.jscomp.jarjar.com.google.re2j.Machine$Queue: int size> 
 ; Statement: if i2 >= $i0 goto virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(125) 
(assert (>= var9 var3889)) ; Cond: i2 >= $i0 
(assert true)
;(assert (append/-1166366385 var667!2 125)) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(125) 
(declare-const var667!3 String)
(assert (str.prefixof var667!2 var667!3))
(assert true)
(define-const var3303 String (toString/-2075883882 var667!3)) ; Statement: $r2 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r2 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/-1166366385=([java.lang.StringBuilder, char], java.lang.StringBuilder), size/2040289992=([com.google.javascript.jscomp.jarjar.com.google.re2j.Machine$Queue], int), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var2100=com.google.javascript.jscomp.jarjar.com.google.re2j.Machine$Queue, var3465=r1, var667=$r0, var9=i2, var3889=$i0, var3303=$r2}
; {com.google.javascript.jscomp.jarjar.com.google.re2j.Machine$Queue=var2100, r1=var3465, $r0=var667, i2=var9, $i0=var3889, $r2=var3303}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(char)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: com.google.javascript.jscomp.jarjar.com.google.re2j.Machine$Queue;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(123);	i2 = 0;	$i0 = r1.<com.google.javascript.jscomp.jarjar.com.google.re2j.Machine$Queue: int size>;	if i2 >= $i0 goto virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(125);	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(125);	$r2 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>();	return $r2
;block_num 3