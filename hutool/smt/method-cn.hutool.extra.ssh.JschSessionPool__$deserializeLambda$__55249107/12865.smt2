(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2853 0)
(declare-sort var1993 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getImplMethodName/-1836315809 (var2853) String)
(declare-fun hashCode/-467973558 (String) Int)
(declare-fun var1993-init () var1993)
(declare-fun <init>/875830710 (var1993 String) void)
(declare-const null-var2853 var2853)
(declare-const var2171 var2853) ; Statement: r0 := @parameter0: java.lang.invoke.SerializedLambda 
(assert (not (= var2171 null-var2853)))
(assert true)
(define-const var1093 String (getImplMethodName/-1836315809 var2171)) ; Statement: r1 = virtualinvoke r0.<java.lang.invoke.SerializedLambda: java.lang.String getImplMethodName()>() 
(define-const var1458 Int (- 1)) ; Statement: b7 = -1 
(assert true)
(define-const var3024 Int (hashCode/-467973558 var1093)) ; Statement: $i0 = virtualinvoke r1.<java.lang.String: int hashCode()>() 
 ; Statement: lookupswitch($i0) {     case -574507699: goto $z17 = virtualinvoke r1.<java.lang.String: boolean equals(java.lang.Object)>("lambda$getSession$59bcceb4$1");     case -13151692: goto $z16 = virtualinvoke r1.<java.lang.String: boolean equals(java.lang.Object)>("lambda$getSession$e54f64ee$1");     case 793676584: goto $z0 = virtualinvoke r1.<java.lang.String: boolean equals(java.lang.Object)>("lambda$getSession$b6481cf0$1");     default: goto tableswitch(b7) {     case 0: goto $i5 = virtualinvoke r0.<java.lang.invoke.SerializedLambda: int getImplMethodKind()>();     case 1: goto $i3 = virtualinvoke r0.<java.lang.invoke.SerializedLambda: int getImplMethodKind()>();     case 2: goto $i1 = virtualinvoke r0.<java.lang.invoke.SerializedLambda: int getImplMethodKind()>();     default: goto $r48 = new java.lang.IllegalArgumentException; }; } 
(assert (and (not (= var3024 793676584)) (and (not (= var3024 (- 13151692))) (and (not (= var3024 (- 574507699))) true)))) ; Intersect: Negate: Cond: $i0 == 793676584   and Intersect: Negate: Cond: $i0 == -13151692   and Intersect: Negate: Cond: $i0 == -574507699   and Non Conditional   
 ; Statement: tableswitch(b7) {     case 0: goto $i5 = virtualinvoke r0.<java.lang.invoke.SerializedLambda: int getImplMethodKind()>();     case 1: goto $i3 = virtualinvoke r0.<java.lang.invoke.SerializedLambda: int getImplMethodKind()>();     case 2: goto $i1 = virtualinvoke r0.<java.lang.invoke.SerializedLambda: int getImplMethodKind()>();     default: goto $r48 = new java.lang.IllegalArgumentException; } 
(assert (and (not (= var1458 2)) (and (not (= var1458 1)) (and (not (= var1458 0)) true)))) ; Intersect: Negate: Cond: b7 == 2   and Intersect: Negate: Cond: b7 == 1   and Intersect: Negate: Cond: b7 == 0   and Non Conditional   
(define-const var852 var1993 var1993-init) ; Statement: $r48 = new java.lang.IllegalArgumentException 
(assert true)
;(assert (<init>/875830710 var852 "Invalid lambda deserialization")) ; Statement: specialinvoke $r48.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>("Invalid lambda deserialization") 

(declare-const var852!1 var1993)
(declare-const var1036 String)
 ; Statement: throw $r48 
(check-sat)
(get-model)
(get-unsat-core)
; {getImplMethodName/-1836315809=([java.lang.invoke.SerializedLambda], java.lang.String), hashCode/-467973558=([java.lang.String], int), var1993-init=([], java.lang.IllegalArgumentException), <init>/875830710=([java.lang.IllegalArgumentException, java.lang.String], void)}
; {var2853=java.lang.invoke.SerializedLambda, var2171=r0, var1093=r1, var1458=b7, var3024=$i0, var1993=java.lang.IllegalArgumentException, var852=$r48, var1036="Invalid lambda deserialization"}
; {java.lang.invoke.SerializedLambda=var2853, r0=var2171, r1=var1093, b7=var1458, $i0=var3024, java.lang.IllegalArgumentException=var1993, $r48=var852, "Invalid lambda deserialization"=var1036}
;seq <java.lang.String: int hashCode()>
;cnt {"<java.lang.String: int hashCode()>": 1}
;stmts r0 := @parameter0: java.lang.invoke.SerializedLambda;	r1 = virtualinvoke r0.<java.lang.invoke.SerializedLambda: java.lang.String getImplMethodName()>();	b7 = -1;	$i0 = virtualinvoke r1.<java.lang.String: int hashCode()>();	lookupswitch($i0) {     case -574507699: goto $z17 = virtualinvoke r1.<java.lang.String: boolean equals(java.lang.Object)>("lambda$getSession$59bcceb4$1");     case -13151692: goto $z16 = virtualinvoke r1.<java.lang.String: boolean equals(java.lang.Object)>("lambda$getSession$e54f64ee$1");     case 793676584: goto $z0 = virtualinvoke r1.<java.lang.String: boolean equals(java.lang.Object)>("lambda$getSession$b6481cf0$1");     default: goto tableswitch(b7) {     case 0: goto $i5 = virtualinvoke r0.<java.lang.invoke.SerializedLambda: int getImplMethodKind()>();     case 1: goto $i3 = virtualinvoke r0.<java.lang.invoke.SerializedLambda: int getImplMethodKind()>();     case 2: goto $i1 = virtualinvoke r0.<java.lang.invoke.SerializedLambda: int getImplMethodKind()>();     default: goto $r48 = new java.lang.IllegalArgumentException; }; };	tableswitch(b7) {     case 0: goto $i5 = virtualinvoke r0.<java.lang.invoke.SerializedLambda: int getImplMethodKind()>();     case 1: goto $i3 = virtualinvoke r0.<java.lang.invoke.SerializedLambda: int getImplMethodKind()>();     case 2: goto $i1 = virtualinvoke r0.<java.lang.invoke.SerializedLambda: int getImplMethodKind()>();     default: goto $r48 = new java.lang.IllegalArgumentException; };	$r48 = new java.lang.IllegalArgumentException;	specialinvoke $r48.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>("Invalid lambda deserialization");	throw $r48
;block_num 3