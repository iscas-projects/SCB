(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var274 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun used/-1786515416 (var274) Int)
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(declare-fun p/-1786515416 (var274) (Array Int Int))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var274 var274)
(declare-const var837 var274) ; Statement: r1 := @this: jdk.nashorn.internal.runtime.regexp.joni.CodeRangeBuffer 
(assert (not (= var837 null-var274)))
(define-const var3455 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3455)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3455!1 String)
(assert (= var3455!1 ""))
(assert true)
;(assert (append/672562846 var3455!1 "CodeRange")) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("CodeRange") 
(declare-const var3455!2 String)
(assert (= var3455!2 (str.++ var3455!1 "CodeRange")))
(assert true)
(define-const var3240 String (append/672562846 var3455!2 "\n  used: ")) ; Statement: $r2 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\n  used: ") 
(declare-const var3455!3 String)
(assert (= var3455!3 (str.++ var3455!2 "\n  used: ")))
(define-const var1543 Int (used/-1786515416 var837)) ; Statement: $i0 = r1.<jdk.nashorn.internal.runtime.regexp.joni.CodeRangeBuffer: int used> 
(assert true)
;(assert (append/-1001720160 var3240 var1543)) ; Statement: virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i0) 
(declare-const var3240!1 String)
(assert (str.prefixof var3240 var3240!1))
(assert true)
(define-const var3624 String (append/672562846 var3455!3 "\n  code point: ")) ; Statement: $r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\n  code point: ") 
(declare-const var3455!4 String)
(assert (= var3455!4 (str.++ var3455!3 "\n  code point: ")))
(define-const var2566 (Array Int Int) (p/-1786515416 var837)) ; Statement: $r3 = r1.<jdk.nashorn.internal.runtime.regexp.joni.CodeRangeBuffer: int[] p> 
(define-const var1809 Int (select var2566 0)) ; Statement: $i1 = $r3[0] 
(assert true)
;(assert (append/-1001720160 var3624 var1809)) ; Statement: virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i1) 
(declare-const var3624!1 String)
(assert (str.prefixof var3624 var3624!1))
(assert true)
;(assert (append/672562846 var3455!4 "\n  ranges: ")) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\n  ranges: ") 
(declare-const var3455!5 String)
(assert (= var3455!5 (str.++ var3455!4 "\n  ranges: ")))
(define-const var2659 Int 0) ; Statement: i10 = 0 
(assert true) ; Non Conditional
(define-const var2451 (Array Int Int) (p/-1786515416 var837)) ; Statement: $r5 = r1.<jdk.nashorn.internal.runtime.regexp.joni.CodeRangeBuffer: int[] p> 
(define-const var2721 Int (select var2451 0)) ; Statement: $i2 = $r5[0] 
 ; Statement: if i10 >= $i2 goto $r6 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert (>= var2659 var2721)) ; Cond: i10 >= $i2 
(assert true)
(define-const var2224 String (toString/-2075883882 var3455!5)) ; Statement: $r6 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r6 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), used/-1786515416=([jdk.nashorn.internal.runtime.regexp.joni.CodeRangeBuffer], int), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), p/-1786515416=([jdk.nashorn.internal.runtime.regexp.joni.CodeRangeBuffer], int[]), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var274=jdk.nashorn.internal.runtime.regexp.joni.CodeRangeBuffer, var837=r1, var3455=$r0, var3240=$r2, var1543=$i0, var3624=$r4, var2566=$r3, var1809=$i1, var2659=i10, var2451=$r5, var2721=$i2, var2224=$r6}
; {jdk.nashorn.internal.runtime.regexp.joni.CodeRangeBuffer=var274, r1=var837, $r0=var3455, $r2=var3240, $i0=var1543, $r4=var3624, $r3=var2566, $i1=var1809, i10=var2659, $r5=var2451, $i2=var2721, $r6=var2224}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 4,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: jdk.nashorn.internal.runtime.regexp.joni.CodeRangeBuffer;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("CodeRange");	$r2 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\n  used: ");	$i0 = r1.<jdk.nashorn.internal.runtime.regexp.joni.CodeRangeBuffer: int used>;	virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i0);	$r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\n  code point: ");	$r3 = r1.<jdk.nashorn.internal.runtime.regexp.joni.CodeRangeBuffer: int[] p>;	$i1 = $r3[0];	virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i1);	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\n  ranges: ");	i10 = 0;	$r5 = r1.<jdk.nashorn.internal.runtime.regexp.joni.CodeRangeBuffer: int[] p>;	$i2 = $r5[0];	if i10 >= $i2 goto $r6 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>();	$r6 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>();	return $r6
;block_num 3