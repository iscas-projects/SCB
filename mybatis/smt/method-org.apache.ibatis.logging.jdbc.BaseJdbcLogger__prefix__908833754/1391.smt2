(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3958 0)
(declare-sort var292 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun queryStack/615155166 (var3958) Int)
(declare-fun arr-Int-init () (Array Int Int))
(declare-fun var292_fill/1918582986 ((Array Int Int) Int) void)
(declare-fun String-init () String)
(declare-fun <init>/-915723298 (String (Array Int Int)) void)
(declare-const null-var3958 var3958)
(declare-const null-Bool Bool)
(declare-const null-__Array__Int__Int__ (Array Int Int))
(declare-const var439 var3958) ; Statement: r0 := @this: org.apache.ibatis.logging.jdbc.BaseJdbcLogger 
(assert (not (= var439 null-var3958)))
(declare-const var847 Bool) ; Statement: z0 := @parameter0: boolean 
(assert (not (= var847 null-Bool)))
(define-const var3062 Int (queryStack/615155166 var439)) ; Statement: $i0 = r0.<org.apache.ibatis.logging.jdbc.BaseJdbcLogger: int queryStack> 
(define-const var3216 Int (* var3062 2)) ; Statement: $i1 = $i0 * 2 
(define-const var3632 Int (+ var3216 2)) ; Statement: $i2 = $i1 + 2 
(define-const var2739 (Array Int Int) arr-Int-init) ; Statement: r1 = newarray (char)[$i2] 
;(assert (var292_fill/1918582986 var2739 61)) ; Statement: staticinvoke <java.util.Arrays: void fill(char[],char)>(r1, 61) 

(declare-const var2739!1 (Array Int Int))
(declare-const var3052 Int)
(define-const var1061 Int (queryStack/615155166 var439)) ; Statement: $i3 = r0.<org.apache.ibatis.logging.jdbc.BaseJdbcLogger: int queryStack> 
(define-const var1754 Int (* var1061 2)) ; Statement: $i4 = $i3 * 2 
(define-const var972 Int (+ var1754 1)) ; Statement: $i5 = $i4 + 1 
(declare-const var2739!2 (Array Int Int))
(assert (not (= var2739!2 null-__Array__Int__Int__)))
(assert (= (select var2739!2 var972) 32)) ; Statement: r1[$i5] = 32 
 ; Statement: if z0 == 0 goto r1[0] = 60 
(assert (= (ite var847 1 0) 0)) ; Cond: z0 == 0 
(declare-const var2739!3 (Array Int Int))
(assert (not (= var2739!3 null-__Array__Int__Int__)))
(assert (= (select var2739!3 0) 60)) ; Statement: r1[0] = 60 
(assert true) ; Non Conditional
(define-const var2634 String String-init) ; Statement: $r2 = new java.lang.String 
(assert true)
;(assert (<init>/-915723298 var2634 var2739!3)) ; Statement: specialinvoke $r2.<java.lang.String: void <init>(char[])>(r1) 

(declare-const var2634!1 String)
(declare-const var2739!4 (Array Int Int))
 ; Statement: return $r2 
(check-sat)
(get-model)
(get-unsat-core)
; {queryStack/615155166=([org.apache.ibatis.logging.jdbc.BaseJdbcLogger], int), arr-Int-init=([], char[]), var292_fill/1918582986=([char[], char], void), String-init=([], java.lang.String), <init>/-915723298=([java.lang.String, char[]], void)}
; {var3958=org.apache.ibatis.logging.jdbc.BaseJdbcLogger, var439=r0, var847=z0, var3062=$i0, var3216=$i1, var3632=$i2, var2739=r1, var292=java.util.Arrays, var3052=61, var1061=$i3, var1754=$i4, var972=$i5, var2634=$r2}
; {org.apache.ibatis.logging.jdbc.BaseJdbcLogger=var3958, r0=var439, z0=var847, $i0=var3062, $i1=var3216, $i2=var3632, r1=var2739, java.util.Arrays=var292, 61=var3052, $i3=var1061, $i4=var1754, $i5=var972, $r2=var2634}
;seq <java.lang.String: void <init>(char[])>
;cnt {"<java.lang.String: void <init>(char[])>": 1}
;stmts r0 := @this: org.apache.ibatis.logging.jdbc.BaseJdbcLogger;	z0 := @parameter0: boolean;	$i0 = r0.<org.apache.ibatis.logging.jdbc.BaseJdbcLogger: int queryStack>;	$i1 = $i0 * 2;	$i2 = $i1 + 2;	r1 = newarray (char)[$i2];	staticinvoke <java.util.Arrays: void fill(char[],char)>(r1, 61);	$i3 = r0.<org.apache.ibatis.logging.jdbc.BaseJdbcLogger: int queryStack>;	$i4 = $i3 * 2;	$i5 = $i4 + 1;	r1[$i5] = 32;	if z0 == 0 goto r1[0] = 60;	r1[0] = 60;	$r2 = new java.lang.String;	specialinvoke $r2.<java.lang.String: void <init>(char[])>(r1);	return $r2
;block_num 3