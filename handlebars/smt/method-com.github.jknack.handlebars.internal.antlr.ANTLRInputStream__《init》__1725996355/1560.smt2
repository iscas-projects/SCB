(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3234 0)
(declare-sort var1881 0)
(declare-sort var1170 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun <init>/-279557996 (var1170) void)
(declare-fun cast-from-var3234-to-var1170 (var3234) var1170)
(declare-fun p/1142770973 (var3234) Int)
(declare-fun toCharArray/415275702 (String) (Array Int Int))
(declare-fun data/1142770973 (var3234) (Array Int Int))
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-fun n/1142770973 (var3234) Int)
(declare-const null-var3234 var3234)
(declare-const null-String String)
(declare-const var3604 var3234) ; Statement: r0 := @this: com.github.jknack.handlebars.internal.antlr.ANTLRInputStream 
(assert (not (= var3604 null-var3234)))
(declare-const var3636 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var3636 null-String)))
(assert true)
;(assert (<init>/-279557996 (cast-from-var3234-to-var1170 var3604))) ; Statement: specialinvoke r0.<java.lang.Object: void <init>()>() 

(declare-const var3604!1 var3234)
(declare-const var3604!2 var3234)
(assert (not (= var3604!2 null-var3234)))
(assert (= (p/1142770973 var3604!2) 0)) ; Statement: r0.<com.github.jknack.handlebars.internal.antlr.ANTLRInputStream: int p> = 0 
(assert true)
(define-const var1841 (Array Int Int) (toCharArray/415275702 var3636)) ; Statement: $r2 = virtualinvoke r1.<java.lang.String: char[] toCharArray()>() 
(declare-const var3604!3 var3234)
(assert (not (= var3604!3 null-var3234)))
(assert (= (data/1142770973 var3604!3) var1841)) ; Statement: r0.<com.github.jknack.handlebars.internal.antlr.ANTLRInputStream: char[] data> = $r2 
(assert true)
(define-const var2147 Int (length/-134980193 var3636)) ; Statement: $i0 = virtualinvoke r1.<java.lang.String: int length()>() 
(declare-const var3604!4 var3234)
(assert (not (= var3604!4 null-var3234)))
(assert (= (n/1142770973 var3604!4) var2147)) ; Statement: r0.<com.github.jknack.handlebars.internal.antlr.ANTLRInputStream: int n> = $i0 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {<init>/-279557996=([java.lang.Object], void), cast-from-var3234-to-var1170=([com.github.jknack.handlebars.internal.antlr.ANTLRInputStream], java.lang.Object), p/1142770973=([com.github.jknack.handlebars.internal.antlr.ANTLRInputStream], int), toCharArray/415275702=([java.lang.String], char[]), data/1142770973=([com.github.jknack.handlebars.internal.antlr.ANTLRInputStream], char[]), length/-134980193=([java.lang.String], int), n/1142770973=([com.github.jknack.handlebars.internal.antlr.ANTLRInputStream], int)}
; {var3234=com.github.jknack.handlebars.internal.antlr.ANTLRInputStream, var3604=r0, var3636=r1, var1881=null_type, var1170=java.lang.Object, var1841=$r2, var2147=$i0}
; {com.github.jknack.handlebars.internal.antlr.ANTLRInputStream=var3234, r0=var3604, r1=var3636, null_type=var1881, java.lang.Object=var1170, $r2=var1841, $i0=var2147}
;seq <java.lang.String: char[] toCharArray()>;	<java.lang.String: int length()>
;cnt {"<java.lang.String: char[] toCharArray()>": 1,"<java.lang.String: int length()>": 1}
;stmts r0 := @this: com.github.jknack.handlebars.internal.antlr.ANTLRInputStream;	r1 := @parameter0: java.lang.String;	specialinvoke r0.<java.lang.Object: void <init>()>();	r0.<com.github.jknack.handlebars.internal.antlr.ANTLRInputStream: int p> = 0;	$r2 = virtualinvoke r1.<java.lang.String: char[] toCharArray()>();	r0.<com.github.jknack.handlebars.internal.antlr.ANTLRInputStream: char[] data> = $r2;	$i0 = virtualinvoke r1.<java.lang.String: int length()>();	r0.<com.github.jknack.handlebars.internal.antlr.ANTLRInputStream: int n> = $i0;	return
;block_num 1