(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2301 0)
(declare-sort var3635 0)
(declare-sort var2256 0)
(declare-sort var1630 0)
(declare-sort var3929 0)
(declare-sort var2698 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun indexOf/-1037706067 ((s String) (c Int)) Int (str.indexof s (str.from_code c) 0))
(define-fun indexOf/-1209756239 ((s String) (subs String)) Int (str.indexof s subs 0))
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun var2256_checkState/1431124798 (Bool) void)
(define-fun contains/1009244746 ((s String) (subs String)) Bool (str.contains s subs))
(define-fun cast-from-String-to-String ((arg String)) String arg)
(declare-fun compiler/1104890379 (var2301) var1630)
(declare-fun arr-String-init () (Array Int String))
(declare-fun var2698_make/2096999434 (var3929 (Array Int String)) var2698)
(declare-fun report/-2002233305 (var1630 var2698) void)
(declare-const null-var2301 var2301)
(declare-const null-String String)
(declare-const var2301-BAD_REPLACEMENT_CONFIGURATION var3929)
(declare-const null-__Array__Int__String__ (Array Int String))
(declare-const var180 var2301) ; Statement: r15 := @this: com.google.javascript.jscomp.ReplaceStrings 
(assert (not (= var180 null-var2301)))
(declare-const var1598 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var1598 null-String)))
(assert true)
(define-const var658 Int (indexOf/-1037706067 var1598 40)) ; Statement: i0 = virtualinvoke r0.<java.lang.String: int indexOf(int)>(40) 
(assert true)
(define-const var1511 Int (indexOf/-1037706067 var1598 41)) ; Statement: i1 = virtualinvoke r0.<java.lang.String: int indexOf(int)>(41) 
(assert true)
(define-const var738 Int (indexOf/-1209756239 var1598 ":!")) ; Statement: i2 = virtualinvoke r0.<java.lang.String: int indexOf(java.lang.String)>(":!") 
(define-const var75 Int (cast-from-Int-to-Int (- 1))) ; Statement: $i9 = (int) -1 
 ; Statement: if i0 == $i9 goto $z6 = 0 
(assert (= var658 var75)) ; Cond: i0 == $i9 
(define-const var560 Bool (ite (= 1 0) true false)) ; Statement: $z6 = 0 
(assert true) ; Non Conditional
;(assert (var2256_checkState/1431124798 var560)) ; Statement: staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: void checkState(boolean)>($z6) 

(declare-const var560!1 Bool)
(assert true)
(define-const var3684 Bool (contains/1009244746 var1598 (cast-from-String-to-String ".prototype."))) ; Statement: $z7 = virtualinvoke r0.<java.lang.String: boolean contains(java.lang.CharSequence)>(".prototype.") 
 ; Statement: if $z7 == 0 goto r1 = virtualinvoke r0.<java.lang.String: java.lang.String substring(int,int)>(0, i0) 
(assert (not (= (ite var3684 1 0) 0))) ; Negate: Cond: $z7 == 0  
(define-const var392 var1630 (compiler/1104890379 var180)) ; Statement: $r18 = r15.<com.google.javascript.jscomp.ReplaceStrings: com.google.javascript.jscomp.AbstractCompiler compiler> 
(define-const var1990 var3929 var2301-BAD_REPLACEMENT_CONFIGURATION) ; Statement: $r17 = <com.google.javascript.jscomp.ReplaceStrings: com.google.javascript.jscomp.DiagnosticType BAD_REPLACEMENT_CONFIGURATION> 
(define-const var2616 (Array Int String) arr-String-init) ; Statement: $r16 = newarray (java.lang.String)[2] 
(declare-const var2616!1 (Array Int String))
(assert (not (= var2616!1 null-__Array__Int__String__)))
(assert (= (select var2616!1 0) var1598)) ; Statement: $r16[0] = r0 
(declare-const var2616!2 (Array Int String))
(assert (not (= var2616!2 null-__Array__Int__String__)))
(assert (= (select var2616!2 1) "Cannot replace strings passed to prototype methods.")) ; Statement: $r16[1] = "Cannot replace strings passed to prototype methods." 
(define-const var2974 var2698 (var2698_make/2096999434 var1990 var2616!2)) ; Statement: $r19 = staticinvoke <com.google.javascript.jscomp.JSError: com.google.javascript.jscomp.JSError make(com.google.javascript.jscomp.DiagnosticType,java.lang.String[])>($r17, $r16) 
(assert true)
;(assert (report/-2002233305 var392 var2974)) ; Statement: virtualinvoke $r18.<com.google.javascript.jscomp.AbstractCompiler: void report(com.google.javascript.jscomp.JSError)>($r19) 

(declare-const var392!1 var1630)
(declare-const var2974!1 var2698)
 ; Statement: return null 
(check-sat)
(get-model)
(get-unsat-core)
; {indexOf/-1037706067=([java.lang.String, int], int), indexOf/-1209756239=([java.lang.String, java.lang.String], int), cast-from-Int-to-Int=([int], int), var2256_checkState/1431124798=([boolean], void), contains/1009244746=([java.lang.String, java.lang.CharSequence], boolean), cast-from-String-to-String=([java.lang.String], java.lang.CharSequence), compiler/1104890379=([com.google.javascript.jscomp.ReplaceStrings], com.google.javascript.jscomp.AbstractCompiler), arr-String-init=([], java.lang.String[]), var2698_make/2096999434=([com.google.javascript.jscomp.DiagnosticType, java.lang.String[]], com.google.javascript.jscomp.JSError), report/-2002233305=([com.google.javascript.jscomp.AbstractCompiler, com.google.javascript.jscomp.JSError], void)}
; {var2301=com.google.javascript.jscomp.ReplaceStrings, var180=r15, var1598=r0, var3635=null_type, var658=i0, var1511=i1, var738=i2, var75=$i9, var560=$z6, var2256=com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions, var3684=$z7, var1630=com.google.javascript.jscomp.AbstractCompiler, var392=$r18, var3929=com.google.javascript.jscomp.DiagnosticType, var1990=$r17, var2616=$r16, var2698=com.google.javascript.jscomp.JSError, var2974=$r19}
; {com.google.javascript.jscomp.ReplaceStrings=var2301, r15=var180, r0=var1598, null_type=var3635, i0=var658, i1=var1511, i2=var738, $i9=var75, $z6=var560, com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions=var2256, $z7=var3684, com.google.javascript.jscomp.AbstractCompiler=var1630, $r18=var392, com.google.javascript.jscomp.DiagnosticType=var3929, $r17=var1990, $r16=var2616, com.google.javascript.jscomp.JSError=var2698, $r19=var2974}
;seq <java.lang.String: int indexOf(int)>;	<java.lang.String: int indexOf(int)>;	<java.lang.String: int indexOf(java.lang.String)>;	<java.lang.String: boolean contains(java.lang.CharSequence)>
;cnt {"<java.lang.String: int indexOf(int)>": 2,"<java.lang.String: int indexOf(java.lang.String)>": 1,"<java.lang.String: boolean contains(java.lang.CharSequence)>": 1}
;stmts r15 := @this: com.google.javascript.jscomp.ReplaceStrings;	r0 := @parameter0: java.lang.String;	i0 = virtualinvoke r0.<java.lang.String: int indexOf(int)>(40);	i1 = virtualinvoke r0.<java.lang.String: int indexOf(int)>(41);	i2 = virtualinvoke r0.<java.lang.String: int indexOf(java.lang.String)>(":!");	$i9 = (int) -1;	if i0 == $i9 goto $z6 = 0;	$z6 = 0;	staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: void checkState(boolean)>($z6);	$z7 = virtualinvoke r0.<java.lang.String: boolean contains(java.lang.CharSequence)>(".prototype.");	if $z7 == 0 goto r1 = virtualinvoke r0.<java.lang.String: java.lang.String substring(int,int)>(0, i0);	$r18 = r15.<com.google.javascript.jscomp.ReplaceStrings: com.google.javascript.jscomp.AbstractCompiler compiler>;	$r17 = <com.google.javascript.jscomp.ReplaceStrings: com.google.javascript.jscomp.DiagnosticType BAD_REPLACEMENT_CONFIGURATION>;	$r16 = newarray (java.lang.String)[2];	$r16[0] = r0;	$r16[1] = "Cannot replace strings passed to prototype methods.";	$r19 = staticinvoke <com.google.javascript.jscomp.JSError: com.google.javascript.jscomp.JSError make(com.google.javascript.jscomp.DiagnosticType,java.lang.String[])>($r17, $r16);	virtualinvoke $r18.<com.google.javascript.jscomp.AbstractCompiler: void report(com.google.javascript.jscomp.JSError)>($r19);	return null
;block_num 4