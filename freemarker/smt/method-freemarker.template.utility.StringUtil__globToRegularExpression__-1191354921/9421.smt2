(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1007 0)
(declare-sort var846 0)
(declare-sort var1199 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun length/-134980193 ((s String)) Int (str.len s))
(define-fun charAt/698050440 ((s String) (index Int)) Int (str.to_code (str.at s index)))
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun var846_appendLiteralGlobSection/-427210499 (String String Int Int) void)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun var1199_compile/915022044 (String Int) var1199)
(declare-const null-String String)
(declare-const null-Bool Bool)
(declare-const var1236 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var1236 null-String)))
(declare-const var3703 Bool) ; Statement: z0 := @parameter1: boolean 
(assert (not (= var3703 null-Bool)))
(define-const var3879 String String-init) ; Statement: $r21 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3879)) ; Statement: specialinvoke $r21.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3879!1 String)
(assert (= var3879!1 ""))
(define-const var3543 Int 0) ; Statement: i12 = 0 
(define-const var3415 Bool (ite (= 1 0) true false)) ; Statement: z1 = 0 
(assert true)
(define-const var1555 Int (length/-134980193 var1236)) ; Statement: i0 = virtualinvoke r1.<java.lang.String: int length()>() 
(define-const var2018 Int 0) ; Statement: i13 = 0 
(assert true) ; Non Conditional
 ; Statement: if i13 >= i0 goto $i1 = virtualinvoke r1.<java.lang.String: int length()>() 
(assert (not (>= var2018 var1555))) ; Negate: Cond: i13 >= i0  
(assert (and true (and (> (str.len var1236) var2018) (<= 0 var2018))))
(define-const var2001 Int (charAt/698050440 var1236 var2018)) ; Statement: c2 = virtualinvoke r1.<java.lang.String: char charAt(int)>(i13) 
 ; Statement: if z1 != 0 goto z1 = 0 
(assert (not (not (= (ite var3415 1 0) 0)))) ; Negate: Cond: z1 != 0  
(define-const var2673 Int (cast-from-Int-to-Int var2001)) ; Statement: $i15 = (int) c2 
 ; Statement: if $i15 != 63 goto $i16 = (int) c2 
(assert (not (not (= var2673 63)))) ; Negate: Cond: $i15 != 63  
;(assert (var846_appendLiteralGlobSection/-427210499 var3879!1 var1236 var3543 var2018)) ; Statement: staticinvoke <freemarker.template.utility.StringUtil: void appendLiteralGlobSection(java.lang.StringBuilder,java.lang.String,int,int)>($r21, r1, i12, i13) 

(declare-const var3879!2 String)
(declare-const var1236!1 String)
(declare-const var3543!1 Int)
(declare-const var2018!1 Int)
(assert true)
;(assert (append/672562846 var3879!2 "[^/]")) ; Statement: virtualinvoke $r21.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("[^/]") 
(declare-const var3879!3 String)
(assert (= var3879!3 (str.++ var3879!2 "[^/]")))
(define-const var3543!2 Int (+ var2018!1 1)) ; Statement: i12 = i13 + 1 
 ; Statement: goto [?= i13 = i13 + 1] 
(assert true) ; Non Conditional
(define-const var2018!2 Int (+ var2018!1 1)) ; Statement: i13 = i13 + 1 
 ; Statement: goto [?= (branch)] 
(assert true) ; Non Conditional
 ; Statement: if i13 >= i0 goto $i1 = virtualinvoke r1.<java.lang.String: int length()>() 
(assert (>= var2018!2 var1555)) ; Cond: i13 >= i0 
(assert true)
(define-const var1307 Int (length/-134980193 var1236!1)) ; Statement: $i1 = virtualinvoke r1.<java.lang.String: int length()>() 
;(assert (var846_appendLiteralGlobSection/-427210499 var3879!3 var1236!1 var3543!2 var1307)) ; Statement: staticinvoke <freemarker.template.utility.StringUtil: void appendLiteralGlobSection(java.lang.StringBuilder,java.lang.String,int,int)>($r21, r1, i12, $i1) 

(declare-const var3879!4 String)
(declare-const var1236!2 String)
(declare-const var3543!3 Int)
(declare-const var1307!1 Int)
(assert true)
(define-const var585 String (toString/-2075883882 var3879!4)) ; Statement: $r2 = virtualinvoke $r21.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: if z0 == 0 goto $b14 = 0 
(assert (= (ite var3703 1 0) 0)) ; Cond: z0 == 0 
(define-const var871 Int 0) ; Statement: $b14 = 0 
(assert true) ; Non Conditional
(define-const var470 var1199 (var1199_compile/915022044 var585 var871)) ; Statement: $r3 = staticinvoke <java.util.regex.Pattern: java.util.regex.Pattern compile(java.lang.String,int)>($r2, $b14) 
 ; Statement: return $r3 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), length/-134980193=([java.lang.String], int), charAt/698050440=([java.lang.String, int], char), cast-from-Int-to-Int=([char], int), var846_appendLiteralGlobSection/-427210499=([java.lang.StringBuilder, java.lang.String, int, int], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), var1199_compile/915022044=([java.lang.String, int], java.util.regex.Pattern)}
; {var1236=r1, var1007=null_type, var3703=z0, var3879=$r21, var3543=i12, var3415=z1, var1555=i0, var2018=i13, var2001=c2, var2673=$i15, var846=freemarker.template.utility.StringUtil, var1307=$i1, var585=$r2, var871=$b14, var1199=java.util.regex.Pattern, var470=$r3}
; {r1=var1236, null_type=var1007, z0=var3703, $r21=var3879, i12=var3543, z1=var3415, i0=var1555, i13=var2018, c2=var2001, $i15=var2673, freemarker.template.utility.StringUtil=var846, $i1=var1307, $r2=var585, $b14=var871, java.util.regex.Pattern=var1199, $r3=var470}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.String: int length()>;	<java.lang.String: char charAt(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.String: int length()>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.String: int length()>": 2,"<java.lang.String: char charAt(int)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @parameter0: java.lang.String;	z0 := @parameter1: boolean;	$r21 = new java.lang.StringBuilder;	specialinvoke $r21.<java.lang.StringBuilder: void <init>()>();	i12 = 0;	z1 = 0;	i0 = virtualinvoke r1.<java.lang.String: int length()>();	i13 = 0;	if i13 >= i0 goto $i1 = virtualinvoke r1.<java.lang.String: int length()>();	c2 = virtualinvoke r1.<java.lang.String: char charAt(int)>(i13);	if z1 != 0 goto z1 = 0;	$i15 = (int) c2;	if $i15 != 63 goto $i16 = (int) c2;	staticinvoke <freemarker.template.utility.StringUtil: void appendLiteralGlobSection(java.lang.StringBuilder,java.lang.String,int,int)>($r21, r1, i12, i13);	virtualinvoke $r21.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("[^/]");	i12 = i13 + 1;	goto [?= i13 = i13 + 1];	i13 = i13 + 1;	goto [?= (branch)];	if i13 >= i0 goto $i1 = virtualinvoke r1.<java.lang.String: int length()>();	$i1 = virtualinvoke r1.<java.lang.String: int length()>();	staticinvoke <freemarker.template.utility.StringUtil: void appendLiteralGlobSection(java.lang.StringBuilder,java.lang.String,int,int)>($r21, r1, i12, $i1);	$r2 = virtualinvoke $r21.<java.lang.StringBuilder: java.lang.String toString()>();	if z0 == 0 goto $b14 = 0;	$b14 = 0;	$r3 = staticinvoke <java.util.regex.Pattern: java.util.regex.Pattern compile(java.lang.String,int)>($r2, $b14);	return $r3
;block_num 10