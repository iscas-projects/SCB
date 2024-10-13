(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1419 0)
(declare-sort var1406 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var1419_isDualFieldStructure/886298786 (String) Bool)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(define-fun substring/850833817 ((s String) (begin Int)) String (str.substr s begin (- (str.len s) begin)))
(declare-fun generateClass/-1392753901 (var1419 String String Bool) ClassObject)
(declare-const null-var1419 var1419)
(declare-const null-String String)
(declare-const var1419-DUAL_FIELD_PREFIX String)
(declare-const var2510 var1419) ; Statement: r1 := @this: jdk.nashorn.internal.runtime.StructureLoader 
(assert (not (= var2510 null-var1419)))
(declare-const var2377 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var2377 null-String)))
(define-const var3790 Bool (var1419_isDualFieldStructure/886298786 var2377)) ; Statement: $z0 = staticinvoke <jdk.nashorn.internal.runtime.StructureLoader: boolean isDualFieldStructure(java.lang.String)>(r0) 
 ; Statement: if $z0 == 0 goto $z1 = staticinvoke <jdk.nashorn.internal.runtime.StructureLoader: boolean isSingleFieldStructure(java.lang.String)>(r0) 
(assert (not (= (ite var3790 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var3789 String var1419-DUAL_FIELD_PREFIX) ; Statement: $r6 = <jdk.nashorn.internal.runtime.StructureLoader: java.lang.String DUAL_FIELD_PREFIX> 
(assert true)
(define-const var3966 Int (length/-134980193 var3789)) ; Statement: $i1 = virtualinvoke $r6.<java.lang.String: int length()>() 
(assert (and true (and (>= var3966 0) (>= (str.len var2377) var3966))))
(define-const var48 String (substring/850833817 var2377 var3966)) ; Statement: $r7 = virtualinvoke r0.<java.lang.String: java.lang.String substring(int)>($i1) 
(assert true)
(define-const var3802 ClassObject (generateClass/-1392753901 var2510 var2377 var48 (ite (= 1 1) true false))) ; Statement: $r8 = specialinvoke r1.<jdk.nashorn.internal.runtime.StructureLoader: java.lang.Class generateClass(java.lang.String,java.lang.String,boolean)>(r0, $r7, 1) 
 ; Statement: return $r8 
(check-sat)
(get-model)
(get-unsat-core)
; {var1419_isDualFieldStructure/886298786=([java.lang.String], boolean), length/-134980193=([java.lang.String], int), substring/850833817=([java.lang.String, int], java.lang.String), generateClass/-1392753901=([jdk.nashorn.internal.runtime.StructureLoader, java.lang.String, java.lang.String, boolean], java.lang.Class)}
; {var1419=jdk.nashorn.internal.runtime.StructureLoader, var2510=r1, var2377=r0, var1406=null_type, var3790=$z0, var3789=$r6, var3966=$i1, var48=$r7, var3802=$r8}
; {jdk.nashorn.internal.runtime.StructureLoader=var1419, r1=var2510, r0=var2377, null_type=var1406, $z0=var3790, $r6=var3789, $i1=var3966, $r7=var48, $r8=var3802}
;seq <java.lang.String: int length()>;	<java.lang.String: java.lang.String substring(int)>
;cnt {"<java.lang.String: int length()>": 1,"<java.lang.String: java.lang.String substring(int)>": 1}
;stmts r1 := @this: jdk.nashorn.internal.runtime.StructureLoader;	r0 := @parameter0: java.lang.String;	$z0 = staticinvoke <jdk.nashorn.internal.runtime.StructureLoader: boolean isDualFieldStructure(java.lang.String)>(r0);	if $z0 == 0 goto $z1 = staticinvoke <jdk.nashorn.internal.runtime.StructureLoader: boolean isSingleFieldStructure(java.lang.String)>(r0);	$r6 = <jdk.nashorn.internal.runtime.StructureLoader: java.lang.String DUAL_FIELD_PREFIX>;	$i1 = virtualinvoke $r6.<java.lang.String: int length()>();	$r7 = virtualinvoke r0.<java.lang.String: java.lang.String substring(int)>($i1);	$r8 = specialinvoke r1.<jdk.nashorn.internal.runtime.StructureLoader: java.lang.Class generateClass(java.lang.String,java.lang.String,boolean)>(r0, $r7, 1);	return $r8
;block_num 2