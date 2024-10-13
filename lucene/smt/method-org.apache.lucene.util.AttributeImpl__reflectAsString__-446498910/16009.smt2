(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2503 0)
(declare-sort var3061 0)
(declare-sort var3334 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun var3334_bootstrap$/1327955709 (String Bool) var3061)
(declare-fun reflectWith/-203281466 (var2503 var3061) void)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var2503 var2503)
(declare-const null-Bool Bool)
(declare-const var1285 var2503) ; Statement: r1 := @this: org.apache.lucene.util.AttributeImpl 
(assert (not (= var1285 null-var2503)))
(declare-const var548 Bool) ; Statement: z0 := @parameter0: boolean 
(assert (not (= var548 null-Bool)))
(define-const var1552 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1552)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1552!1 String)
(assert (= var1552!1 ""))
(define-const var3897 var3061 (var3334_bootstrap$/1327955709 var1552!1 var548)) ; Statement: $r2 = staticinvoke <org.apache.lucene.util.AttributeImpl$lambda_reflectAsString_0__414: org.apache.lucene.util.AttributeReflector bootstrap$(java.lang.StringBuilder,boolean)>($r0, z0) 
(assert true)
;(assert (reflectWith/-203281466 var1285 var3897)) ; Statement: virtualinvoke r1.<org.apache.lucene.util.AttributeImpl: void reflectWith(org.apache.lucene.util.AttributeReflector)>($r2) 

(declare-const var1285!1 var2503)
(declare-const var3897!1 var3061)
(assert true)
(define-const var1365 String (toString/-2075883882 var1552!1)) ; Statement: $r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r3 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), var3334_bootstrap$/1327955709=([java.lang.StringBuilder, boolean], org.apache.lucene.util.AttributeReflector), reflectWith/-203281466=([org.apache.lucene.util.AttributeImpl, org.apache.lucene.util.AttributeReflector], void), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var2503=org.apache.lucene.util.AttributeImpl, var1285=r1, var548=z0, var1552=$r0, var3061=org.apache.lucene.util.AttributeReflector, var3334=org.apache.lucene.util.AttributeImpl$lambda_reflectAsString_0__414, var3897=$r2, var1365=$r3}
; {org.apache.lucene.util.AttributeImpl=var2503, r1=var1285, z0=var548, $r0=var1552, org.apache.lucene.util.AttributeReflector=var3061, org.apache.lucene.util.AttributeImpl$lambda_reflectAsString_0__414=var3334, $r2=var3897, $r3=var1365}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: org.apache.lucene.util.AttributeImpl;	z0 := @parameter0: boolean;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r2 = staticinvoke <org.apache.lucene.util.AttributeImpl$lambda_reflectAsString_0__414: org.apache.lucene.util.AttributeReflector bootstrap$(java.lang.StringBuilder,boolean)>($r0, z0);	virtualinvoke r1.<org.apache.lucene.util.AttributeImpl: void reflectWith(org.apache.lucene.util.AttributeReflector)>($r2);	$r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>();	return $r3
;block_num 1