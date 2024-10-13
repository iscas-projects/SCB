(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2284 0)
(declare-sort var44 0)
(declare-sort var2921 0)
(declare-sort var3616 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getSourceName/21548920 (var2284) String)
(declare-fun var44_emptyToNull/666096763 (String) String)
(declare-fun getLineno/1584908903 (var2284) Int)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun String_valueOf/1240665136 (Int) String)
(declare-fun getCharno/648852549 (var2284) Int)
(declare-fun getType/1455668659 (var2284) var3616)
(declare-fun key/221390942 (var3616) String)
(declare-fun getDescription/639719136 (var2284) String)
(declare-const null-var2284 var2284)
(declare-const null-String String)
(declare-const var1957 var2284) ; Statement: r0 := @this: com.google.javascript.jscomp.JSError 
(assert (not (= var1957 null-var2284)))
(assert true)
(define-const var2463 String (getSourceName/21548920 var1957)) ; Statement: $r1 = virtualinvoke r0.<com.google.javascript.jscomp.JSError: java.lang.String getSourceName()>() 
(define-const var815 String (var44_emptyToNull/666096763 var2463)) ; Statement: $r2 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Strings: java.lang.String emptyToNull(java.lang.String)>($r1) 
 ; Statement: if $r2 == null goto $r9 = "(unknown source)" 
(assert (not (= var815 null-String))) ; Negate: Cond: $r2 == null  
(assert true)
(define-const var1124 String (getSourceName/21548920 var1957)) ; Statement: $r9 = virtualinvoke r0.<com.google.javascript.jscomp.JSError: java.lang.String getSourceName()>() 
 ; Statement: goto [?= r3 = $r9] 
(assert true) ; Non Conditional
(define-const var1668 String var1124) ; Statement: r3 = $r9 
(assert true)
(define-const var1129 Int (getLineno/1584908903 var1957)) ; Statement: $i0 = virtualinvoke r0.<com.google.javascript.jscomp.JSError: int getLineno()>() 
(define-const var1300 Int (cast-from-Int-to-Int (- 1))) ; Statement: $i5 = (int) -1 
 ; Statement: if $i0 == $i5 goto $r10 = "(unknown line)" 
(assert (not (= var1129 var1300))) ; Negate: Cond: $i0 == $i5  
(assert true)
(define-const var1343 Int (getLineno/1584908903 var1957)) ; Statement: $i3 = virtualinvoke r0.<com.google.javascript.jscomp.JSError: int getLineno()>() 
(define-const var967 String (String_valueOf/1240665136 var1343)) ; Statement: $r10 = staticinvoke <java.lang.String: java.lang.String valueOf(int)>($i3) 
 ; Statement: goto [?= r4 = $r10] 
(assert true) ; Non Conditional
(define-const var3256 String var967) ; Statement: r4 = $r10 
(assert true)
(define-const var174 Int (getCharno/648852549 var1957)) ; Statement: $i1 = virtualinvoke r0.<com.google.javascript.jscomp.JSError: int getCharno()>() 
(define-const var3128 Int (cast-from-Int-to-Int (- 1))) ; Statement: $i7 = (int) -1 
 ; Statement: if $i1 == $i7 goto $r11 = "(unknown column)" 
(assert (= var174 var3128)) ; Cond: $i1 == $i7 
(define-const var3858 String "(unknown column)") ; Statement: $r11 = "(unknown column)" 
(assert true) ; Non Conditional
(assert true)
(define-const var1267 var3616 (getType/1455668659 var1957)) ; Statement: $r5 = virtualinvoke r0.<com.google.javascript.jscomp.JSError: com.google.javascript.jscomp.DiagnosticType getType()>() 
(define-const var502 String (key/221390942 var1267)) ; Statement: $r6 = $r5.<com.google.javascript.jscomp.DiagnosticType: java.lang.String key> 
(assert true)
(define-const var302 String (getDescription/639719136 var1957)) ; Statement: $r7 = virtualinvoke r0.<com.google.javascript.jscomp.JSError: java.lang.String getDescription()>() 
(define-const var1928 String (str.++ "\u0001. \u0001 at \u0001 line \u0001 : \u0001" var502 var302 var1668 var3256 var3858)) ; Statement: $r8 = dynamicinvoke "makeConcatWithConstants" <java.lang.String (java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String)>($r6, $r7, r3, r4, $r11) <java.lang.invoke.StringConcatFactory: java.lang.invoke.CallSite makeConcatWithConstants(java.lang.invoke.MethodHandles$Lookup,java.lang.String,java.lang.invoke.MethodType,java.lang.String,java.lang.Object[])>("\u0001. \u0001 at \u0001 line \u0001 : \u0001") 
 ; Statement: return $r8 
(check-sat)
(get-model)
(get-unsat-core)
; {getSourceName/21548920=([com.google.javascript.jscomp.JSError], java.lang.String), var44_emptyToNull/666096763=([java.lang.String], java.lang.String), getLineno/1584908903=([com.google.javascript.jscomp.JSError], int), cast-from-Int-to-Int=([int], int), String_valueOf/1240665136=([int], java.lang.String), getCharno/648852549=([com.google.javascript.jscomp.JSError], int), getType/1455668659=([com.google.javascript.jscomp.JSError], com.google.javascript.jscomp.DiagnosticType), key/221390942=([com.google.javascript.jscomp.DiagnosticType], java.lang.String), getDescription/639719136=([com.google.javascript.jscomp.JSError], java.lang.String)}
; {var2284=com.google.javascript.jscomp.JSError, var1957=r0, var2463=$r1, var44=com.google.javascript.jscomp.jarjar.com.google.common.base.Strings, var815=$r2, var2921=null_type, var1124=$r9, var1668=r3, var1129=$i0, var1300=$i5, var1343=$i3, var967=$r10, var3256=r4, var174=$i1, var3128=$i7, var3858=$r11, var3616=com.google.javascript.jscomp.DiagnosticType, var1267=$r5, var502=$r6, var302=$r7, var1928=$r8}
; {com.google.javascript.jscomp.JSError=var2284, r0=var1957, $r1=var2463, com.google.javascript.jscomp.jarjar.com.google.common.base.Strings=var44, $r2=var815, null_type=var2921, $r9=var1124, r3=var1668, $i0=var1129, $i5=var1300, $i3=var1343, $r10=var967, r4=var3256, $i1=var174, $i7=var3128, $r11=var3858, com.google.javascript.jscomp.DiagnosticType=var3616, $r5=var1267, $r6=var502, $r7=var302, $r8=var1928}
;seq <java.lang.String: java.lang.String valueOf(int)>
;cnt {"<java.lang.String: java.lang.String valueOf(int)>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.JSError;	$r1 = virtualinvoke r0.<com.google.javascript.jscomp.JSError: java.lang.String getSourceName()>();	$r2 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Strings: java.lang.String emptyToNull(java.lang.String)>($r1);	if $r2 == null goto $r9 = "(unknown source)";	$r9 = virtualinvoke r0.<com.google.javascript.jscomp.JSError: java.lang.String getSourceName()>();	goto [?= r3 = $r9];	r3 = $r9;	$i0 = virtualinvoke r0.<com.google.javascript.jscomp.JSError: int getLineno()>();	$i5 = (int) -1;	if $i0 == $i5 goto $r10 = "(unknown line)";	$i3 = virtualinvoke r0.<com.google.javascript.jscomp.JSError: int getLineno()>();	$r10 = staticinvoke <java.lang.String: java.lang.String valueOf(int)>($i3);	goto [?= r4 = $r10];	r4 = $r10;	$i1 = virtualinvoke r0.<com.google.javascript.jscomp.JSError: int getCharno()>();	$i7 = (int) -1;	if $i1 == $i7 goto $r11 = "(unknown column)";	$r11 = "(unknown column)";	$r5 = virtualinvoke r0.<com.google.javascript.jscomp.JSError: com.google.javascript.jscomp.DiagnosticType getType()>();	$r6 = $r5.<com.google.javascript.jscomp.DiagnosticType: java.lang.String key>;	$r7 = virtualinvoke r0.<com.google.javascript.jscomp.JSError: java.lang.String getDescription()>();	$r8 = dynamicinvoke "makeConcatWithConstants" <java.lang.String (java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String)>($r6, $r7, r3, r4, $r11) <java.lang.invoke.StringConcatFactory: java.lang.invoke.CallSite makeConcatWithConstants(java.lang.invoke.MethodHandles$Lookup,java.lang.String,java.lang.invoke.MethodType,java.lang.String,java.lang.Object[])>("\u0001. \u0001 at \u0001 line \u0001 : \u0001");	return $r8
;block_num 7