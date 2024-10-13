(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2039 0)
(declare-sort var3306 0)
(declare-sort var3527 0)
(declare-sort var2239 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getSourceName/21548920 (var2039) String)
(declare-fun var3306_emptyToNull/666096763 (String) String)
(declare-fun getLineno/1584908903 (var2039) Int)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun String_valueOf/1240665136 (Int) String)
(declare-fun getCharno/648852549 (var2039) Int)
(declare-fun getType/1455668659 (var2039) var2239)
(declare-fun key/221390942 (var2239) String)
(declare-fun getDescription/639719136 (var2039) String)
(declare-const null-var2039 var2039)
(declare-const null-String String)
(declare-const var1010 var2039) ; Statement: r0 := @this: com.google.javascript.jscomp.JSError 
(assert (not (= var1010 null-var2039)))
(assert true)
(define-const var2234 String (getSourceName/21548920 var1010)) ; Statement: $r1 = virtualinvoke r0.<com.google.javascript.jscomp.JSError: java.lang.String getSourceName()>() 
(define-const var147 String (var3306_emptyToNull/666096763 var2234)) ; Statement: $r2 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Strings: java.lang.String emptyToNull(java.lang.String)>($r1) 
 ; Statement: if $r2 == null goto $r9 = "(unknown source)" 
(assert (not (= var147 null-String))) ; Negate: Cond: $r2 == null  
(assert true)
(define-const var1902 String (getSourceName/21548920 var1010)) ; Statement: $r9 = virtualinvoke r0.<com.google.javascript.jscomp.JSError: java.lang.String getSourceName()>() 
 ; Statement: goto [?= r3 = $r9] 
(assert true) ; Non Conditional
(define-const var98 String var1902) ; Statement: r3 = $r9 
(assert true)
(define-const var3771 Int (getLineno/1584908903 var1010)) ; Statement: $i0 = virtualinvoke r0.<com.google.javascript.jscomp.JSError: int getLineno()>() 
(define-const var298 Int (cast-from-Int-to-Int (- 1))) ; Statement: $i5 = (int) -1 
 ; Statement: if $i0 == $i5 goto $r10 = "(unknown line)" 
(assert (not (= var3771 var298))) ; Negate: Cond: $i0 == $i5  
(assert true)
(define-const var985 Int (getLineno/1584908903 var1010)) ; Statement: $i3 = virtualinvoke r0.<com.google.javascript.jscomp.JSError: int getLineno()>() 
(define-const var1807 String (String_valueOf/1240665136 var985)) ; Statement: $r10 = staticinvoke <java.lang.String: java.lang.String valueOf(int)>($i3) 
 ; Statement: goto [?= r4 = $r10] 
(assert true) ; Non Conditional
(define-const var777 String var1807) ; Statement: r4 = $r10 
(assert true)
(define-const var2620 Int (getCharno/648852549 var1010)) ; Statement: $i1 = virtualinvoke r0.<com.google.javascript.jscomp.JSError: int getCharno()>() 
(define-const var1853 Int (cast-from-Int-to-Int (- 1))) ; Statement: $i7 = (int) -1 
 ; Statement: if $i1 == $i7 goto $r11 = "(unknown column)" 
(assert (not (= var2620 var1853))) ; Negate: Cond: $i1 == $i7  
(assert true)
(define-const var1833 Int (getCharno/648852549 var1010)) ; Statement: $i2 = virtualinvoke r0.<com.google.javascript.jscomp.JSError: int getCharno()>() 
(define-const var2133 String (String_valueOf/1240665136 var1833)) ; Statement: $r11 = staticinvoke <java.lang.String: java.lang.String valueOf(int)>($i2) 
 ; Statement: goto [?= $r5 = virtualinvoke r0.<com.google.javascript.jscomp.JSError: com.google.javascript.jscomp.DiagnosticType getType()>()] 
(assert true) ; Non Conditional
(assert true)
(define-const var1383 var2239 (getType/1455668659 var1010)) ; Statement: $r5 = virtualinvoke r0.<com.google.javascript.jscomp.JSError: com.google.javascript.jscomp.DiagnosticType getType()>() 
(define-const var3382 String (key/221390942 var1383)) ; Statement: $r6 = $r5.<com.google.javascript.jscomp.DiagnosticType: java.lang.String key> 
(assert true)
(define-const var1623 String (getDescription/639719136 var1010)) ; Statement: $r7 = virtualinvoke r0.<com.google.javascript.jscomp.JSError: java.lang.String getDescription()>() 
(define-const var1846 String (str.++ "\u0001. \u0001 at \u0001 line \u0001 : \u0001" var3382 var1623 var98 var777 var2133)) ; Statement: $r8 = dynamicinvoke "makeConcatWithConstants" <java.lang.String (java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String)>($r6, $r7, r3, r4, $r11) <java.lang.invoke.StringConcatFactory: java.lang.invoke.CallSite makeConcatWithConstants(java.lang.invoke.MethodHandles$Lookup,java.lang.String,java.lang.invoke.MethodType,java.lang.String,java.lang.Object[])>("\u0001. \u0001 at \u0001 line \u0001 : \u0001") 
 ; Statement: return $r8 
(check-sat)
(get-model)
(get-unsat-core)
; {getSourceName/21548920=([com.google.javascript.jscomp.JSError], java.lang.String), var3306_emptyToNull/666096763=([java.lang.String], java.lang.String), getLineno/1584908903=([com.google.javascript.jscomp.JSError], int), cast-from-Int-to-Int=([int], int), String_valueOf/1240665136=([int], java.lang.String), getCharno/648852549=([com.google.javascript.jscomp.JSError], int), getType/1455668659=([com.google.javascript.jscomp.JSError], com.google.javascript.jscomp.DiagnosticType), key/221390942=([com.google.javascript.jscomp.DiagnosticType], java.lang.String), getDescription/639719136=([com.google.javascript.jscomp.JSError], java.lang.String)}
; {var2039=com.google.javascript.jscomp.JSError, var1010=r0, var2234=$r1, var3306=com.google.javascript.jscomp.jarjar.com.google.common.base.Strings, var147=$r2, var3527=null_type, var1902=$r9, var98=r3, var3771=$i0, var298=$i5, var985=$i3, var1807=$r10, var777=r4, var2620=$i1, var1853=$i7, var1833=$i2, var2133=$r11, var2239=com.google.javascript.jscomp.DiagnosticType, var1383=$r5, var3382=$r6, var1623=$r7, var1846=$r8}
; {com.google.javascript.jscomp.JSError=var2039, r0=var1010, $r1=var2234, com.google.javascript.jscomp.jarjar.com.google.common.base.Strings=var3306, $r2=var147, null_type=var3527, $r9=var1902, r3=var98, $i0=var3771, $i5=var298, $i3=var985, $r10=var1807, r4=var777, $i1=var2620, $i7=var1853, $i2=var1833, $r11=var2133, com.google.javascript.jscomp.DiagnosticType=var2239, $r5=var1383, $r6=var3382, $r7=var1623, $r8=var1846}
;seq <java.lang.String: java.lang.String valueOf(int)>;	<java.lang.String: java.lang.String valueOf(int)>
;cnt {"<java.lang.String: java.lang.String valueOf(int)>": 2}
;stmts r0 := @this: com.google.javascript.jscomp.JSError;	$r1 = virtualinvoke r0.<com.google.javascript.jscomp.JSError: java.lang.String getSourceName()>();	$r2 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Strings: java.lang.String emptyToNull(java.lang.String)>($r1);	if $r2 == null goto $r9 = "(unknown source)";	$r9 = virtualinvoke r0.<com.google.javascript.jscomp.JSError: java.lang.String getSourceName()>();	goto [?= r3 = $r9];	r3 = $r9;	$i0 = virtualinvoke r0.<com.google.javascript.jscomp.JSError: int getLineno()>();	$i5 = (int) -1;	if $i0 == $i5 goto $r10 = "(unknown line)";	$i3 = virtualinvoke r0.<com.google.javascript.jscomp.JSError: int getLineno()>();	$r10 = staticinvoke <java.lang.String: java.lang.String valueOf(int)>($i3);	goto [?= r4 = $r10];	r4 = $r10;	$i1 = virtualinvoke r0.<com.google.javascript.jscomp.JSError: int getCharno()>();	$i7 = (int) -1;	if $i1 == $i7 goto $r11 = "(unknown column)";	$i2 = virtualinvoke r0.<com.google.javascript.jscomp.JSError: int getCharno()>();	$r11 = staticinvoke <java.lang.String: java.lang.String valueOf(int)>($i2);	goto [?= $r5 = virtualinvoke r0.<com.google.javascript.jscomp.JSError: com.google.javascript.jscomp.DiagnosticType getType()>()];	$r5 = virtualinvoke r0.<com.google.javascript.jscomp.JSError: com.google.javascript.jscomp.DiagnosticType getType()>();	$r6 = $r5.<com.google.javascript.jscomp.DiagnosticType: java.lang.String key>;	$r7 = virtualinvoke r0.<com.google.javascript.jscomp.JSError: java.lang.String getDescription()>();	$r8 = dynamicinvoke "makeConcatWithConstants" <java.lang.String (java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String)>($r6, $r7, r3, r4, $r11) <java.lang.invoke.StringConcatFactory: java.lang.invoke.CallSite makeConcatWithConstants(java.lang.invoke.MethodHandles$Lookup,java.lang.String,java.lang.invoke.MethodType,java.lang.String,java.lang.Object[])>("\u0001. \u0001 at \u0001 line \u0001 : \u0001");	return $r8
;block_num 7