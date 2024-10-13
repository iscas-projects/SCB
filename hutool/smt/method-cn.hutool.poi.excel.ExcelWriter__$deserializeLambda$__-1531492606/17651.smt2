(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1333 0)
(declare-sort var3863 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getImplMethodName/-1836315809 (var1333) String)
(declare-fun hashCode/-467973558 (String) Int)
(declare-fun var3863-init () var3863)
(declare-fun <init>/875830710 (var3863 String) void)
(declare-const null-var1333 var1333)
(declare-const var76 var1333) ; Statement: r0 := @parameter0: java.lang.invoke.SerializedLambda 
(assert (not (= var76 null-var1333)))
(assert true)
(define-const var318 String (getImplMethodName/-1836315809 var76)) ; Statement: r1 = virtualinvoke r0.<java.lang.invoke.SerializedLambda: java.lang.String getImplMethodName()>() 
(define-const var941 Int (- 1)) ; Statement: b2 = -1 
(assert true)
(define-const var2197 Int (hashCode/-467973558 var318)) ; Statement: $i0 = virtualinvoke r1.<java.lang.String: int hashCode()>() 
 ; Statement: lookupswitch($i0) {     case 1818100338: goto $z0 = virtualinvoke r1.<java.lang.String: boolean equals(java.lang.Object)>("<init>");     default: goto lookupswitch(b2) {     case 0: goto $i1 = virtualinvoke r0.<java.lang.invoke.SerializedLambda: int getImplMethodKind()>();     default: goto $r8 = new java.lang.IllegalArgumentException; }; } 
(assert (and (not (= var2197 1818100338)) true)) ; Intersect: Negate: Cond: $i0 == 1818100338   and Non Conditional 
 ; Statement: lookupswitch(b2) {     case 0: goto $i1 = virtualinvoke r0.<java.lang.invoke.SerializedLambda: int getImplMethodKind()>();     default: goto $r8 = new java.lang.IllegalArgumentException; } 
(assert (and (not (= var941 0)) true)) ; Intersect: Negate: Cond: b2 == 0   and Non Conditional 
(define-const var2741 var3863 var3863-init) ; Statement: $r8 = new java.lang.IllegalArgumentException 
(assert true)
;(assert (<init>/875830710 var2741 "Invalid lambda deserialization")) ; Statement: specialinvoke $r8.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>("Invalid lambda deserialization") 

(declare-const var2741!1 var3863)
(declare-const var1344 String)
 ; Statement: throw $r8 
(check-sat)
(get-model)
(get-unsat-core)
; {getImplMethodName/-1836315809=([java.lang.invoke.SerializedLambda], java.lang.String), hashCode/-467973558=([java.lang.String], int), var3863-init=([], java.lang.IllegalArgumentException), <init>/875830710=([java.lang.IllegalArgumentException, java.lang.String], void)}
; {var1333=java.lang.invoke.SerializedLambda, var76=r0, var318=r1, var941=b2, var2197=$i0, var3863=java.lang.IllegalArgumentException, var2741=$r8, var1344="Invalid lambda deserialization"}
; {java.lang.invoke.SerializedLambda=var1333, r0=var76, r1=var318, b2=var941, $i0=var2197, java.lang.IllegalArgumentException=var3863, $r8=var2741, "Invalid lambda deserialization"=var1344}
;seq <java.lang.String: int hashCode()>
;cnt {"<java.lang.String: int hashCode()>": 1}
;stmts r0 := @parameter0: java.lang.invoke.SerializedLambda;	r1 = virtualinvoke r0.<java.lang.invoke.SerializedLambda: java.lang.String getImplMethodName()>();	b2 = -1;	$i0 = virtualinvoke r1.<java.lang.String: int hashCode()>();	lookupswitch($i0) {     case 1818100338: goto $z0 = virtualinvoke r1.<java.lang.String: boolean equals(java.lang.Object)>("<init>");     default: goto lookupswitch(b2) {     case 0: goto $i1 = virtualinvoke r0.<java.lang.invoke.SerializedLambda: int getImplMethodKind()>();     default: goto $r8 = new java.lang.IllegalArgumentException; }; };	lookupswitch(b2) {     case 0: goto $i1 = virtualinvoke r0.<java.lang.invoke.SerializedLambda: int getImplMethodKind()>();     default: goto $r8 = new java.lang.IllegalArgumentException; };	$r8 = new java.lang.IllegalArgumentException;	specialinvoke $r8.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>("Invalid lambda deserialization");	throw $r8
;block_num 3