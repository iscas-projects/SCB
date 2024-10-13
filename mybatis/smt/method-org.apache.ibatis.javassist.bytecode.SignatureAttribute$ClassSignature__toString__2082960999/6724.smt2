(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2839 0)
(declare-sort var238 0)
(declare-sort var409 0)
(declare-sort var1500 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun params/1693221391 (var2839) (Array Int var238))
(declare-fun var238_toString/-2079908601 (String (Array Int var238)) void)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun superClass/1693221391 (var2839) var409)
(declare-fun append/-1031950772 (String var1500) String)
(declare-fun cast-from-var409-to-var1500 (var409) var1500)
(declare-fun interfaces/1693221391 (var2839) (Array Int var409))
(declare-fun getLength-Arr-var409-1 ((Array Int var409)) Int)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var2839 var2839)
(declare-const var1991 var2839) ; Statement: r1 := @this: org.apache.ibatis.javassist.bytecode.SignatureAttribute$ClassSignature 
(assert (not (= var1991 null-var2839)))
(define-const var2765 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2765)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2765!1 String)
(assert (= var2765!1 ""))
(define-const var2440 (Array Int var238) (params/1693221391 var1991)) ; Statement: $r2 = r1.<org.apache.ibatis.javassist.bytecode.SignatureAttribute$ClassSignature: org.apache.ibatis.javassist.bytecode.SignatureAttribute$TypeParameter[] params> 
;(assert (var238_toString/-2079908601 var2765!1 var2440)) ; Statement: staticinvoke <org.apache.ibatis.javassist.bytecode.SignatureAttribute$TypeParameter: void toString(java.lang.StringBuilder,org.apache.ibatis.javassist.bytecode.SignatureAttribute$TypeParameter[])>($r0, $r2) 

(declare-const var2765!2 String)
(declare-const var2440!1 (Array Int var238))
(assert true)
(define-const var1058 String (append/672562846 var2765!2 " extends ")) ; Statement: $r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" extends ") 
(declare-const var2765!3 String)
(assert (= var2765!3 (str.++ var2765!2 " extends ")))
(define-const var1668 var409 (superClass/1693221391 var1991)) ; Statement: $r3 = r1.<org.apache.ibatis.javassist.bytecode.SignatureAttribute$ClassSignature: org.apache.ibatis.javassist.bytecode.SignatureAttribute$ClassType superClass> 
(assert true)
;(assert (append/-1031950772 var1058 (cast-from-var409-to-var1500 var1668))) ; Statement: virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r3) 
(declare-const var1058!1 String)
(assert (str.prefixof var1058 var1058!1))
(define-const var901 (Array Int var409) (interfaces/1693221391 var1991)) ; Statement: $r5 = r1.<org.apache.ibatis.javassist.bytecode.SignatureAttribute$ClassSignature: org.apache.ibatis.javassist.bytecode.SignatureAttribute$ClassType[] interfaces> 
(define-const var3206 Int (getLength-Arr-var409-1 var901)) ; Statement: $i0 = lengthof $r5 
 ; Statement: if $i0 <= 0 goto $r6 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert (<= var3206 0)) ; Cond: $i0 <= 0 
(assert true)
(define-const var1160 String (toString/-2075883882 var2765!3)) ; Statement: $r6 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r6 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), params/1693221391=([org.apache.ibatis.javassist.bytecode.SignatureAttribute$ClassSignature], org.apache.ibatis.javassist.bytecode.SignatureAttribute$TypeParameter[]), var238_toString/-2079908601=([java.lang.StringBuilder, org.apache.ibatis.javassist.bytecode.SignatureAttribute$TypeParameter[]], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), superClass/1693221391=([org.apache.ibatis.javassist.bytecode.SignatureAttribute$ClassSignature], org.apache.ibatis.javassist.bytecode.SignatureAttribute$ClassType), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-var409-to-var1500=([org.apache.ibatis.javassist.bytecode.SignatureAttribute$ClassType], java.lang.Object), interfaces/1693221391=([org.apache.ibatis.javassist.bytecode.SignatureAttribute$ClassSignature], org.apache.ibatis.javassist.bytecode.SignatureAttribute$ClassType[]), getLength-Arr-var409-1=([org.apache.ibatis.javassist.bytecode.SignatureAttribute$ClassType[]], int), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var2839=org.apache.ibatis.javassist.bytecode.SignatureAttribute$ClassSignature, var1991=r1, var2765=$r0, var238=org.apache.ibatis.javassist.bytecode.SignatureAttribute$TypeParameter, var2440=$r2, var1058=$r4, var409=org.apache.ibatis.javassist.bytecode.SignatureAttribute$ClassType, var1668=$r3, var1500=java.lang.Object, var901=$r5, var3206=$i0, var1160=$r6}
; {org.apache.ibatis.javassist.bytecode.SignatureAttribute$ClassSignature=var2839, r1=var1991, $r0=var2765, org.apache.ibatis.javassist.bytecode.SignatureAttribute$TypeParameter=var238, $r2=var2440, $r4=var1058, org.apache.ibatis.javassist.bytecode.SignatureAttribute$ClassType=var409, $r3=var1668, java.lang.Object=var1500, $r5=var901, $i0=var3206, $r6=var1160}
;seq <java.lang.StringBuilder: void <init>()>;	<org.apache.ibatis.javassist.bytecode.SignatureAttribute$TypeParameter: void toString(java.lang.StringBuilder,org.apache.ibatis.javassist.bytecode.SignatureAttribute$TypeParameter[])>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: org.apache.ibatis.javassist.bytecode.SignatureAttribute$ClassSignature;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r2 = r1.<org.apache.ibatis.javassist.bytecode.SignatureAttribute$ClassSignature: org.apache.ibatis.javassist.bytecode.SignatureAttribute$TypeParameter[] params>;	staticinvoke <org.apache.ibatis.javassist.bytecode.SignatureAttribute$TypeParameter: void toString(java.lang.StringBuilder,org.apache.ibatis.javassist.bytecode.SignatureAttribute$TypeParameter[])>($r0, $r2);	$r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" extends ");	$r3 = r1.<org.apache.ibatis.javassist.bytecode.SignatureAttribute$ClassSignature: org.apache.ibatis.javassist.bytecode.SignatureAttribute$ClassType superClass>;	virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r3);	$r5 = r1.<org.apache.ibatis.javassist.bytecode.SignatureAttribute$ClassSignature: org.apache.ibatis.javassist.bytecode.SignatureAttribute$ClassType[] interfaces>;	$i0 = lengthof $r5;	if $i0 <= 0 goto $r6 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>();	$r6 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>();	return $r6
;block_num 2