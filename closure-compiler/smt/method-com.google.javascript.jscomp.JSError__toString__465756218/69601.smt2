(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2731 0)
(declare-sort var2688 0)
(declare-sort var741 0)
(declare-sort var2331 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getSourceName/21548920 (var2731) String)
(declare-fun var2688_emptyToNull/666096763 (String) String)
(declare-fun getLineno/1584908903 (var2731) Int)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun getCharno/648852549 (var2731) Int)
(declare-fun getType/1455668659 (var2731) var2331)
(declare-fun key/221390942 (var2331) String)
(declare-fun getDescription/639719136 (var2731) String)
(declare-const null-var2731 var2731)
(declare-const null-String String)
(declare-const var3447 var2731) ; Statement: r0 := @this: com.google.javascript.jscomp.JSError 
(assert (not (= var3447 null-var2731)))
(assert true)
(define-const var3648 String (getSourceName/21548920 var3447)) ; Statement: $r1 = virtualinvoke r0.<com.google.javascript.jscomp.JSError: java.lang.String getSourceName()>() 
(define-const var1588 String (var2688_emptyToNull/666096763 var3648)) ; Statement: $r2 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Strings: java.lang.String emptyToNull(java.lang.String)>($r1) 
 ; Statement: if $r2 == null goto $r9 = "(unknown source)" 
(assert (not (= var1588 null-String))) ; Negate: Cond: $r2 == null  
(assert true)
(define-const var2962 String (getSourceName/21548920 var3447)) ; Statement: $r9 = virtualinvoke r0.<com.google.javascript.jscomp.JSError: java.lang.String getSourceName()>() 
 ; Statement: goto [?= r3 = $r9] 
(assert true) ; Non Conditional
(define-const var680 String var2962) ; Statement: r3 = $r9 
(assert true)
(define-const var800 Int (getLineno/1584908903 var3447)) ; Statement: $i0 = virtualinvoke r0.<com.google.javascript.jscomp.JSError: int getLineno()>() 
(define-const var3617 Int (cast-from-Int-to-Int (- 1))) ; Statement: $i5 = (int) -1 
 ; Statement: if $i0 == $i5 goto $r10 = "(unknown line)" 
(assert (= var800 var3617)) ; Cond: $i0 == $i5 
(define-const var1260 String "(unknown line)") ; Statement: $r10 = "(unknown line)" 
(assert true) ; Non Conditional
(define-const var2151 String var1260) ; Statement: r4 = $r10 
(assert true)
(define-const var2882 Int (getCharno/648852549 var3447)) ; Statement: $i1 = virtualinvoke r0.<com.google.javascript.jscomp.JSError: int getCharno()>() 
(define-const var3774 Int (cast-from-Int-to-Int (- 1))) ; Statement: $i7 = (int) -1 
 ; Statement: if $i1 == $i7 goto $r11 = "(unknown column)" 
(assert (= var2882 var3774)) ; Cond: $i1 == $i7 
(define-const var1842 String "(unknown column)") ; Statement: $r11 = "(unknown column)" 
(assert true) ; Non Conditional
(assert true)
(define-const var3780 var2331 (getType/1455668659 var3447)) ; Statement: $r5 = virtualinvoke r0.<com.google.javascript.jscomp.JSError: com.google.javascript.jscomp.DiagnosticType getType()>() 
(define-const var154 String (key/221390942 var3780)) ; Statement: $r6 = $r5.<com.google.javascript.jscomp.DiagnosticType: java.lang.String key> 
(assert true)
(define-const var412 String (getDescription/639719136 var3447)) ; Statement: $r7 = virtualinvoke r0.<com.google.javascript.jscomp.JSError: java.lang.String getDescription()>() 
(define-const var3263 String (str.++ "\u0001. \u0001 at \u0001 line \u0001 : \u0001" var154 var412 var680 var2151 var1842)) ; Statement: $r8 = dynamicinvoke "makeConcatWithConstants" <java.lang.String (java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String)>($r6, $r7, r3, r4, $r11) <java.lang.invoke.StringConcatFactory: java.lang.invoke.CallSite makeConcatWithConstants(java.lang.invoke.MethodHandles$Lookup,java.lang.String,java.lang.invoke.MethodType,java.lang.String,java.lang.Object[])>("\u0001. \u0001 at \u0001 line \u0001 : \u0001") 
 ; Statement: return $r8 
(check-sat)
(get-model)
(get-unsat-core)
; {getSourceName/21548920=([com.google.javascript.jscomp.JSError], java.lang.String), var2688_emptyToNull/666096763=([java.lang.String], java.lang.String), getLineno/1584908903=([com.google.javascript.jscomp.JSError], int), cast-from-Int-to-Int=([int], int), getCharno/648852549=([com.google.javascript.jscomp.JSError], int), getType/1455668659=([com.google.javascript.jscomp.JSError], com.google.javascript.jscomp.DiagnosticType), key/221390942=([com.google.javascript.jscomp.DiagnosticType], java.lang.String), getDescription/639719136=([com.google.javascript.jscomp.JSError], java.lang.String)}
; {var2731=com.google.javascript.jscomp.JSError, var3447=r0, var3648=$r1, var2688=com.google.javascript.jscomp.jarjar.com.google.common.base.Strings, var1588=$r2, var741=null_type, var2962=$r9, var680=r3, var800=$i0, var3617=$i5, var1260=$r10, var2151=r4, var2882=$i1, var3774=$i7, var1842=$r11, var2331=com.google.javascript.jscomp.DiagnosticType, var3780=$r5, var154=$r6, var412=$r7, var3263=$r8}
; {com.google.javascript.jscomp.JSError=var2731, r0=var3447, $r1=var3648, com.google.javascript.jscomp.jarjar.com.google.common.base.Strings=var2688, $r2=var1588, null_type=var741, $r9=var2962, r3=var680, $i0=var800, $i5=var3617, $r10=var1260, r4=var2151, $i1=var2882, $i7=var3774, $r11=var1842, com.google.javascript.jscomp.DiagnosticType=var2331, $r5=var3780, $r6=var154, $r7=var412, $r8=var3263}
;seq 
;cnt {}
;stmts r0 := @this: com.google.javascript.jscomp.JSError;	$r1 = virtualinvoke r0.<com.google.javascript.jscomp.JSError: java.lang.String getSourceName()>();	$r2 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Strings: java.lang.String emptyToNull(java.lang.String)>($r1);	if $r2 == null goto $r9 = "(unknown source)";	$r9 = virtualinvoke r0.<com.google.javascript.jscomp.JSError: java.lang.String getSourceName()>();	goto [?= r3 = $r9];	r3 = $r9;	$i0 = virtualinvoke r0.<com.google.javascript.jscomp.JSError: int getLineno()>();	$i5 = (int) -1;	if $i0 == $i5 goto $r10 = "(unknown line)";	$r10 = "(unknown line)";	r4 = $r10;	$i1 = virtualinvoke r0.<com.google.javascript.jscomp.JSError: int getCharno()>();	$i7 = (int) -1;	if $i1 == $i7 goto $r11 = "(unknown column)";	$r11 = "(unknown column)";	$r5 = virtualinvoke r0.<com.google.javascript.jscomp.JSError: com.google.javascript.jscomp.DiagnosticType getType()>();	$r6 = $r5.<com.google.javascript.jscomp.DiagnosticType: java.lang.String key>;	$r7 = virtualinvoke r0.<com.google.javascript.jscomp.JSError: java.lang.String getDescription()>();	$r8 = dynamicinvoke "makeConcatWithConstants" <java.lang.String (java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String)>($r6, $r7, r3, r4, $r11) <java.lang.invoke.StringConcatFactory: java.lang.invoke.CallSite makeConcatWithConstants(java.lang.invoke.MethodHandles$Lookup,java.lang.String,java.lang.invoke.MethodType,java.lang.String,java.lang.Object[])>("\u0001. \u0001 at \u0001 line \u0001 : \u0001");	return $r8
;block_num 7