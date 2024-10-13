(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1569 0)
(declare-sort var2127 0)
(declare-sort var2826 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun var2826-init () var2826)
(declare-fun <init>/-1517764957 (var2826 String String Bool) void)
(declare-fun hasMoreTokens/711654492 (var2826) Bool)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var1569 var1569)
(declare-const null-String String)
(declare-const var2939 var1569) ; Statement: r5 := @this: org.hibernate.engine.jdbc.internal.HighlightingFormatter 
(assert (not (= var2939 null-var1569)))
(declare-const var3521 String) ; Statement: r2 := @parameter0: java.lang.String 
(assert (not (= var3521 null-String)))
(define-const var2598 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2598)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2598!1 String)
(assert (= var2598!1 ""))
(define-const var1221 Bool (ite (= 1 0) true false)) ; Statement: z5 = 0 
(define-const var546 Bool (ite (= 1 0) true false)) ; Statement: z8 = 0 
(define-const var723 Bool (ite (= 1 0) true false)) ; Statement: z7 = 0 
(define-const var2635 Bool (ite (= 1 0) true false)) ; Statement: z6 = 0 
(define-const var1390 Bool (ite (= 1 0) true false)) ; Statement: z10 = 0 
(define-const var2457 Bool (ite (= 1 0) true false)) ; Statement: z9 = 0 
(define-const var2252 var2826 var2826-init) ; Statement: $r1 = new java.util.StringTokenizer 
(assert true)
;(assert (<init>/-1517764957 var2252 var3521 "=><!+-*/()\u0027,.|&`\u0022? \n\r\f\t" (ite (= 1 1) true false))) ; Statement: specialinvoke $r1.<java.util.StringTokenizer: void <init>(java.lang.String,java.lang.String,boolean)>(r2, "=><!+-*/()\',.|&`\"? \n\r\f\t", 1) 

(declare-const var2252!1 var2826)
(declare-const var3521!1 String)
(declare-const var2794 String)
(declare-const var2326 Int)
(assert true) ; Non Conditional
(assert true)
(define-const var3182 Bool (hasMoreTokens/711654492 var2252!1)) ; Statement: $z0 = virtualinvoke $r1.<java.util.StringTokenizer: boolean hasMoreTokens()>() 
 ; Statement: if $z0 == 0 goto $r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert (= (ite var3182 1 0) 0)) ; Cond: $z0 == 0 
(assert true)
(define-const var3388 String (toString/-2075883882 var2598!1)) ; Statement: $r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r3 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), var2826-init=([], java.util.StringTokenizer), <init>/-1517764957=([java.util.StringTokenizer, java.lang.String, java.lang.String, boolean], void), hasMoreTokens/711654492=([java.util.StringTokenizer], boolean), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var1569=org.hibernate.engine.jdbc.internal.HighlightingFormatter, var2939=r5, var3521=r2, var2127=null_type, var2598=$r0, var1221=z5, var546=z8, var723=z7, var2635=z6, var1390=z10, var2457=z9, var2826=java.util.StringTokenizer, var2252=$r1, var2794="=><!+-*/()\',.|&`\"? \n\r\f\t", var2326=1, var3182=$z0, var3388=$r3}
; {org.hibernate.engine.jdbc.internal.HighlightingFormatter=var1569, r5=var2939, r2=var3521, null_type=var2127, $r0=var2598, z5=var1221, z8=var546, z7=var723, z6=var2635, z10=var1390, z9=var2457, java.util.StringTokenizer=var2826, $r1=var2252, "=><!+-*/()\',.|&`\"? \n\r\f\t"=var2794, 1=var2326, $z0=var3182, $r3=var3388}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r5 := @this: org.hibernate.engine.jdbc.internal.HighlightingFormatter;	r2 := @parameter0: java.lang.String;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	z5 = 0;	z8 = 0;	z7 = 0;	z6 = 0;	z10 = 0;	z9 = 0;	$r1 = new java.util.StringTokenizer;	specialinvoke $r1.<java.util.StringTokenizer: void <init>(java.lang.String,java.lang.String,boolean)>(r2, "=><!+-*/()\',.|&`\"? \n\r\f\t", 1);	$z0 = virtualinvoke $r1.<java.util.StringTokenizer: boolean hasMoreTokens()>();	if $z0 == 0 goto $r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>();	$r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>();	return $r3
;block_num 3