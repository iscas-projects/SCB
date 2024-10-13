(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3278 0)
(declare-sort var62 0)
(declare-sort var1995 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-fun var62_appendLiteralGlobSection/-427210499 (String String Int Int) void)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun var1995_compile/915022044 (String Int) var1995)
(declare-const null-String String)
(declare-const null-Bool Bool)
(declare-const var3674 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var3674 null-String)))
(declare-const var2616 Bool) ; Statement: z0 := @parameter1: boolean 
(assert (not (= var2616 null-Bool)))
(define-const var1618 String String-init) ; Statement: $r21 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1618)) ; Statement: specialinvoke $r21.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1618!1 String)
(assert (= var1618!1 ""))
(define-const var2103 Int 0) ; Statement: i12 = 0 
(define-const var144 Bool (ite (= 1 0) true false)) ; Statement: z1 = 0 
(assert true)
(define-const var1595 Int (length/-134980193 var3674)) ; Statement: i0 = virtualinvoke r1.<java.lang.String: int length()>() 
(define-const var1414 Int 0) ; Statement: i13 = 0 
(assert true) ; Non Conditional
 ; Statement: if i13 >= i0 goto $i1 = virtualinvoke r1.<java.lang.String: int length()>() 
(assert (>= var1414 var1595)) ; Cond: i13 >= i0 
(assert true)
(define-const var30 Int (length/-134980193 var3674)) ; Statement: $i1 = virtualinvoke r1.<java.lang.String: int length()>() 
;(assert (var62_appendLiteralGlobSection/-427210499 var1618!1 var3674 var2103 var30)) ; Statement: staticinvoke <freemarker.template.utility.StringUtil: void appendLiteralGlobSection(java.lang.StringBuilder,java.lang.String,int,int)>($r21, r1, i12, $i1) 

(declare-const var1618!2 String)
(declare-const var3674!1 String)
(declare-const var2103!1 Int)
(declare-const var30!1 Int)
(assert true)
(define-const var3199 String (toString/-2075883882 var1618!2)) ; Statement: $r2 = virtualinvoke $r21.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: if z0 == 0 goto $b14 = 0 
(assert (not (= (ite var2616 1 0) 0))) ; Negate: Cond: z0 == 0  
(define-const var626 Int 66) ; Statement: $b14 = 66 
 ; Statement: goto [?= $r3 = staticinvoke <java.util.regex.Pattern: java.util.regex.Pattern compile(java.lang.String,int)>($r2, $b14)] 
(assert true) ; Non Conditional
(define-const var3173 var1995 (var1995_compile/915022044 var3199 var626)) ; Statement: $r3 = staticinvoke <java.util.regex.Pattern: java.util.regex.Pattern compile(java.lang.String,int)>($r2, $b14) 
 ; Statement: return $r3 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), length/-134980193=([java.lang.String], int), var62_appendLiteralGlobSection/-427210499=([java.lang.StringBuilder, java.lang.String, int, int], void), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), var1995_compile/915022044=([java.lang.String, int], java.util.regex.Pattern)}
; {var3674=r1, var3278=null_type, var2616=z0, var1618=$r21, var2103=i12, var144=z1, var1595=i0, var1414=i13, var30=$i1, var62=freemarker.template.utility.StringUtil, var3199=$r2, var626=$b14, var1995=java.util.regex.Pattern, var3173=$r3}
; {r1=var3674, null_type=var3278, z0=var2616, $r21=var1618, i12=var2103, z1=var144, i0=var1595, i13=var1414, $i1=var30, freemarker.template.utility.StringUtil=var62, $r2=var3199, $b14=var626, java.util.regex.Pattern=var1995, $r3=var3173}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.String: int length()>;	<java.lang.String: int length()>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.String: int length()>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @parameter0: java.lang.String;	z0 := @parameter1: boolean;	$r21 = new java.lang.StringBuilder;	specialinvoke $r21.<java.lang.StringBuilder: void <init>()>();	i12 = 0;	z1 = 0;	i0 = virtualinvoke r1.<java.lang.String: int length()>();	i13 = 0;	if i13 >= i0 goto $i1 = virtualinvoke r1.<java.lang.String: int length()>();	$i1 = virtualinvoke r1.<java.lang.String: int length()>();	staticinvoke <freemarker.template.utility.StringUtil: void appendLiteralGlobSection(java.lang.StringBuilder,java.lang.String,int,int)>($r21, r1, i12, $i1);	$r2 = virtualinvoke $r21.<java.lang.StringBuilder: java.lang.String toString()>();	if z0 == 0 goto $b14 = 0;	$b14 = 66;	goto [?= $r3 = staticinvoke <java.util.regex.Pattern: java.util.regex.Pattern compile(java.lang.String,int)>($r2, $b14)];	$r3 = staticinvoke <java.util.regex.Pattern: java.util.regex.Pattern compile(java.lang.String,int)>($r2, $b14);	return $r3
;block_num 5