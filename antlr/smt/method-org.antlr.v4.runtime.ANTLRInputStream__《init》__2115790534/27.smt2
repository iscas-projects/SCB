(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var551 0)
(declare-sort var3911 0)
(declare-sort var1103 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun <init>/-279557996 (var1103) void)
(declare-fun cast-from-var551-to-var1103 (var551) var1103)
(declare-fun p/1908198296 (var551) Int)
(declare-fun toCharArray/415275702 (String) (Array Int Int))
(declare-fun data/1908198296 (var551) (Array Int Int))
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-fun n/1908198296 (var551) Int)
(declare-const null-var551 var551)
(declare-const null-String String)
(declare-const var1915 var551) ; Statement: r0 := @this: org.antlr.v4.runtime.ANTLRInputStream 
(assert (not (= var1915 null-var551)))
(declare-const var3463 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var3463 null-String)))
(assert true)
;(assert (<init>/-279557996 (cast-from-var551-to-var1103 var1915))) ; Statement: specialinvoke r0.<java.lang.Object: void <init>()>() 

(declare-const var1915!1 var551)
(declare-const var1915!2 var551)
(assert (not (= var1915!2 null-var551)))
(assert (= (p/1908198296 var1915!2) 0)) ; Statement: r0.<org.antlr.v4.runtime.ANTLRInputStream: int p> = 0 
(assert true)
(define-const var859 (Array Int Int) (toCharArray/415275702 var3463)) ; Statement: $r2 = virtualinvoke r1.<java.lang.String: char[] toCharArray()>() 
(declare-const var1915!3 var551)
(assert (not (= var1915!3 null-var551)))
(assert (= (data/1908198296 var1915!3) var859)) ; Statement: r0.<org.antlr.v4.runtime.ANTLRInputStream: char[] data> = $r2 
(assert true)
(define-const var1246 Int (length/-134980193 var3463)) ; Statement: $i0 = virtualinvoke r1.<java.lang.String: int length()>() 
(declare-const var1915!4 var551)
(assert (not (= var1915!4 null-var551)))
(assert (= (n/1908198296 var1915!4) var1246)) ; Statement: r0.<org.antlr.v4.runtime.ANTLRInputStream: int n> = $i0 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {<init>/-279557996=([java.lang.Object], void), cast-from-var551-to-var1103=([org.antlr.v4.runtime.ANTLRInputStream], java.lang.Object), p/1908198296=([org.antlr.v4.runtime.ANTLRInputStream], int), toCharArray/415275702=([java.lang.String], char[]), data/1908198296=([org.antlr.v4.runtime.ANTLRInputStream], char[]), length/-134980193=([java.lang.String], int), n/1908198296=([org.antlr.v4.runtime.ANTLRInputStream], int)}
; {var551=org.antlr.v4.runtime.ANTLRInputStream, var1915=r0, var3463=r1, var3911=null_type, var1103=java.lang.Object, var859=$r2, var1246=$i0}
; {org.antlr.v4.runtime.ANTLRInputStream=var551, r0=var1915, r1=var3463, null_type=var3911, java.lang.Object=var1103, $r2=var859, $i0=var1246}
;seq <java.lang.String: char[] toCharArray()>;	<java.lang.String: int length()>
;cnt {"<java.lang.String: char[] toCharArray()>": 1,"<java.lang.String: int length()>": 1}
;stmts r0 := @this: org.antlr.v4.runtime.ANTLRInputStream;	r1 := @parameter0: java.lang.String;	specialinvoke r0.<java.lang.Object: void <init>()>();	r0.<org.antlr.v4.runtime.ANTLRInputStream: int p> = 0;	$r2 = virtualinvoke r1.<java.lang.String: char[] toCharArray()>();	r0.<org.antlr.v4.runtime.ANTLRInputStream: char[] data> = $r2;	$i0 = virtualinvoke r1.<java.lang.String: int length()>();	r0.<org.antlr.v4.runtime.ANTLRInputStream: int n> = $i0;	return
;block_num 1