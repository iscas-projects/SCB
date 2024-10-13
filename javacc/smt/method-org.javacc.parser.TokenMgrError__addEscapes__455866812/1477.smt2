(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2787 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(declare-fun <init>/-1430969082 (String) void)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(define-fun toString/-222306083 ((s String)) String s)
(declare-const null-String String)
(declare-const var964 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var964 null-String)))
(define-const var2660 String String-init) ; Statement: $r13 = new java.lang.StringBuffer 
(assert true)
;(assert (<init>/-1430969082 var2660)) ; Statement: specialinvoke $r13.<java.lang.StringBuffer: void <init>()>() 

(declare-const var2660!1 String)
(define-const var683 Int 0) ; Statement: i6 = 0 
(assert true) ; Non Conditional
(assert true)
(define-const var1373 Int (length/-134980193 var964)) ; Statement: $i0 = virtualinvoke r1.<java.lang.String: int length()>() 
 ; Statement: if i6 >= $i0 goto $r2 = virtualinvoke $r13.<java.lang.StringBuffer: java.lang.String toString()>() 
(assert (>= var683 var1373)) ; Cond: i6 >= $i0 
(assert true)
(define-const var149 String (toString/-222306083 var2660!1)) ; Statement: $r2 = virtualinvoke $r13.<java.lang.StringBuffer: java.lang.String toString()>() 
 ; Statement: return $r2 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuffer), <init>/-1430969082=([java.lang.StringBuffer], void), length/-134980193=([java.lang.String], int), toString/-222306083=([java.lang.StringBuffer], java.lang.String)}
; {var964=r1, var2787=null_type, var2660=$r13, var683=i6, var1373=$i0, var149=$r2}
; {r1=var964, null_type=var2787, $r13=var2660, i6=var683, $i0=var1373, $r2=var149}
;seq <java.lang.StringBuffer: void <init>()>;	<java.lang.String: int length()>;	<java.lang.StringBuffer: java.lang.String toString()>
;cnt {"<java.lang.StringBuffer: void <init>()>": 1,"<java.lang.String: int length()>": 1,"<java.lang.StringBuffer: java.lang.String toString()>": 1}
;stmts r1 := @parameter0: java.lang.String;	$r13 = new java.lang.StringBuffer;	specialinvoke $r13.<java.lang.StringBuffer: void <init>()>();	i6 = 0;	$i0 = virtualinvoke r1.<java.lang.String: int length()>();	if i6 >= $i0 goto $r2 = virtualinvoke $r13.<java.lang.StringBuffer: java.lang.String toString()>();	$r2 = virtualinvoke $r13.<java.lang.StringBuffer: java.lang.String toString()>();	return $r2
;block_num 3