(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var183 0)
(declare-sort var1706 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-fun preferSingleQuotes/223109865 (var183) Bool)
(declare-fun strEscape/1855825399 (var183 String String String String String String Bool) String)
(declare-fun cast-from-Int-to-String (Int) String)
(declare-const null-var183 var183)
(declare-const null-String String)
(declare-const var1097 var183) ; Statement: r1 := @this: com.google.javascript.jscomp.CodeGenerator 
(assert (not (= var1097 null-var183)))
(declare-const var1008 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var1008 null-String)))
(define-const var1719 Int 0) ; Statement: i2 = 0 
(define-const var3415 Int 0) ; Statement: i3 = 0 
(define-const var2450 Int 0) ; Statement: i4 = 0 
(assert true) ; Non Conditional
(assert true)
(define-const var2943 Int (length/-134980193 var1008)) ; Statement: $i0 = virtualinvoke r0.<java.lang.String: int length()>() 
 ; Statement: if i4 >= $i0 goto $z0 = r1.<com.google.javascript.jscomp.CodeGenerator: boolean preferSingleQuotes> 
(assert (>= var2450 var2943)) ; Cond: i4 >= $i0 
(define-const var3166 Bool (preferSingleQuotes/223109865 var1097)) ; Statement: $z0 = r1.<com.google.javascript.jscomp.CodeGenerator: boolean preferSingleQuotes> 
 ; Statement: if $z0 == 0 goto (branch) 
(assert (= (ite var3166 1 0) 0)) ; Cond: $z0 == 0 
 ; Statement: if i2 >= i3 goto b5 = 34 
(assert (not (>= var1719 var3415))) ; Negate: Cond: i2 >= i3  
(define-const var2089 Int 39) ; Statement: b5 = 39 
(define-const var3617 Int 39) ; Statement: b7 = 39 
(define-const var1149 Int 39) ; Statement: c6 = 39 
(define-const var3070 String "\u0022") ; Statement: r2 = "\"" 
(define-const var3017 String "\u005c\u0027") ; Statement: r3 = "\\\'" 
 ; Statement: goto [?= $r4 = virtualinvoke r1.<com.google.javascript.jscomp.CodeGenerator: java.lang.String strEscape(java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,boolean)>(r0, r2, r3, "`", "\\\\", "$", 0)] 
(assert true) ; Non Conditional
(assert true)
(define-const var1915 String (strEscape/1855825399 var1097 var1008 var3070 var3017 "`" "\u005c\u005c" "$" (ite (= 1 0) true false))) ; Statement: $r4 = virtualinvoke r1.<com.google.javascript.jscomp.CodeGenerator: java.lang.String strEscape(java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,boolean)>(r0, r2, r3, "`", "\\\\", "$", 0) 
(define-const var778 String (str.++ "\u0001\u0001\u0001" (cast-from-Int-to-String var1149) var1915 (cast-from-Int-to-String var1149))) ; Statement: $r5 = dynamicinvoke "makeConcatWithConstants" <java.lang.String (char,java.lang.String,char)>(c6, $r4, c6) <java.lang.invoke.StringConcatFactory: java.lang.invoke.CallSite makeConcatWithConstants(java.lang.invoke.MethodHandles$Lookup,java.lang.String,java.lang.invoke.MethodType,java.lang.String,java.lang.Object[])>("\u0001\u0001\u0001") 
 ; Statement: return $r5 
(check-sat)
(get-model)
(get-unsat-core)
; {length/-134980193=([java.lang.String], int), preferSingleQuotes/223109865=([com.google.javascript.jscomp.CodeGenerator], boolean), strEscape/1855825399=([com.google.javascript.jscomp.CodeGenerator, java.lang.String, java.lang.String, java.lang.String, java.lang.String, java.lang.String, java.lang.String, boolean], java.lang.String), cast-from-Int-to-String=([char], java.lang.String)}
; {var183=com.google.javascript.jscomp.CodeGenerator, var1097=r1, var1008=r0, var1706=null_type, var1719=i2, var3415=i3, var2450=i4, var2943=$i0, var3166=$z0, var2089=b5, var3617=b7, var1149=c6, var3070=r2, var3017=r3, var1915=$r4, var778=$r5}
; {com.google.javascript.jscomp.CodeGenerator=var183, r1=var1097, r0=var1008, null_type=var1706, i2=var1719, i3=var3415, i4=var2450, $i0=var2943, $z0=var3166, b5=var2089, b7=var3617, c6=var1149, r2=var3070, r3=var3017, $r4=var1915, $r5=var778}
;seq <java.lang.String: int length()>
;cnt {"<java.lang.String: int length()>": 1}
;stmts r1 := @this: com.google.javascript.jscomp.CodeGenerator;	r0 := @parameter0: java.lang.String;	i2 = 0;	i3 = 0;	i4 = 0;	$i0 = virtualinvoke r0.<java.lang.String: int length()>();	if i4 >= $i0 goto $z0 = r1.<com.google.javascript.jscomp.CodeGenerator: boolean preferSingleQuotes>;	$z0 = r1.<com.google.javascript.jscomp.CodeGenerator: boolean preferSingleQuotes>;	if $z0 == 0 goto (branch);	if i2 >= i3 goto b5 = 34;	b5 = 39;	b7 = 39;	c6 = 39;	r2 = "\"";	r3 = "\\\'";	goto [?= $r4 = virtualinvoke r1.<com.google.javascript.jscomp.CodeGenerator: java.lang.String strEscape(java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,boolean)>(r0, r2, r3, "`", "\\\\", "$", 0)];	$r4 = virtualinvoke r1.<com.google.javascript.jscomp.CodeGenerator: java.lang.String strEscape(java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,boolean)>(r0, r2, r3, "`", "\\\\", "$", 0);	$r5 = dynamicinvoke "makeConcatWithConstants" <java.lang.String (char,java.lang.String,char)>(c6, $r4, c6) <java.lang.invoke.StringConcatFactory: java.lang.invoke.CallSite makeConcatWithConstants(java.lang.invoke.MethodHandles$Lookup,java.lang.String,java.lang.invoke.MethodType,java.lang.String,java.lang.Object[])>("\u0001\u0001\u0001");	return $r5
;block_num 6