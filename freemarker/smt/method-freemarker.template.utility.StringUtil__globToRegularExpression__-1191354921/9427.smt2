(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2637 0)
(declare-sort var3855 0)
(declare-sort var132 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun length/-134980193 ((s String)) Int (str.len s))
(define-fun charAt/698050440 ((s String) (index Int)) Int (str.to_code (str.at s index)))
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun var3855_appendLiteralGlobSection/-427210499 (String String Int Int) void)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun var132_compile/915022044 (String Int) var132)
(declare-const null-String String)
(declare-const null-Bool Bool)
(declare-const var3054 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var3054 null-String)))
(declare-const var3394 Bool) ; Statement: z0 := @parameter1: boolean 
(assert (not (= var3394 null-Bool)))
(define-const var1248 String String-init) ; Statement: $r21 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1248)) ; Statement: specialinvoke $r21.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1248!1 String)
(assert (= var1248!1 ""))
(define-const var2247 Int 0) ; Statement: i12 = 0 
(define-const var197 Bool (ite (= 1 0) true false)) ; Statement: z1 = 0 
(assert true)
(define-const var3484 Int (length/-134980193 var3054)) ; Statement: i0 = virtualinvoke r1.<java.lang.String: int length()>() 
(define-const var2898 Int 0) ; Statement: i13 = 0 
(assert true) ; Non Conditional
 ; Statement: if i13 >= i0 goto $i1 = virtualinvoke r1.<java.lang.String: int length()>() 
(assert (not (>= var2898 var3484))) ; Negate: Cond: i13 >= i0  
(assert (and true (and (> (str.len var3054) var2898) (<= 0 var2898))))
(define-const var742 Int (charAt/698050440 var3054 var2898)) ; Statement: c2 = virtualinvoke r1.<java.lang.String: char charAt(int)>(i13) 
 ; Statement: if z1 != 0 goto z1 = 0 
(assert (not (not (= (ite var197 1 0) 0)))) ; Negate: Cond: z1 != 0  
(define-const var2847 Int (cast-from-Int-to-Int var742)) ; Statement: $i15 = (int) c2 
 ; Statement: if $i15 != 63 goto $i16 = (int) c2 
(assert (not (= var2847 63))) ; Cond: $i15 != 63 
(define-const var2490 Int (cast-from-Int-to-Int var742)) ; Statement: $i16 = (int) c2 
 ; Statement: if $i16 != 42 goto $i20 = (int) c2 
(assert (not (= var2490 42))) ; Cond: $i16 != 42 
(define-const var3228 Int (cast-from-Int-to-Int var742)) ; Statement: $i20 = (int) c2 
 ; Statement: if $i20 != 92 goto $i21 = (int) c2 
(assert (not (not (= var3228 92)))) ; Negate: Cond: $i20 != 92  
(define-const var197!1 Bool (ite (= 1 1) true false)) ; Statement: z1 = 1 
 ; Statement: goto [?= i13 = i13 + 1] 
(assert true) ; Non Conditional
(define-const var2898!1 Int (+ var2898 1)) ; Statement: i13 = i13 + 1 
 ; Statement: goto [?= (branch)] 
(assert true) ; Non Conditional
 ; Statement: if i13 >= i0 goto $i1 = virtualinvoke r1.<java.lang.String: int length()>() 
(assert (>= var2898!1 var3484)) ; Cond: i13 >= i0 
(assert true)
(define-const var1456 Int (length/-134980193 var3054)) ; Statement: $i1 = virtualinvoke r1.<java.lang.String: int length()>() 
;(assert (var3855_appendLiteralGlobSection/-427210499 var1248!1 var3054 var2247 var1456)) ; Statement: staticinvoke <freemarker.template.utility.StringUtil: void appendLiteralGlobSection(java.lang.StringBuilder,java.lang.String,int,int)>($r21, r1, i12, $i1) 

(declare-const var1248!2 String)
(declare-const var3054!1 String)
(declare-const var2247!1 Int)
(declare-const var1456!1 Int)
(assert true)
(define-const var3293 String (toString/-2075883882 var1248!2)) ; Statement: $r2 = virtualinvoke $r21.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: if z0 == 0 goto $b14 = 0 
(assert (= (ite var3394 1 0) 0)) ; Cond: z0 == 0 
(define-const var1600 Int 0) ; Statement: $b14 = 0 
(assert true) ; Non Conditional
(define-const var1984 var132 (var132_compile/915022044 var3293 var1600)) ; Statement: $r3 = staticinvoke <java.util.regex.Pattern: java.util.regex.Pattern compile(java.lang.String,int)>($r2, $b14) 
 ; Statement: return $r3 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), length/-134980193=([java.lang.String], int), charAt/698050440=([java.lang.String, int], char), cast-from-Int-to-Int=([char], int), var3855_appendLiteralGlobSection/-427210499=([java.lang.StringBuilder, java.lang.String, int, int], void), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), var132_compile/915022044=([java.lang.String, int], java.util.regex.Pattern)}
; {var3054=r1, var2637=null_type, var3394=z0, var1248=$r21, var2247=i12, var197=z1, var3484=i0, var2898=i13, var742=c2, var2847=$i15, var2490=$i16, var3228=$i20, var1456=$i1, var3855=freemarker.template.utility.StringUtil, var3293=$r2, var1600=$b14, var132=java.util.regex.Pattern, var1984=$r3}
; {r1=var3054, null_type=var2637, z0=var3394, $r21=var1248, i12=var2247, z1=var197, i0=var3484, i13=var2898, c2=var742, $i15=var2847, $i16=var2490, $i20=var3228, $i1=var1456, freemarker.template.utility.StringUtil=var3855, $r2=var3293, $b14=var1600, java.util.regex.Pattern=var132, $r3=var1984}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.String: int length()>;	<java.lang.String: char charAt(int)>;	<java.lang.String: int length()>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.String: int length()>": 2,"<java.lang.String: char charAt(int)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @parameter0: java.lang.String;	z0 := @parameter1: boolean;	$r21 = new java.lang.StringBuilder;	specialinvoke $r21.<java.lang.StringBuilder: void <init>()>();	i12 = 0;	z1 = 0;	i0 = virtualinvoke r1.<java.lang.String: int length()>();	i13 = 0;	if i13 >= i0 goto $i1 = virtualinvoke r1.<java.lang.String: int length()>();	c2 = virtualinvoke r1.<java.lang.String: char charAt(int)>(i13);	if z1 != 0 goto z1 = 0;	$i15 = (int) c2;	if $i15 != 63 goto $i16 = (int) c2;	$i16 = (int) c2;	if $i16 != 42 goto $i20 = (int) c2;	$i20 = (int) c2;	if $i20 != 92 goto $i21 = (int) c2;	z1 = 1;	goto [?= i13 = i13 + 1];	i13 = i13 + 1;	goto [?= (branch)];	if i13 >= i0 goto $i1 = virtualinvoke r1.<java.lang.String: int length()>();	$i1 = virtualinvoke r1.<java.lang.String: int length()>();	staticinvoke <freemarker.template.utility.StringUtil: void appendLiteralGlobSection(java.lang.StringBuilder,java.lang.String,int,int)>($r21, r1, i12, $i1);	$r2 = virtualinvoke $r21.<java.lang.StringBuilder: java.lang.String toString()>();	if z0 == 0 goto $b14 = 0;	$b14 = 0;	$r3 = staticinvoke <java.util.regex.Pattern: java.util.regex.Pattern compile(java.lang.String,int)>($r2, $b14);	return $r3
;block_num 12