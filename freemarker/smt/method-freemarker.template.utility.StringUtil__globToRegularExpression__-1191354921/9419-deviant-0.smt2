(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3509 0)
(declare-sort var924 0)
(declare-sort var1927 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun length/-134980193 ((s String)) Int (str.len s))
(define-fun charAt/698050440 ((s String) (index Int)) Int (str.to_code (str.at s index)))
(declare-fun var924_appendLiteralGlobSection/-427210499 (String String Int Int) void)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun var1927_compile/915022044 (String Int) var1927)
(declare-const null-String String)
(declare-const null-Bool Bool)
(declare-const var741 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var741 null-String)))
(declare-const var2936 Bool) ; Statement: z0 := @parameter1: boolean 
(assert (not (= var2936 null-Bool)))
(define-const var646 String String-init) ; Statement: $r21 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var646)) ; Statement: specialinvoke $r21.<java.lang.StringBuilder: void <init>()>() 
(declare-const var646!1 String)
(assert (= var646!1 ""))
(define-const var3921 Int 0) ; Statement: i12 = 0 
(define-const var3792 Bool (ite (= 1 0) true false)) ; Statement: z1 = 0 
(assert true)
(define-const var1712 Int (length/-134980193 var741)) ; Statement: i0 = virtualinvoke r1.<java.lang.String: int length()>() 
(define-const var1810 Int 0) ; Statement: i13 = 0 
(assert true) ; Non Conditional
 ; Statement: if i13 >= i0 goto $i1 = virtualinvoke r1.<java.lang.String: int length()>() 
(assert (not (>= var1810 var1712))) ; Negate: Cond: i13 >= i0  
(assert (not (and true (and (> (str.len var741) var1810) (<= 0 var1810)))))
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), length/-134980193=([java.lang.String], int), charAt/698050440=([java.lang.String, int], char), var924_appendLiteralGlobSection/-427210499=([java.lang.StringBuilder, java.lang.String, int, int], void), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), var1927_compile/915022044=([java.lang.String, int], java.util.regex.Pattern)}
; {var741=r1, var3509=null_type, var2936=z0, var646=$r21, var3921=i12, var3792=z1, var1712=i0, var1810=i13, var2781=c2, var1515=$i1, var924=freemarker.template.utility.StringUtil, var3649=$r2, var1132=$b14, var1927=java.util.regex.Pattern, var2924=$r3}
; {r1=var741, null_type=var3509, z0=var2936, $r21=var646, i12=var3921, z1=var3792, i0=var1712, i13=var1810, c2=var2781, $i1=var1515, freemarker.template.utility.StringUtil=var924, $r2=var3649, $b14=var1132, java.util.regex.Pattern=var1927, $r3=var2924}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.String: int length()>;	<java.lang.String: char charAt(int)>;	<java.lang.String: int length()>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.String: int length()>": 2,"<java.lang.String: char charAt(int)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @parameter0: java.lang.String;	z0 := @parameter1: boolean;	$r21 = new java.lang.StringBuilder;	specialinvoke $r21.<java.lang.StringBuilder: void <init>()>();	i12 = 0;	z1 = 0;	i0 = virtualinvoke r1.<java.lang.String: int length()>();	i13 = 0;	if i13 >= i0 goto $i1 = virtualinvoke r1.<java.lang.String: int length()>();	c2 = virtualinvoke r1.<java.lang.String: char charAt(int)>(i13);	if z1 != 0 goto z1 = 0;	z1 = 0;	i13 = i13 + 1;	goto [?= (branch)];	if i13 >= i0 goto $i1 = virtualinvoke r1.<java.lang.String: int length()>();	$i1 = virtualinvoke r1.<java.lang.String: int length()>();	staticinvoke <freemarker.template.utility.StringUtil: void appendLiteralGlobSection(java.lang.StringBuilder,java.lang.String,int,int)>($r21, r1, i12, $i1);	$r2 = virtualinvoke $r21.<java.lang.StringBuilder: java.lang.String toString()>();	if z0 == 0 goto $b14 = 0;	$b14 = 0;	$r3 = staticinvoke <java.util.regex.Pattern: java.util.regex.Pattern compile(java.lang.String,int)>($r2, $b14);	return $r3
;block_num 9