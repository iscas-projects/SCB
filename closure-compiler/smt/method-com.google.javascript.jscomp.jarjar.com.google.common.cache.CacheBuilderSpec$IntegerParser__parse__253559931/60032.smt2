(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3807 0)
(declare-sort var3042 0)
(declare-sort var1153 0)
(declare-sort var47 0)
(declare-sort var3276 0)
(declare-sort var1462 0)
(declare-sort var161 0)
(declare-sort var937 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var47_isNullOrEmpty/1886904788 (String) Bool)
(declare-fun var1462-init () var1462)
(declare-fun arr-var161-init () (Array Int var161))
(declare-fun cast-from-String-to-var161 (String) var161)
(declare-fun var3042_access$000/168813510 (String (Array Int var161)) String)
(declare-fun <init>/-1425936906 (var1462 String var937) void)
(declare-fun cast-from-var3276-to-var937 (var3276) var937)
(declare-const null-var3807 var3807)
(declare-const null-var3042 var3042)
(declare-const null-String String)
(declare-const null-var3276 var3276)
(declare-const null-__Array__Int__var161__ (Array Int var161))
(declare-const var644 var3807) ; Statement: r1 := @this: com.google.javascript.jscomp.jarjar.com.google.common.cache.CacheBuilderSpec$IntegerParser 
(assert (not (= var644 null-var3807)))
(declare-const var1841 var3042) ; Statement: r2 := @parameter0: com.google.javascript.jscomp.jarjar.com.google.common.cache.CacheBuilderSpec 
(assert (not (= var1841 null-var3042)))
(declare-const var661 String) ; Statement: r5 := @parameter1: java.lang.String 
(assert (not (= var661 null-String)))
(declare-const var110 String) ; Statement: r0 := @parameter2: java.lang.String 
(assert (not (= var110 null-String)))
(define-const var1713 Bool (var47_isNullOrEmpty/1886904788 var110)) ; Statement: $z0 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Strings: boolean isNullOrEmpty(java.lang.String)>(r0) 
 ; Statement: if $z0 == 0 goto $i0 = staticinvoke <java.lang.Integer: int parseInt(java.lang.String)>(r0) 
(assert (not (= (ite var1713 1 0) 0))) ; Negate: Cond: $z0 == 0  
(declare-const var3266 var3276) ; Statement: $r10 := @caughtexception 
(assert (not (= var3266 null-var3276)))
(define-const var2050 var1462 var1462-init) ; Statement: $r11 = new java.lang.IllegalArgumentException 
(define-const var2798 (Array Int var161) arr-var161-init) ; Statement: $r12 = newarray (java.lang.Object)[2] 
(declare-const var2798!1 (Array Int var161))
(assert (not (= var2798!1 null-__Array__Int__var161__)))
(assert (= (select var2798!1 0) (cast-from-String-to-var161 var661))) ; Statement: $r12[0] = r5 
(declare-const var2798!2 (Array Int var161))
(assert (not (= var2798!2 null-__Array__Int__var161__)))
(assert (= (select var2798!2 1) (cast-from-String-to-var161 var110))) ; Statement: $r12[1] = r0 
(define-const var1952 String (var3042_access$000/168813510 "key %s value set to %s, must be integer" var2798!2)) ; Statement: $r13 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.cache.CacheBuilderSpec: java.lang.String access$000(java.lang.String,java.lang.Object[])>("key %s value set to %s, must be integer", $r12) 
(assert true)
;(assert (<init>/-1425936906 var2050 var1952 (cast-from-var3276-to-var937 var3266))) ; Statement: specialinvoke $r11.<java.lang.IllegalArgumentException: void <init>(java.lang.String,java.lang.Throwable)>($r13, $r10) 

(declare-const var2050!1 var1462)
(declare-const var1952!1 String)
(declare-const var3266!1 var3276)
 ; Statement: throw $r11 
(check-sat)
(get-model)
(get-unsat-core)
; {var47_isNullOrEmpty/1886904788=([java.lang.String], boolean), var1462-init=([], java.lang.IllegalArgumentException), arr-var161-init=([], java.lang.Object[]), cast-from-String-to-var161=([java.lang.String], java.lang.Object), var3042_access$000/168813510=([java.lang.String, java.lang.Object[]], java.lang.String), <init>/-1425936906=([java.lang.IllegalArgumentException, java.lang.String, java.lang.Throwable], void), cast-from-var3276-to-var937=([java.lang.NumberFormatException], java.lang.Throwable)}
; {var3807=com.google.javascript.jscomp.jarjar.com.google.common.cache.CacheBuilderSpec$IntegerParser, var644=r1, var3042=com.google.javascript.jscomp.jarjar.com.google.common.cache.CacheBuilderSpec, var1841=r2, var661=r5, var1153=null_type, var110=r0, var47=com.google.javascript.jscomp.jarjar.com.google.common.base.Strings, var1713=$z0, var3276=java.lang.NumberFormatException, var3266=$r10, var1462=java.lang.IllegalArgumentException, var2050=$r11, var161=java.lang.Object, var2798=$r12, var1952=$r13, var937=java.lang.Throwable}
; {com.google.javascript.jscomp.jarjar.com.google.common.cache.CacheBuilderSpec$IntegerParser=var3807, r1=var644, com.google.javascript.jscomp.jarjar.com.google.common.cache.CacheBuilderSpec=var3042, r2=var1841, r5=var661, null_type=var1153, r0=var110, com.google.javascript.jscomp.jarjar.com.google.common.base.Strings=var47, $z0=var1713, java.lang.NumberFormatException=var3276, $r10=var3266, java.lang.IllegalArgumentException=var1462, $r11=var2050, java.lang.Object=var161, $r12=var2798, $r13=var1952, java.lang.Throwable=var937}
;seq 
;cnt {}
;stmts r1 := @this: com.google.javascript.jscomp.jarjar.com.google.common.cache.CacheBuilderSpec$IntegerParser;	r2 := @parameter0: com.google.javascript.jscomp.jarjar.com.google.common.cache.CacheBuilderSpec;	r5 := @parameter1: java.lang.String;	r0 := @parameter2: java.lang.String;	$z0 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Strings: boolean isNullOrEmpty(java.lang.String)>(r0);	if $z0 == 0 goto $i0 = staticinvoke <java.lang.Integer: int parseInt(java.lang.String)>(r0);	$r10 := @caughtexception;	$r11 = new java.lang.IllegalArgumentException;	$r12 = newarray (java.lang.Object)[2];	$r12[0] = r5;	$r12[1] = r0;	$r13 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.cache.CacheBuilderSpec: java.lang.String access$000(java.lang.String,java.lang.Object[])>("key %s value set to %s, must be integer", $r12);	specialinvoke $r11.<java.lang.IllegalArgumentException: void <init>(java.lang.String,java.lang.Throwable)>($r13, $r10);	throw $r11
;block_num 2