(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1978 0)
(declare-sort var2631 0)
(declare-sort var1051 0)
(declare-sort var1737 0)
(declare-sort var3848 0)
(declare-sort var1872 0)
(declare-sort var3285 0)
(declare-sort var246 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var1737_isNullOrEmpty/1886904788 (String) Bool)
(declare-fun var1872-init () var1872)
(declare-fun arr-var3285-init () (Array Int var3285))
(declare-fun cast-from-String-to-var3285 (String) var3285)
(declare-fun var2631_access$000/168813510 (String (Array Int var3285)) String)
(declare-fun <init>/-1425936906 (var1872 String var246) void)
(declare-fun cast-from-var3848-to-var246 (var3848) var246)
(declare-const null-var1978 var1978)
(declare-const null-var2631 var2631)
(declare-const null-String String)
(declare-const null-var3848 var3848)
(declare-const null-__Array__Int__var3285__ (Array Int var3285))
(declare-const var2609 var1978) ; Statement: r1 := @this: com.google.javascript.jscomp.jarjar.com.google.common.cache.CacheBuilderSpec$LongParser 
(assert (not (= var2609 null-var1978)))
(declare-const var3037 var2631) ; Statement: r2 := @parameter0: com.google.javascript.jscomp.jarjar.com.google.common.cache.CacheBuilderSpec 
(assert (not (= var3037 null-var2631)))
(declare-const var3084 String) ; Statement: r5 := @parameter1: java.lang.String 
(assert (not (= var3084 null-String)))
(declare-const var1803 String) ; Statement: r0 := @parameter2: java.lang.String 
(assert (not (= var1803 null-String)))
(define-const var2464 Bool (var1737_isNullOrEmpty/1886904788 var1803)) ; Statement: $z0 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Strings: boolean isNullOrEmpty(java.lang.String)>(r0) 
 ; Statement: if $z0 == 0 goto $l0 = staticinvoke <java.lang.Long: long parseLong(java.lang.String)>(r0) 
(assert (not (= (ite var2464 1 0) 0))) ; Negate: Cond: $z0 == 0  
(declare-const var2692 var3848) ; Statement: $r10 := @caughtexception 
(assert (not (= var2692 null-var3848)))
(define-const var3897 var1872 var1872-init) ; Statement: $r11 = new java.lang.IllegalArgumentException 
(define-const var2810 (Array Int var3285) arr-var3285-init) ; Statement: $r12 = newarray (java.lang.Object)[2] 
(declare-const var2810!1 (Array Int var3285))
(assert (not (= var2810!1 null-__Array__Int__var3285__)))
(assert (= (select var2810!1 0) (cast-from-String-to-var3285 var3084))) ; Statement: $r12[0] = r5 
(declare-const var2810!2 (Array Int var3285))
(assert (not (= var2810!2 null-__Array__Int__var3285__)))
(assert (= (select var2810!2 1) (cast-from-String-to-var3285 var1803))) ; Statement: $r12[1] = r0 
(define-const var2475 String (var2631_access$000/168813510 "key %s value set to %s, must be integer" var2810!2)) ; Statement: $r13 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.cache.CacheBuilderSpec: java.lang.String access$000(java.lang.String,java.lang.Object[])>("key %s value set to %s, must be integer", $r12) 
(assert true)
;(assert (<init>/-1425936906 var3897 var2475 (cast-from-var3848-to-var246 var2692))) ; Statement: specialinvoke $r11.<java.lang.IllegalArgumentException: void <init>(java.lang.String,java.lang.Throwable)>($r13, $r10) 

(declare-const var3897!1 var1872)
(declare-const var2475!1 String)
(declare-const var2692!1 var3848)
 ; Statement: throw $r11 
(check-sat)
(get-model)
(get-unsat-core)
; {var1737_isNullOrEmpty/1886904788=([java.lang.String], boolean), var1872-init=([], java.lang.IllegalArgumentException), arr-var3285-init=([], java.lang.Object[]), cast-from-String-to-var3285=([java.lang.String], java.lang.Object), var2631_access$000/168813510=([java.lang.String, java.lang.Object[]], java.lang.String), <init>/-1425936906=([java.lang.IllegalArgumentException, java.lang.String, java.lang.Throwable], void), cast-from-var3848-to-var246=([java.lang.NumberFormatException], java.lang.Throwable)}
; {var1978=com.google.javascript.jscomp.jarjar.com.google.common.cache.CacheBuilderSpec$LongParser, var2609=r1, var2631=com.google.javascript.jscomp.jarjar.com.google.common.cache.CacheBuilderSpec, var3037=r2, var3084=r5, var1051=null_type, var1803=r0, var1737=com.google.javascript.jscomp.jarjar.com.google.common.base.Strings, var2464=$z0, var3848=java.lang.NumberFormatException, var2692=$r10, var1872=java.lang.IllegalArgumentException, var3897=$r11, var3285=java.lang.Object, var2810=$r12, var2475=$r13, var246=java.lang.Throwable}
; {com.google.javascript.jscomp.jarjar.com.google.common.cache.CacheBuilderSpec$LongParser=var1978, r1=var2609, com.google.javascript.jscomp.jarjar.com.google.common.cache.CacheBuilderSpec=var2631, r2=var3037, r5=var3084, null_type=var1051, r0=var1803, com.google.javascript.jscomp.jarjar.com.google.common.base.Strings=var1737, $z0=var2464, java.lang.NumberFormatException=var3848, $r10=var2692, java.lang.IllegalArgumentException=var1872, $r11=var3897, java.lang.Object=var3285, $r12=var2810, $r13=var2475, java.lang.Throwable=var246}
;seq 
;cnt {}
;stmts r1 := @this: com.google.javascript.jscomp.jarjar.com.google.common.cache.CacheBuilderSpec$LongParser;	r2 := @parameter0: com.google.javascript.jscomp.jarjar.com.google.common.cache.CacheBuilderSpec;	r5 := @parameter1: java.lang.String;	r0 := @parameter2: java.lang.String;	$z0 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Strings: boolean isNullOrEmpty(java.lang.String)>(r0);	if $z0 == 0 goto $l0 = staticinvoke <java.lang.Long: long parseLong(java.lang.String)>(r0);	$r10 := @caughtexception;	$r11 = new java.lang.IllegalArgumentException;	$r12 = newarray (java.lang.Object)[2];	$r12[0] = r5;	$r12[1] = r0;	$r13 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.cache.CacheBuilderSpec: java.lang.String access$000(java.lang.String,java.lang.Object[])>("key %s value set to %s, must be integer", $r12);	specialinvoke $r11.<java.lang.IllegalArgumentException: void <init>(java.lang.String,java.lang.Throwable)>($r13, $r10);	throw $r11
;block_num 2