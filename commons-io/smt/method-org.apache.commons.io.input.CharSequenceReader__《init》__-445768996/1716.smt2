(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2139 0)
(declare-sort var994 0)
(declare-sort var3817 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun <init>/-553797664 (var994) void)
(declare-fun cast-from-var2139-to-var994 (var2139) var994)
(declare-fun var3817-init () var3817)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/875830710 (var3817 String) void)
(declare-const null-var2139 var2139)
(declare-const null-String String)
(declare-const null-Int Int)
(declare-const var2272 var2139) ; Statement: r0 := @this: org.apache.commons.io.input.CharSequenceReader 
(assert (not (= var2272 null-var2139)))
(declare-const var1226 String) ; Statement: r1 := @parameter0: java.lang.CharSequence 
(assert (not (= var1226 null-String)))
(declare-const var3006 Int) ; Statement: i0 := @parameter1: int 
(assert (not (= var3006 null-Int)))
(declare-const var1658 Int) ; Statement: i1 := @parameter2: int 
(assert (not (= var1658 null-Int)))
(assert true)
;(assert (<init>/-553797664 (cast-from-var2139-to-var994 var2272))) ; Statement: specialinvoke r0.<java.io.Reader: void <init>()>() 

(declare-const var2272!1 var2139)
 ; Statement: if i0 >= 0 goto (branch) 
(assert (not (>= var3006 0))) ; Negate: Cond: i0 >= 0  
(define-const var2017 var3817 var3817-init) ; Statement: $r10 = new java.lang.IllegalArgumentException 
(define-const var2920 String String-init) ; Statement: $r11 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2920)) ; Statement: specialinvoke $r11.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2920!1 String)
(assert (= var2920!1 ""))
(assert true)
(define-const var2867 String (append/672562846 var2920!1 "Start index is less than zero: ")) ; Statement: $r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Start index is less than zero: ") 
(declare-const var2920!2 String)
(assert (= var2920!2 (str.++ var2920!1 "Start index is less than zero: ")))
(assert true)
(define-const var3709 String (append/-1001720160 var2867 var3006)) ; Statement: $r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i0) 
(declare-const var2867!1 String)
(assert (str.prefixof var2867 var2867!1))
(assert true)
(define-const var1634 String (toString/-2075883882 var3709)) ; Statement: $r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/875830710 var2017 var1634)) ; Statement: specialinvoke $r10.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r14) 

(declare-const var2017!1 var3817)
(declare-const var1634!1 String)
 ; Statement: throw $r10 
(check-sat)
(get-model)
(get-unsat-core)
; {<init>/-553797664=([java.io.Reader], void), cast-from-var2139-to-var994=([org.apache.commons.io.input.CharSequenceReader], java.io.Reader), var3817-init=([], java.lang.IllegalArgumentException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/875830710=([java.lang.IllegalArgumentException, java.lang.String], void)}
; {var2139=org.apache.commons.io.input.CharSequenceReader, var2272=r0, var1226=r1, var3006=i0, var1658=i1, var994=java.io.Reader, var3817=java.lang.IllegalArgumentException, var2017=$r10, var2920=$r11, var2867=$r12, var3709=$r13, var1634=$r14}
; {org.apache.commons.io.input.CharSequenceReader=var2139, r0=var2272, r1=var1226, i0=var3006, i1=var1658, java.io.Reader=var994, java.lang.IllegalArgumentException=var3817, $r10=var2017, $r11=var2920, $r12=var2867, $r13=var3709, $r14=var1634}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: org.apache.commons.io.input.CharSequenceReader;	r1 := @parameter0: java.lang.CharSequence;	i0 := @parameter1: int;	i1 := @parameter2: int;	specialinvoke r0.<java.io.Reader: void <init>()>();	if i0 >= 0 goto (branch);	$r10 = new java.lang.IllegalArgumentException;	$r11 = new java.lang.StringBuilder;	specialinvoke $r11.<java.lang.StringBuilder: void <init>()>();	$r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Start index is less than zero: ");	$r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i0);	$r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r10.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r14);	throw $r10
;block_num 2