(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2856 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(declare-fun <init>/-1430969082 (String) void)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(define-fun toString/-222306083 ((s String)) String s)
(declare-const null-String String)
(declare-const var2118 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var2118 null-String)))
(define-const var3786 String String-init) ; Statement: $r13 = new java.lang.StringBuffer 
(assert true)
;(assert (<init>/-1430969082 var3786)) ; Statement: specialinvoke $r13.<java.lang.StringBuffer: void <init>()>() 

(declare-const var3786!1 String)
(define-const var3122 Int 0) ; Statement: i6 = 0 
(assert true) ; Non Conditional
(assert true)
(define-const var3689 Int (length/-134980193 var2118)) ; Statement: $i0 = virtualinvoke r1.<java.lang.String: int length()>() 
 ; Statement: if i6 >= $i0 goto $r2 = virtualinvoke $r13.<java.lang.StringBuffer: java.lang.String toString()>() 
(assert (>= var3122 var3689)) ; Cond: i6 >= $i0 
(assert true)
(define-const var2901 String (toString/-222306083 var3786!1)) ; Statement: $r2 = virtualinvoke $r13.<java.lang.StringBuffer: java.lang.String toString()>() 
 ; Statement: return $r2 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuffer), <init>/-1430969082=([java.lang.StringBuffer], void), length/-134980193=([java.lang.String], int), toString/-222306083=([java.lang.StringBuffer], java.lang.String)}
; {var2118=r1, var2856=null_type, var3786=$r13, var3122=i6, var3689=$i0, var2901=$r2}
; {r1=var2118, null_type=var2856, $r13=var3786, i6=var3122, $i0=var3689, $r2=var2901}
;seq <java.lang.StringBuffer: void <init>()>;	<java.lang.String: int length()>;	<java.lang.StringBuffer: java.lang.String toString()>
;cnt {"<java.lang.StringBuffer: void <init>()>": 1,"<java.lang.String: int length()>": 1,"<java.lang.StringBuffer: java.lang.String toString()>": 1}
;stmts r1 := @parameter0: java.lang.String;	$r13 = new java.lang.StringBuffer;	specialinvoke $r13.<java.lang.StringBuffer: void <init>()>();	i6 = 0;	$i0 = virtualinvoke r1.<java.lang.String: int length()>();	if i6 >= $i0 goto $r2 = virtualinvoke $r13.<java.lang.StringBuffer: java.lang.String toString()>();	$r2 = virtualinvoke $r13.<java.lang.StringBuffer: java.lang.String toString()>();	return $r2
;block_num 3