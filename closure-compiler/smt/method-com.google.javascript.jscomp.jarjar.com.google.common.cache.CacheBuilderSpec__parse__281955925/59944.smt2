(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2324 0)
(declare-sort var1144 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var1144-init () var1144)
(declare-fun <init>/1157409778 (var1144 String) void)
(define-fun isEmpty/-1285796103 ((s String)) Bool (= (str.len s) 0))
(declare-const null-String String)
(declare-const var2920 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var2920 null-String)))
(define-const var2063 var1144 var1144-init) ; Statement: $r0 = new com.google.javascript.jscomp.jarjar.com.google.common.cache.CacheBuilderSpec 
(assert true)
;(assert (<init>/1157409778 var2063 var2920)) ; Statement: specialinvoke $r0.<com.google.javascript.jscomp.jarjar.com.google.common.cache.CacheBuilderSpec: void <init>(java.lang.String)>(r1) 

(declare-const var2063!1 var1144)
(declare-const var2920!1 String)
(assert true)
(define-const var523 Bool (isEmpty/-1285796103 var2920!1)) ; Statement: $z0 = virtualinvoke r1.<java.lang.String: boolean isEmpty()>() 
 ; Statement: if $z0 != 0 goto return $r0 
(assert (not (= (ite var523 1 0) 0))) ; Cond: $z0 != 0 
 ; Statement: return $r0 
(check-sat)
(get-model)
(get-unsat-core)
; {var1144-init=([], com.google.javascript.jscomp.jarjar.com.google.common.cache.CacheBuilderSpec), <init>/1157409778=([com.google.javascript.jscomp.jarjar.com.google.common.cache.CacheBuilderSpec, java.lang.String], void), isEmpty/-1285796103=([java.lang.String], boolean)}
; {var2920=r1, var2324=null_type, var1144=com.google.javascript.jscomp.jarjar.com.google.common.cache.CacheBuilderSpec, var2063=$r0, var523=$z0}
; {r1=var2920, null_type=var2324, com.google.javascript.jscomp.jarjar.com.google.common.cache.CacheBuilderSpec=var1144, $r0=var2063, $z0=var523}
;seq <java.lang.String: boolean isEmpty()>
;cnt {"<java.lang.String: boolean isEmpty()>": 1}
;stmts r1 := @parameter0: java.lang.String;	$r0 = new com.google.javascript.jscomp.jarjar.com.google.common.cache.CacheBuilderSpec;	specialinvoke $r0.<com.google.javascript.jscomp.jarjar.com.google.common.cache.CacheBuilderSpec: void <init>(java.lang.String)>(r1);	$z0 = virtualinvoke r1.<java.lang.String: boolean isEmpty()>();	if $z0 != 0 goto return $r0;	return $r0
;block_num 2