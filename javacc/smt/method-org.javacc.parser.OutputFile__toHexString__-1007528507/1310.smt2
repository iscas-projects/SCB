(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(declare-fun <init>/1906106355 (String Int) void)
(declare-fun getLength-Arr-Int-1 ((Array Int Int)) Int)
(define-fun toString/-222306083 ((s String)) String s)
(declare-const null-__Array__Int__Int__ (Array Int Int))
(declare-const var1685 (Array Int Int)) ; Statement: r1 := @parameter0: byte[] 
(assert (not (= var1685 null-__Array__Int__Int__)))
(define-const var2102 String String-init) ; Statement: $r6 = new java.lang.StringBuffer 
(assert true)
;(assert (<init>/1906106355 var2102 32)) ; Statement: specialinvoke $r6.<java.lang.StringBuffer: void <init>(int)>(32) 

(declare-const var2102!1 String)
(declare-const var2482 Int)
(define-const var735 Int 0) ; Statement: i7 = 0 
(assert true) ; Non Conditional
(define-const var2843 Int (getLength-Arr-Int-1 var1685)) ; Statement: $i0 = lengthof r1 
 ; Statement: if i7 >= $i0 goto $r2 = virtualinvoke $r6.<java.lang.StringBuffer: java.lang.String toString()>() 
(assert (>= var735 var2843)) ; Cond: i7 >= $i0 
(assert true)
(define-const var2691 String (toString/-222306083 var2102!1)) ; Statement: $r2 = virtualinvoke $r6.<java.lang.StringBuffer: java.lang.String toString()>() 
 ; Statement: return $r2 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuffer), <init>/1906106355=([java.lang.StringBuffer, int], void), getLength-Arr-Int-1=([byte[]], int), toString/-222306083=([java.lang.StringBuffer], java.lang.String)}
; {var1685=r1, var2102=$r6, var2482=32, var735=i7, var2843=$i0, var2691=$r2}
; {r1=var1685, $r6=var2102, 32=var2482, i7=var735, $i0=var2843, $r2=var2691}
;seq <java.lang.StringBuffer: void <init>(int)>;	<java.lang.StringBuffer: java.lang.String toString()>
;cnt {"<java.lang.StringBuffer: void <init>(int)>": 1,"<java.lang.StringBuffer: java.lang.String toString()>": 1}
;stmts r1 := @parameter0: byte[];	$r6 = new java.lang.StringBuffer;	specialinvoke $r6.<java.lang.StringBuffer: void <init>(int)>(32);	i7 = 0;	$i0 = lengthof r1;	if i7 >= $i0 goto $r2 = virtualinvoke $r6.<java.lang.StringBuffer: java.lang.String toString()>();	$r2 = virtualinvoke $r6.<java.lang.StringBuffer: java.lang.String toString()>();	return $r2
;block_num 3