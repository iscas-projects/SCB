(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var898 0)
(declare-sort var3031 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String_length/-667254855 (String) Int)
(declare-fun arr-Int-init () (Array Int Int))
(declare-fun var3031_fill/1918582986 ((Array Int Int) Int) void)
(declare-fun String-init () String)
(declare-fun <init>/-915723298 (String (Array Int Int)) void)
(declare-const null-var898 var898)
(declare-const null-String String)
(declare-const null-Int Int)
(declare-const var583 var898) ; Statement: r3 := @this: com.google.javascript.jscomp.jarjar.com.google.common.base.CharMatcher$Any 
(assert (not (= var583 null-var898)))
(declare-const var681 String) ; Statement: r0 := @parameter0: java.lang.CharSequence 
(assert (not (= var681 null-String)))
(declare-const var2119 Int) ; Statement: c1 := @parameter1: char 
(assert (not (= var2119 null-Int)))
(define-const var3242 Int (String_length/-667254855 var681)) ; Statement: $i0 = interfaceinvoke r0.<java.lang.CharSequence: int length()>() 
(define-const var513 (Array Int Int) arr-Int-init) ; Statement: r1 = newarray (char)[$i0] 
;(assert (var3031_fill/1918582986 var513 var2119)) ; Statement: staticinvoke <java.util.Arrays: void fill(char[],char)>(r1, c1) 

(declare-const var513!1 (Array Int Int))
(declare-const var2119!1 Int)
(define-const var1036 String String-init) ; Statement: $r2 = new java.lang.String 
(assert true)
;(assert (<init>/-915723298 var1036 var513!1)) ; Statement: specialinvoke $r2.<java.lang.String: void <init>(char[])>(r1) 

(declare-const var1036!1 String)
(declare-const var513!2 (Array Int Int))
 ; Statement: return $r2 
(check-sat)
(get-model)
(get-unsat-core)
; {String_length/-667254855=([java.lang.CharSequence], int), arr-Int-init=([], char[]), var3031_fill/1918582986=([char[], char], void), String-init=([], java.lang.String), <init>/-915723298=([java.lang.String, char[]], void)}
; {var898=com.google.javascript.jscomp.jarjar.com.google.common.base.CharMatcher$Any, var583=r3, var681=r0, var2119=c1, var3242=$i0, var513=r1, var3031=java.util.Arrays, var1036=$r2}
; {com.google.javascript.jscomp.jarjar.com.google.common.base.CharMatcher$Any=var898, r3=var583, r0=var681, c1=var2119, $i0=var3242, r1=var513, java.util.Arrays=var3031, $r2=var1036}
;seq <java.lang.CharSequence: int length()>;	<java.lang.String: void <init>(char[])>
;cnt {"<java.lang.CharSequence: int length()>": 1,"<java.lang.String: void <init>(char[])>": 1}
;stmts r3 := @this: com.google.javascript.jscomp.jarjar.com.google.common.base.CharMatcher$Any;	r0 := @parameter0: java.lang.CharSequence;	c1 := @parameter1: char;	$i0 = interfaceinvoke r0.<java.lang.CharSequence: int length()>();	r1 = newarray (char)[$i0];	staticinvoke <java.util.Arrays: void fill(char[],char)>(r1, c1);	$r2 = new java.lang.String;	specialinvoke $r2.<java.lang.String: void <init>(char[])>(r1);	return $r2
;block_num 1