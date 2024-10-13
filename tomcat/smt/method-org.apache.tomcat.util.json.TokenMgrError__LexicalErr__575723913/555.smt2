(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2172 0)
(declare-sort var3737 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun String_valueOf/-371898945 (Int) String)
(declare-fun var3737_addEscapes/781979451 (String) String)
(declare-fun cast-from-Int-to-String (Int) String)
(declare-const null-Bool Bool)
(declare-const null-Int Int)
(declare-const null-String String)
(declare-const var1848 Bool) ; Statement: z0 := @parameter0: boolean 
(assert (not (= var1848 null-Bool)))
(declare-const var1829 Int) ; Statement: i4 := @parameter1: int 
(assert (not (= var1829 null-Int)))
(declare-const var1949 Int) ; Statement: i2 := @parameter2: int 
(assert (not (= var1949 null-Int)))
(declare-const var2378 Int) ; Statement: i3 := @parameter3: int 
(assert (not (= var2378 null-Int)))
(declare-const var2070 String) ; Statement: r2 := @parameter4: java.lang.String 
(assert (not (= var2070 null-String)))
(declare-const var3059 Int) ; Statement: i0 := @parameter5: int 
(assert (not (= var3059 null-Int)))
(define-const var332 Int (cast-from-Int-to-Int var3059)) ; Statement: c1 = (char) i0 
 ; Statement: if z0 == 0 goto $r0 = staticinvoke <java.lang.String: java.lang.String valueOf(char)>(c1) 
(assert (= (ite var1848 1 0) 0)) ; Cond: z0 == 0 
(define-const var3360 String (String_valueOf/-371898945 var332)) ; Statement: $r0 = staticinvoke <java.lang.String: java.lang.String valueOf(char)>(c1) 
(define-const var3888 String (var3737_addEscapes/781979451 var3360)) ; Statement: $r1 = staticinvoke <org.apache.tomcat.util.json.TokenMgrError: java.lang.String addEscapes(java.lang.String)>($r0) 
(define-const var2332 String (str.++ "\u0022\u0001\u0022 (\u0001), " var3888 (cast-from-Int-to-String var3059))) ; Statement: $r5 = dynamicinvoke "makeConcatWithConstants" <java.lang.String (java.lang.String,int)>($r1, i0) <java.lang.invoke.StringConcatFactory: java.lang.invoke.CallSite makeConcatWithConstants(java.lang.invoke.MethodHandles$Lookup,java.lang.String,java.lang.invoke.MethodType,java.lang.String,java.lang.Object[])>("\"\u0001\" (\u0001), ") 
(assert true) ; Non Conditional
(define-const var2724 String (var3737_addEscapes/781979451 var2070)) ; Statement: $r3 = staticinvoke <org.apache.tomcat.util.json.TokenMgrError: java.lang.String addEscapes(java.lang.String)>(r2) 
(define-const var2542 String (str.++ "Lexical error at line \u0001, column \u0001.  Encountered: \u0001after : \u0022\u0001\u0022" (cast-from-Int-to-String var1949) (cast-from-Int-to-String var2378) var2332 var2724)) ; Statement: $r4 = dynamicinvoke "makeConcatWithConstants" <java.lang.String (int,int,java.lang.String,java.lang.String)>(i2, i3, $r5, $r3) <java.lang.invoke.StringConcatFactory: java.lang.invoke.CallSite makeConcatWithConstants(java.lang.invoke.MethodHandles$Lookup,java.lang.String,java.lang.invoke.MethodType,java.lang.String,java.lang.Object[])>("Lexical error at line \u0001, column \u0001.  Encountered: \u0001after : \"\u0001\"") 
 ; Statement: return $r4 
(check-sat)
(get-model)
(get-unsat-core)
; {cast-from-Int-to-Int=([int], char), String_valueOf/-371898945=([char], java.lang.String), var3737_addEscapes/781979451=([java.lang.String], java.lang.String), cast-from-Int-to-String=([int], java.lang.String)}
; {var1848=z0, var1829=i4, var1949=i2, var2378=i3, var2070=r2, var2172=null_type, var3059=i0, var332=c1, var3360=$r0, var3737=org.apache.tomcat.util.json.TokenMgrError, var3888=$r1, var2332=$r5, var2724=$r3, var2542=$r4}
; {z0=var1848, i4=var1829, i2=var1949, i3=var2378, r2=var2070, null_type=var2172, i0=var3059, c1=var332, $r0=var3360, org.apache.tomcat.util.json.TokenMgrError=var3737, $r1=var3888, $r5=var2332, $r3=var2724, $r4=var2542}
;seq <java.lang.String: java.lang.String valueOf(char)>
;cnt {"<java.lang.String: java.lang.String valueOf(char)>": 1}
;stmts z0 := @parameter0: boolean;	i4 := @parameter1: int;	i2 := @parameter2: int;	i3 := @parameter3: int;	r2 := @parameter4: java.lang.String;	i0 := @parameter5: int;	c1 = (char) i0;	if z0 == 0 goto $r0 = staticinvoke <java.lang.String: java.lang.String valueOf(char)>(c1);	$r0 = staticinvoke <java.lang.String: java.lang.String valueOf(char)>(c1);	$r1 = staticinvoke <org.apache.tomcat.util.json.TokenMgrError: java.lang.String addEscapes(java.lang.String)>($r0);	$r5 = dynamicinvoke "makeConcatWithConstants" <java.lang.String (java.lang.String,int)>($r1, i0) <java.lang.invoke.StringConcatFactory: java.lang.invoke.CallSite makeConcatWithConstants(java.lang.invoke.MethodHandles$Lookup,java.lang.String,java.lang.invoke.MethodType,java.lang.String,java.lang.Object[])>("\"\u0001\" (\u0001), ");	$r3 = staticinvoke <org.apache.tomcat.util.json.TokenMgrError: java.lang.String addEscapes(java.lang.String)>(r2);	$r4 = dynamicinvoke "makeConcatWithConstants" <java.lang.String (int,int,java.lang.String,java.lang.String)>(i2, i3, $r5, $r3) <java.lang.invoke.StringConcatFactory: java.lang.invoke.CallSite makeConcatWithConstants(java.lang.invoke.MethodHandles$Lookup,java.lang.String,java.lang.invoke.MethodType,java.lang.String,java.lang.Object[])>("Lexical error at line \u0001, column \u0001.  Encountered: \u0001after : \"\u0001\"");	return $r4
;block_num 3