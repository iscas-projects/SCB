(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1224 0)
(declare-sort var695 0)
(declare-sort var2149 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun length/-134980193 ((s String)) Int (str.len s))
(define-fun charAt/698050440 ((s String) (index Int)) Int (str.to_code (str.at s index)))
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun var695_appendLiteralGlobSection/-427210499 (String String Int Int) void)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun var2149_compile/915022044 (String Int) var2149)
(declare-const null-String String)
(declare-const null-Bool Bool)
(declare-const var3859 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var3859 null-String)))
(declare-const var2108 Bool) ; Statement: z0 := @parameter1: boolean 
(assert (not (= var2108 null-Bool)))
(define-const var2953 String String-init) ; Statement: $r21 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2953)) ; Statement: specialinvoke $r21.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2953!1 String)
(assert (= var2953!1 ""))
(define-const var1540 Int 0) ; Statement: i12 = 0 
(define-const var1545 Bool (ite (= 1 0) true false)) ; Statement: z1 = 0 
(assert true)
(define-const var3576 Int (length/-134980193 var3859)) ; Statement: i0 = virtualinvoke r1.<java.lang.String: int length()>() 
(define-const var1518 Int 0) ; Statement: i13 = 0 
(assert true) ; Non Conditional
 ; Statement: if i13 >= i0 goto $i1 = virtualinvoke r1.<java.lang.String: int length()>() 
(assert (not (>= var1518 var3576))) ; Negate: Cond: i13 >= i0  
(assert (not (and true (and (> (str.len var3859) var1518) (<= 0 var1518)))))
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), length/-134980193=([java.lang.String], int), charAt/698050440=([java.lang.String, int], char), cast-from-Int-to-Int=([char], int), var695_appendLiteralGlobSection/-427210499=([java.lang.StringBuilder, java.lang.String, int, int], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), var2149_compile/915022044=([java.lang.String, int], java.util.regex.Pattern)}
; {var3859=r1, var1224=null_type, var2108=z0, var2953=$r21, var1540=i12, var1545=z1, var3576=i0, var1518=i13, var3986=c2, var1737=$i15, var695=freemarker.template.utility.StringUtil, var2004=$i1, var750=$r2, var3077=$b14, var2149=java.util.regex.Pattern, var1123=$r3}
; {r1=var3859, null_type=var1224, z0=var2108, $r21=var2953, i12=var1540, z1=var1545, i0=var3576, i13=var1518, c2=var3986, $i15=var1737, freemarker.template.utility.StringUtil=var695, $i1=var2004, $r2=var750, $b14=var3077, java.util.regex.Pattern=var2149, $r3=var1123}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.String: int length()>;	<java.lang.String: char charAt(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.String: int length()>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.String: int length()>": 2,"<java.lang.String: char charAt(int)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @parameter0: java.lang.String;	z0 := @parameter1: boolean;	$r21 = new java.lang.StringBuilder;	specialinvoke $r21.<java.lang.StringBuilder: void <init>()>();	i12 = 0;	z1 = 0;	i0 = virtualinvoke r1.<java.lang.String: int length()>();	i13 = 0;	if i13 >= i0 goto $i1 = virtualinvoke r1.<java.lang.String: int length()>();	c2 = virtualinvoke r1.<java.lang.String: char charAt(int)>(i13);	if z1 != 0 goto z1 = 0;	$i15 = (int) c2;	if $i15 != 63 goto $i16 = (int) c2;	staticinvoke <freemarker.template.utility.StringUtil: void appendLiteralGlobSection(java.lang.StringBuilder,java.lang.String,int,int)>($r21, r1, i12, i13);	virtualinvoke $r21.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("[^/]");	i12 = i13 + 1;	goto [?= i13 = i13 + 1];	i13 = i13 + 1;	goto [?= (branch)];	if i13 >= i0 goto $i1 = virtualinvoke r1.<java.lang.String: int length()>();	$i1 = virtualinvoke r1.<java.lang.String: int length()>();	staticinvoke <freemarker.template.utility.StringUtil: void appendLiteralGlobSection(java.lang.StringBuilder,java.lang.String,int,int)>($r21, r1, i12, $i1);	$r2 = virtualinvoke $r21.<java.lang.StringBuilder: java.lang.String toString()>();	if z0 == 0 goto $b14 = 0;	$b14 = 66;	goto [?= $r3 = staticinvoke <java.util.regex.Pattern: java.util.regex.Pattern compile(java.lang.String,int)>($r2, $b14)];	$r3 = staticinvoke <java.util.regex.Pattern: java.util.regex.Pattern compile(java.lang.String,int)>($r2, $b14);	return $r3
;block_num 10