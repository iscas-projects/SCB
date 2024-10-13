(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var418 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-fun <init>/1906106355 (String Int) void)
(define-fun toString/-222306083 ((s String)) String s)
(declare-const null-String String)
(declare-const var2291 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var2291 null-String)))
(define-const var3355 String String-init) ; Statement: $r13 = new java.lang.StringBuffer 
(assert true)
(define-const var385 Int (length/-134980193 var2291)) ; Statement: $i0 = virtualinvoke r1.<java.lang.String: int length()>() 
(assert true)
;(assert (<init>/1906106355 var3355 var385)) ; Statement: specialinvoke $r13.<java.lang.StringBuffer: void <init>(int)>($i0) 

(declare-const var3355!1 String)
(declare-const var385!1 Int)
(define-const var222 Int 0) ; Statement: i6 = 0 
(assert true) ; Non Conditional
(assert true)
(define-const var3347 Int (length/-134980193 var2291)) ; Statement: $i1 = virtualinvoke r1.<java.lang.String: int length()>() 
 ; Statement: if i6 >= $i1 goto $r2 = virtualinvoke $r13.<java.lang.StringBuffer: java.lang.String toString()>() 
(assert (>= var222 var3347)) ; Cond: i6 >= $i1 
(assert true)
(define-const var733 String (toString/-222306083 var3355!1)) ; Statement: $r2 = virtualinvoke $r13.<java.lang.StringBuffer: java.lang.String toString()>() 
 ; Statement: return $r2 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuffer), length/-134980193=([java.lang.String], int), <init>/1906106355=([java.lang.StringBuffer, int], void), toString/-222306083=([java.lang.StringBuffer], java.lang.String)}
; {var2291=r1, var418=null_type, var3355=$r13, var385=$i0, var222=i6, var3347=$i1, var733=$r2}
; {r1=var2291, null_type=var418, $r13=var3355, $i0=var385, i6=var222, $i1=var3347, $r2=var733}
;seq <java.lang.String: int length()>;	<java.lang.StringBuffer: void <init>(int)>;	<java.lang.String: int length()>;	<java.lang.StringBuffer: java.lang.String toString()>
;cnt {"<java.lang.String: int length()>": 2,"<java.lang.StringBuffer: void <init>(int)>": 1,"<java.lang.StringBuffer: java.lang.String toString()>": 1}
;stmts r1 := @parameter0: java.lang.String;	$r13 = new java.lang.StringBuffer;	$i0 = virtualinvoke r1.<java.lang.String: int length()>();	specialinvoke $r13.<java.lang.StringBuffer: void <init>(int)>($i0);	i6 = 0;	$i1 = virtualinvoke r1.<java.lang.String: int length()>();	if i6 >= $i1 goto $r2 = virtualinvoke $r13.<java.lang.StringBuffer: java.lang.String toString()>();	$r2 = virtualinvoke $r13.<java.lang.StringBuffer: java.lang.String toString()>();	return $r2
;block_num 3