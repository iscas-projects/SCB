(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2253 0)
(declare-sort var2281 0)
(declare-sort var3187 0)
(declare-sort var3895 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun startsWith/-1785782452 ((s String) (prefix String)) Bool (str.prefixof prefix s))
(declare-fun var3895-init () var3895)
(declare-fun <init>/-1406602162 (var3895 String) void)
(declare-const null-var2253 var2253)
(declare-const null-String String)
(declare-const null-var3187 var3187)
(declare-const var2781 var2253) ; Statement: r1 := @this: com.google.debugging.sourcemap.SourceMapGeneratorV3 
(assert (not (= var2781 null-var2253)))
(declare-const var3394 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var3394 null-String)))
(declare-const var3602 var3187) ; Statement: r2 := @parameter1: java.lang.Object 
(assert (not (= var3602 null-var3187)))
(assert true)
(define-const var2801 Bool (startsWith/-1785782452 var3394 "x_")) ; Statement: $z0 = virtualinvoke r0.<java.lang.String: boolean startsWith(java.lang.String)>("x_") 
 ; Statement: if $z0 != 0 goto $r3 = r1.<com.google.debugging.sourcemap.SourceMapGeneratorV3: java.util.LinkedHashMap extensions> 
(assert (not (not (= (ite var2801 1 0) 0)))) ; Negate: Cond: $z0 != 0  
(define-const var2583 var3895 var3895-init) ; Statement: $r4 = new com.google.debugging.sourcemap.SourceMapParseException 
(define-const var2728 String (str.++ "Extension \u0027\u0001\u0027 must start with \u0027x_\u0027" var3394)) ; Statement: $r5 = dynamicinvoke "makeConcatWithConstants" <java.lang.String (java.lang.String)>(r0) <java.lang.invoke.StringConcatFactory: java.lang.invoke.CallSite makeConcatWithConstants(java.lang.invoke.MethodHandles$Lookup,java.lang.String,java.lang.invoke.MethodType,java.lang.String,java.lang.Object[])>("Extension \'\u0001\' must start with \'x_\'") 
(assert true)
;(assert (<init>/-1406602162 var2583 var2728)) ; Statement: specialinvoke $r4.<com.google.debugging.sourcemap.SourceMapParseException: void <init>(java.lang.String)>($r5) 

(declare-const var2583!1 var3895)
(declare-const var2728!1 String)
 ; Statement: throw $r4 
(check-sat)
(get-model)
(get-unsat-core)
; {startsWith/-1785782452=([java.lang.String, java.lang.String], boolean), var3895-init=([], com.google.debugging.sourcemap.SourceMapParseException), <init>/-1406602162=([com.google.debugging.sourcemap.SourceMapParseException, java.lang.String], void)}
; {var2253=com.google.debugging.sourcemap.SourceMapGeneratorV3, var2781=r1, var3394=r0, var2281=null_type, var3187=java.lang.Object, var3602=r2, var2801=$z0, var3895=com.google.debugging.sourcemap.SourceMapParseException, var2583=$r4, var2728=$r5}
; {com.google.debugging.sourcemap.SourceMapGeneratorV3=var2253, r1=var2781, r0=var3394, null_type=var2281, java.lang.Object=var3187, r2=var3602, $z0=var2801, com.google.debugging.sourcemap.SourceMapParseException=var3895, $r4=var2583, $r5=var2728}
;seq <java.lang.String: boolean startsWith(java.lang.String)>
;cnt {"<java.lang.String: boolean startsWith(java.lang.String)>": 1}
;stmts r1 := @this: com.google.debugging.sourcemap.SourceMapGeneratorV3;	r0 := @parameter0: java.lang.String;	r2 := @parameter1: java.lang.Object;	$z0 = virtualinvoke r0.<java.lang.String: boolean startsWith(java.lang.String)>("x_");	if $z0 != 0 goto $r3 = r1.<com.google.debugging.sourcemap.SourceMapGeneratorV3: java.util.LinkedHashMap extensions>;	$r4 = new com.google.debugging.sourcemap.SourceMapParseException;	$r5 = dynamicinvoke "makeConcatWithConstants" <java.lang.String (java.lang.String)>(r0) <java.lang.invoke.StringConcatFactory: java.lang.invoke.CallSite makeConcatWithConstants(java.lang.invoke.MethodHandles$Lookup,java.lang.String,java.lang.invoke.MethodType,java.lang.String,java.lang.Object[])>("Extension \'\u0001\' must start with \'x_\'");	specialinvoke $r4.<com.google.debugging.sourcemap.SourceMapParseException: void <init>(java.lang.String)>($r5);	throw $r4
;block_num 2