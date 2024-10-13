(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2673 0)
(declare-sort var293 0)
(declare-sort var3197 0)
(declare-sort var24 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getSourceName/21548920 (var2673) String)
(declare-fun var293_emptyToNull/666096763 (String) String)
(declare-fun getLineno/1584908903 (var2673) Int)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun getCharno/648852549 (var2673) Int)
(declare-fun getType/1455668659 (var2673) var24)
(declare-fun key/221390942 (var24) String)
(declare-fun getDescription/639719136 (var2673) String)
(declare-const null-var2673 var2673)
(declare-const null-String String)
(declare-const var2966 var2673) ; Statement: r0 := @this: com.google.javascript.jscomp.JSError 
(assert (not (= var2966 null-var2673)))
(assert true)
(define-const var717 String (getSourceName/21548920 var2966)) ; Statement: $r1 = virtualinvoke r0.<com.google.javascript.jscomp.JSError: java.lang.String getSourceName()>() 
(define-const var619 String (var293_emptyToNull/666096763 var717)) ; Statement: $r2 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Strings: java.lang.String emptyToNull(java.lang.String)>($r1) 
 ; Statement: if $r2 == null goto $r9 = "(unknown source)" 
(assert (= var619 null-String)) ; Cond: $r2 == null 
(define-const var848 String "(unknown source)") ; Statement: $r9 = "(unknown source)" 
(assert true) ; Non Conditional
(define-const var2392 String var848) ; Statement: r3 = $r9 
(assert true)
(define-const var3662 Int (getLineno/1584908903 var2966)) ; Statement: $i0 = virtualinvoke r0.<com.google.javascript.jscomp.JSError: int getLineno()>() 
(define-const var2426 Int (cast-from-Int-to-Int (- 1))) ; Statement: $i5 = (int) -1 
 ; Statement: if $i0 == $i5 goto $r10 = "(unknown line)" 
(assert (= var3662 var2426)) ; Cond: $i0 == $i5 
(define-const var1217 String "(unknown line)") ; Statement: $r10 = "(unknown line)" 
(assert true) ; Non Conditional
(define-const var1034 String var1217) ; Statement: r4 = $r10 
(assert true)
(define-const var3999 Int (getCharno/648852549 var2966)) ; Statement: $i1 = virtualinvoke r0.<com.google.javascript.jscomp.JSError: int getCharno()>() 
(define-const var3888 Int (cast-from-Int-to-Int (- 1))) ; Statement: $i7 = (int) -1 
 ; Statement: if $i1 == $i7 goto $r11 = "(unknown column)" 
(assert (= var3999 var3888)) ; Cond: $i1 == $i7 
(define-const var1164 String "(unknown column)") ; Statement: $r11 = "(unknown column)" 
(assert true) ; Non Conditional
(assert true)
(define-const var765 var24 (getType/1455668659 var2966)) ; Statement: $r5 = virtualinvoke r0.<com.google.javascript.jscomp.JSError: com.google.javascript.jscomp.DiagnosticType getType()>() 
(define-const var2584 String (key/221390942 var765)) ; Statement: $r6 = $r5.<com.google.javascript.jscomp.DiagnosticType: java.lang.String key> 
(assert true)
(define-const var3476 String (getDescription/639719136 var2966)) ; Statement: $r7 = virtualinvoke r0.<com.google.javascript.jscomp.JSError: java.lang.String getDescription()>() 
(define-const var2994 String (str.++ "\u0001. \u0001 at \u0001 line \u0001 : \u0001" var2584 var3476 var2392 var1034 var1164)) ; Statement: $r8 = dynamicinvoke "makeConcatWithConstants" <java.lang.String (java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String)>($r6, $r7, r3, r4, $r11) <java.lang.invoke.StringConcatFactory: java.lang.invoke.CallSite makeConcatWithConstants(java.lang.invoke.MethodHandles$Lookup,java.lang.String,java.lang.invoke.MethodType,java.lang.String,java.lang.Object[])>("\u0001. \u0001 at \u0001 line \u0001 : \u0001") 
 ; Statement: return $r8 
(check-sat)
(get-model)
(get-unsat-core)
; {getSourceName/21548920=([com.google.javascript.jscomp.JSError], java.lang.String), var293_emptyToNull/666096763=([java.lang.String], java.lang.String), getLineno/1584908903=([com.google.javascript.jscomp.JSError], int), cast-from-Int-to-Int=([int], int), getCharno/648852549=([com.google.javascript.jscomp.JSError], int), getType/1455668659=([com.google.javascript.jscomp.JSError], com.google.javascript.jscomp.DiagnosticType), key/221390942=([com.google.javascript.jscomp.DiagnosticType], java.lang.String), getDescription/639719136=([com.google.javascript.jscomp.JSError], java.lang.String)}
; {var2673=com.google.javascript.jscomp.JSError, var2966=r0, var717=$r1, var293=com.google.javascript.jscomp.jarjar.com.google.common.base.Strings, var619=$r2, var3197=null_type, var848=$r9, var2392=r3, var3662=$i0, var2426=$i5, var1217=$r10, var1034=r4, var3999=$i1, var3888=$i7, var1164=$r11, var24=com.google.javascript.jscomp.DiagnosticType, var765=$r5, var2584=$r6, var3476=$r7, var2994=$r8}
; {com.google.javascript.jscomp.JSError=var2673, r0=var2966, $r1=var717, com.google.javascript.jscomp.jarjar.com.google.common.base.Strings=var293, $r2=var619, null_type=var3197, $r9=var848, r3=var2392, $i0=var3662, $i5=var2426, $r10=var1217, r4=var1034, $i1=var3999, $i7=var3888, $r11=var1164, com.google.javascript.jscomp.DiagnosticType=var24, $r5=var765, $r6=var2584, $r7=var3476, $r8=var2994}
;seq 
;cnt {}
;stmts r0 := @this: com.google.javascript.jscomp.JSError;	$r1 = virtualinvoke r0.<com.google.javascript.jscomp.JSError: java.lang.String getSourceName()>();	$r2 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Strings: java.lang.String emptyToNull(java.lang.String)>($r1);	if $r2 == null goto $r9 = "(unknown source)";	$r9 = "(unknown source)";	r3 = $r9;	$i0 = virtualinvoke r0.<com.google.javascript.jscomp.JSError: int getLineno()>();	$i5 = (int) -1;	if $i0 == $i5 goto $r10 = "(unknown line)";	$r10 = "(unknown line)";	r4 = $r10;	$i1 = virtualinvoke r0.<com.google.javascript.jscomp.JSError: int getCharno()>();	$i7 = (int) -1;	if $i1 == $i7 goto $r11 = "(unknown column)";	$r11 = "(unknown column)";	$r5 = virtualinvoke r0.<com.google.javascript.jscomp.JSError: com.google.javascript.jscomp.DiagnosticType getType()>();	$r6 = $r5.<com.google.javascript.jscomp.DiagnosticType: java.lang.String key>;	$r7 = virtualinvoke r0.<com.google.javascript.jscomp.JSError: java.lang.String getDescription()>();	$r8 = dynamicinvoke "makeConcatWithConstants" <java.lang.String (java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String)>($r6, $r7, r3, r4, $r11) <java.lang.invoke.StringConcatFactory: java.lang.invoke.CallSite makeConcatWithConstants(java.lang.invoke.MethodHandles$Lookup,java.lang.String,java.lang.invoke.MethodType,java.lang.String,java.lang.Object[])>("\u0001. \u0001 at \u0001 line \u0001 : \u0001");	return $r8
;block_num 7