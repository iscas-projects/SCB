(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1824 0)
(declare-sort var1583 0)
(declare-sort var3205 0)
(declare-sort var3952 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getSourceName/21548920 (var1824) String)
(declare-fun var1583_emptyToNull/666096763 (String) String)
(declare-fun getLineno/1584908903 (var1824) Int)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun String_valueOf/1240665136 (Int) String)
(declare-fun getCharno/648852549 (var1824) Int)
(declare-fun getType/1455668659 (var1824) var3952)
(declare-fun key/221390942 (var3952) String)
(declare-fun getDescription/639719136 (var1824) String)
(declare-const null-var1824 var1824)
(declare-const null-String String)
(declare-const var1042 var1824) ; Statement: r0 := @this: com.google.javascript.jscomp.JSError 
(assert (not (= var1042 null-var1824)))
(assert true)
(define-const var917 String (getSourceName/21548920 var1042)) ; Statement: $r1 = virtualinvoke r0.<com.google.javascript.jscomp.JSError: java.lang.String getSourceName()>() 
(define-const var496 String (var1583_emptyToNull/666096763 var917)) ; Statement: $r2 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Strings: java.lang.String emptyToNull(java.lang.String)>($r1) 
 ; Statement: if $r2 == null goto $r9 = "(unknown source)" 
(assert (= var496 null-String)) ; Cond: $r2 == null 
(define-const var3593 String "(unknown source)") ; Statement: $r9 = "(unknown source)" 
(assert true) ; Non Conditional
(define-const var1774 String var3593) ; Statement: r3 = $r9 
(assert true)
(define-const var3036 Int (getLineno/1584908903 var1042)) ; Statement: $i0 = virtualinvoke r0.<com.google.javascript.jscomp.JSError: int getLineno()>() 
(define-const var967 Int (cast-from-Int-to-Int (- 1))) ; Statement: $i5 = (int) -1 
 ; Statement: if $i0 == $i5 goto $r10 = "(unknown line)" 
(assert (not (= var3036 var967))) ; Negate: Cond: $i0 == $i5  
(assert true)
(define-const var2214 Int (getLineno/1584908903 var1042)) ; Statement: $i3 = virtualinvoke r0.<com.google.javascript.jscomp.JSError: int getLineno()>() 
(define-const var9 String (String_valueOf/1240665136 var2214)) ; Statement: $r10 = staticinvoke <java.lang.String: java.lang.String valueOf(int)>($i3) 
 ; Statement: goto [?= r4 = $r10] 
(assert true) ; Non Conditional
(define-const var2113 String var9) ; Statement: r4 = $r10 
(assert true)
(define-const var2096 Int (getCharno/648852549 var1042)) ; Statement: $i1 = virtualinvoke r0.<com.google.javascript.jscomp.JSError: int getCharno()>() 
(define-const var2895 Int (cast-from-Int-to-Int (- 1))) ; Statement: $i7 = (int) -1 
 ; Statement: if $i1 == $i7 goto $r11 = "(unknown column)" 
(assert (= var2096 var2895)) ; Cond: $i1 == $i7 
(define-const var3458 String "(unknown column)") ; Statement: $r11 = "(unknown column)" 
(assert true) ; Non Conditional
(assert true)
(define-const var190 var3952 (getType/1455668659 var1042)) ; Statement: $r5 = virtualinvoke r0.<com.google.javascript.jscomp.JSError: com.google.javascript.jscomp.DiagnosticType getType()>() 
(define-const var2587 String (key/221390942 var190)) ; Statement: $r6 = $r5.<com.google.javascript.jscomp.DiagnosticType: java.lang.String key> 
(assert true)
(define-const var3491 String (getDescription/639719136 var1042)) ; Statement: $r7 = virtualinvoke r0.<com.google.javascript.jscomp.JSError: java.lang.String getDescription()>() 
(define-const var366 String (str.++ "\u0001. \u0001 at \u0001 line \u0001 : \u0001" var2587 var3491 var1774 var2113 var3458)) ; Statement: $r8 = dynamicinvoke "makeConcatWithConstants" <java.lang.String (java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String)>($r6, $r7, r3, r4, $r11) <java.lang.invoke.StringConcatFactory: java.lang.invoke.CallSite makeConcatWithConstants(java.lang.invoke.MethodHandles$Lookup,java.lang.String,java.lang.invoke.MethodType,java.lang.String,java.lang.Object[])>("\u0001. \u0001 at \u0001 line \u0001 : \u0001") 
 ; Statement: return $r8 
(check-sat)
(get-model)
(get-unsat-core)
; {getSourceName/21548920=([com.google.javascript.jscomp.JSError], java.lang.String), var1583_emptyToNull/666096763=([java.lang.String], java.lang.String), getLineno/1584908903=([com.google.javascript.jscomp.JSError], int), cast-from-Int-to-Int=([int], int), String_valueOf/1240665136=([int], java.lang.String), getCharno/648852549=([com.google.javascript.jscomp.JSError], int), getType/1455668659=([com.google.javascript.jscomp.JSError], com.google.javascript.jscomp.DiagnosticType), key/221390942=([com.google.javascript.jscomp.DiagnosticType], java.lang.String), getDescription/639719136=([com.google.javascript.jscomp.JSError], java.lang.String)}
; {var1824=com.google.javascript.jscomp.JSError, var1042=r0, var917=$r1, var1583=com.google.javascript.jscomp.jarjar.com.google.common.base.Strings, var496=$r2, var3205=null_type, var3593=$r9, var1774=r3, var3036=$i0, var967=$i5, var2214=$i3, var9=$r10, var2113=r4, var2096=$i1, var2895=$i7, var3458=$r11, var3952=com.google.javascript.jscomp.DiagnosticType, var190=$r5, var2587=$r6, var3491=$r7, var366=$r8}
; {com.google.javascript.jscomp.JSError=var1824, r0=var1042, $r1=var917, com.google.javascript.jscomp.jarjar.com.google.common.base.Strings=var1583, $r2=var496, null_type=var3205, $r9=var3593, r3=var1774, $i0=var3036, $i5=var967, $i3=var2214, $r10=var9, r4=var2113, $i1=var2096, $i7=var2895, $r11=var3458, com.google.javascript.jscomp.DiagnosticType=var3952, $r5=var190, $r6=var2587, $r7=var3491, $r8=var366}
;seq <java.lang.String: java.lang.String valueOf(int)>
;cnt {"<java.lang.String: java.lang.String valueOf(int)>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.JSError;	$r1 = virtualinvoke r0.<com.google.javascript.jscomp.JSError: java.lang.String getSourceName()>();	$r2 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Strings: java.lang.String emptyToNull(java.lang.String)>($r1);	if $r2 == null goto $r9 = "(unknown source)";	$r9 = "(unknown source)";	r3 = $r9;	$i0 = virtualinvoke r0.<com.google.javascript.jscomp.JSError: int getLineno()>();	$i5 = (int) -1;	if $i0 == $i5 goto $r10 = "(unknown line)";	$i3 = virtualinvoke r0.<com.google.javascript.jscomp.JSError: int getLineno()>();	$r10 = staticinvoke <java.lang.String: java.lang.String valueOf(int)>($i3);	goto [?= r4 = $r10];	r4 = $r10;	$i1 = virtualinvoke r0.<com.google.javascript.jscomp.JSError: int getCharno()>();	$i7 = (int) -1;	if $i1 == $i7 goto $r11 = "(unknown column)";	$r11 = "(unknown column)";	$r5 = virtualinvoke r0.<com.google.javascript.jscomp.JSError: com.google.javascript.jscomp.DiagnosticType getType()>();	$r6 = $r5.<com.google.javascript.jscomp.DiagnosticType: java.lang.String key>;	$r7 = virtualinvoke r0.<com.google.javascript.jscomp.JSError: java.lang.String getDescription()>();	$r8 = dynamicinvoke "makeConcatWithConstants" <java.lang.String (java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String)>($r6, $r7, r3, r4, $r11) <java.lang.invoke.StringConcatFactory: java.lang.invoke.CallSite makeConcatWithConstants(java.lang.invoke.MethodHandles$Lookup,java.lang.String,java.lang.invoke.MethodType,java.lang.String,java.lang.Object[])>("\u0001. \u0001 at \u0001 line \u0001 : \u0001");	return $r8
;block_num 7