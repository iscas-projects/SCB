(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(declare-fun <init>/-1430969082 (String) void)
(declare-fun getLength-Arr-String-1 ((Array Int String)) Int)
(define-fun toString/-222306083 ((s String)) String s)
(declare-const null-__Array__Int__String__ (Array Int String))
(declare-const var3425 (Array Int String)) ; Statement: r1 := @parameter0: java.lang.String[] 
(assert (not (= var3425 null-__Array__Int__String__)))
(define-const var254 String String-init) ; Statement: $r0 = new java.lang.StringBuffer 
(assert true)
;(assert (<init>/-1430969082 var254)) ; Statement: specialinvoke $r0.<java.lang.StringBuffer: void <init>()>() 

(declare-const var254!1 String)
(define-const var1528 Int 0) ; Statement: i3 = 0 
(assert true) ; Non Conditional
(define-const var3868 Int (getLength-Arr-String-1 var3425)) ; Statement: $i0 = lengthof r1 
 ; Statement: if i3 >= $i0 goto $r2 = virtualinvoke $r0.<java.lang.StringBuffer: java.lang.String toString()>() 
(assert (>= var1528 var3868)) ; Cond: i3 >= $i0 
(assert true)
(define-const var612 String (toString/-222306083 var254!1)) ; Statement: $r2 = virtualinvoke $r0.<java.lang.StringBuffer: java.lang.String toString()>() 
 ; Statement: return $r2 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuffer), <init>/-1430969082=([java.lang.StringBuffer], void), getLength-Arr-String-1=([java.lang.String[]], int), toString/-222306083=([java.lang.StringBuffer], java.lang.String)}
; {var3425=r1, var254=$r0, var1528=i3, var3868=$i0, var612=$r2}
; {r1=var3425, $r0=var254, i3=var1528, $i0=var3868, $r2=var612}
;seq <java.lang.StringBuffer: void <init>()>;	<java.lang.StringBuffer: java.lang.String toString()>
;cnt {"<java.lang.StringBuffer: void <init>()>": 1,"<java.lang.StringBuffer: java.lang.String toString()>": 1}
;stmts r1 := @parameter0: java.lang.String[];	$r0 = new java.lang.StringBuffer;	specialinvoke $r0.<java.lang.StringBuffer: void <init>()>();	i3 = 0;	$i0 = lengthof r1;	if i3 >= $i0 goto $r2 = virtualinvoke $r0.<java.lang.StringBuffer: java.lang.String toString()>();	$r2 = virtualinvoke $r0.<java.lang.StringBuffer: java.lang.String toString()>();	return $r2
;block_num 3