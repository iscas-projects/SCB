(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3402 0)
(declare-sort var1384 0)
(declare-sort var2686 0)
(declare-sort var979 0)
(declare-sort var1970 0)
(declare-sort var85 0)
(declare-sort var753 0)
(declare-sort var591 0)
(declare-sort var3221 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun charAt/698050440 ((s String) (index Int)) Int (str.to_code (str.at s index)))
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun getInstanceOf/202174775 (var3402 String) var1970)
(declare-fun errMgr/787585255 (var3402) var85)
(declare-fun runTimeError/1005957290 (var85 var1384 var2686 var753 var591) void)
(declare-fun cast-from-String-to-var591 (String) var591)
(declare-fun var3221-init () var3221)
(declare-fun <init>/1206344275 (var3221) void)
(declare-fun createStringTemplateInternally/-1325316353 (var3402 var3221) var1970)
(declare-const null-var3402 var3402)
(declare-const null-var1384 var1384)
(declare-const null-var2686 var2686)
(declare-const null-String String)
(declare-const var3402-verbose Bool)
(declare-const null-var1970 var1970)
(declare-const var753-NO_SUCH_TEMPLATE var753)
(declare-const var2299 var3402) ; Statement: r1 := @this: org.stringtemplate.v4.STGroup 
(assert (not (= var2299 null-var3402)))
(declare-const var874 var1384) ; Statement: r3 := @parameter0: org.stringtemplate.v4.Interpreter 
(assert (not (= var874 null-var1384)))
(declare-const var368 var2686) ; Statement: r4 := @parameter1: org.stringtemplate.v4.InstanceScope 
(assert (not (= var368 null-var2686)))
(declare-const var1336 String) ; Statement: r0 := @parameter2: java.lang.String 
(assert (not (= var1336 null-String)))
(define-const var1514 String var1336) ; Statement: r22 = r0 
(assert (and true (and (> (str.len var1336) 0) (<= 0 0))))
(define-const var1965 Int (charAt/698050440 var1336 0)) ; Statement: $c0 = virtualinvoke r0.<java.lang.String: char charAt(int)>(0) 
(define-const var2878 Int (cast-from-Int-to-Int var1965)) ; Statement: $i1 = (int) $c0 
 ; Statement: if $i1 == 47 goto $z0 = <org.stringtemplate.v4.STGroup: boolean verbose> 
(assert (= var2878 47)) ; Cond: $i1 == 47 
(define-const var54 Bool var3402-verbose) ; Statement: $z0 = <org.stringtemplate.v4.STGroup: boolean verbose> 
 ; Statement: if $z0 == 0 goto $r15 = virtualinvoke r1.<org.stringtemplate.v4.STGroup: org.stringtemplate.v4.ST getInstanceOf(java.lang.String)>(r22) 
(assert (= (ite var54 1 0) 0)) ; Cond: $z0 == 0 
(assert true)
(define-const var1699 var1970 (getInstanceOf/202174775 var2299 var1514)) ; Statement: $r15 = virtualinvoke r1.<org.stringtemplate.v4.STGroup: org.stringtemplate.v4.ST getInstanceOf(java.lang.String)>(r22) 
 ; Statement: if $r15 != null goto $z1 = <org.stringtemplate.v4.STGroup: boolean trackCreationEvents> 
(assert (not (not (= var1699 null-var1970)))) ; Negate: Cond: $r15 != null  
(define-const var849 var85 (errMgr/787585255 var2299)) ; Statement: $r6 = r1.<org.stringtemplate.v4.STGroup: org.stringtemplate.v4.misc.ErrorManager errMgr> 
(define-const var3459 var753 var753-NO_SUCH_TEMPLATE) ; Statement: $r5 = <org.stringtemplate.v4.misc.ErrorType: org.stringtemplate.v4.misc.ErrorType NO_SUCH_TEMPLATE> 
(assert true)
;(assert (runTimeError/1005957290 var849 var874 var368 var3459 (cast-from-String-to-var591 var1514))) ; Statement: virtualinvoke $r6.<org.stringtemplate.v4.misc.ErrorManager: void runTimeError(org.stringtemplate.v4.Interpreter,org.stringtemplate.v4.InstanceScope,org.stringtemplate.v4.misc.ErrorType,java.lang.Object)>(r3, r4, $r5, r22) 

(declare-const var849!1 var85)
(declare-const var874!1 var1384)
(declare-const var368!1 var2686)
(declare-const var3459!1 var753)
(declare-const var1514!1 String)
(define-const var3347 var3221 var3221-init) ; Statement: $r25 = new org.stringtemplate.v4.compiler.CompiledST 
(assert true)
;(assert (<init>/1206344275 var3347)) ; Statement: specialinvoke $r25.<org.stringtemplate.v4.compiler.CompiledST: void <init>()>() 

(declare-const var3347!1 var3221)
(assert true)
(define-const var176 var1970 (createStringTemplateInternally/-1325316353 var2299 var3347!1)) ; Statement: $r8 = virtualinvoke r1.<org.stringtemplate.v4.STGroup: org.stringtemplate.v4.ST createStringTemplateInternally(org.stringtemplate.v4.compiler.CompiledST)>($r25) 
 ; Statement: return $r8 
(check-sat)
(get-model)
(get-unsat-core)
; {charAt/698050440=([java.lang.String, int], char), cast-from-Int-to-Int=([char], int), getInstanceOf/202174775=([org.stringtemplate.v4.STGroup, java.lang.String], org.stringtemplate.v4.ST), errMgr/787585255=([org.stringtemplate.v4.STGroup], org.stringtemplate.v4.misc.ErrorManager), runTimeError/1005957290=([org.stringtemplate.v4.misc.ErrorManager, org.stringtemplate.v4.Interpreter, org.stringtemplate.v4.InstanceScope, org.stringtemplate.v4.misc.ErrorType, java.lang.Object], void), cast-from-String-to-var591=([java.lang.String], java.lang.Object), var3221-init=([], org.stringtemplate.v4.compiler.CompiledST), <init>/1206344275=([org.stringtemplate.v4.compiler.CompiledST], void), createStringTemplateInternally/-1325316353=([org.stringtemplate.v4.STGroup, org.stringtemplate.v4.compiler.CompiledST], org.stringtemplate.v4.ST)}
; {var3402=org.stringtemplate.v4.STGroup, var2299=r1, var1384=org.stringtemplate.v4.Interpreter, var874=r3, var2686=org.stringtemplate.v4.InstanceScope, var368=r4, var1336=r0, var979=null_type, var1514=r22, var1965=$c0, var2878=$i1, var54=$z0, var1970=org.stringtemplate.v4.ST, var1699=$r15, var85=org.stringtemplate.v4.misc.ErrorManager, var849=$r6, var753=org.stringtemplate.v4.misc.ErrorType, var3459=$r5, var591=java.lang.Object, var3221=org.stringtemplate.v4.compiler.CompiledST, var3347=$r25, var176=$r8}
; {org.stringtemplate.v4.STGroup=var3402, r1=var2299, org.stringtemplate.v4.Interpreter=var1384, r3=var874, org.stringtemplate.v4.InstanceScope=var2686, r4=var368, r0=var1336, null_type=var979, r22=var1514, $c0=var1965, $i1=var2878, $z0=var54, org.stringtemplate.v4.ST=var1970, $r15=var1699, org.stringtemplate.v4.misc.ErrorManager=var85, $r6=var849, org.stringtemplate.v4.misc.ErrorType=var753, $r5=var3459, java.lang.Object=var591, org.stringtemplate.v4.compiler.CompiledST=var3221, $r25=var3347, $r8=var176}
;seq <java.lang.String: char charAt(int)>
;cnt {"<java.lang.String: char charAt(int)>": 1}
;stmts r1 := @this: org.stringtemplate.v4.STGroup;	r3 := @parameter0: org.stringtemplate.v4.Interpreter;	r4 := @parameter1: org.stringtemplate.v4.InstanceScope;	r0 := @parameter2: java.lang.String;	r22 = r0;	$c0 = virtualinvoke r0.<java.lang.String: char charAt(int)>(0);	$i1 = (int) $c0;	if $i1 == 47 goto $z0 = <org.stringtemplate.v4.STGroup: boolean verbose>;	$z0 = <org.stringtemplate.v4.STGroup: boolean verbose>;	if $z0 == 0 goto $r15 = virtualinvoke r1.<org.stringtemplate.v4.STGroup: org.stringtemplate.v4.ST getInstanceOf(java.lang.String)>(r22);	$r15 = virtualinvoke r1.<org.stringtemplate.v4.STGroup: org.stringtemplate.v4.ST getInstanceOf(java.lang.String)>(r22);	if $r15 != null goto $z1 = <org.stringtemplate.v4.STGroup: boolean trackCreationEvents>;	$r6 = r1.<org.stringtemplate.v4.STGroup: org.stringtemplate.v4.misc.ErrorManager errMgr>;	$r5 = <org.stringtemplate.v4.misc.ErrorType: org.stringtemplate.v4.misc.ErrorType NO_SUCH_TEMPLATE>;	virtualinvoke $r6.<org.stringtemplate.v4.misc.ErrorManager: void runTimeError(org.stringtemplate.v4.Interpreter,org.stringtemplate.v4.InstanceScope,org.stringtemplate.v4.misc.ErrorType,java.lang.Object)>(r3, r4, $r5, r22);	$r25 = new org.stringtemplate.v4.compiler.CompiledST;	specialinvoke $r25.<org.stringtemplate.v4.compiler.CompiledST: void <init>()>();	$r8 = virtualinvoke r1.<org.stringtemplate.v4.STGroup: org.stringtemplate.v4.ST createStringTemplateInternally(org.stringtemplate.v4.compiler.CompiledST)>($r25);	return $r8
;block_num 4