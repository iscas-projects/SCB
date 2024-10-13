(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var697 0)
(declare-sort var2160 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-fun preferSingleQuotes/223109865 (var697) Bool)
(declare-fun strEscape/1855825399 (var697 String String String String String String Bool) String)
(declare-fun cast-from-Int-to-String (Int) String)
(declare-const null-var697 var697)
(declare-const null-String String)
(declare-const var371 var697) ; Statement: r1 := @this: com.google.javascript.jscomp.CodeGenerator 
(assert (not (= var371 null-var697)))
(declare-const var3158 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var3158 null-String)))
(define-const var804 Int 0) ; Statement: i2 = 0 
(define-const var77 Int 0) ; Statement: i3 = 0 
(define-const var2813 Int 0) ; Statement: i4 = 0 
(assert true) ; Non Conditional
(assert true)
(define-const var1125 Int (length/-134980193 var3158)) ; Statement: $i0 = virtualinvoke r0.<java.lang.String: int length()>() 
 ; Statement: if i4 >= $i0 goto $z0 = r1.<com.google.javascript.jscomp.CodeGenerator: boolean preferSingleQuotes> 
(assert (>= var2813 var1125)) ; Cond: i4 >= $i0 
(define-const var2931 Bool (preferSingleQuotes/223109865 var371)) ; Statement: $z0 = r1.<com.google.javascript.jscomp.CodeGenerator: boolean preferSingleQuotes> 
 ; Statement: if $z0 == 0 goto (branch) 
(assert (not (= (ite var2931 1 0) 0))) ; Negate: Cond: $z0 == 0  
 ; Statement: if i2 > i3 goto b5 = 34 
(assert (> var804 var77)) ; Cond: i2 > i3 
(define-const var1327 Int 34) ; Statement: b5 = 34 
(define-const var293 Int 34) ; Statement: b7 = 34 
(define-const var291 Int 34) ; Statement: c6 = 34 
(define-const var2833 String "\u005c\u0022") ; Statement: r2 = "\\\"" 
(define-const var1526 String "\u0027") ; Statement: r3 = "\'" 
(assert true) ; Non Conditional
(assert true)
(define-const var343 String (strEscape/1855825399 var371 var3158 var2833 var1526 "`" "\u005c\u005c" "$" (ite (= 1 0) true false))) ; Statement: $r4 = virtualinvoke r1.<com.google.javascript.jscomp.CodeGenerator: java.lang.String strEscape(java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,boolean)>(r0, r2, r3, "`", "\\\\", "$", 0) 
(define-const var1367 String (str.++ "\u0001\u0001\u0001" (cast-from-Int-to-String var291) var343 (cast-from-Int-to-String var291))) ; Statement: $r5 = dynamicinvoke "makeConcatWithConstants" <java.lang.String (char,java.lang.String,char)>(c6, $r4, c6) <java.lang.invoke.StringConcatFactory: java.lang.invoke.CallSite makeConcatWithConstants(java.lang.invoke.MethodHandles$Lookup,java.lang.String,java.lang.invoke.MethodType,java.lang.String,java.lang.Object[])>("\u0001\u0001\u0001") 
 ; Statement: return $r5 
(check-sat)
(get-model)
(get-unsat-core)
; {length/-134980193=([java.lang.String], int), preferSingleQuotes/223109865=([com.google.javascript.jscomp.CodeGenerator], boolean), strEscape/1855825399=([com.google.javascript.jscomp.CodeGenerator, java.lang.String, java.lang.String, java.lang.String, java.lang.String, java.lang.String, java.lang.String, boolean], java.lang.String), cast-from-Int-to-String=([char], java.lang.String)}
; {var697=com.google.javascript.jscomp.CodeGenerator, var371=r1, var3158=r0, var2160=null_type, var804=i2, var77=i3, var2813=i4, var1125=$i0, var2931=$z0, var1327=b5, var293=b7, var291=c6, var2833=r2, var1526=r3, var343=$r4, var1367=$r5}
; {com.google.javascript.jscomp.CodeGenerator=var697, r1=var371, r0=var3158, null_type=var2160, i2=var804, i3=var77, i4=var2813, $i0=var1125, $z0=var2931, b5=var1327, b7=var293, c6=var291, r2=var2833, r3=var1526, $r4=var343, $r5=var1367}
;seq <java.lang.String: int length()>
;cnt {"<java.lang.String: int length()>": 1}
;stmts r1 := @this: com.google.javascript.jscomp.CodeGenerator;	r0 := @parameter0: java.lang.String;	i2 = 0;	i3 = 0;	i4 = 0;	$i0 = virtualinvoke r0.<java.lang.String: int length()>();	if i4 >= $i0 goto $z0 = r1.<com.google.javascript.jscomp.CodeGenerator: boolean preferSingleQuotes>;	$z0 = r1.<com.google.javascript.jscomp.CodeGenerator: boolean preferSingleQuotes>;	if $z0 == 0 goto (branch);	if i2 > i3 goto b5 = 34;	b5 = 34;	b7 = 34;	c6 = 34;	r2 = "\\\"";	r3 = "\'";	$r4 = virtualinvoke r1.<com.google.javascript.jscomp.CodeGenerator: java.lang.String strEscape(java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,boolean)>(r0, r2, r3, "`", "\\\\", "$", 0);	$r5 = dynamicinvoke "makeConcatWithConstants" <java.lang.String (char,java.lang.String,char)>(c6, $r4, c6) <java.lang.invoke.StringConcatFactory: java.lang.invoke.CallSite makeConcatWithConstants(java.lang.invoke.MethodHandles$Lookup,java.lang.String,java.lang.invoke.MethodType,java.lang.String,java.lang.Object[])>("\u0001\u0001\u0001");	return $r5
;block_num 6