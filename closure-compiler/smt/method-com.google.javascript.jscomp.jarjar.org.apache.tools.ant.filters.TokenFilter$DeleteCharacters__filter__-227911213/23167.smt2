(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1982 0)
(declare-sort var1293 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-fun <init>/1906106355 (String Int) void)
(define-fun toString/-222306083 ((s String)) String s)
(declare-const null-var1982 var1982)
(declare-const null-String String)
(declare-const var510 var1982) ; Statement: r3 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.filters.TokenFilter$DeleteCharacters 
(assert (not (= var510 null-var1982)))
(declare-const var2233 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var2233 null-String)))
(define-const var889 String String-init) ; Statement: $r0 = new java.lang.StringBuffer 
(assert true)
(define-const var3402 Int (length/-134980193 var2233)) ; Statement: $i0 = virtualinvoke r1.<java.lang.String: int length()>() 
(assert true)
;(assert (<init>/1906106355 var889 var3402)) ; Statement: specialinvoke $r0.<java.lang.StringBuffer: void <init>(int)>($i0) 

(declare-const var889!1 String)
(declare-const var3402!1 Int)
(define-const var2106 Int 0) ; Statement: i3 = 0 
(assert true) ; Non Conditional
(assert true)
(define-const var44 Int (length/-134980193 var2233)) ; Statement: $i1 = virtualinvoke r1.<java.lang.String: int length()>() 
 ; Statement: if i3 >= $i1 goto $r2 = virtualinvoke $r0.<java.lang.StringBuffer: java.lang.String toString()>() 
(assert (>= var2106 var44)) ; Cond: i3 >= $i1 
(assert true)
(define-const var934 String (toString/-222306083 var889!1)) ; Statement: $r2 = virtualinvoke $r0.<java.lang.StringBuffer: java.lang.String toString()>() 
 ; Statement: return $r2 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuffer), length/-134980193=([java.lang.String], int), <init>/1906106355=([java.lang.StringBuffer, int], void), toString/-222306083=([java.lang.StringBuffer], java.lang.String)}
; {var1982=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.filters.TokenFilter$DeleteCharacters, var510=r3, var2233=r1, var1293=null_type, var889=$r0, var3402=$i0, var2106=i3, var44=$i1, var934=$r2}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.filters.TokenFilter$DeleteCharacters=var1982, r3=var510, r1=var2233, null_type=var1293, $r0=var889, $i0=var3402, i3=var2106, $i1=var44, $r2=var934}
;seq <java.lang.String: int length()>;	<java.lang.StringBuffer: void <init>(int)>;	<java.lang.String: int length()>;	<java.lang.StringBuffer: java.lang.String toString()>
;cnt {"<java.lang.String: int length()>": 2,"<java.lang.StringBuffer: void <init>(int)>": 1,"<java.lang.StringBuffer: java.lang.String toString()>": 1}
;stmts r3 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.filters.TokenFilter$DeleteCharacters;	r1 := @parameter0: java.lang.String;	$r0 = new java.lang.StringBuffer;	$i0 = virtualinvoke r1.<java.lang.String: int length()>();	specialinvoke $r0.<java.lang.StringBuffer: void <init>(int)>($i0);	i3 = 0;	$i1 = virtualinvoke r1.<java.lang.String: int length()>();	if i3 >= $i1 goto $r2 = virtualinvoke $r0.<java.lang.StringBuffer: java.lang.String toString()>();	$r2 = virtualinvoke $r0.<java.lang.StringBuffer: java.lang.String toString()>();	return $r2
;block_num 3