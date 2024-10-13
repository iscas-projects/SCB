(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2608 0)
(declare-sort var938 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun toCharArray/415275702 (String) (Array Int Int))
(declare-fun getLength-Arr-Int-1 ((Array Int Int)) Int)
(declare-fun String-init () String)
(declare-fun <init>/-915723298 (String (Array Int Int)) void)
(declare-const null-var2608 var2608)
(declare-const null-String String)
(declare-const var3995 var2608) ; Statement: r4 := @this: jdk.nashorn.internal.codegen.Label$Stack 
(assert (not (= var3995 null-var2608)))
(declare-const var3749 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var3749 null-String)))
(assert true)
(define-const var3140 (Array Int Int) (toCharArray/415275702 var3749)) ; Statement: r1 = virtualinvoke r0.<java.lang.String: char[] toCharArray()>() 
(define-const var1222 Int 0) ; Statement: i6 = 0 
(define-const var2820 Int 0) ; Statement: i7 = 0 
(assert true) ; Non Conditional
(define-const var869 Int (getLength-Arr-Int-1 var3140)) ; Statement: $i0 = lengthof r1 
 ; Statement: if i7 >= $i0 goto $r2 = new java.lang.String 
(assert (>= var2820 var869)) ; Cond: i7 >= $i0 
(define-const var3458 String String-init) ; Statement: $r2 = new java.lang.String 
(assert true)
;(assert (<init>/-915723298 var3458 var3140)) ; Statement: specialinvoke $r2.<java.lang.String: void <init>(char[])>(r1) 

(declare-const var3458!1 String)
(declare-const var3140!1 (Array Int Int))
 ; Statement: return $r2 
(check-sat)
(get-model)
(get-unsat-core)
; {toCharArray/415275702=([java.lang.String], char[]), getLength-Arr-Int-1=([char[]], int), String-init=([], java.lang.String), <init>/-915723298=([java.lang.String, char[]], void)}
; {var2608=jdk.nashorn.internal.codegen.Label$Stack, var3995=r4, var3749=r0, var938=null_type, var3140=r1, var1222=i6, var2820=i7, var869=$i0, var3458=$r2}
; {jdk.nashorn.internal.codegen.Label$Stack=var2608, r4=var3995, r0=var3749, null_type=var938, r1=var3140, i6=var1222, i7=var2820, $i0=var869, $r2=var3458}
;seq <java.lang.String: char[] toCharArray()>;	<java.lang.String: void <init>(char[])>
;cnt {"<java.lang.String: char[] toCharArray()>": 1,"<java.lang.String: void <init>(char[])>": 1}
;stmts r4 := @this: jdk.nashorn.internal.codegen.Label$Stack;	r0 := @parameter0: java.lang.String;	r1 = virtualinvoke r0.<java.lang.String: char[] toCharArray()>();	i6 = 0;	i7 = 0;	$i0 = lengthof r1;	if i7 >= $i0 goto $r2 = new java.lang.String;	$r2 = new java.lang.String;	specialinvoke $r2.<java.lang.String: void <init>(char[])>(r1);	return $r2
;block_num 3