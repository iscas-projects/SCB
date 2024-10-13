(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2943 0)
(declare-sort var314 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun encode/1388987002 (var314 String) void)
(declare-fun cast-from-var2943-to-var314 (var2943) var314)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var2943 var2943)
(declare-const var2371 var2943) ; Statement: r1 := @this: org.apache.ibatis.javassist.bytecode.SignatureAttribute$ObjectType 
(assert (not (= var2371 null-var2943)))
(define-const var1130 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1130)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1130!1 String)
(assert (= var1130!1 ""))
(assert true)
;(assert (encode/1388987002 (cast-from-var2943-to-var314 var2371) var1130!1)) ; Statement: virtualinvoke r1.<org.apache.ibatis.javassist.bytecode.SignatureAttribute$ObjectType: void encode(java.lang.StringBuilder)>($r0) 

(declare-const var2371!1 var2943)
(declare-const var1130!2 String)
(assert true)
(define-const var36 String (toString/-2075883882 var1130!2)) ; Statement: $r2 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r2 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), encode/1388987002=([org.apache.ibatis.javassist.bytecode.SignatureAttribute$Type, java.lang.StringBuilder], void), cast-from-var2943-to-var314=([org.apache.ibatis.javassist.bytecode.SignatureAttribute$ObjectType], org.apache.ibatis.javassist.bytecode.SignatureAttribute$Type), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var2943=org.apache.ibatis.javassist.bytecode.SignatureAttribute$ObjectType, var2371=r1, var1130=$r0, var314=org.apache.ibatis.javassist.bytecode.SignatureAttribute$Type, var36=$r2}
; {org.apache.ibatis.javassist.bytecode.SignatureAttribute$ObjectType=var2943, r1=var2371, $r0=var1130, org.apache.ibatis.javassist.bytecode.SignatureAttribute$Type=var314, $r2=var36}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: org.apache.ibatis.javassist.bytecode.SignatureAttribute$ObjectType;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	virtualinvoke r1.<org.apache.ibatis.javassist.bytecode.SignatureAttribute$ObjectType: void encode(java.lang.StringBuilder)>($r0);	$r2 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>();	return $r2
;block_num 1