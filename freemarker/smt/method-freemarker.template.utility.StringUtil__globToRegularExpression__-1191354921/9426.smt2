(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2127 0)
(declare-sort var2181 0)
(declare-sort var1862 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun length/-134980193 ((s String)) Int (str.len s))
(define-fun charAt/698050440 ((s String) (index Int)) Int (str.to_code (str.at s index)))
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun var2181_appendLiteralGlobSection/-427210499 (String String Int Int) void)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun var1862_compile/915022044 (String Int) var1862)
(declare-const null-String String)
(declare-const null-Bool Bool)
(declare-const var203 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var203 null-String)))
(declare-const var920 Bool) ; Statement: z0 := @parameter1: boolean 
(assert (not (= var920 null-Bool)))
(define-const var1374 String String-init) ; Statement: $r21 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1374)) ; Statement: specialinvoke $r21.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1374!1 String)
(assert (= var1374!1 ""))
(define-const var3471 Int 0) ; Statement: i12 = 0 
(define-const var3875 Bool (ite (= 1 0) true false)) ; Statement: z1 = 0 
(assert true)
(define-const var1687 Int (length/-134980193 var203)) ; Statement: i0 = virtualinvoke r1.<java.lang.String: int length()>() 
(define-const var3819 Int 0) ; Statement: i13 = 0 
(assert true) ; Non Conditional
 ; Statement: if i13 >= i0 goto $i1 = virtualinvoke r1.<java.lang.String: int length()>() 
(assert (not (>= var3819 var1687))) ; Negate: Cond: i13 >= i0  
(assert (and true (and (> (str.len var203) var3819) (<= 0 var3819))))
(define-const var496 Int (charAt/698050440 var203 var3819)) ; Statement: c2 = virtualinvoke r1.<java.lang.String: char charAt(int)>(i13) 
 ; Statement: if z1 != 0 goto z1 = 0 
(assert (not (not (= (ite var3875 1 0) 0)))) ; Negate: Cond: z1 != 0  
(define-const var3650 Int (cast-from-Int-to-Int var496)) ; Statement: $i15 = (int) c2 
 ; Statement: if $i15 != 63 goto $i16 = (int) c2 
(assert (not (= var3650 63))) ; Cond: $i15 != 63 
(define-const var1910 Int (cast-from-Int-to-Int var496)) ; Statement: $i16 = (int) c2 
 ; Statement: if $i16 != 42 goto $i20 = (int) c2 
(assert (not (= var1910 42))) ; Cond: $i16 != 42 
(define-const var153 Int (cast-from-Int-to-Int var496)) ; Statement: $i20 = (int) c2 
 ; Statement: if $i20 != 92 goto $i21 = (int) c2 
(assert (not (not (= var153 92)))) ; Negate: Cond: $i20 != 92  
(define-const var3875!1 Bool (ite (= 1 1) true false)) ; Statement: z1 = 1 
 ; Statement: goto [?= i13 = i13 + 1] 
(assert true) ; Non Conditional
(define-const var3819!1 Int (+ var3819 1)) ; Statement: i13 = i13 + 1 
 ; Statement: goto [?= (branch)] 
(assert true) ; Non Conditional
 ; Statement: if i13 >= i0 goto $i1 = virtualinvoke r1.<java.lang.String: int length()>() 
(assert (>= var3819!1 var1687)) ; Cond: i13 >= i0 
(assert true)
(define-const var3656 Int (length/-134980193 var203)) ; Statement: $i1 = virtualinvoke r1.<java.lang.String: int length()>() 
;(assert (var2181_appendLiteralGlobSection/-427210499 var1374!1 var203 var3471 var3656)) ; Statement: staticinvoke <freemarker.template.utility.StringUtil: void appendLiteralGlobSection(java.lang.StringBuilder,java.lang.String,int,int)>($r21, r1, i12, $i1) 

(declare-const var1374!2 String)
(declare-const var203!1 String)
(declare-const var3471!1 Int)
(declare-const var3656!1 Int)
(assert true)
(define-const var2914 String (toString/-2075883882 var1374!2)) ; Statement: $r2 = virtualinvoke $r21.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: if z0 == 0 goto $b14 = 0 
(assert (not (= (ite var920 1 0) 0))) ; Negate: Cond: z0 == 0  
(define-const var129 Int 66) ; Statement: $b14 = 66 
 ; Statement: goto [?= $r3 = staticinvoke <java.util.regex.Pattern: java.util.regex.Pattern compile(java.lang.String,int)>($r2, $b14)] 
(assert true) ; Non Conditional
(define-const var2679 var1862 (var1862_compile/915022044 var2914 var129)) ; Statement: $r3 = staticinvoke <java.util.regex.Pattern: java.util.regex.Pattern compile(java.lang.String,int)>($r2, $b14) 
 ; Statement: return $r3 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), length/-134980193=([java.lang.String], int), charAt/698050440=([java.lang.String, int], char), cast-from-Int-to-Int=([char], int), var2181_appendLiteralGlobSection/-427210499=([java.lang.StringBuilder, java.lang.String, int, int], void), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), var1862_compile/915022044=([java.lang.String, int], java.util.regex.Pattern)}
; {var203=r1, var2127=null_type, var920=z0, var1374=$r21, var3471=i12, var3875=z1, var1687=i0, var3819=i13, var496=c2, var3650=$i15, var1910=$i16, var153=$i20, var3656=$i1, var2181=freemarker.template.utility.StringUtil, var2914=$r2, var129=$b14, var1862=java.util.regex.Pattern, var2679=$r3}
; {r1=var203, null_type=var2127, z0=var920, $r21=var1374, i12=var3471, z1=var3875, i0=var1687, i13=var3819, c2=var496, $i15=var3650, $i16=var1910, $i20=var153, $i1=var3656, freemarker.template.utility.StringUtil=var2181, $r2=var2914, $b14=var129, java.util.regex.Pattern=var1862, $r3=var2679}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.String: int length()>;	<java.lang.String: char charAt(int)>;	<java.lang.String: int length()>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.String: int length()>": 2,"<java.lang.String: char charAt(int)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @parameter0: java.lang.String;	z0 := @parameter1: boolean;	$r21 = new java.lang.StringBuilder;	specialinvoke $r21.<java.lang.StringBuilder: void <init>()>();	i12 = 0;	z1 = 0;	i0 = virtualinvoke r1.<java.lang.String: int length()>();	i13 = 0;	if i13 >= i0 goto $i1 = virtualinvoke r1.<java.lang.String: int length()>();	c2 = virtualinvoke r1.<java.lang.String: char charAt(int)>(i13);	if z1 != 0 goto z1 = 0;	$i15 = (int) c2;	if $i15 != 63 goto $i16 = (int) c2;	$i16 = (int) c2;	if $i16 != 42 goto $i20 = (int) c2;	$i20 = (int) c2;	if $i20 != 92 goto $i21 = (int) c2;	z1 = 1;	goto [?= i13 = i13 + 1];	i13 = i13 + 1;	goto [?= (branch)];	if i13 >= i0 goto $i1 = virtualinvoke r1.<java.lang.String: int length()>();	$i1 = virtualinvoke r1.<java.lang.String: int length()>();	staticinvoke <freemarker.template.utility.StringUtil: void appendLiteralGlobSection(java.lang.StringBuilder,java.lang.String,int,int)>($r21, r1, i12, $i1);	$r2 = virtualinvoke $r21.<java.lang.StringBuilder: java.lang.String toString()>();	if z0 == 0 goto $b14 = 0;	$b14 = 66;	goto [?= $r3 = staticinvoke <java.util.regex.Pattern: java.util.regex.Pattern compile(java.lang.String,int)>($r2, $b14)];	$r3 = staticinvoke <java.util.regex.Pattern: java.util.regex.Pattern compile(java.lang.String,int)>($r2, $b14);	return $r3
;block_num 12