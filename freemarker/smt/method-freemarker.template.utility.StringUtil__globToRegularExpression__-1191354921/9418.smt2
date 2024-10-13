(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var973 0)
(declare-sort var3745 0)
(declare-sort var1438 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun length/-134980193 ((s String)) Int (str.len s))
(define-fun charAt/698050440 ((s String) (index Int)) Int (str.to_code (str.at s index)))
(declare-fun var3745_appendLiteralGlobSection/-427210499 (String String Int Int) void)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun var1438_compile/915022044 (String Int) var1438)
(declare-const null-String String)
(declare-const null-Bool Bool)
(declare-const var3126 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var3126 null-String)))
(declare-const var3974 Bool) ; Statement: z0 := @parameter1: boolean 
(assert (not (= var3974 null-Bool)))
(define-const var3186 String String-init) ; Statement: $r21 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3186)) ; Statement: specialinvoke $r21.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3186!1 String)
(assert (= var3186!1 ""))
(define-const var182 Int 0) ; Statement: i12 = 0 
(define-const var3384 Bool (ite (= 1 0) true false)) ; Statement: z1 = 0 
(assert true)
(define-const var3331 Int (length/-134980193 var3126)) ; Statement: i0 = virtualinvoke r1.<java.lang.String: int length()>() 
(define-const var3396 Int 0) ; Statement: i13 = 0 
(assert true) ; Non Conditional
 ; Statement: if i13 >= i0 goto $i1 = virtualinvoke r1.<java.lang.String: int length()>() 
(assert (not (>= var3396 var3331))) ; Negate: Cond: i13 >= i0  
(assert (and true (and (> (str.len var3126) var3396) (<= 0 var3396))))
(define-const var1977 Int (charAt/698050440 var3126 var3396)) ; Statement: c2 = virtualinvoke r1.<java.lang.String: char charAt(int)>(i13) 
 ; Statement: if z1 != 0 goto z1 = 0 
(assert (not (= (ite var3384 1 0) 0))) ; Cond: z1 != 0 
(define-const var3384!1 Bool (ite (= 1 0) true false)) ; Statement: z1 = 0 
(assert true) ; Non Conditional
(define-const var3396!1 Int (+ var3396 1)) ; Statement: i13 = i13 + 1 
 ; Statement: goto [?= (branch)] 
(assert true) ; Non Conditional
 ; Statement: if i13 >= i0 goto $i1 = virtualinvoke r1.<java.lang.String: int length()>() 
(assert (>= var3396!1 var3331)) ; Cond: i13 >= i0 
(assert true)
(define-const var1543 Int (length/-134980193 var3126)) ; Statement: $i1 = virtualinvoke r1.<java.lang.String: int length()>() 
;(assert (var3745_appendLiteralGlobSection/-427210499 var3186!1 var3126 var182 var1543)) ; Statement: staticinvoke <freemarker.template.utility.StringUtil: void appendLiteralGlobSection(java.lang.StringBuilder,java.lang.String,int,int)>($r21, r1, i12, $i1) 

(declare-const var3186!2 String)
(declare-const var3126!1 String)
(declare-const var182!1 Int)
(declare-const var1543!1 Int)
(assert true)
(define-const var3716 String (toString/-2075883882 var3186!2)) ; Statement: $r2 = virtualinvoke $r21.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: if z0 == 0 goto $b14 = 0 
(assert (not (= (ite var3974 1 0) 0))) ; Negate: Cond: z0 == 0  
(define-const var52 Int 66) ; Statement: $b14 = 66 
 ; Statement: goto [?= $r3 = staticinvoke <java.util.regex.Pattern: java.util.regex.Pattern compile(java.lang.String,int)>($r2, $b14)] 
(assert true) ; Non Conditional
(define-const var3569 var1438 (var1438_compile/915022044 var3716 var52)) ; Statement: $r3 = staticinvoke <java.util.regex.Pattern: java.util.regex.Pattern compile(java.lang.String,int)>($r2, $b14) 
 ; Statement: return $r3 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), length/-134980193=([java.lang.String], int), charAt/698050440=([java.lang.String, int], char), var3745_appendLiteralGlobSection/-427210499=([java.lang.StringBuilder, java.lang.String, int, int], void), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), var1438_compile/915022044=([java.lang.String, int], java.util.regex.Pattern)}
; {var3126=r1, var973=null_type, var3974=z0, var3186=$r21, var182=i12, var3384=z1, var3331=i0, var3396=i13, var1977=c2, var1543=$i1, var3745=freemarker.template.utility.StringUtil, var3716=$r2, var52=$b14, var1438=java.util.regex.Pattern, var3569=$r3}
; {r1=var3126, null_type=var973, z0=var3974, $r21=var3186, i12=var182, z1=var3384, i0=var3331, i13=var3396, c2=var1977, $i1=var1543, freemarker.template.utility.StringUtil=var3745, $r2=var3716, $b14=var52, java.util.regex.Pattern=var1438, $r3=var3569}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.String: int length()>;	<java.lang.String: char charAt(int)>;	<java.lang.String: int length()>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.String: int length()>": 2,"<java.lang.String: char charAt(int)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @parameter0: java.lang.String;	z0 := @parameter1: boolean;	$r21 = new java.lang.StringBuilder;	specialinvoke $r21.<java.lang.StringBuilder: void <init>()>();	i12 = 0;	z1 = 0;	i0 = virtualinvoke r1.<java.lang.String: int length()>();	i13 = 0;	if i13 >= i0 goto $i1 = virtualinvoke r1.<java.lang.String: int length()>();	c2 = virtualinvoke r1.<java.lang.String: char charAt(int)>(i13);	if z1 != 0 goto z1 = 0;	z1 = 0;	i13 = i13 + 1;	goto [?= (branch)];	if i13 >= i0 goto $i1 = virtualinvoke r1.<java.lang.String: int length()>();	$i1 = virtualinvoke r1.<java.lang.String: int length()>();	staticinvoke <freemarker.template.utility.StringUtil: void appendLiteralGlobSection(java.lang.StringBuilder,java.lang.String,int,int)>($r21, r1, i12, $i1);	$r2 = virtualinvoke $r21.<java.lang.StringBuilder: java.lang.String toString()>();	if z0 == 0 goto $b14 = 0;	$b14 = 66;	goto [?= $r3 = staticinvoke <java.util.regex.Pattern: java.util.regex.Pattern compile(java.lang.String,int)>($r2, $b14)];	$r3 = staticinvoke <java.util.regex.Pattern: java.util.regex.Pattern compile(java.lang.String,int)>($r2, $b14);	return $r3
;block_num 9