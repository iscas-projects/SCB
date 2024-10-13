(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3830 0)
(declare-sort var514 0)
(declare-sort var3256 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun hasReferenceName/2138409774 (var514) Bool)
(declare-fun cast-from-var3830-to-var514 (var3830) var514)
(declare-fun getReferenceName/1110290887 (var3256) String)
(declare-fun cast-from-var3830-to-var3256 (var3830) var3256)
(define-fun endsWith/985337093 ((s String) (suffix String)) Bool (str.suffixof suffix s))
(declare-const null-var3830 var3830)
(declare-const var3830-DELEGATE_SUFFIX String)
(declare-const var1223 var3830) ; Statement: r0 := @this: com.google.javascript.rhino.jstype.FunctionType 
(assert (not (= var1223 null-var3830)))
(assert true)
(define-const var2114 Bool (hasReferenceName/2138409774 (cast-from-var3830-to-var514 var1223))) ; Statement: $z0 = virtualinvoke r0.<com.google.javascript.rhino.jstype.FunctionType: boolean hasReferenceName()>() 
 ; Statement: if $z0 == 0 goto $z2 = 0 
(assert (not (= (ite var2114 1 0) 0))) ; Negate: Cond: $z0 == 0  
(assert true)
(define-const var1083 String (getReferenceName/1110290887 (cast-from-var3830-to-var3256 var1223))) ; Statement: $r2 = virtualinvoke r0.<com.google.javascript.rhino.jstype.FunctionType: java.lang.String getReferenceName()>() 
(define-const var370 String var3830-DELEGATE_SUFFIX) ; Statement: $r1 = <com.google.javascript.rhino.jstype.FunctionType: java.lang.String DELEGATE_SUFFIX> 
(assert true)
(define-const var603 Bool (endsWith/985337093 var1083 var370)) ; Statement: $z1 = virtualinvoke $r2.<java.lang.String: boolean endsWith(java.lang.String)>($r1) 
 ; Statement: if $z1 == 0 goto $z2 = 0 
(assert (not (= (ite var603 1 0) 0))) ; Negate: Cond: $z1 == 0  
(define-const var1680 Bool (ite (= 1 1) true false)) ; Statement: $z2 = 1 
 ; Statement: goto [?= return $z2] 
(assert true) ; Non Conditional
 ; Statement: return $z2 
(check-sat)
(get-model)
(get-unsat-core)
; {hasReferenceName/2138409774=([com.google.javascript.rhino.jstype.ObjectType], boolean), cast-from-var3830-to-var514=([com.google.javascript.rhino.jstype.FunctionType], com.google.javascript.rhino.jstype.ObjectType), getReferenceName/1110290887=([com.google.javascript.rhino.jstype.PrototypeObjectType], java.lang.String), cast-from-var3830-to-var3256=([com.google.javascript.rhino.jstype.FunctionType], com.google.javascript.rhino.jstype.PrototypeObjectType), endsWith/985337093=([java.lang.String, java.lang.String], boolean)}
; {var3830=com.google.javascript.rhino.jstype.FunctionType, var1223=r0, var514=com.google.javascript.rhino.jstype.ObjectType, var2114=$z0, var3256=com.google.javascript.rhino.jstype.PrototypeObjectType, var1083=$r2, var370=$r1, var603=$z1, var1680=$z2}
; {com.google.javascript.rhino.jstype.FunctionType=var3830, r0=var1223, com.google.javascript.rhino.jstype.ObjectType=var514, $z0=var2114, com.google.javascript.rhino.jstype.PrototypeObjectType=var3256, $r2=var1083, $r1=var370, $z1=var603, $z2=var1680}
;seq <java.lang.String: boolean endsWith(java.lang.String)>
;cnt {"<java.lang.String: boolean endsWith(java.lang.String)>": 1}
;stmts r0 := @this: com.google.javascript.rhino.jstype.FunctionType;	$z0 = virtualinvoke r0.<com.google.javascript.rhino.jstype.FunctionType: boolean hasReferenceName()>();	if $z0 == 0 goto $z2 = 0;	$r2 = virtualinvoke r0.<com.google.javascript.rhino.jstype.FunctionType: java.lang.String getReferenceName()>();	$r1 = <com.google.javascript.rhino.jstype.FunctionType: java.lang.String DELEGATE_SUFFIX>;	$z1 = virtualinvoke $r2.<java.lang.String: boolean endsWith(java.lang.String)>($r1);	if $z1 == 0 goto $z2 = 0;	$z2 = 1;	goto [?= return $z2];	return $z2
;block_num 4