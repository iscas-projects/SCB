(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1101 0)
(declare-sort var1446 0)
(declare-sort var3911 0)
(declare-sort var1334 0)
(declare-sort var3635 0)
(declare-sort var533 0)
(declare-sort var634 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var1334_isNullOrEmpty/1886904788 (String) Bool)
(declare-fun var533-init () var533)
(declare-fun arr-var634-init () (Array Int var634))
(declare-fun cast-from-String-to-var634 (String) var634)
(declare-fun var1446_access$000/168813510 (String (Array Int var634)) String)
(declare-fun <init>/875830710 (var533 String) void)
(declare-const null-var1101 var1101)
(declare-const null-var1446 var1446)
(declare-const null-String String)
(declare-const null-var3635 var3635)
(declare-const null-__Array__Int__var634__ (Array Int var634))
(declare-const var2564 var1101) ; Statement: r1 := @this: com.google.javascript.jscomp.jarjar.com.google.common.cache.CacheBuilderSpec$DurationParser 
(assert (not (= var2564 null-var1101)))
(declare-const var3748 var1446) ; Statement: r2 := @parameter0: com.google.javascript.jscomp.jarjar.com.google.common.cache.CacheBuilderSpec 
(assert (not (= var3748 null-var1446)))
(declare-const var3454 String) ; Statement: r5 := @parameter1: java.lang.String 
(assert (not (= var3454 null-String)))
(declare-const var645 String) ; Statement: r0 := @parameter2: java.lang.String 
(assert (not (= var645 null-String)))
(define-const var653 Bool (var1334_isNullOrEmpty/1886904788 var645)) ; Statement: $z0 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Strings: boolean isNullOrEmpty(java.lang.String)>(r0) 
 ; Statement: if $z0 == 0 goto $i0 = virtualinvoke r0.<java.lang.String: int length()>() 
(assert (not (= (ite var653 1 0) 0))) ; Negate: Cond: $z0 == 0  
(declare-const var2688 var3635) ; Statement: $r13 := @caughtexception 
(assert (not (= var2688 null-var3635)))
(define-const var1972 var533 var533-init) ; Statement: $r22 = new java.lang.IllegalArgumentException 
(define-const var1638 (Array Int var634) arr-var634-init) ; Statement: $r15 = newarray (java.lang.Object)[2] 
(declare-const var1638!1 (Array Int var634))
(assert (not (= var1638!1 null-__Array__Int__var634__)))
(assert (= (select var1638!1 0) (cast-from-String-to-var634 var3454))) ; Statement: $r15[0] = r5 
(declare-const var1638!2 (Array Int var634))
(assert (not (= var1638!2 null-__Array__Int__var634__)))
(assert (= (select var1638!2 1) (cast-from-String-to-var634 var645))) ; Statement: $r15[1] = r0 
(define-const var3198 String (var1446_access$000/168813510 "key %s value set to %s, must be integer" var1638!2)) ; Statement: $r16 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.cache.CacheBuilderSpec: java.lang.String access$000(java.lang.String,java.lang.Object[])>("key %s value set to %s, must be integer", $r15) 
(assert true)
;(assert (<init>/875830710 var1972 var3198)) ; Statement: specialinvoke $r22.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r16) 

(declare-const var1972!1 var533)
(declare-const var3198!1 String)
 ; Statement: throw $r22 
(check-sat)
(get-model)
(get-unsat-core)
; {var1334_isNullOrEmpty/1886904788=([java.lang.String], boolean), var533-init=([], java.lang.IllegalArgumentException), arr-var634-init=([], java.lang.Object[]), cast-from-String-to-var634=([java.lang.String], java.lang.Object), var1446_access$000/168813510=([java.lang.String, java.lang.Object[]], java.lang.String), <init>/875830710=([java.lang.IllegalArgumentException, java.lang.String], void)}
; {var1101=com.google.javascript.jscomp.jarjar.com.google.common.cache.CacheBuilderSpec$DurationParser, var2564=r1, var1446=com.google.javascript.jscomp.jarjar.com.google.common.cache.CacheBuilderSpec, var3748=r2, var3454=r5, var3911=null_type, var645=r0, var1334=com.google.javascript.jscomp.jarjar.com.google.common.base.Strings, var653=$z0, var3635=java.lang.NumberFormatException, var2688=$r13, var533=java.lang.IllegalArgumentException, var1972=$r22, var634=java.lang.Object, var1638=$r15, var3198=$r16}
; {com.google.javascript.jscomp.jarjar.com.google.common.cache.CacheBuilderSpec$DurationParser=var1101, r1=var2564, com.google.javascript.jscomp.jarjar.com.google.common.cache.CacheBuilderSpec=var1446, r2=var3748, r5=var3454, null_type=var3911, r0=var645, com.google.javascript.jscomp.jarjar.com.google.common.base.Strings=var1334, $z0=var653, java.lang.NumberFormatException=var3635, $r13=var2688, java.lang.IllegalArgumentException=var533, $r22=var1972, java.lang.Object=var634, $r15=var1638, $r16=var3198}
;seq 
;cnt {}
;stmts r1 := @this: com.google.javascript.jscomp.jarjar.com.google.common.cache.CacheBuilderSpec$DurationParser;	r2 := @parameter0: com.google.javascript.jscomp.jarjar.com.google.common.cache.CacheBuilderSpec;	r5 := @parameter1: java.lang.String;	r0 := @parameter2: java.lang.String;	$z0 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Strings: boolean isNullOrEmpty(java.lang.String)>(r0);	if $z0 == 0 goto $i0 = virtualinvoke r0.<java.lang.String: int length()>();	$r13 := @caughtexception;	$r22 = new java.lang.IllegalArgumentException;	$r15 = newarray (java.lang.Object)[2];	$r15[0] = r5;	$r15[1] = r0;	$r16 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.cache.CacheBuilderSpec: java.lang.String access$000(java.lang.String,java.lang.Object[])>("key %s value set to %s, must be integer", $r15);	specialinvoke $r22.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r16);	throw $r22
;block_num 2