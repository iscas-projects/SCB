(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var415 0)
(declare-sort var3749 0)
(declare-sort var1580 0)
(declare-sort var1060 0)
(declare-sort var30 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun <init>/-279557996 (var1580) void)
(declare-fun cast-from-var415-to-var1580 (var415) var1580)
(declare-fun quotes/2095068447 (var415) (Array Int Int))
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-fun var1060-init () var1060)
(declare-fun <init>/1909349671 (var1060 String String) void)
(declare-fun var30-init () var30)
(declare-fun <init>/1281898776 (var30) void)
(declare-fun tokens/2095068447 (var415) var30)
(declare-fun hasMoreTokens/711654492 (var1060) Bool)
(declare-const null-var415 var415)
(declare-const null-String String)
(declare-const null-__Array__Int__Int__ (Array Int Int))
(declare-const var149 var415) ; Statement: r0 := @this: jdk.nashorn.internal.runtime.QuotedStringTokenizer 
(assert (not (= var149 null-var415)))
(declare-const var602 String) ; Statement: r4 := @parameter0: java.lang.String 
(assert (not (= var602 null-String)))
(declare-const var1501 String) ; Statement: r2 := @parameter1: java.lang.String 
(assert (not (= var1501 null-String)))
(declare-const var3297 (Array Int Int)) ; Statement: r1 := @parameter2: char[] 
(assert (not (= var3297 null-__Array__Int__Int__)))
(assert true)
;(assert (<init>/-279557996 (cast-from-var415-to-var1580 var149))) ; Statement: specialinvoke r0.<java.lang.Object: void <init>()>() 

(declare-const var149!1 var415)
(declare-const var149!2 var415)
(assert (not (= var149!2 null-var415)))
(assert (= (quotes/2095068447 var149!2) var3297)) ; Statement: r0.<jdk.nashorn.internal.runtime.QuotedStringTokenizer: char[] quotes> = r1 
(define-const var2621 Bool (ite (= 1 1) true false)) ; Statement: z3 = 1 
(define-const var151 Int 0) ; Statement: i2 = 0 
(assert true) ; Non Conditional
(assert true)
(define-const var1087 Int (length/-134980193 var1501)) ; Statement: $i0 = virtualinvoke r2.<java.lang.String: int length()>() 
 ; Statement: if i2 >= $i0 goto $r3 = new java.util.StringTokenizer 
(assert (>= var151 var1087)) ; Cond: i2 >= $i0 
(define-const var578 var1060 var1060-init) ; Statement: $r3 = new java.util.StringTokenizer 
(assert true)
;(assert (<init>/1909349671 var578 var602 var1501)) ; Statement: specialinvoke $r3.<java.util.StringTokenizer: void <init>(java.lang.String,java.lang.String)>(r4, r2) 

(declare-const var578!1 var1060)
(declare-const var602!1 String)
(declare-const var1501!1 String)
(define-const var2515 var30 var30-init) ; Statement: $r5 = new java.util.LinkedList 
(assert true)
;(assert (<init>/1281898776 var2515)) ; Statement: specialinvoke $r5.<java.util.LinkedList: void <init>()>() 

(declare-const var2515!1 var30)
(declare-const var149!3 var415)
(assert (not (= var149!3 null-var415)))
(assert (= (tokens/2095068447 var149!3) var2515!1)) ; Statement: r0.<jdk.nashorn.internal.runtime.QuotedStringTokenizer: java.util.LinkedList tokens> = $r5 
(assert true) ; Non Conditional
(assert true)
(define-const var3432 Bool (hasMoreTokens/711654492 var578!1)) ; Statement: $z4 = virtualinvoke $r3.<java.util.StringTokenizer: boolean hasMoreTokens()>() 
 ; Statement: if $z4 == 0 goto return 
(assert (= (ite var3432 1 0) 0)) ; Cond: $z4 == 0 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {<init>/-279557996=([java.lang.Object], void), cast-from-var415-to-var1580=([jdk.nashorn.internal.runtime.QuotedStringTokenizer], java.lang.Object), quotes/2095068447=([jdk.nashorn.internal.runtime.QuotedStringTokenizer], char[]), length/-134980193=([java.lang.String], int), var1060-init=([], java.util.StringTokenizer), <init>/1909349671=([java.util.StringTokenizer, java.lang.String, java.lang.String], void), var30-init=([], java.util.LinkedList), <init>/1281898776=([java.util.LinkedList], void), tokens/2095068447=([jdk.nashorn.internal.runtime.QuotedStringTokenizer], java.util.LinkedList), hasMoreTokens/711654492=([java.util.StringTokenizer], boolean)}
; {var415=jdk.nashorn.internal.runtime.QuotedStringTokenizer, var149=r0, var602=r4, var3749=null_type, var1501=r2, var3297=r1, var1580=java.lang.Object, var2621=z3, var151=i2, var1087=$i0, var1060=java.util.StringTokenizer, var578=$r3, var30=java.util.LinkedList, var2515=$r5, var3432=$z4}
; {jdk.nashorn.internal.runtime.QuotedStringTokenizer=var415, r0=var149, r4=var602, null_type=var3749, r2=var1501, r1=var3297, java.lang.Object=var1580, z3=var2621, i2=var151, $i0=var1087, java.util.StringTokenizer=var1060, $r3=var578, java.util.LinkedList=var30, $r5=var2515, $z4=var3432}
;seq <java.lang.String: int length()>
;cnt {"<java.lang.String: int length()>": 1}
;stmts r0 := @this: jdk.nashorn.internal.runtime.QuotedStringTokenizer;	r4 := @parameter0: java.lang.String;	r2 := @parameter1: java.lang.String;	r1 := @parameter2: char[];	specialinvoke r0.<java.lang.Object: void <init>()>();	r0.<jdk.nashorn.internal.runtime.QuotedStringTokenizer: char[] quotes> = r1;	z3 = 1;	i2 = 0;	$i0 = virtualinvoke r2.<java.lang.String: int length()>();	if i2 >= $i0 goto $r3 = new java.util.StringTokenizer;	$r3 = new java.util.StringTokenizer;	specialinvoke $r3.<java.util.StringTokenizer: void <init>(java.lang.String,java.lang.String)>(r4, r2);	$r5 = new java.util.LinkedList;	specialinvoke $r5.<java.util.LinkedList: void <init>()>();	r0.<jdk.nashorn.internal.runtime.QuotedStringTokenizer: java.util.LinkedList tokens> = $r5;	$z4 = virtualinvoke $r3.<java.util.StringTokenizer: boolean hasMoreTokens()>();	if $z4 == 0 goto return;	return
;block_num 5