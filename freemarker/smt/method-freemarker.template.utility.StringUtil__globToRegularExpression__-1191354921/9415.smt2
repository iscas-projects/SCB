(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1459 0)
(declare-sort var1196 0)
(declare-sort var3052 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-fun var1196_appendLiteralGlobSection/-427210499 (String String Int Int) void)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun var3052_compile/915022044 (String Int) var3052)
(declare-const null-String String)
(declare-const null-Bool Bool)
(declare-const var3145 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var3145 null-String)))
(declare-const var458 Bool) ; Statement: z0 := @parameter1: boolean 
(assert (not (= var458 null-Bool)))
(define-const var424 String String-init) ; Statement: $r21 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var424)) ; Statement: specialinvoke $r21.<java.lang.StringBuilder: void <init>()>() 
(declare-const var424!1 String)
(assert (= var424!1 ""))
(define-const var3761 Int 0) ; Statement: i12 = 0 
(define-const var1585 Bool (ite (= 1 0) true false)) ; Statement: z1 = 0 
(assert true)
(define-const var3633 Int (length/-134980193 var3145)) ; Statement: i0 = virtualinvoke r1.<java.lang.String: int length()>() 
(define-const var1935 Int 0) ; Statement: i13 = 0 
(assert true) ; Non Conditional
 ; Statement: if i13 >= i0 goto $i1 = virtualinvoke r1.<java.lang.String: int length()>() 
(assert (>= var1935 var3633)) ; Cond: i13 >= i0 
(assert true)
(define-const var2767 Int (length/-134980193 var3145)) ; Statement: $i1 = virtualinvoke r1.<java.lang.String: int length()>() 
;(assert (var1196_appendLiteralGlobSection/-427210499 var424!1 var3145 var3761 var2767)) ; Statement: staticinvoke <freemarker.template.utility.StringUtil: void appendLiteralGlobSection(java.lang.StringBuilder,java.lang.String,int,int)>($r21, r1, i12, $i1) 

(declare-const var424!2 String)
(declare-const var3145!1 String)
(declare-const var3761!1 Int)
(declare-const var2767!1 Int)
(assert true)
(define-const var1527 String (toString/-2075883882 var424!2)) ; Statement: $r2 = virtualinvoke $r21.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: if z0 == 0 goto $b14 = 0 
(assert (= (ite var458 1 0) 0)) ; Cond: z0 == 0 
(define-const var1191 Int 0) ; Statement: $b14 = 0 
(assert true) ; Non Conditional
(define-const var918 var3052 (var3052_compile/915022044 var1527 var1191)) ; Statement: $r3 = staticinvoke <java.util.regex.Pattern: java.util.regex.Pattern compile(java.lang.String,int)>($r2, $b14) 
 ; Statement: return $r3 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), length/-134980193=([java.lang.String], int), var1196_appendLiteralGlobSection/-427210499=([java.lang.StringBuilder, java.lang.String, int, int], void), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), var3052_compile/915022044=([java.lang.String, int], java.util.regex.Pattern)}
; {var3145=r1, var1459=null_type, var458=z0, var424=$r21, var3761=i12, var1585=z1, var3633=i0, var1935=i13, var2767=$i1, var1196=freemarker.template.utility.StringUtil, var1527=$r2, var1191=$b14, var3052=java.util.regex.Pattern, var918=$r3}
; {r1=var3145, null_type=var1459, z0=var458, $r21=var424, i12=var3761, z1=var1585, i0=var3633, i13=var1935, $i1=var2767, freemarker.template.utility.StringUtil=var1196, $r2=var1527, $b14=var1191, java.util.regex.Pattern=var3052, $r3=var918}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.String: int length()>;	<java.lang.String: int length()>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.String: int length()>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @parameter0: java.lang.String;	z0 := @parameter1: boolean;	$r21 = new java.lang.StringBuilder;	specialinvoke $r21.<java.lang.StringBuilder: void <init>()>();	i12 = 0;	z1 = 0;	i0 = virtualinvoke r1.<java.lang.String: int length()>();	i13 = 0;	if i13 >= i0 goto $i1 = virtualinvoke r1.<java.lang.String: int length()>();	$i1 = virtualinvoke r1.<java.lang.String: int length()>();	staticinvoke <freemarker.template.utility.StringUtil: void appendLiteralGlobSection(java.lang.StringBuilder,java.lang.String,int,int)>($r21, r1, i12, $i1);	$r2 = virtualinvoke $r21.<java.lang.StringBuilder: java.lang.String toString()>();	if z0 == 0 goto $b14 = 0;	$b14 = 0;	$r3 = staticinvoke <java.util.regex.Pattern: java.util.regex.Pattern compile(java.lang.String,int)>($r2, $b14);	return $r3
;block_num 5