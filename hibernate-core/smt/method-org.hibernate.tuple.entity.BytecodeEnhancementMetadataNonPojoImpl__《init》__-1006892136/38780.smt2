(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3405 0)
(declare-sort var2118 0)
(declare-sort var1640 0)
(declare-sort var2917 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun <init>/-279557996 (var1640) void)
(declare-fun cast-from-var3405-to-var1640 (var3405) var1640)
(declare-fun entityName/-2121464214 (var3405) String)
(declare-fun var2917_nonEnhanced/-1005757495 (String) var2917)
(declare-fun lazyAttributesMetadata/-2121464214 (var3405) var2917)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun errorMsg/-2121464214 (var3405) String)
(declare-const null-var3405 var3405)
(declare-const null-String String)
(declare-const var1283 var3405) ; Statement: r0 := @this: org.hibernate.tuple.entity.BytecodeEnhancementMetadataNonPojoImpl 
(assert (not (= var1283 null-var3405)))
(declare-const var3440 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var3440 null-String)))
(assert true)
;(assert (<init>/-279557996 (cast-from-var3405-to-var1640 var1283))) ; Statement: specialinvoke r0.<java.lang.Object: void <init>()>() 

(declare-const var1283!1 var3405)
(declare-const var1283!2 var3405)
(assert (not (= var1283!2 null-var3405)))
(assert (= (entityName/-2121464214 var1283!2) var3440)) ; Statement: r0.<org.hibernate.tuple.entity.BytecodeEnhancementMetadataNonPojoImpl: java.lang.String entityName> = r1 
(define-const var1478 var2917 (var2917_nonEnhanced/-1005757495 var3440)) ; Statement: $r2 = staticinvoke <org.hibernate.bytecode.enhance.spi.interceptor.LazyAttributesMetadata: org.hibernate.bytecode.enhance.spi.interceptor.LazyAttributesMetadata nonEnhanced(java.lang.String)>(r1) 
(declare-const var1283!3 var3405)
(assert (not (= var1283!3 null-var3405)))
(assert (= (lazyAttributesMetadata/-2121464214 var1283!3) var1478)) ; Statement: r0.<org.hibernate.tuple.entity.BytecodeEnhancementMetadataNonPojoImpl: org.hibernate.bytecode.enhance.spi.interceptor.LazyAttributesMetadata lazyAttributesMetadata> = $r2 
(define-const var3284 String String-init) ; Statement: $r3 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3284)) ; Statement: specialinvoke $r3.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3284!1 String)
(assert (= var3284!1 ""))
(assert true)
(define-const var1228 String (append/672562846 var3284!1 "Entity [")) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Entity [") 
(declare-const var3284!2 String)
(assert (= var3284!2 (str.++ var3284!1 "Entity [")))
(assert true)
(define-const var3883 String (append/672562846 var1228 var3440)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1) 
(declare-const var1228!1 String)
(assert (= var1228!1 (str.++ var1228 var3440)))
(assert true)
(define-const var3041 String (append/672562846 var3883 "] is non-pojo, and therefore not instrumented")) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("] is non-pojo, and therefore not instrumented") 
(declare-const var3883!1 String)
(assert (= var3883!1 (str.++ var3883 "] is non-pojo, and therefore not instrumented")))
(assert true)
(define-const var2639 String (toString/-2075883882 var3041)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>() 
(declare-const var1283!4 var3405)
(assert (not (= var1283!4 null-var3405)))
(assert (= (errorMsg/-2121464214 var1283!4) var2639)) ; Statement: r0.<org.hibernate.tuple.entity.BytecodeEnhancementMetadataNonPojoImpl: java.lang.String errorMsg> = $r7 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {<init>/-279557996=([java.lang.Object], void), cast-from-var3405-to-var1640=([org.hibernate.tuple.entity.BytecodeEnhancementMetadataNonPojoImpl], java.lang.Object), entityName/-2121464214=([org.hibernate.tuple.entity.BytecodeEnhancementMetadataNonPojoImpl], java.lang.String), var2917_nonEnhanced/-1005757495=([java.lang.String], org.hibernate.bytecode.enhance.spi.interceptor.LazyAttributesMetadata), lazyAttributesMetadata/-2121464214=([org.hibernate.tuple.entity.BytecodeEnhancementMetadataNonPojoImpl], org.hibernate.bytecode.enhance.spi.interceptor.LazyAttributesMetadata), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), errorMsg/-2121464214=([org.hibernate.tuple.entity.BytecodeEnhancementMetadataNonPojoImpl], java.lang.String)}
; {var3405=org.hibernate.tuple.entity.BytecodeEnhancementMetadataNonPojoImpl, var1283=r0, var3440=r1, var2118=null_type, var1640=java.lang.Object, var2917=org.hibernate.bytecode.enhance.spi.interceptor.LazyAttributesMetadata, var1478=$r2, var3284=$r3, var1228=$r4, var3883=$r5, var3041=$r6, var2639=$r7}
; {org.hibernate.tuple.entity.BytecodeEnhancementMetadataNonPojoImpl=var3405, r0=var1283, r1=var3440, null_type=var2118, java.lang.Object=var1640, org.hibernate.bytecode.enhance.spi.interceptor.LazyAttributesMetadata=var2917, $r2=var1478, $r3=var3284, $r4=var1228, $r5=var3883, $r6=var3041, $r7=var2639}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: org.hibernate.tuple.entity.BytecodeEnhancementMetadataNonPojoImpl;	r1 := @parameter0: java.lang.String;	specialinvoke r0.<java.lang.Object: void <init>()>();	r0.<org.hibernate.tuple.entity.BytecodeEnhancementMetadataNonPojoImpl: java.lang.String entityName> = r1;	$r2 = staticinvoke <org.hibernate.bytecode.enhance.spi.interceptor.LazyAttributesMetadata: org.hibernate.bytecode.enhance.spi.interceptor.LazyAttributesMetadata nonEnhanced(java.lang.String)>(r1);	r0.<org.hibernate.tuple.entity.BytecodeEnhancementMetadataNonPojoImpl: org.hibernate.bytecode.enhance.spi.interceptor.LazyAttributesMetadata lazyAttributesMetadata> = $r2;	$r3 = new java.lang.StringBuilder;	specialinvoke $r3.<java.lang.StringBuilder: void <init>()>();	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Entity [");	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1);	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("] is non-pojo, and therefore not instrumented");	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>();	r0.<org.hibernate.tuple.entity.BytecodeEnhancementMetadataNonPojoImpl: java.lang.String errorMsg> = $r7;	return
;block_num 1