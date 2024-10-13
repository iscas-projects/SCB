(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2848 0)
(declare-sort var2377 0)
(declare-sort var1215 0)
(declare-sort var975 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getSourceName/21548920 (var2848) String)
(declare-fun var2377_emptyToNull/666096763 (String) String)
(declare-fun getLineno/1584908903 (var2848) Int)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun getCharno/648852549 (var2848) Int)
(declare-fun String_valueOf/1240665136 (Int) String)
(declare-fun getType/1455668659 (var2848) var975)
(declare-fun key/221390942 (var975) String)
(declare-fun getDescription/639719136 (var2848) String)
(declare-const null-var2848 var2848)
(declare-const null-String String)
(declare-const var2091 var2848) ; Statement: r0 := @this: com.google.javascript.jscomp.JSError 
(assert (not (= var2091 null-var2848)))
(assert true)
(define-const var395 String (getSourceName/21548920 var2091)) ; Statement: $r1 = virtualinvoke r0.<com.google.javascript.jscomp.JSError: java.lang.String getSourceName()>() 
(define-const var2468 String (var2377_emptyToNull/666096763 var395)) ; Statement: $r2 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Strings: java.lang.String emptyToNull(java.lang.String)>($r1) 
 ; Statement: if $r2 == null goto $r9 = "(unknown source)" 
(assert (= var2468 null-String)) ; Cond: $r2 == null 
(define-const var313 String "(unknown source)") ; Statement: $r9 = "(unknown source)" 
(assert true) ; Non Conditional
(define-const var2567 String var313) ; Statement: r3 = $r9 
(assert true)
(define-const var1177 Int (getLineno/1584908903 var2091)) ; Statement: $i0 = virtualinvoke r0.<com.google.javascript.jscomp.JSError: int getLineno()>() 
(define-const var2612 Int (cast-from-Int-to-Int (- 1))) ; Statement: $i5 = (int) -1 
 ; Statement: if $i0 == $i5 goto $r10 = "(unknown line)" 
(assert (= var1177 var2612)) ; Cond: $i0 == $i5 
(define-const var3083 String "(unknown line)") ; Statement: $r10 = "(unknown line)" 
(assert true) ; Non Conditional
(define-const var2520 String var3083) ; Statement: r4 = $r10 
(assert true)
(define-const var1703 Int (getCharno/648852549 var2091)) ; Statement: $i1 = virtualinvoke r0.<com.google.javascript.jscomp.JSError: int getCharno()>() 
(define-const var3393 Int (cast-from-Int-to-Int (- 1))) ; Statement: $i7 = (int) -1 
 ; Statement: if $i1 == $i7 goto $r11 = "(unknown column)" 
(assert (not (= var1703 var3393))) ; Negate: Cond: $i1 == $i7  
(assert true)
(define-const var1598 Int (getCharno/648852549 var2091)) ; Statement: $i2 = virtualinvoke r0.<com.google.javascript.jscomp.JSError: int getCharno()>() 
(define-const var1123 String (String_valueOf/1240665136 var1598)) ; Statement: $r11 = staticinvoke <java.lang.String: java.lang.String valueOf(int)>($i2) 
 ; Statement: goto [?= $r5 = virtualinvoke r0.<com.google.javascript.jscomp.JSError: com.google.javascript.jscomp.DiagnosticType getType()>()] 
(assert true) ; Non Conditional
(assert true)
(define-const var387 var975 (getType/1455668659 var2091)) ; Statement: $r5 = virtualinvoke r0.<com.google.javascript.jscomp.JSError: com.google.javascript.jscomp.DiagnosticType getType()>() 
(define-const var853 String (key/221390942 var387)) ; Statement: $r6 = $r5.<com.google.javascript.jscomp.DiagnosticType: java.lang.String key> 
(assert true)
(define-const var3751 String (getDescription/639719136 var2091)) ; Statement: $r7 = virtualinvoke r0.<com.google.javascript.jscomp.JSError: java.lang.String getDescription()>() 
(define-const var573 String (str.++ "\u0001. \u0001 at \u0001 line \u0001 : \u0001" var853 var3751 var2567 var2520 var1123)) ; Statement: $r8 = dynamicinvoke "makeConcatWithConstants" <java.lang.String (java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String)>($r6, $r7, r3, r4, $r11) <java.lang.invoke.StringConcatFactory: java.lang.invoke.CallSite makeConcatWithConstants(java.lang.invoke.MethodHandles$Lookup,java.lang.String,java.lang.invoke.MethodType,java.lang.String,java.lang.Object[])>("\u0001. \u0001 at \u0001 line \u0001 : \u0001") 
 ; Statement: return $r8 
(check-sat)
(get-model)
(get-unsat-core)
; {getSourceName/21548920=([com.google.javascript.jscomp.JSError], java.lang.String), var2377_emptyToNull/666096763=([java.lang.String], java.lang.String), getLineno/1584908903=([com.google.javascript.jscomp.JSError], int), cast-from-Int-to-Int=([int], int), getCharno/648852549=([com.google.javascript.jscomp.JSError], int), String_valueOf/1240665136=([int], java.lang.String), getType/1455668659=([com.google.javascript.jscomp.JSError], com.google.javascript.jscomp.DiagnosticType), key/221390942=([com.google.javascript.jscomp.DiagnosticType], java.lang.String), getDescription/639719136=([com.google.javascript.jscomp.JSError], java.lang.String)}
; {var2848=com.google.javascript.jscomp.JSError, var2091=r0, var395=$r1, var2377=com.google.javascript.jscomp.jarjar.com.google.common.base.Strings, var2468=$r2, var1215=null_type, var313=$r9, var2567=r3, var1177=$i0, var2612=$i5, var3083=$r10, var2520=r4, var1703=$i1, var3393=$i7, var1598=$i2, var1123=$r11, var975=com.google.javascript.jscomp.DiagnosticType, var387=$r5, var853=$r6, var3751=$r7, var573=$r8}
; {com.google.javascript.jscomp.JSError=var2848, r0=var2091, $r1=var395, com.google.javascript.jscomp.jarjar.com.google.common.base.Strings=var2377, $r2=var2468, null_type=var1215, $r9=var313, r3=var2567, $i0=var1177, $i5=var2612, $r10=var3083, r4=var2520, $i1=var1703, $i7=var3393, $i2=var1598, $r11=var1123, com.google.javascript.jscomp.DiagnosticType=var975, $r5=var387, $r6=var853, $r7=var3751, $r8=var573}
;seq <java.lang.String: java.lang.String valueOf(int)>
;cnt {"<java.lang.String: java.lang.String valueOf(int)>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.JSError;	$r1 = virtualinvoke r0.<com.google.javascript.jscomp.JSError: java.lang.String getSourceName()>();	$r2 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Strings: java.lang.String emptyToNull(java.lang.String)>($r1);	if $r2 == null goto $r9 = "(unknown source)";	$r9 = "(unknown source)";	r3 = $r9;	$i0 = virtualinvoke r0.<com.google.javascript.jscomp.JSError: int getLineno()>();	$i5 = (int) -1;	if $i0 == $i5 goto $r10 = "(unknown line)";	$r10 = "(unknown line)";	r4 = $r10;	$i1 = virtualinvoke r0.<com.google.javascript.jscomp.JSError: int getCharno()>();	$i7 = (int) -1;	if $i1 == $i7 goto $r11 = "(unknown column)";	$i2 = virtualinvoke r0.<com.google.javascript.jscomp.JSError: int getCharno()>();	$r11 = staticinvoke <java.lang.String: java.lang.String valueOf(int)>($i2);	goto [?= $r5 = virtualinvoke r0.<com.google.javascript.jscomp.JSError: com.google.javascript.jscomp.DiagnosticType getType()>()];	$r5 = virtualinvoke r0.<com.google.javascript.jscomp.JSError: com.google.javascript.jscomp.DiagnosticType getType()>();	$r6 = $r5.<com.google.javascript.jscomp.DiagnosticType: java.lang.String key>;	$r7 = virtualinvoke r0.<com.google.javascript.jscomp.JSError: java.lang.String getDescription()>();	$r8 = dynamicinvoke "makeConcatWithConstants" <java.lang.String (java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String)>($r6, $r7, r3, r4, $r11) <java.lang.invoke.StringConcatFactory: java.lang.invoke.CallSite makeConcatWithConstants(java.lang.invoke.MethodHandles$Lookup,java.lang.String,java.lang.invoke.MethodType,java.lang.String,java.lang.Object[])>("\u0001. \u0001 at \u0001 line \u0001 : \u0001");	return $r8
;block_num 7