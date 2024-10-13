(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3064 0)
(declare-sort var2350 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun toCharArray/415275702 (String) (Array Int Int))
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-fun <init>/-1040045598 (var3064 (Array Int Int) Int Int Int) void)
(declare-const null-var3064 var3064)
(declare-const null-String String)
(declare-const var956 var3064) ; Statement: r0 := @this: jdk.nashorn.internal.parser.Scanner 
(assert (not (= var956 null-var3064)))
(declare-const var513 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var513 null-String)))
(assert true)
(define-const var1617 (Array Int Int) (toCharArray/415275702 var513)) ; Statement: $r2 = virtualinvoke r1.<java.lang.String: char[] toCharArray()>() 
(assert true)
(define-const var610 Int (length/-134980193 var513)) ; Statement: $i0 = virtualinvoke r1.<java.lang.String: int length()>() 
(assert true)
;(assert (<init>/-1040045598 var956 var1617 0 0 var610)) ; Statement: specialinvoke r0.<jdk.nashorn.internal.parser.Scanner: void <init>(char[],int,int,int)>($r2, 0, 0, $i0) 

(declare-const var956!1 var3064)
(declare-const var1617!1 (Array Int Int))
(declare-const var2383 Int)
(declare-const var2383!1 Int)
(declare-const var610!1 Int)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {toCharArray/415275702=([java.lang.String], char[]), length/-134980193=([java.lang.String], int), <init>/-1040045598=([jdk.nashorn.internal.parser.Scanner, char[], int, int, int], void)}
; {var3064=jdk.nashorn.internal.parser.Scanner, var956=r0, var513=r1, var2350=null_type, var1617=$r2, var610=$i0, var2383=0}
; {jdk.nashorn.internal.parser.Scanner=var3064, r0=var956, r1=var513, null_type=var2350, $r2=var1617, $i0=var610, 0=var2383}
;seq <java.lang.String: char[] toCharArray()>;	<java.lang.String: int length()>
;cnt {"<java.lang.String: char[] toCharArray()>": 1,"<java.lang.String: int length()>": 1}
;stmts r0 := @this: jdk.nashorn.internal.parser.Scanner;	r1 := @parameter0: java.lang.String;	$r2 = virtualinvoke r1.<java.lang.String: char[] toCharArray()>();	$i0 = virtualinvoke r1.<java.lang.String: int length()>();	specialinvoke r0.<jdk.nashorn.internal.parser.Scanner: void <init>(char[],int,int,int)>($r2, 0, 0, $i0);	return
;block_num 1