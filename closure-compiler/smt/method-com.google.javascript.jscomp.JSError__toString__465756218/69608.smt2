(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1300 0)
(declare-sort var3897 0)
(declare-sort var1192 0)
(declare-sort var3278 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getSourceName/21548920 (var1300) String)
(declare-fun var3897_emptyToNull/666096763 (String) String)
(declare-fun getLineno/1584908903 (var1300) Int)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun String_valueOf/1240665136 (Int) String)
(declare-fun getCharno/648852549 (var1300) Int)
(declare-fun getType/1455668659 (var1300) var3278)
(declare-fun key/221390942 (var3278) String)
(declare-fun getDescription/639719136 (var1300) String)
(declare-const null-var1300 var1300)
(declare-const null-String String)
(declare-const var2461 var1300) ; Statement: r0 := @this: com.google.javascript.jscomp.JSError 
(assert (not (= var2461 null-var1300)))
(assert true)
(define-const var2346 String (getSourceName/21548920 var2461)) ; Statement: $r1 = virtualinvoke r0.<com.google.javascript.jscomp.JSError: java.lang.String getSourceName()>() 
(define-const var147 String (var3897_emptyToNull/666096763 var2346)) ; Statement: $r2 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Strings: java.lang.String emptyToNull(java.lang.String)>($r1) 
 ; Statement: if $r2 == null goto $r9 = "(unknown source)" 
(assert (= var147 null-String)) ; Cond: $r2 == null 
(define-const var826 String "(unknown source)") ; Statement: $r9 = "(unknown source)" 
(assert true) ; Non Conditional
(define-const var1314 String var826) ; Statement: r3 = $r9 
(assert true)
(define-const var1943 Int (getLineno/1584908903 var2461)) ; Statement: $i0 = virtualinvoke r0.<com.google.javascript.jscomp.JSError: int getLineno()>() 
(define-const var3618 Int (cast-from-Int-to-Int (- 1))) ; Statement: $i5 = (int) -1 
 ; Statement: if $i0 == $i5 goto $r10 = "(unknown line)" 
(assert (not (= var1943 var3618))) ; Negate: Cond: $i0 == $i5  
(assert true)
(define-const var1164 Int (getLineno/1584908903 var2461)) ; Statement: $i3 = virtualinvoke r0.<com.google.javascript.jscomp.JSError: int getLineno()>() 
(define-const var3825 String (String_valueOf/1240665136 var1164)) ; Statement: $r10 = staticinvoke <java.lang.String: java.lang.String valueOf(int)>($i3) 
 ; Statement: goto [?= r4 = $r10] 
(assert true) ; Non Conditional
(define-const var1251 String var3825) ; Statement: r4 = $r10 
(assert true)
(define-const var1781 Int (getCharno/648852549 var2461)) ; Statement: $i1 = virtualinvoke r0.<com.google.javascript.jscomp.JSError: int getCharno()>() 
(define-const var3366 Int (cast-from-Int-to-Int (- 1))) ; Statement: $i7 = (int) -1 
 ; Statement: if $i1 == $i7 goto $r11 = "(unknown column)" 
(assert (not (= var1781 var3366))) ; Negate: Cond: $i1 == $i7  
(assert true)
(define-const var3838 Int (getCharno/648852549 var2461)) ; Statement: $i2 = virtualinvoke r0.<com.google.javascript.jscomp.JSError: int getCharno()>() 
(define-const var2500 String (String_valueOf/1240665136 var3838)) ; Statement: $r11 = staticinvoke <java.lang.String: java.lang.String valueOf(int)>($i2) 
 ; Statement: goto [?= $r5 = virtualinvoke r0.<com.google.javascript.jscomp.JSError: com.google.javascript.jscomp.DiagnosticType getType()>()] 
(assert true) ; Non Conditional
(assert true)
(define-const var900 var3278 (getType/1455668659 var2461)) ; Statement: $r5 = virtualinvoke r0.<com.google.javascript.jscomp.JSError: com.google.javascript.jscomp.DiagnosticType getType()>() 
(define-const var1687 String (key/221390942 var900)) ; Statement: $r6 = $r5.<com.google.javascript.jscomp.DiagnosticType: java.lang.String key> 
(assert true)
(define-const var3596 String (getDescription/639719136 var2461)) ; Statement: $r7 = virtualinvoke r0.<com.google.javascript.jscomp.JSError: java.lang.String getDescription()>() 
(define-const var2466 String (str.++ "\u0001. \u0001 at \u0001 line \u0001 : \u0001" var1687 var3596 var1314 var1251 var2500)) ; Statement: $r8 = dynamicinvoke "makeConcatWithConstants" <java.lang.String (java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String)>($r6, $r7, r3, r4, $r11) <java.lang.invoke.StringConcatFactory: java.lang.invoke.CallSite makeConcatWithConstants(java.lang.invoke.MethodHandles$Lookup,java.lang.String,java.lang.invoke.MethodType,java.lang.String,java.lang.Object[])>("\u0001. \u0001 at \u0001 line \u0001 : \u0001") 
 ; Statement: return $r8 
(check-sat)
(get-model)
(get-unsat-core)
; {getSourceName/21548920=([com.google.javascript.jscomp.JSError], java.lang.String), var3897_emptyToNull/666096763=([java.lang.String], java.lang.String), getLineno/1584908903=([com.google.javascript.jscomp.JSError], int), cast-from-Int-to-Int=([int], int), String_valueOf/1240665136=([int], java.lang.String), getCharno/648852549=([com.google.javascript.jscomp.JSError], int), getType/1455668659=([com.google.javascript.jscomp.JSError], com.google.javascript.jscomp.DiagnosticType), key/221390942=([com.google.javascript.jscomp.DiagnosticType], java.lang.String), getDescription/639719136=([com.google.javascript.jscomp.JSError], java.lang.String)}
; {var1300=com.google.javascript.jscomp.JSError, var2461=r0, var2346=$r1, var3897=com.google.javascript.jscomp.jarjar.com.google.common.base.Strings, var147=$r2, var1192=null_type, var826=$r9, var1314=r3, var1943=$i0, var3618=$i5, var1164=$i3, var3825=$r10, var1251=r4, var1781=$i1, var3366=$i7, var3838=$i2, var2500=$r11, var3278=com.google.javascript.jscomp.DiagnosticType, var900=$r5, var1687=$r6, var3596=$r7, var2466=$r8}
; {com.google.javascript.jscomp.JSError=var1300, r0=var2461, $r1=var2346, com.google.javascript.jscomp.jarjar.com.google.common.base.Strings=var3897, $r2=var147, null_type=var1192, $r9=var826, r3=var1314, $i0=var1943, $i5=var3618, $i3=var1164, $r10=var3825, r4=var1251, $i1=var1781, $i7=var3366, $i2=var3838, $r11=var2500, com.google.javascript.jscomp.DiagnosticType=var3278, $r5=var900, $r6=var1687, $r7=var3596, $r8=var2466}
;seq <java.lang.String: java.lang.String valueOf(int)>;	<java.lang.String: java.lang.String valueOf(int)>
;cnt {"<java.lang.String: java.lang.String valueOf(int)>": 2}
;stmts r0 := @this: com.google.javascript.jscomp.JSError;	$r1 = virtualinvoke r0.<com.google.javascript.jscomp.JSError: java.lang.String getSourceName()>();	$r2 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Strings: java.lang.String emptyToNull(java.lang.String)>($r1);	if $r2 == null goto $r9 = "(unknown source)";	$r9 = "(unknown source)";	r3 = $r9;	$i0 = virtualinvoke r0.<com.google.javascript.jscomp.JSError: int getLineno()>();	$i5 = (int) -1;	if $i0 == $i5 goto $r10 = "(unknown line)";	$i3 = virtualinvoke r0.<com.google.javascript.jscomp.JSError: int getLineno()>();	$r10 = staticinvoke <java.lang.String: java.lang.String valueOf(int)>($i3);	goto [?= r4 = $r10];	r4 = $r10;	$i1 = virtualinvoke r0.<com.google.javascript.jscomp.JSError: int getCharno()>();	$i7 = (int) -1;	if $i1 == $i7 goto $r11 = "(unknown column)";	$i2 = virtualinvoke r0.<com.google.javascript.jscomp.JSError: int getCharno()>();	$r11 = staticinvoke <java.lang.String: java.lang.String valueOf(int)>($i2);	goto [?= $r5 = virtualinvoke r0.<com.google.javascript.jscomp.JSError: com.google.javascript.jscomp.DiagnosticType getType()>()];	$r5 = virtualinvoke r0.<com.google.javascript.jscomp.JSError: com.google.javascript.jscomp.DiagnosticType getType()>();	$r6 = $r5.<com.google.javascript.jscomp.DiagnosticType: java.lang.String key>;	$r7 = virtualinvoke r0.<com.google.javascript.jscomp.JSError: java.lang.String getDescription()>();	$r8 = dynamicinvoke "makeConcatWithConstants" <java.lang.String (java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String)>($r6, $r7, r3, r4, $r11) <java.lang.invoke.StringConcatFactory: java.lang.invoke.CallSite makeConcatWithConstants(java.lang.invoke.MethodHandles$Lookup,java.lang.String,java.lang.invoke.MethodType,java.lang.String,java.lang.Object[])>("\u0001. \u0001 at \u0001 line \u0001 : \u0001");	return $r8
;block_num 7