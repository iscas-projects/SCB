(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2798 0)
(declare-sort var1956 0)
(declare-sort var3358 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun var3358-init () var3358)
(declare-fun <init>/-1517764957 (var3358 String String Bool) void)
(declare-fun countTokens/-2104213579 (var3358) Int)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var2798 var2798)
(declare-const null-String String)
(declare-const var3275 var2798) ; Statement: r6 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.jsp.WLJspc 
(assert (not (= var3275 null-var2798)))
(declare-const var3944 String) ; Statement: r2 := @parameter0: java.lang.String 
(assert (not (= var3944 null-String)))
(declare-const var2735 String) ; Statement: r3 := @parameter1: java.lang.String 
(assert (not (= var2735 null-String)))
(declare-const var2697 String) ; Statement: r5 := @parameter2: java.lang.String 
(assert (not (= var2697 null-String)))
(define-const var3802 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3802)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3802!1 String)
(assert (= var3802!1 ""))
(define-const var1632 var3358 var3358-init) ; Statement: $r1 = new java.util.StringTokenizer 
(assert true)
;(assert (<init>/-1517764957 var1632 var3944 var2735 (ite (= 1 1) true false))) ; Statement: specialinvoke $r1.<java.util.StringTokenizer: void <init>(java.lang.String,java.lang.String,boolean)>(r2, r3, 1) 

(declare-const var1632!1 var3358)
(declare-const var3944!1 String)
(declare-const var2735!1 String)
(declare-const var2775 Int)
(assert true)
(define-const var2097 Int (countTokens/-2104213579 var1632!1)) ; Statement: i0 = virtualinvoke $r1.<java.util.StringTokenizer: int countTokens()>() 
(define-const var2820 Int 0) ; Statement: i1 = 0 
(assert true) ; Non Conditional
 ; Statement: if i1 >= i0 goto $r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert (>= var2820 var2097)) ; Cond: i1 >= i0 
(assert true)
(define-const var2595 String (toString/-2075883882 var3802!1)) ; Statement: $r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r4 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), var3358-init=([], java.util.StringTokenizer), <init>/-1517764957=([java.util.StringTokenizer, java.lang.String, java.lang.String, boolean], void), countTokens/-2104213579=([java.util.StringTokenizer], int), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var2798=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.jsp.WLJspc, var3275=r6, var3944=r2, var1956=null_type, var2735=r3, var2697=r5, var3802=$r0, var3358=java.util.StringTokenizer, var1632=$r1, var2775=1, var2097=i0, var2820=i1, var2595=$r4}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.jsp.WLJspc=var2798, r6=var3275, r2=var3944, null_type=var1956, r3=var2735, r5=var2697, $r0=var3802, java.util.StringTokenizer=var3358, $r1=var1632, 1=var2775, i0=var2097, i1=var2820, $r4=var2595}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r6 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.jsp.WLJspc;	r2 := @parameter0: java.lang.String;	r3 := @parameter1: java.lang.String;	r5 := @parameter2: java.lang.String;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r1 = new java.util.StringTokenizer;	specialinvoke $r1.<java.util.StringTokenizer: void <init>(java.lang.String,java.lang.String,boolean)>(r2, r3, 1);	i0 = virtualinvoke $r1.<java.util.StringTokenizer: int countTokens()>();	i1 = 0;	if i1 >= i0 goto $r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>();	$r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>();	return $r4
;block_num 3