(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2785 0)
(declare-sort var2563 0)
(declare-sort var1520 0)
(declare-sort var903 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getSourceName/21548920 (var2785) String)
(declare-fun var2563_emptyToNull/666096763 (String) String)
(declare-fun getLineno/1584908903 (var2785) Int)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun getCharno/648852549 (var2785) Int)
(declare-fun String_valueOf/1240665136 (Int) String)
(declare-fun getType/1455668659 (var2785) var903)
(declare-fun key/221390942 (var903) String)
(declare-fun getDescription/639719136 (var2785) String)
(declare-const null-var2785 var2785)
(declare-const null-String String)
(declare-const var3801 var2785) ; Statement: r0 := @this: com.google.javascript.jscomp.JSError 
(assert (not (= var3801 null-var2785)))
(assert true)
(define-const var857 String (getSourceName/21548920 var3801)) ; Statement: $r1 = virtualinvoke r0.<com.google.javascript.jscomp.JSError: java.lang.String getSourceName()>() 
(define-const var1051 String (var2563_emptyToNull/666096763 var857)) ; Statement: $r2 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Strings: java.lang.String emptyToNull(java.lang.String)>($r1) 
 ; Statement: if $r2 == null goto $r9 = "(unknown source)" 
(assert (not (= var1051 null-String))) ; Negate: Cond: $r2 == null  
(assert true)
(define-const var525 String (getSourceName/21548920 var3801)) ; Statement: $r9 = virtualinvoke r0.<com.google.javascript.jscomp.JSError: java.lang.String getSourceName()>() 
 ; Statement: goto [?= r3 = $r9] 
(assert true) ; Non Conditional
(define-const var3581 String var525) ; Statement: r3 = $r9 
(assert true)
(define-const var2190 Int (getLineno/1584908903 var3801)) ; Statement: $i0 = virtualinvoke r0.<com.google.javascript.jscomp.JSError: int getLineno()>() 
(define-const var1041 Int (cast-from-Int-to-Int (- 1))) ; Statement: $i5 = (int) -1 
 ; Statement: if $i0 == $i5 goto $r10 = "(unknown line)" 
(assert (= var2190 var1041)) ; Cond: $i0 == $i5 
(define-const var265 String "(unknown line)") ; Statement: $r10 = "(unknown line)" 
(assert true) ; Non Conditional
(define-const var3121 String var265) ; Statement: r4 = $r10 
(assert true)
(define-const var3849 Int (getCharno/648852549 var3801)) ; Statement: $i1 = virtualinvoke r0.<com.google.javascript.jscomp.JSError: int getCharno()>() 
(define-const var986 Int (cast-from-Int-to-Int (- 1))) ; Statement: $i7 = (int) -1 
 ; Statement: if $i1 == $i7 goto $r11 = "(unknown column)" 
(assert (not (= var3849 var986))) ; Negate: Cond: $i1 == $i7  
(assert true)
(define-const var1850 Int (getCharno/648852549 var3801)) ; Statement: $i2 = virtualinvoke r0.<com.google.javascript.jscomp.JSError: int getCharno()>() 
(define-const var290 String (String_valueOf/1240665136 var1850)) ; Statement: $r11 = staticinvoke <java.lang.String: java.lang.String valueOf(int)>($i2) 
 ; Statement: goto [?= $r5 = virtualinvoke r0.<com.google.javascript.jscomp.JSError: com.google.javascript.jscomp.DiagnosticType getType()>()] 
(assert true) ; Non Conditional
(assert true)
(define-const var2535 var903 (getType/1455668659 var3801)) ; Statement: $r5 = virtualinvoke r0.<com.google.javascript.jscomp.JSError: com.google.javascript.jscomp.DiagnosticType getType()>() 
(define-const var3270 String (key/221390942 var2535)) ; Statement: $r6 = $r5.<com.google.javascript.jscomp.DiagnosticType: java.lang.String key> 
(assert true)
(define-const var2338 String (getDescription/639719136 var3801)) ; Statement: $r7 = virtualinvoke r0.<com.google.javascript.jscomp.JSError: java.lang.String getDescription()>() 
(define-const var3088 String (str.++ "\u0001. \u0001 at \u0001 line \u0001 : \u0001" var3270 var2338 var3581 var3121 var290)) ; Statement: $r8 = dynamicinvoke "makeConcatWithConstants" <java.lang.String (java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String)>($r6, $r7, r3, r4, $r11) <java.lang.invoke.StringConcatFactory: java.lang.invoke.CallSite makeConcatWithConstants(java.lang.invoke.MethodHandles$Lookup,java.lang.String,java.lang.invoke.MethodType,java.lang.String,java.lang.Object[])>("\u0001. \u0001 at \u0001 line \u0001 : \u0001") 
 ; Statement: return $r8 
(check-sat)
(get-model)
(get-unsat-core)
; {getSourceName/21548920=([com.google.javascript.jscomp.JSError], java.lang.String), var2563_emptyToNull/666096763=([java.lang.String], java.lang.String), getLineno/1584908903=([com.google.javascript.jscomp.JSError], int), cast-from-Int-to-Int=([int], int), getCharno/648852549=([com.google.javascript.jscomp.JSError], int), String_valueOf/1240665136=([int], java.lang.String), getType/1455668659=([com.google.javascript.jscomp.JSError], com.google.javascript.jscomp.DiagnosticType), key/221390942=([com.google.javascript.jscomp.DiagnosticType], java.lang.String), getDescription/639719136=([com.google.javascript.jscomp.JSError], java.lang.String)}
; {var2785=com.google.javascript.jscomp.JSError, var3801=r0, var857=$r1, var2563=com.google.javascript.jscomp.jarjar.com.google.common.base.Strings, var1051=$r2, var1520=null_type, var525=$r9, var3581=r3, var2190=$i0, var1041=$i5, var265=$r10, var3121=r4, var3849=$i1, var986=$i7, var1850=$i2, var290=$r11, var903=com.google.javascript.jscomp.DiagnosticType, var2535=$r5, var3270=$r6, var2338=$r7, var3088=$r8}
; {com.google.javascript.jscomp.JSError=var2785, r0=var3801, $r1=var857, com.google.javascript.jscomp.jarjar.com.google.common.base.Strings=var2563, $r2=var1051, null_type=var1520, $r9=var525, r3=var3581, $i0=var2190, $i5=var1041, $r10=var265, r4=var3121, $i1=var3849, $i7=var986, $i2=var1850, $r11=var290, com.google.javascript.jscomp.DiagnosticType=var903, $r5=var2535, $r6=var3270, $r7=var2338, $r8=var3088}
;seq <java.lang.String: java.lang.String valueOf(int)>
;cnt {"<java.lang.String: java.lang.String valueOf(int)>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.JSError;	$r1 = virtualinvoke r0.<com.google.javascript.jscomp.JSError: java.lang.String getSourceName()>();	$r2 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Strings: java.lang.String emptyToNull(java.lang.String)>($r1);	if $r2 == null goto $r9 = "(unknown source)";	$r9 = virtualinvoke r0.<com.google.javascript.jscomp.JSError: java.lang.String getSourceName()>();	goto [?= r3 = $r9];	r3 = $r9;	$i0 = virtualinvoke r0.<com.google.javascript.jscomp.JSError: int getLineno()>();	$i5 = (int) -1;	if $i0 == $i5 goto $r10 = "(unknown line)";	$r10 = "(unknown line)";	r4 = $r10;	$i1 = virtualinvoke r0.<com.google.javascript.jscomp.JSError: int getCharno()>();	$i7 = (int) -1;	if $i1 == $i7 goto $r11 = "(unknown column)";	$i2 = virtualinvoke r0.<com.google.javascript.jscomp.JSError: int getCharno()>();	$r11 = staticinvoke <java.lang.String: java.lang.String valueOf(int)>($i2);	goto [?= $r5 = virtualinvoke r0.<com.google.javascript.jscomp.JSError: com.google.javascript.jscomp.DiagnosticType getType()>()];	$r5 = virtualinvoke r0.<com.google.javascript.jscomp.JSError: com.google.javascript.jscomp.DiagnosticType getType()>();	$r6 = $r5.<com.google.javascript.jscomp.DiagnosticType: java.lang.String key>;	$r7 = virtualinvoke r0.<com.google.javascript.jscomp.JSError: java.lang.String getDescription()>();	$r8 = dynamicinvoke "makeConcatWithConstants" <java.lang.String (java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String)>($r6, $r7, r3, r4, $r11) <java.lang.invoke.StringConcatFactory: java.lang.invoke.CallSite makeConcatWithConstants(java.lang.invoke.MethodHandles$Lookup,java.lang.String,java.lang.invoke.MethodType,java.lang.String,java.lang.Object[])>("\u0001. \u0001 at \u0001 line \u0001 : \u0001");	return $r8
;block_num 7