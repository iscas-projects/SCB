(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var20 0)
(declare-sort var1212 0)
(declare-sort var3662 0)
(declare-sort var2373 0)
(declare-sort var2919 0)
(declare-sort var2989 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(declare-fun <init>/-2015205558 (String (Array Int Int) var20) void)
(declare-fun var2373_builder/1998586901 () var3662)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-fun var2919-init () var2919)
(declare-fun buildOrThrow/891430389 (var3662) var2373)
(declare-fun <init>/1913486050 (var2919 var2989) void)
(declare-fun cast-from-var2373-to-var2989 (var2373) var2989)
(declare-const null-__Array__Int__Int__ (Array Int Int))
(declare-const var1212-UTF_8 var20)
(declare-const var2140 (Array Int Int)) ; Statement: r1 := @parameter0: byte[] 
(assert (not (= var2140 null-__Array__Int__Int__)))
(define-const var614 String String-init) ; Statement: $r13 = new java.lang.String 
(define-const var1955 var20 var1212-UTF_8) ; Statement: $r2 = <java.nio.charset.StandardCharsets: java.nio.charset.Charset UTF_8> 
(assert true)
;(assert (<init>/-2015205558 var614 var2140 var1955)) ; Statement: specialinvoke $r13.<java.lang.String: void <init>(byte[],java.nio.charset.Charset)>(r1, $r2) 

(declare-const var614!1 String)
(declare-const var2140!1 (Array Int Int))
(declare-const var1955!1 var20)
(define-const var1826 var3662 var2373_builder/1998586901) ; Statement: r3 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap$Builder builder()>() 
(define-const var2449 Int 0) ; Statement: i7 = 0 
(assert true) ; Non Conditional
(assert true)
(define-const var1592 Int (length/-134980193 var614!1)) ; Statement: $i8 = virtualinvoke $r13.<java.lang.String: int length()>() 
 ; Statement: if i7 >= $i8 goto $r15 = new com.google.javascript.jscomp.VariableMap 
(assert (>= var2449 var1592)) ; Cond: i7 >= $i8 
(define-const var938 var2919 var2919-init) ; Statement: $r15 = new com.google.javascript.jscomp.VariableMap 
(assert true)
(define-const var3226 var2373 (buildOrThrow/891430389 var1826)) ; Statement: $r5 = virtualinvoke r3.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap$Builder: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap buildOrThrow()>() 
(assert true)
;(assert (<init>/1913486050 var938 (cast-from-var2373-to-var2989 var3226))) ; Statement: specialinvoke $r15.<com.google.javascript.jscomp.VariableMap: void <init>(java.util.Map)>($r5) 

(declare-const var938!1 var2919)
(declare-const var3226!1 var2373)
 ; Statement: return $r15 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.String), <init>/-2015205558=([java.lang.String, byte[], java.nio.charset.Charset], void), var2373_builder/1998586901=([], com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap$Builder), length/-134980193=([java.lang.String], int), var2919-init=([], com.google.javascript.jscomp.VariableMap), buildOrThrow/891430389=([com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap$Builder], com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap), <init>/1913486050=([com.google.javascript.jscomp.VariableMap, java.util.Map], void), cast-from-var2373-to-var2989=([com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap], java.util.Map)}
; {var2140=r1, var614=$r13, var20=java.nio.charset.Charset, var1212=java.nio.charset.StandardCharsets, var1955=$r2, var3662=com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap$Builder, var2373=com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap, var1826=r3, var2449=i7, var1592=$i8, var2919=com.google.javascript.jscomp.VariableMap, var938=$r15, var3226=$r5, var2989=java.util.Map}
; {r1=var2140, $r13=var614, java.nio.charset.Charset=var20, java.nio.charset.StandardCharsets=var1212, $r2=var1955, com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap$Builder=var3662, com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap=var2373, r3=var1826, i7=var2449, $i8=var1592, com.google.javascript.jscomp.VariableMap=var2919, $r15=var938, $r5=var3226, java.util.Map=var2989}
;seq <java.lang.String: void <init>(byte[],java.nio.charset.Charset)>;	<java.lang.String: int length()>
;cnt {"<java.lang.String: void <init>(byte[],java.nio.charset.Charset)>": 1,"<java.lang.String: int length()>": 1}
;stmts r1 := @parameter0: byte[];	$r13 = new java.lang.String;	$r2 = <java.nio.charset.StandardCharsets: java.nio.charset.Charset UTF_8>;	specialinvoke $r13.<java.lang.String: void <init>(byte[],java.nio.charset.Charset)>(r1, $r2);	r3 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap$Builder builder()>();	i7 = 0;	$i8 = virtualinvoke $r13.<java.lang.String: int length()>();	if i7 >= $i8 goto $r15 = new com.google.javascript.jscomp.VariableMap;	$r15 = new com.google.javascript.jscomp.VariableMap;	$r5 = virtualinvoke r3.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap$Builder: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap buildOrThrow()>();	specialinvoke $r15.<com.google.javascript.jscomp.VariableMap: void <init>(java.util.Map)>($r5);	return $r15
;block_num 3