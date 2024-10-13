(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2842 0)
(declare-sort var3949 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getScheme/-227151860 (var2842) String)
(declare-fun var2842-init () var2842)
(declare-fun getSchemeSpecificPart/-1838964985 (var2842) String)
(declare-fun <init>/868527573 (var2842 String) void)
(declare-fun resolve/-693503306 (var2842 String) var2842)
(declare-fun toString/1403215111 (var2842) String)
(declare-const null-var2842 var2842)
(declare-const null-String String)
(declare-const var3969 var2842) ; Statement: r0 := @parameter0: java.net.URI 
(assert (not (= var3969 null-var2842)))
(declare-const var2839 String) ; Statement: r2 := @parameter1: java.lang.String 
(assert (not (= var2839 null-String)))
(assert true)
(define-const var562 String (getScheme/-227151860 var3969)) ; Statement: $r1 = virtualinvoke r0.<java.net.URI: java.lang.String getScheme()>() 
(assert true)
(define-const var1827 Bool (= var562 "jar")) ; Statement: $z0 = virtualinvoke $r1.<java.lang.String: boolean equals(java.lang.Object)>("jar") 
 ; Statement: if $z0 == 0 goto $r3 = virtualinvoke r0.<java.net.URI: java.net.URI resolve(java.lang.String)>(r2) 
(assert (not (= (ite var1827 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var2144 var2842 var2842-init) ; Statement: $r4 = new java.net.URI 
(assert true)
(define-const var2471 String (getSchemeSpecificPart/-1838964985 var3969)) ; Statement: $r5 = virtualinvoke r0.<java.net.URI: java.lang.String getSchemeSpecificPart()>() 
(assert true)
;(assert (<init>/868527573 var2144 var2471)) ; Statement: specialinvoke $r4.<java.net.URI: void <init>(java.lang.String)>($r5) 

(declare-const var2144!1 var2842)
(declare-const var2471!1 String)
(assert true)
(define-const var3566 var2842 (resolve/-693503306 var2144!1 var2839)) ; Statement: r6 = virtualinvoke $r4.<java.net.URI: java.net.URI resolve(java.lang.String)>(r2) 
(define-const var3406 var2842 var2842-init) ; Statement: $r7 = new java.net.URI 
(assert true)
(define-const var2007 String (toString/1403215111 var3566)) ; Statement: $r8 = virtualinvoke r6.<java.net.URI: java.lang.String toString()>() 
(define-const var749 String (str.++ "jar:\u0001" var2007)) ; Statement: $r9 = dynamicinvoke "makeConcatWithConstants" <java.lang.String (java.lang.String)>($r8) <java.lang.invoke.StringConcatFactory: java.lang.invoke.CallSite makeConcatWithConstants(java.lang.invoke.MethodHandles$Lookup,java.lang.String,java.lang.invoke.MethodType,java.lang.String,java.lang.Object[])>("jar:\u0001") 
(assert true)
;(assert (<init>/868527573 var3406 var749)) ; Statement: specialinvoke $r7.<java.net.URI: void <init>(java.lang.String)>($r9) 

(declare-const var3406!1 var2842)
(declare-const var749!1 String)
 ; Statement: return $r7 
(check-sat)
(get-model)
(get-unsat-core)
; {getScheme/-227151860=([java.net.URI], java.lang.String), var2842-init=([], java.net.URI), getSchemeSpecificPart/-1838964985=([java.net.URI], java.lang.String), <init>/868527573=([java.net.URI, java.lang.String], void), resolve/-693503306=([java.net.URI, java.lang.String], java.net.URI), toString/1403215111=([java.net.URI], java.lang.String)}
; {var2842=java.net.URI, var3969=r0, var2839=r2, var3949=null_type, var562=$r1, var1827=$z0, var2144=$r4, var2471=$r5, var3566=r6, var3406=$r7, var2007=$r8, var749=$r9}
; {java.net.URI=var2842, r0=var3969, r2=var2839, null_type=var3949, $r1=var562, $z0=var1827, $r4=var2144, $r5=var2471, r6=var3566, $r7=var3406, $r8=var2007, $r9=var749}
;seq <java.lang.String: boolean equals(java.lang.Object)>;	<java.net.URI: java.lang.String toString()>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r0 := @parameter0: java.net.URI;	r2 := @parameter1: java.lang.String;	$r1 = virtualinvoke r0.<java.net.URI: java.lang.String getScheme()>();	$z0 = virtualinvoke $r1.<java.lang.String: boolean equals(java.lang.Object)>("jar");	if $z0 == 0 goto $r3 = virtualinvoke r0.<java.net.URI: java.net.URI resolve(java.lang.String)>(r2);	$r4 = new java.net.URI;	$r5 = virtualinvoke r0.<java.net.URI: java.lang.String getSchemeSpecificPart()>();	specialinvoke $r4.<java.net.URI: void <init>(java.lang.String)>($r5);	r6 = virtualinvoke $r4.<java.net.URI: java.net.URI resolve(java.lang.String)>(r2);	$r7 = new java.net.URI;	$r8 = virtualinvoke r6.<java.net.URI: java.lang.String toString()>();	$r9 = dynamicinvoke "makeConcatWithConstants" <java.lang.String (java.lang.String)>($r8) <java.lang.invoke.StringConcatFactory: java.lang.invoke.CallSite makeConcatWithConstants(java.lang.invoke.MethodHandles$Lookup,java.lang.String,java.lang.invoke.MethodType,java.lang.String,java.lang.Object[])>("jar:\u0001");	specialinvoke $r7.<java.net.URI: void <init>(java.lang.String)>($r9);	return $r7
;block_num 2