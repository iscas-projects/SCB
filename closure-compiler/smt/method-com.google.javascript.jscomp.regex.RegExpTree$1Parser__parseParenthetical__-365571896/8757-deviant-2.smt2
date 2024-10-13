(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3395 0)
(declare-sort var2622 0)
(declare-sort var3040 0)
(declare-sort var555 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun val$pattern/117970391 (var3395) String)
(declare-fun pos/117970391 (var3395) Int)
(define-fun charAt/698050440 ((s String) (index Int)) Int (str.to_code (str.at s index)))
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun var2622_checkState/1431124798 (Bool) void)
(declare-fun limit/117970391 (var3395) Int)
(declare-fun var555-init () var555)
(define-fun substring/850833817 ((s String) (begin Int)) String (str.substr s begin (- (str.len s) begin)))
(declare-fun <init>/875830710 (var555 String) void)
(declare-const null-var3395 var3395)
(declare-const null-String String)
(declare-const var3622 var3395) ; Statement: r0 := @this: com.google.javascript.jscomp.regex.RegExpTree$1Parser 
(assert (not (= var3622 null-var3395)))
(define-const var2860 String (val$pattern/117970391 var3622)) ; Statement: $r1 = r0.<com.google.javascript.jscomp.regex.RegExpTree$1Parser: java.lang.String val$pattern> 
(define-const var3088 Int (pos/117970391 var3622)) ; Statement: $i0 = r0.<com.google.javascript.jscomp.regex.RegExpTree$1Parser: int pos> 
(assert (and true (and (> (str.len var2860) var3088) (<= 0 var3088))))
(define-const var841 Int (charAt/698050440 var2860 var3088)) ; Statement: $c1 = virtualinvoke $r1.<java.lang.String: char charAt(int)>($i0) 
(define-const var2987 Int (cast-from-Int-to-Int var841)) ; Statement: $i51 = (int) $c1 
 ; Statement: if $i51 != 40 goto $z0 = 0 
(assert (not (not (= var2987 40)))) ; Negate: Cond: $i51 != 40  
(define-const var245 Bool (ite (= 1 1) true false)) ; Statement: $z0 = 1 
 ; Statement: goto [?= staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: void checkState(boolean)>($z0)] 
(assert true) ; Non Conditional
;(assert (var2622_checkState/1431124798 var245)) ; Statement: staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: void checkState(boolean)>($z0) 

(declare-const var245!1 Bool)
(define-const var57 Int (pos/117970391 var3622)) ; Statement: $i47 = r0.<com.google.javascript.jscomp.regex.RegExpTree$1Parser: int pos> 
(define-const var1024 Int (pos/117970391 var3622)) ; Statement: $i2 = r0.<com.google.javascript.jscomp.regex.RegExpTree$1Parser: int pos> 
(define-const var481 Int (+ var1024 1)) ; Statement: $i3 = $i2 + 1 
(declare-const var3622!1 var3395)
(assert (not (= var3622!1 null-var3395)))
(assert (= (pos/117970391 var3622!1) var481)) ; Statement: r0.<com.google.javascript.jscomp.regex.RegExpTree$1Parser: int pos> = $i3 
(define-const var2514 String null-String) ; Statement: r34 = null 
(define-const var2413 Int (pos/117970391 var3622!1)) ; Statement: $i5 = r0.<com.google.javascript.jscomp.regex.RegExpTree$1Parser: int pos> 
(define-const var1641 Int (limit/117970391 var3622!1)) ; Statement: $i4 = r0.<com.google.javascript.jscomp.regex.RegExpTree$1Parser: int limit> 
 ; Statement: if $i5 >= $i4 goto r35 = <com.google.javascript.jscomp.regex.RegExpTree$ParentheticalType: com.google.javascript.jscomp.regex.RegExpTree$ParentheticalType CAPTURING> 
(assert (not (>= var2413 var1641))) ; Negate: Cond: $i5 >= $i4  
(define-const var157 String (val$pattern/117970391 var3622!1)) ; Statement: $r20 = r0.<com.google.javascript.jscomp.regex.RegExpTree$1Parser: java.lang.String val$pattern> 
(define-const var36 Int (pos/117970391 var3622!1)) ; Statement: $i16 = r0.<com.google.javascript.jscomp.regex.RegExpTree$1Parser: int pos> 
(assert (and true (and (> (str.len var157) var36) (<= 0 var36))))
(define-const var1405 Int (charAt/698050440 var157 var36)) ; Statement: $c17 = virtualinvoke $r20.<java.lang.String: char charAt(int)>($i16) 
(define-const var1721 Int (cast-from-Int-to-Int var1405)) ; Statement: $i52 = (int) $c17 
 ; Statement: if $i52 != 63 goto r35 = <com.google.javascript.jscomp.regex.RegExpTree$ParentheticalType: com.google.javascript.jscomp.regex.RegExpTree$ParentheticalType CAPTURING> 
(assert (not (not (= var1721 63)))) ; Negate: Cond: $i52 != 63  
(define-const var2992 Int (pos/117970391 var3622!1)) ; Statement: $i18 = r0.<com.google.javascript.jscomp.regex.RegExpTree$1Parser: int pos> 
(define-const var1411 Int (+ var2992 1)) ; Statement: $i20 = $i18 + 1 
(define-const var3912 Int (limit/117970391 var3622!1)) ; Statement: $i19 = r0.<com.google.javascript.jscomp.regex.RegExpTree$1Parser: int limit> 
 ; Statement: if $i20 >= $i19 goto $r38 = new java.lang.IllegalArgumentException 
(assert (>= var1411 var3912)) ; Cond: $i20 >= $i19 
(define-const var1844 var555 var555-init) ; Statement: $r38 = new java.lang.IllegalArgumentException 
(define-const var2306 String (val$pattern/117970391 var3622!1)) ; Statement: $r22 = r0.<com.google.javascript.jscomp.regex.RegExpTree$1Parser: java.lang.String val$pattern> 
(assert (not (and true (and (>= var57 0) (>= (str.len var2306) var57)))))
(check-sat)
(get-model)
(get-unsat-core)
; {val$pattern/117970391=([com.google.javascript.jscomp.regex.RegExpTree$1Parser], java.lang.String), pos/117970391=([com.google.javascript.jscomp.regex.RegExpTree$1Parser], int), charAt/698050440=([java.lang.String, int], char), cast-from-Int-to-Int=([char], int), var2622_checkState/1431124798=([boolean], void), limit/117970391=([com.google.javascript.jscomp.regex.RegExpTree$1Parser], int), var555-init=([], java.lang.IllegalArgumentException), substring/850833817=([java.lang.String, int], java.lang.String), <init>/875830710=([java.lang.IllegalArgumentException, java.lang.String], void)}
; {var3395=com.google.javascript.jscomp.regex.RegExpTree$1Parser, var3622=r0, var2860=$r1, var3088=$i0, var841=$c1, var2987=$i51, var245=$z0, var2622=com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions, var57=$i47, var1024=$i2, var481=$i3, var3040=null_type, var2514=r34, var2413=$i5, var1641=$i4, var157=$r20, var36=$i16, var1405=$c17, var1721=$i52, var2992=$i18, var1411=$i20, var3912=$i19, var555=java.lang.IllegalArgumentException, var1844=$r38, var2306=$r22, var816=$r23, var3324=$r24}
; {com.google.javascript.jscomp.regex.RegExpTree$1Parser=var3395, r0=var3622, $r1=var2860, $i0=var3088, $c1=var841, $i51=var2987, $z0=var245, com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions=var2622, $i47=var57, $i2=var1024, $i3=var481, null_type=var3040, r34=var2514, $i5=var2413, $i4=var1641, $r20=var157, $i16=var36, $c17=var1405, $i52=var1721, $i18=var2992, $i20=var1411, $i19=var3912, java.lang.IllegalArgumentException=var555, $r38=var1844, $r22=var2306, $r23=var816, $r24=var3324}
;seq <java.lang.String: char charAt(int)>;	<java.lang.String: char charAt(int)>;	<java.lang.String: java.lang.String substring(int)>
;cnt {"<java.lang.String: char charAt(int)>": 2,"<java.lang.String: java.lang.String substring(int)>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.regex.RegExpTree$1Parser;	$r1 = r0.<com.google.javascript.jscomp.regex.RegExpTree$1Parser: java.lang.String val$pattern>;	$i0 = r0.<com.google.javascript.jscomp.regex.RegExpTree$1Parser: int pos>;	$c1 = virtualinvoke $r1.<java.lang.String: char charAt(int)>($i0);	$i51 = (int) $c1;	if $i51 != 40 goto $z0 = 0;	$z0 = 1;	goto [?= staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: void checkState(boolean)>($z0)];	staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: void checkState(boolean)>($z0);	$i47 = r0.<com.google.javascript.jscomp.regex.RegExpTree$1Parser: int pos>;	$i2 = r0.<com.google.javascript.jscomp.regex.RegExpTree$1Parser: int pos>;	$i3 = $i2 + 1;	r0.<com.google.javascript.jscomp.regex.RegExpTree$1Parser: int pos> = $i3;	r34 = null;	$i5 = r0.<com.google.javascript.jscomp.regex.RegExpTree$1Parser: int pos>;	$i4 = r0.<com.google.javascript.jscomp.regex.RegExpTree$1Parser: int limit>;	if $i5 >= $i4 goto r35 = <com.google.javascript.jscomp.regex.RegExpTree$ParentheticalType: com.google.javascript.jscomp.regex.RegExpTree$ParentheticalType CAPTURING>;	$r20 = r0.<com.google.javascript.jscomp.regex.RegExpTree$1Parser: java.lang.String val$pattern>;	$i16 = r0.<com.google.javascript.jscomp.regex.RegExpTree$1Parser: int pos>;	$c17 = virtualinvoke $r20.<java.lang.String: char charAt(int)>($i16);	$i52 = (int) $c17;	if $i52 != 63 goto r35 = <com.google.javascript.jscomp.regex.RegExpTree$ParentheticalType: com.google.javascript.jscomp.regex.RegExpTree$ParentheticalType CAPTURING>;	$i18 = r0.<com.google.javascript.jscomp.regex.RegExpTree$1Parser: int pos>;	$i20 = $i18 + 1;	$i19 = r0.<com.google.javascript.jscomp.regex.RegExpTree$1Parser: int limit>;	if $i20 >= $i19 goto $r38 = new java.lang.IllegalArgumentException;	$r38 = new java.lang.IllegalArgumentException;	$r22 = r0.<com.google.javascript.jscomp.regex.RegExpTree$1Parser: java.lang.String val$pattern>;	$r23 = virtualinvoke $r22.<java.lang.String: java.lang.String substring(int)>($i47);	$r24 = dynamicinvoke "makeConcatWithConstants" <java.lang.String (java.lang.String)>($r23) <java.lang.invoke.StringConcatFactory: java.lang.invoke.CallSite makeConcatWithConstants(java.lang.invoke.MethodHandles$Lookup,java.lang.String,java.lang.invoke.MethodType,java.lang.String,java.lang.Object[])>("Malformed parenthetical: \u0001");	specialinvoke $r38.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r24);	throw $r38
;block_num 6