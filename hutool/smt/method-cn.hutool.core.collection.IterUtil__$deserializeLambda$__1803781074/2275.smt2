(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2556 0)
(declare-sort var3717 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getImplMethodName/-1836315809 (var2556) String)
(declare-fun hashCode/-467973558 (String) Int)
(declare-fun var3717-init () var3717)
(declare-fun <init>/875830710 (var3717 String) void)
(declare-const null-var2556 var2556)
(declare-const var1727 var2556) ; Statement: r0 := @parameter0: java.lang.invoke.SerializedLambda 
(assert (not (= var1727 null-var2556)))
(assert true)
(define-const var1414 String (getImplMethodName/-1836315809 var1727)) ; Statement: r1 = virtualinvoke r0.<java.lang.invoke.SerializedLambda: java.lang.String getImplMethodName()>() 
(define-const var270 Int (- 1)) ; Statement: b5 = -1 
(assert true)
(define-const var1796 Int (hashCode/-467973558 var1414)) ; Statement: $i0 = virtualinvoke r1.<java.lang.String: int hashCode()>() 
 ; Statement: lookupswitch($i0) {     case -448210889: goto $z23 = virtualinvoke r1.<java.lang.String: boolean equals(java.lang.Object)>("lambda$fieldValueMap$a3f4a90f$1");     case -278891634: goto $z22 = virtualinvoke r1.<java.lang.String: boolean equals(java.lang.Object)>("lambda$fieldValueAsMap$f61513e$1");     case 591690217: goto $z21 = virtualinvoke r1.<java.lang.String: boolean equals(java.lang.Object)>("lambda$fieldValueAsMap$ceda202c$1");     case 2114720463: goto $z0 = virtualinvoke r1.<java.lang.String: boolean equals(java.lang.Object)>("lambda$toMap$ed1d981b$1");     default: goto tableswitch(b5) {     case 0: goto $i4 = virtualinvoke r0.<java.lang.invoke.SerializedLambda: int getImplMethodKind()>();     case 1: goto $i3 = virtualinvoke r0.<java.lang.invoke.SerializedLambda: int getImplMethodKind()>();     case 2: goto $i2 = virtualinvoke r0.<java.lang.invoke.SerializedLambda: int getImplMethodKind()>();     case 3: goto $i1 = virtualinvoke r0.<java.lang.invoke.SerializedLambda: int getImplMethodKind()>();     default: goto $r32 = new java.lang.IllegalArgumentException; }; } 
(assert (and (not (= var1796 2114720463)) (and (not (= var1796 591690217)) (and (not (= var1796 (- 278891634))) (and (not (= var1796 (- 448210889))) true))))) ; Intersect: Negate: Cond: $i0 == 2114720463   and Intersect: Negate: Cond: $i0 == 591690217   and Intersect: Negate: Cond: $i0 == -278891634   and Intersect: Negate: Cond: $i0 == -448210889   and Non Conditional    
 ; Statement: tableswitch(b5) {     case 0: goto $i4 = virtualinvoke r0.<java.lang.invoke.SerializedLambda: int getImplMethodKind()>();     case 1: goto $i3 = virtualinvoke r0.<java.lang.invoke.SerializedLambda: int getImplMethodKind()>();     case 2: goto $i2 = virtualinvoke r0.<java.lang.invoke.SerializedLambda: int getImplMethodKind()>();     case 3: goto $i1 = virtualinvoke r0.<java.lang.invoke.SerializedLambda: int getImplMethodKind()>();     default: goto $r32 = new java.lang.IllegalArgumentException; } 
(assert (and (not (= var270 3)) (and (not (= var270 2)) (and (not (= var270 1)) (and (not (= var270 0)) true))))) ; Intersect: Negate: Cond: b5 == 3   and Intersect: Negate: Cond: b5 == 2   and Intersect: Negate: Cond: b5 == 1   and Intersect: Negate: Cond: b5 == 0   and Non Conditional    
(define-const var3966 var3717 var3717-init) ; Statement: $r32 = new java.lang.IllegalArgumentException 
(assert true)
;(assert (<init>/875830710 var3966 "Invalid lambda deserialization")) ; Statement: specialinvoke $r32.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>("Invalid lambda deserialization") 

(declare-const var3966!1 var3717)
(declare-const var2482 String)
 ; Statement: throw $r32 
(check-sat)
(get-model)
(get-unsat-core)
; {getImplMethodName/-1836315809=([java.lang.invoke.SerializedLambda], java.lang.String), hashCode/-467973558=([java.lang.String], int), var3717-init=([], java.lang.IllegalArgumentException), <init>/875830710=([java.lang.IllegalArgumentException, java.lang.String], void)}
; {var2556=java.lang.invoke.SerializedLambda, var1727=r0, var1414=r1, var270=b5, var1796=$i0, var3717=java.lang.IllegalArgumentException, var3966=$r32, var2482="Invalid lambda deserialization"}
; {java.lang.invoke.SerializedLambda=var2556, r0=var1727, r1=var1414, b5=var270, $i0=var1796, java.lang.IllegalArgumentException=var3717, $r32=var3966, "Invalid lambda deserialization"=var2482}
;seq <java.lang.String: int hashCode()>
;cnt {"<java.lang.String: int hashCode()>": 1}
;stmts r0 := @parameter0: java.lang.invoke.SerializedLambda;	r1 = virtualinvoke r0.<java.lang.invoke.SerializedLambda: java.lang.String getImplMethodName()>();	b5 = -1;	$i0 = virtualinvoke r1.<java.lang.String: int hashCode()>();	lookupswitch($i0) {     case -448210889: goto $z23 = virtualinvoke r1.<java.lang.String: boolean equals(java.lang.Object)>("lambda$fieldValueMap$a3f4a90f$1");     case -278891634: goto $z22 = virtualinvoke r1.<java.lang.String: boolean equals(java.lang.Object)>("lambda$fieldValueAsMap$f61513e$1");     case 591690217: goto $z21 = virtualinvoke r1.<java.lang.String: boolean equals(java.lang.Object)>("lambda$fieldValueAsMap$ceda202c$1");     case 2114720463: goto $z0 = virtualinvoke r1.<java.lang.String: boolean equals(java.lang.Object)>("lambda$toMap$ed1d981b$1");     default: goto tableswitch(b5) {     case 0: goto $i4 = virtualinvoke r0.<java.lang.invoke.SerializedLambda: int getImplMethodKind()>();     case 1: goto $i3 = virtualinvoke r0.<java.lang.invoke.SerializedLambda: int getImplMethodKind()>();     case 2: goto $i2 = virtualinvoke r0.<java.lang.invoke.SerializedLambda: int getImplMethodKind()>();     case 3: goto $i1 = virtualinvoke r0.<java.lang.invoke.SerializedLambda: int getImplMethodKind()>();     default: goto $r32 = new java.lang.IllegalArgumentException; }; };	tableswitch(b5) {     case 0: goto $i4 = virtualinvoke r0.<java.lang.invoke.SerializedLambda: int getImplMethodKind()>();     case 1: goto $i3 = virtualinvoke r0.<java.lang.invoke.SerializedLambda: int getImplMethodKind()>();     case 2: goto $i2 = virtualinvoke r0.<java.lang.invoke.SerializedLambda: int getImplMethodKind()>();     case 3: goto $i1 = virtualinvoke r0.<java.lang.invoke.SerializedLambda: int getImplMethodKind()>();     default: goto $r32 = new java.lang.IllegalArgumentException; };	$r32 = new java.lang.IllegalArgumentException;	specialinvoke $r32.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>("Invalid lambda deserialization");	throw $r32
;block_num 3