(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3985 0)
(declare-sort var3938 0)
(declare-sort var1040 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun hashCode/-467973558 (String) Int)
(declare-fun var1040-init () var1040)
(declare-fun <init>/1864341934 (var1040 String) void)
(declare-const null-var3985 var3985)
(declare-const null-String String)
(declare-const var3265 var3985) ; Statement: r1 := @this: com.google.javascript.jscomp.ant.CompileTask 
(assert (not (= var3265 null-var3985)))
(declare-const var2908 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var2908 null-String)))
(define-const var932 Int (- 1)) ; Statement: b1 = -1 
(assert true)
(define-const var1206 Int (hashCode/-467973558 var2908)) ; Statement: $i0 = virtualinvoke r0.<java.lang.String: int hashCode()>() 
 ; Statement: lookupswitch($i0) {     case 868923144: goto $z1 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("BROWSER");     case 1999208305: goto $z0 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("CUSTOM");     default: goto lookupswitch(b1) {     case 0: goto $r3 = <com.google.javascript.jscomp.CompilerOptions$Environment: com.google.javascript.jscomp.CompilerOptions$Environment BROWSER>;     case 1: goto $r2 = <com.google.javascript.jscomp.CompilerOptions$Environment: com.google.javascript.jscomp.CompilerOptions$Environment CUSTOM>;     default: goto $r4 = new com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException; }; } 
(assert (and (not (= var1206 1999208305)) (and (not (= var1206 868923144)) true))) ; Intersect: Negate: Cond: $i0 == 1999208305   and Intersect: Negate: Cond: $i0 == 868923144   and Non Conditional  
 ; Statement: lookupswitch(b1) {     case 0: goto $r3 = <com.google.javascript.jscomp.CompilerOptions$Environment: com.google.javascript.jscomp.CompilerOptions$Environment BROWSER>;     case 1: goto $r2 = <com.google.javascript.jscomp.CompilerOptions$Environment: com.google.javascript.jscomp.CompilerOptions$Environment CUSTOM>;     default: goto $r4 = new com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException; } 
(assert (and (not (= var932 1)) (and (not (= var932 0)) true))) ; Intersect: Negate: Cond: b1 == 1   and Intersect: Negate: Cond: b1 == 0   and Non Conditional  
(define-const var3768 var1040 var1040-init) ; Statement: $r4 = new com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException 
(define-const var3165 String (str.++ "Unrecognized \u0027environment\u0027 option value (\u0001)" var2908)) ; Statement: $r5 = dynamicinvoke "makeConcatWithConstants" <java.lang.String (java.lang.String)>(r0) <java.lang.invoke.StringConcatFactory: java.lang.invoke.CallSite makeConcatWithConstants(java.lang.invoke.MethodHandles$Lookup,java.lang.String,java.lang.invoke.MethodType,java.lang.String,java.lang.Object[])>("Unrecognized \'environment\' option value (\u0001)") 
(assert true)
;(assert (<init>/1864341934 var3768 var3165)) ; Statement: specialinvoke $r4.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException: void <init>(java.lang.String)>($r5) 

(declare-const var3768!1 var1040)
(declare-const var3165!1 String)
 ; Statement: throw $r4 
(check-sat)
(get-model)
(get-unsat-core)
; {hashCode/-467973558=([java.lang.String], int), var1040-init=([], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException), <init>/1864341934=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException, java.lang.String], void)}
; {var3985=com.google.javascript.jscomp.ant.CompileTask, var3265=r1, var2908=r0, var3938=null_type, var932=b1, var1206=$i0, var1040=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException, var3768=$r4, var3165=$r5}
; {com.google.javascript.jscomp.ant.CompileTask=var3985, r1=var3265, r0=var2908, null_type=var3938, b1=var932, $i0=var1206, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException=var1040, $r4=var3768, $r5=var3165}
;seq <java.lang.String: int hashCode()>
;cnt {"<java.lang.String: int hashCode()>": 1}
;stmts r1 := @this: com.google.javascript.jscomp.ant.CompileTask;	r0 := @parameter0: java.lang.String;	b1 = -1;	$i0 = virtualinvoke r0.<java.lang.String: int hashCode()>();	lookupswitch($i0) {     case 868923144: goto $z1 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("BROWSER");     case 1999208305: goto $z0 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("CUSTOM");     default: goto lookupswitch(b1) {     case 0: goto $r3 = <com.google.javascript.jscomp.CompilerOptions$Environment: com.google.javascript.jscomp.CompilerOptions$Environment BROWSER>;     case 1: goto $r2 = <com.google.javascript.jscomp.CompilerOptions$Environment: com.google.javascript.jscomp.CompilerOptions$Environment CUSTOM>;     default: goto $r4 = new com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException; }; };	lookupswitch(b1) {     case 0: goto $r3 = <com.google.javascript.jscomp.CompilerOptions$Environment: com.google.javascript.jscomp.CompilerOptions$Environment BROWSER>;     case 1: goto $r2 = <com.google.javascript.jscomp.CompilerOptions$Environment: com.google.javascript.jscomp.CompilerOptions$Environment CUSTOM>;     default: goto $r4 = new com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException; };	$r4 = new com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException;	$r5 = dynamicinvoke "makeConcatWithConstants" <java.lang.String (java.lang.String)>(r0) <java.lang.invoke.StringConcatFactory: java.lang.invoke.CallSite makeConcatWithConstants(java.lang.invoke.MethodHandles$Lookup,java.lang.String,java.lang.invoke.MethodType,java.lang.String,java.lang.Object[])>("Unrecognized \'environment\' option value (\u0001)");	specialinvoke $r4.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException: void <init>(java.lang.String)>($r5);	throw $r4
;block_num 3