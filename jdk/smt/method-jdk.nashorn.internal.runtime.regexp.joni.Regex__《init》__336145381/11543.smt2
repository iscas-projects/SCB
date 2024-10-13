(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var207 0)
(declare-sort var3990 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun toCharArray/415275702 (String) (Array Int Int))
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-fun <init>/1065906497 (var207 (Array Int Int) Int Int Int) void)
(declare-const null-var207 var207)
(declare-const null-String String)
(declare-const var2914 var207) ; Statement: r0 := @this: jdk.nashorn.internal.runtime.regexp.joni.Regex 
(assert (not (= var2914 null-var207)))
(declare-const var3683 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var3683 null-String)))
(assert true)
(define-const var1637 (Array Int Int) (toCharArray/415275702 var3683)) ; Statement: $r2 = virtualinvoke r1.<java.lang.String: char[] toCharArray()>() 
(assert true)
(define-const var321 Int (length/-134980193 var3683)) ; Statement: $i0 = virtualinvoke r1.<java.lang.String: int length()>() 
(assert true)
;(assert (<init>/1065906497 var2914 var1637 0 var321 0)) ; Statement: specialinvoke r0.<jdk.nashorn.internal.runtime.regexp.joni.Regex: void <init>(char[],int,int,int)>($r2, 0, $i0, 0) 

(declare-const var2914!1 var207)
(declare-const var1637!1 (Array Int Int))
(declare-const var3897 Int)
(declare-const var321!1 Int)
(declare-const var3897!1 Int)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {toCharArray/415275702=([java.lang.String], char[]), length/-134980193=([java.lang.String], int), <init>/1065906497=([jdk.nashorn.internal.runtime.regexp.joni.Regex, char[], int, int, int], void)}
; {var207=jdk.nashorn.internal.runtime.regexp.joni.Regex, var2914=r0, var3683=r1, var3990=null_type, var1637=$r2, var321=$i0, var3897=0}
; {jdk.nashorn.internal.runtime.regexp.joni.Regex=var207, r0=var2914, r1=var3683, null_type=var3990, $r2=var1637, $i0=var321, 0=var3897}
;seq <java.lang.String: char[] toCharArray()>;	<java.lang.String: int length()>
;cnt {"<java.lang.String: char[] toCharArray()>": 1,"<java.lang.String: int length()>": 1}
;stmts r0 := @this: jdk.nashorn.internal.runtime.regexp.joni.Regex;	r1 := @parameter0: java.lang.String;	$r2 = virtualinvoke r1.<java.lang.String: char[] toCharArray()>();	$i0 = virtualinvoke r1.<java.lang.String: int length()>();	specialinvoke r0.<jdk.nashorn.internal.runtime.regexp.joni.Regex: void <init>(char[],int,int,int)>($r2, 0, $i0, 0);	return
;block_num 1