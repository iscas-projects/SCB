(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var150 0)
(declare-sort var3580 0)
(declare-sort var2446 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun var3580-init () var3580)
(declare-fun <init>/806681432 (var3580 var150 String Bool) void)
(declare-fun reflectWith/393546753 (var150 var2446) void)
(declare-fun cast-from-var3580-to-var2446 (var3580) var2446)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var150 var150)
(declare-const null-Bool Bool)
(declare-const var755 var150) ; Statement: r1 := @this: org.apache.lucene.util.AttributeSource 
(assert (not (= var755 null-var150)))
(declare-const var131 Bool) ; Statement: z0 := @parameter0: boolean 
(assert (not (= var131 null-Bool)))
(define-const var3728 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3728)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3728!1 String)
(assert (= var3728!1 ""))
(define-const var3433 var3580 var3580-init) ; Statement: $r2 = new org.apache.lucene.util.AttributeSource$3 
(assert true)
;(assert (<init>/806681432 var3433 var755 var3728!1 var131)) ; Statement: specialinvoke $r2.<org.apache.lucene.util.AttributeSource$3: void <init>(org.apache.lucene.util.AttributeSource,java.lang.StringBuilder,boolean)>(r1, $r0, z0) 

(declare-const var3433!1 var3580)
(declare-const var755!1 var150)
(declare-const var3728!2 String)
(declare-const var131!1 Bool)
(assert true)
;(assert (reflectWith/393546753 var755!1 (cast-from-var3580-to-var2446 var3433!1))) ; Statement: virtualinvoke r1.<org.apache.lucene.util.AttributeSource: void reflectWith(org.apache.lucene.util.AttributeReflector)>($r2) 

(declare-const var755!2 var150)
(declare-const var3433!2 var3580)
(assert true)
(define-const var2217 String (toString/-2075883882 var3728!2)) ; Statement: $r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r3 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), var3580-init=([], org.apache.lucene.util.AttributeSource$3), <init>/806681432=([org.apache.lucene.util.AttributeSource$3, org.apache.lucene.util.AttributeSource, java.lang.StringBuilder, boolean], void), reflectWith/393546753=([org.apache.lucene.util.AttributeSource, org.apache.lucene.util.AttributeReflector], void), cast-from-var3580-to-var2446=([org.apache.lucene.util.AttributeSource$3], org.apache.lucene.util.AttributeReflector), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var150=org.apache.lucene.util.AttributeSource, var755=r1, var131=z0, var3728=$r0, var3580=org.apache.lucene.util.AttributeSource$3, var3433=$r2, var2446=org.apache.lucene.util.AttributeReflector, var2217=$r3}
; {org.apache.lucene.util.AttributeSource=var150, r1=var755, z0=var131, $r0=var3728, org.apache.lucene.util.AttributeSource$3=var3580, $r2=var3433, org.apache.lucene.util.AttributeReflector=var2446, $r3=var2217}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: org.apache.lucene.util.AttributeSource;	z0 := @parameter0: boolean;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r2 = new org.apache.lucene.util.AttributeSource$3;	specialinvoke $r2.<org.apache.lucene.util.AttributeSource$3: void <init>(org.apache.lucene.util.AttributeSource,java.lang.StringBuilder,boolean)>(r1, $r0, z0);	virtualinvoke r1.<org.apache.lucene.util.AttributeSource: void reflectWith(org.apache.lucene.util.AttributeReflector)>($r2);	$r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>();	return $r3
;block_num 1