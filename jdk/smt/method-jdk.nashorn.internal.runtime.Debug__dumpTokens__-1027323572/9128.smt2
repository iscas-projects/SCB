(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1183 0)
(declare-sort var1435 0)
(declare-sort var2907 0)
(declare-sort var2008 0)
(declare-sort var1235 0)
(declare-sort var2548 0)
(declare-sort var1125 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun last/1673240473 (var2907) Int)
(declare-fun get/23830475 (var2907 Int) Int)
(declare-fun var1235_descType/1144703550 (Int) var2008)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(declare-fun var1235_toString/-1372018499 (var1183 Int Bool) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun println/1773605060 (var2548 String) void)
(declare-const null-var1183 var1183)
(declare-const null-var1435 var1435)
(declare-const null-var2907 var2907)
(declare-const var1125-out var2548)
(declare-const var2008-EOF var2008)
(declare-const var3226 var1183) ; Statement: r6 := @parameter0: jdk.nashorn.internal.runtime.Source 
(assert (not (= var3226 null-var1183)))
(declare-const var897 var1435) ; Statement: r12 := @parameter1: jdk.nashorn.internal.parser.Lexer 
(assert (not (= var897 null-var1435)))
(declare-const var3460 var2907) ; Statement: r0 := @parameter2: jdk.nashorn.internal.parser.TokenStream 
(assert (not (= var3460 null-var2907)))
(define-const var2216 Int 0) ; Statement: i1 = 0 
(assert true) ; Non Conditional
(assert true)
(define-const var3410 Int (last/1673240473 var3460)) ; Statement: $i2 = virtualinvoke r0.<jdk.nashorn.internal.parser.TokenStream: int last()>() 
 ; Statement: if i1 <= $i2 goto l0 = virtualinvoke r0.<jdk.nashorn.internal.parser.TokenStream: long get(int)>(i1) 
(assert (<= var2216 var3410)) ; Cond: i1 <= $i2 
(assert true)
(define-const var481 Int (get/23830475 var3460 var2216)) ; Statement: l0 = virtualinvoke r0.<jdk.nashorn.internal.parser.TokenStream: long get(int)>(i1) 
(define-const var973 var2008 (var1235_descType/1144703550 var481)) ; Statement: r1 = staticinvoke <jdk.nashorn.internal.parser.Token: jdk.nashorn.internal.parser.TokenType descType(long)>(l0) 
(define-const var1839 var2548 var1125-out) ; Statement: $r3 = <java.lang.System: java.io.PrintStream out> 
(define-const var246 String String-init) ; Statement: $r2 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var246)) ; Statement: specialinvoke $r2.<java.lang.StringBuilder: void <init>()>() 
(declare-const var246!1 String)
(assert (= var246!1 ""))
(assert true)
(define-const var3907 String (append/672562846 var246!1 "")) ; Statement: $r4 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("") 
(declare-const var246!2 String)
(assert (= var246!2 (str.++ var246!1 "")))
(assert true)
(define-const var1334 String (append/-1001720160 var3907 var2216)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i1) 
(declare-const var3907!1 String)
(assert (str.prefixof var3907 var3907!1))
(assert true)
(define-const var286 String (append/672562846 var1334 ": ")) ; Statement: $r8 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(": ") 
(declare-const var1334!1 String)
(assert (= var1334!1 (str.++ var1334 ": ")))
(define-const var1602 String (var1235_toString/-1372018499 var3226 var481 (ite (= 1 1) true false))) ; Statement: $r7 = staticinvoke <jdk.nashorn.internal.parser.Token: java.lang.String toString(jdk.nashorn.internal.runtime.Source,long,boolean)>(r6, l0, 1) 
(assert true)
(define-const var1389 String (append/672562846 var286 var1602)) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r7) 
(declare-const var286!1 String)
(assert (= var286!1 (str.++ var286 var1602)))
(assert true)
(define-const var3397 String (toString/-2075883882 var1389)) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (println/1773605060 var1839 var3397)) ; Statement: virtualinvoke $r3.<java.io.PrintStream: void println(java.lang.String)>($r10) 

(declare-const var1839!1 var2548)
(declare-const var3397!1 String)
(define-const var2216!1 Int (+ var2216 1)) ; Statement: i1 = i1 + 1 
(define-const var803 var2008 var2008-EOF) ; Statement: $r11 = <jdk.nashorn.internal.parser.TokenType: jdk.nashorn.internal.parser.TokenType EOF> 
 ; Statement: if r1 != $r11 goto $i2 = virtualinvoke r0.<jdk.nashorn.internal.parser.TokenStream: int last()>() 
(assert (not (not (= var973 var803)))) ; Negate: Cond: r1 != $r11  
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {last/1673240473=([jdk.nashorn.internal.parser.TokenStream], int), get/23830475=([jdk.nashorn.internal.parser.TokenStream, int], long), var1235_descType/1144703550=([long], jdk.nashorn.internal.parser.TokenType), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), var1235_toString/-1372018499=([jdk.nashorn.internal.runtime.Source, long, boolean], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), println/1773605060=([java.io.PrintStream, java.lang.String], void)}
; {var1183=jdk.nashorn.internal.runtime.Source, var3226=r6, var1435=jdk.nashorn.internal.parser.Lexer, var897=r12, var2907=jdk.nashorn.internal.parser.TokenStream, var3460=r0, var2216=i1, var3410=$i2, var481=l0, var2008=jdk.nashorn.internal.parser.TokenType, var1235=jdk.nashorn.internal.parser.Token, var973=r1, var2548=java.io.PrintStream, var1125=java.lang.System, var1839=$r3, var246=$r2, var3907=$r4, var1334=$r5, var286=$r8, var1602=$r7, var1389=$r9, var3397=$r10, var803=$r11}
; {jdk.nashorn.internal.runtime.Source=var1183, r6=var3226, jdk.nashorn.internal.parser.Lexer=var1435, r12=var897, jdk.nashorn.internal.parser.TokenStream=var2907, r0=var3460, i1=var2216, $i2=var3410, l0=var481, jdk.nashorn.internal.parser.TokenType=var2008, jdk.nashorn.internal.parser.Token=var1235, r1=var973, java.io.PrintStream=var2548, java.lang.System=var1125, $r3=var1839, $r2=var246, $r4=var3907, $r5=var1334, $r8=var286, $r7=var1602, $r9=var1389, $r10=var3397, $r11=var803}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<jdk.nashorn.internal.parser.Token: java.lang.String toString(jdk.nashorn.internal.runtime.Source,long,boolean)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r6 := @parameter0: jdk.nashorn.internal.runtime.Source;	r12 := @parameter1: jdk.nashorn.internal.parser.Lexer;	r0 := @parameter2: jdk.nashorn.internal.parser.TokenStream;	i1 = 0;	$i2 = virtualinvoke r0.<jdk.nashorn.internal.parser.TokenStream: int last()>();	if i1 <= $i2 goto l0 = virtualinvoke r0.<jdk.nashorn.internal.parser.TokenStream: long get(int)>(i1);	l0 = virtualinvoke r0.<jdk.nashorn.internal.parser.TokenStream: long get(int)>(i1);	r1 = staticinvoke <jdk.nashorn.internal.parser.Token: jdk.nashorn.internal.parser.TokenType descType(long)>(l0);	$r3 = <java.lang.System: java.io.PrintStream out>;	$r2 = new java.lang.StringBuilder;	specialinvoke $r2.<java.lang.StringBuilder: void <init>()>();	$r4 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("");	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i1);	$r8 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(": ");	$r7 = staticinvoke <jdk.nashorn.internal.parser.Token: java.lang.String toString(jdk.nashorn.internal.runtime.Source,long,boolean)>(r6, l0, 1);	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r7);	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.String toString()>();	virtualinvoke $r3.<java.io.PrintStream: void println(java.lang.String)>($r10);	i1 = i1 + 1;	$r11 = <jdk.nashorn.internal.parser.TokenType: jdk.nashorn.internal.parser.TokenType EOF>;	if r1 != $r11 goto $i2 = virtualinvoke r0.<jdk.nashorn.internal.parser.TokenStream: int last()>();	return
;block_num 4