(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var129 0)
(declare-sort var3553 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-fun preferSingleQuotes/223109865 (var129) Bool)
(declare-fun strEscape/1855825399 (var129 String String String String String String Bool) String)
(declare-fun cast-from-Int-to-String (Int) String)
(declare-const null-var129 var129)
(declare-const null-String String)
(declare-const var2376 var129) ; Statement: r1 := @this: com.google.javascript.jscomp.CodeGenerator 
(assert (not (= var2376 null-var129)))
(declare-const var1256 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var1256 null-String)))
(define-const var736 Int 0) ; Statement: i2 = 0 
(define-const var955 Int 0) ; Statement: i3 = 0 
(define-const var1847 Int 0) ; Statement: i4 = 0 
(assert true) ; Non Conditional
(assert true)
(define-const var568 Int (length/-134980193 var1256)) ; Statement: $i0 = virtualinvoke r0.<java.lang.String: int length()>() 
 ; Statement: if i4 >= $i0 goto $z0 = r1.<com.google.javascript.jscomp.CodeGenerator: boolean preferSingleQuotes> 
(assert (>= var1847 var568)) ; Cond: i4 >= $i0 
(define-const var2892 Bool (preferSingleQuotes/223109865 var2376)) ; Statement: $z0 = r1.<com.google.javascript.jscomp.CodeGenerator: boolean preferSingleQuotes> 
 ; Statement: if $z0 == 0 goto (branch) 
(assert (= (ite var2892 1 0) 0)) ; Cond: $z0 == 0 
 ; Statement: if i2 >= i3 goto b5 = 34 
(assert (>= var736 var955)) ; Cond: i2 >= i3 
(define-const var951 Int 34) ; Statement: b5 = 34 
(define-const var427 Int 34) ; Statement: b7 = 34 
(define-const var3026 Int 34) ; Statement: c6 = 34 
(define-const var3373 String "\u005c\u0022") ; Statement: r2 = "\\\"" 
(define-const var2546 String "\u0027") ; Statement: r3 = "\'" 
(assert true) ; Non Conditional
(assert true)
(define-const var1201 String (strEscape/1855825399 var2376 var1256 var3373 var2546 "`" "\u005c\u005c" "$" (ite (= 1 0) true false))) ; Statement: $r4 = virtualinvoke r1.<com.google.javascript.jscomp.CodeGenerator: java.lang.String strEscape(java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,boolean)>(r0, r2, r3, "`", "\\\\", "$", 0) 
(define-const var2803 String (str.++ "\u0001\u0001\u0001" (cast-from-Int-to-String var3026) var1201 (cast-from-Int-to-String var3026))) ; Statement: $r5 = dynamicinvoke "makeConcatWithConstants" <java.lang.String (char,java.lang.String,char)>(c6, $r4, c6) <java.lang.invoke.StringConcatFactory: java.lang.invoke.CallSite makeConcatWithConstants(java.lang.invoke.MethodHandles$Lookup,java.lang.String,java.lang.invoke.MethodType,java.lang.String,java.lang.Object[])>("\u0001\u0001\u0001") 
 ; Statement: return $r5 
(check-sat)
(get-model)
(get-unsat-core)
; {length/-134980193=([java.lang.String], int), preferSingleQuotes/223109865=([com.google.javascript.jscomp.CodeGenerator], boolean), strEscape/1855825399=([com.google.javascript.jscomp.CodeGenerator, java.lang.String, java.lang.String, java.lang.String, java.lang.String, java.lang.String, java.lang.String, boolean], java.lang.String), cast-from-Int-to-String=([char], java.lang.String)}
; {var129=com.google.javascript.jscomp.CodeGenerator, var2376=r1, var1256=r0, var3553=null_type, var736=i2, var955=i3, var1847=i4, var568=$i0, var2892=$z0, var951=b5, var427=b7, var3026=c6, var3373=r2, var2546=r3, var1201=$r4, var2803=$r5}
; {com.google.javascript.jscomp.CodeGenerator=var129, r1=var2376, r0=var1256, null_type=var3553, i2=var736, i3=var955, i4=var1847, $i0=var568, $z0=var2892, b5=var951, b7=var427, c6=var3026, r2=var3373, r3=var2546, $r4=var1201, $r5=var2803}
;seq <java.lang.String: int length()>
;cnt {"<java.lang.String: int length()>": 1}
;stmts r1 := @this: com.google.javascript.jscomp.CodeGenerator;	r0 := @parameter0: java.lang.String;	i2 = 0;	i3 = 0;	i4 = 0;	$i0 = virtualinvoke r0.<java.lang.String: int length()>();	if i4 >= $i0 goto $z0 = r1.<com.google.javascript.jscomp.CodeGenerator: boolean preferSingleQuotes>;	$z0 = r1.<com.google.javascript.jscomp.CodeGenerator: boolean preferSingleQuotes>;	if $z0 == 0 goto (branch);	if i2 >= i3 goto b5 = 34;	b5 = 34;	b7 = 34;	c6 = 34;	r2 = "\\\"";	r3 = "\'";	$r4 = virtualinvoke r1.<com.google.javascript.jscomp.CodeGenerator: java.lang.String strEscape(java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,boolean)>(r0, r2, r3, "`", "\\\\", "$", 0);	$r5 = dynamicinvoke "makeConcatWithConstants" <java.lang.String (char,java.lang.String,char)>(c6, $r4, c6) <java.lang.invoke.StringConcatFactory: java.lang.invoke.CallSite makeConcatWithConstants(java.lang.invoke.MethodHandles$Lookup,java.lang.String,java.lang.invoke.MethodType,java.lang.String,java.lang.Object[])>("\u0001\u0001\u0001");	return $r5
;block_num 6