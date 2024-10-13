(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3496 0)
(declare-sort var3759 0)
(declare-sort var97 0)
(declare-sort var3975 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun edgesConnecting/1087796959 (var3496 var3759 var3759) var97)
(declare-fun var97_size/-649653377 (var97) Int)
(declare-fun var3975-init () var3975)
(declare-fun arr-var3759-init () (Array Int var3759))
(declare-fun String_format/1339386452 (String (Array Int var3759)) String)
(declare-fun <init>/875830710 (var3975 String) void)
(declare-const null-var3496 var3496)
(declare-const null-var3759 var3759)
(declare-const null-__Array__Int__var3759__ (Array Int var3759))
(declare-const var1364 var3496) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.com.google.common.graph.AbstractNetwork 
(assert (not (= var1364 null-var3496)))
(declare-const var1104 var3759) ; Statement: r1 := @parameter0: java.lang.Object 
(assert (not (= var1104 null-var3759)))
(declare-const var752 var3759) ; Statement: r2 := @parameter1: java.lang.Object 
(assert (not (= var752 null-var3759)))
(assert true)
(define-const var85 var97 (edgesConnecting/1087796959 var1364 var1104 var752)) ; Statement: r3 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.com.google.common.graph.AbstractNetwork: java.util.Set edgesConnecting(java.lang.Object,java.lang.Object)>(r1, r2) 
(define-const var3022 Int (var97_size/-649653377 var85)) ; Statement: $i0 = interfaceinvoke r3.<java.util.Set: int size()>() 
 ; Statement: lookupswitch($i0) {     case 0: goto return null;     case 1: goto $r4 = interfaceinvoke r3.<java.util.Set: java.util.Iterator iterator()>();     default: goto $r6 = new java.lang.IllegalArgumentException; } 
(assert (and (not (= var3022 1)) (and (not (= var3022 0)) true))) ; Intersect: Negate: Cond: $i0 == 1   and Intersect: Negate: Cond: $i0 == 0   and Non Conditional  
(define-const var134 var3975 var3975-init) ; Statement: $r6 = new java.lang.IllegalArgumentException 
(define-const var2277 (Array Int var3759) arr-var3759-init) ; Statement: $r7 = newarray (java.lang.Object)[2] 
(declare-const var2277!1 (Array Int var3759))
(assert (not (= var2277!1 null-__Array__Int__var3759__)))
(assert (= (select var2277!1 0) var1104)) ; Statement: $r7[0] = r1 
(declare-const var2277!2 (Array Int var3759))
(assert (not (= var2277!2 null-__Array__Int__var3759__)))
(assert (= (select var2277!2 1) var752)) ; Statement: $r7[1] = r2 
(define-const var2016 String (String_format/1339386452 "Cannot call edgeConnecting() when parallel edges exist between %s and %s. Consider calling edgesConnecting() instead." var2277!2)) ; Statement: $r8 = staticinvoke <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>("Cannot call edgeConnecting() when parallel edges exist between %s and %s. Consider calling edgesConnecting() instead.", $r7) 
(assert true)
;(assert (<init>/875830710 var134 var2016)) ; Statement: specialinvoke $r6.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r8) 

(declare-const var134!1 var3975)
(declare-const var2016!1 String)
 ; Statement: throw $r6 
(check-sat)
(get-model)
(get-unsat-core)
; {edgesConnecting/1087796959=([com.google.javascript.jscomp.jarjar.com.google.common.graph.AbstractNetwork, java.lang.Object, java.lang.Object], java.util.Set), var97_size/-649653377=([java.util.Set], int), var3975-init=([], java.lang.IllegalArgumentException), arr-var3759-init=([], java.lang.Object[]), String_format/1339386452=([java.lang.String, java.lang.Object[]], java.lang.String), <init>/875830710=([java.lang.IllegalArgumentException, java.lang.String], void)}
; {var3496=com.google.javascript.jscomp.jarjar.com.google.common.graph.AbstractNetwork, var1364=r0, var3759=java.lang.Object, var1104=r1, var752=r2, var97=java.util.Set, var85=r3, var3022=$i0, var3975=java.lang.IllegalArgumentException, var134=$r6, var2277=$r7, var2016=$r8}
; {com.google.javascript.jscomp.jarjar.com.google.common.graph.AbstractNetwork=var3496, r0=var1364, java.lang.Object=var3759, r1=var1104, r2=var752, java.util.Set=var97, r3=var85, $i0=var3022, java.lang.IllegalArgumentException=var3975, $r6=var134, $r7=var2277, $r8=var2016}
;seq <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>
;cnt {"<java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.com.google.common.graph.AbstractNetwork;	r1 := @parameter0: java.lang.Object;	r2 := @parameter1: java.lang.Object;	r3 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.com.google.common.graph.AbstractNetwork: java.util.Set edgesConnecting(java.lang.Object,java.lang.Object)>(r1, r2);	$i0 = interfaceinvoke r3.<java.util.Set: int size()>();	lookupswitch($i0) {     case 0: goto return null;     case 1: goto $r4 = interfaceinvoke r3.<java.util.Set: java.util.Iterator iterator()>();     default: goto $r6 = new java.lang.IllegalArgumentException; };	$r6 = new java.lang.IllegalArgumentException;	$r7 = newarray (java.lang.Object)[2];	$r7[0] = r1;	$r7[1] = r2;	$r8 = staticinvoke <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>("Cannot call edgeConnecting() when parallel edges exist between %s and %s. Consider calling edgesConnecting() instead.", $r7);	specialinvoke $r6.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r8);	throw $r6
;block_num 2