(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3535 0)
(declare-sort var3146 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun queryStack/615155166 (var3535) Int)
(declare-fun arr-Int-init () (Array Int Int))
(declare-fun var3146_fill/1918582986 ((Array Int Int) Int) void)
(declare-fun String-init () String)
(declare-fun <init>/-915723298 (String (Array Int Int)) void)
(declare-const null-var3535 var3535)
(declare-const null-Bool Bool)
(declare-const null-__Array__Int__Int__ (Array Int Int))
(declare-const var1176 var3535) ; Statement: r0 := @this: org.apache.ibatis.logging.jdbc.BaseJdbcLogger 
(assert (not (= var1176 null-var3535)))
(declare-const var3456 Bool) ; Statement: z0 := @parameter0: boolean 
(assert (not (= var3456 null-Bool)))
(define-const var1355 Int (queryStack/615155166 var1176)) ; Statement: $i0 = r0.<org.apache.ibatis.logging.jdbc.BaseJdbcLogger: int queryStack> 
(define-const var3856 Int (* var1355 2)) ; Statement: $i1 = $i0 * 2 
(define-const var3599 Int (+ var3856 2)) ; Statement: $i2 = $i1 + 2 
(define-const var700 (Array Int Int) arr-Int-init) ; Statement: r1 = newarray (char)[$i2] 
;(assert (var3146_fill/1918582986 var700 61)) ; Statement: staticinvoke <java.util.Arrays: void fill(char[],char)>(r1, 61) 

(declare-const var700!1 (Array Int Int))
(declare-const var738 Int)
(define-const var3646 Int (queryStack/615155166 var1176)) ; Statement: $i3 = r0.<org.apache.ibatis.logging.jdbc.BaseJdbcLogger: int queryStack> 
(define-const var932 Int (* var3646 2)) ; Statement: $i4 = $i3 * 2 
(define-const var3637 Int (+ var932 1)) ; Statement: $i5 = $i4 + 1 
(declare-const var700!2 (Array Int Int))
(assert (not (= var700!2 null-__Array__Int__Int__)))
(assert (= (select var700!2 var3637) 32)) ; Statement: r1[$i5] = 32 
 ; Statement: if z0 == 0 goto r1[0] = 60 
(assert (not (= (ite var3456 1 0) 0))) ; Negate: Cond: z0 == 0  
(define-const var3080 Int (queryStack/615155166 var1176)) ; Statement: $i6 = r0.<org.apache.ibatis.logging.jdbc.BaseJdbcLogger: int queryStack> 
(define-const var48 Int (* var3080 2)) ; Statement: $i7 = $i6 * 2 
(declare-const var700!3 (Array Int Int))
(assert (not (= var700!3 null-__Array__Int__Int__)))
(assert (= (select var700!3 var48) 62)) ; Statement: r1[$i7] = 62 
 ; Statement: goto [?= $r2 = new java.lang.String] 
(assert true) ; Non Conditional
(define-const var3648 String String-init) ; Statement: $r2 = new java.lang.String 
(assert true)
;(assert (<init>/-915723298 var3648 var700!3)) ; Statement: specialinvoke $r2.<java.lang.String: void <init>(char[])>(r1) 

(declare-const var3648!1 String)
(declare-const var700!4 (Array Int Int))
 ; Statement: return $r2 
(check-sat)
(get-model)
(get-unsat-core)
; {queryStack/615155166=([org.apache.ibatis.logging.jdbc.BaseJdbcLogger], int), arr-Int-init=([], char[]), var3146_fill/1918582986=([char[], char], void), String-init=([], java.lang.String), <init>/-915723298=([java.lang.String, char[]], void)}
; {var3535=org.apache.ibatis.logging.jdbc.BaseJdbcLogger, var1176=r0, var3456=z0, var1355=$i0, var3856=$i1, var3599=$i2, var700=r1, var3146=java.util.Arrays, var738=61, var3646=$i3, var932=$i4, var3637=$i5, var3080=$i6, var48=$i7, var3648=$r2}
; {org.apache.ibatis.logging.jdbc.BaseJdbcLogger=var3535, r0=var1176, z0=var3456, $i0=var1355, $i1=var3856, $i2=var3599, r1=var700, java.util.Arrays=var3146, 61=var738, $i3=var3646, $i4=var932, $i5=var3637, $i6=var3080, $i7=var48, $r2=var3648}
;seq <java.lang.String: void <init>(char[])>
;cnt {"<java.lang.String: void <init>(char[])>": 1}
;stmts r0 := @this: org.apache.ibatis.logging.jdbc.BaseJdbcLogger;	z0 := @parameter0: boolean;	$i0 = r0.<org.apache.ibatis.logging.jdbc.BaseJdbcLogger: int queryStack>;	$i1 = $i0 * 2;	$i2 = $i1 + 2;	r1 = newarray (char)[$i2];	staticinvoke <java.util.Arrays: void fill(char[],char)>(r1, 61);	$i3 = r0.<org.apache.ibatis.logging.jdbc.BaseJdbcLogger: int queryStack>;	$i4 = $i3 * 2;	$i5 = $i4 + 1;	r1[$i5] = 32;	if z0 == 0 goto r1[0] = 60;	$i6 = r0.<org.apache.ibatis.logging.jdbc.BaseJdbcLogger: int queryStack>;	$i7 = $i6 * 2;	r1[$i7] = 62;	goto [?= $r2 = new java.lang.String];	$r2 = new java.lang.String;	specialinvoke $r2.<java.lang.String: void <init>(char[])>(r1);	return $r2
;block_num 3