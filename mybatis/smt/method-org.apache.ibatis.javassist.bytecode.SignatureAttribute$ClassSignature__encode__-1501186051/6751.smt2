(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3884 0)
(declare-sort var1014 0)
(declare-sort var2840 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun params/1693221391 (var3884) (Array Int var1014))
(declare-fun getLength-Arr-var1014-1 ((Array Int var1014)) Int)
(declare-fun superClass/1693221391 (var3884) var2840)
(declare-fun encode/-1883216488 (var2840 String) void)
(declare-fun interfaces/1693221391 (var3884) (Array Int var2840))
(declare-fun getLength-Arr-var2840-1 ((Array Int var2840)) Int)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var3884 var3884)
(declare-const var2490 var3884) ; Statement: r1 := @this: org.apache.ibatis.javassist.bytecode.SignatureAttribute$ClassSignature 
(assert (not (= var2490 null-var3884)))
(define-const var2538 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2538)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2538!1 String)
(assert (= var2538!1 ""))
(define-const var1724 (Array Int var1014) (params/1693221391 var2490)) ; Statement: $r2 = r1.<org.apache.ibatis.javassist.bytecode.SignatureAttribute$ClassSignature: org.apache.ibatis.javassist.bytecode.SignatureAttribute$TypeParameter[] params> 
(define-const var3654 Int (getLength-Arr-var1014-1 var1724)) ; Statement: $i0 = lengthof $r2 
 ; Statement: if $i0 <= 0 goto $r3 = r1.<org.apache.ibatis.javassist.bytecode.SignatureAttribute$ClassSignature: org.apache.ibatis.javassist.bytecode.SignatureAttribute$ClassType superClass> 
(assert (<= var3654 0)) ; Cond: $i0 <= 0 
(define-const var3712 var2840 (superClass/1693221391 var2490)) ; Statement: $r3 = r1.<org.apache.ibatis.javassist.bytecode.SignatureAttribute$ClassSignature: org.apache.ibatis.javassist.bytecode.SignatureAttribute$ClassType superClass> 
(assert true)
;(assert (encode/-1883216488 var3712 var2538!1)) ; Statement: virtualinvoke $r3.<org.apache.ibatis.javassist.bytecode.SignatureAttribute$ClassType: void encode(java.lang.StringBuilder)>($r0) 

(declare-const var3712!1 var2840)
(declare-const var2538!2 String)
(define-const var3358 Int 0) ; Statement: i3 = 0 
(assert true) ; Non Conditional
(define-const var1917 (Array Int var2840) (interfaces/1693221391 var2490)) ; Statement: $r10 = r1.<org.apache.ibatis.javassist.bytecode.SignatureAttribute$ClassSignature: org.apache.ibatis.javassist.bytecode.SignatureAttribute$ClassType[] interfaces> 
(define-const var2665 Int (getLength-Arr-var2840-1 var1917)) ; Statement: $i4 = lengthof $r10 
 ; Statement: if i3 >= $i4 goto $r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert (>= var3358 var2665)) ; Cond: i3 >= $i4 
(assert true)
(define-const var2272 String (toString/-2075883882 var2538!2)) ; Statement: $r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r4 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), params/1693221391=([org.apache.ibatis.javassist.bytecode.SignatureAttribute$ClassSignature], org.apache.ibatis.javassist.bytecode.SignatureAttribute$TypeParameter[]), getLength-Arr-var1014-1=([org.apache.ibatis.javassist.bytecode.SignatureAttribute$TypeParameter[]], int), superClass/1693221391=([org.apache.ibatis.javassist.bytecode.SignatureAttribute$ClassSignature], org.apache.ibatis.javassist.bytecode.SignatureAttribute$ClassType), encode/-1883216488=([org.apache.ibatis.javassist.bytecode.SignatureAttribute$ClassType, java.lang.StringBuilder], void), interfaces/1693221391=([org.apache.ibatis.javassist.bytecode.SignatureAttribute$ClassSignature], org.apache.ibatis.javassist.bytecode.SignatureAttribute$ClassType[]), getLength-Arr-var2840-1=([org.apache.ibatis.javassist.bytecode.SignatureAttribute$ClassType[]], int), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var3884=org.apache.ibatis.javassist.bytecode.SignatureAttribute$ClassSignature, var2490=r1, var2538=$r0, var1014=org.apache.ibatis.javassist.bytecode.SignatureAttribute$TypeParameter, var1724=$r2, var3654=$i0, var2840=org.apache.ibatis.javassist.bytecode.SignatureAttribute$ClassType, var3712=$r3, var3358=i3, var1917=$r10, var2665=$i4, var2272=$r4}
; {org.apache.ibatis.javassist.bytecode.SignatureAttribute$ClassSignature=var3884, r1=var2490, $r0=var2538, org.apache.ibatis.javassist.bytecode.SignatureAttribute$TypeParameter=var1014, $r2=var1724, $i0=var3654, org.apache.ibatis.javassist.bytecode.SignatureAttribute$ClassType=var2840, $r3=var3712, i3=var3358, $r10=var1917, $i4=var2665, $r4=var2272}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: org.apache.ibatis.javassist.bytecode.SignatureAttribute$ClassSignature;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r2 = r1.<org.apache.ibatis.javassist.bytecode.SignatureAttribute$ClassSignature: org.apache.ibatis.javassist.bytecode.SignatureAttribute$TypeParameter[] params>;	$i0 = lengthof $r2;	if $i0 <= 0 goto $r3 = r1.<org.apache.ibatis.javassist.bytecode.SignatureAttribute$ClassSignature: org.apache.ibatis.javassist.bytecode.SignatureAttribute$ClassType superClass>;	$r3 = r1.<org.apache.ibatis.javassist.bytecode.SignatureAttribute$ClassSignature: org.apache.ibatis.javassist.bytecode.SignatureAttribute$ClassType superClass>;	virtualinvoke $r3.<org.apache.ibatis.javassist.bytecode.SignatureAttribute$ClassType: void encode(java.lang.StringBuilder)>($r0);	i3 = 0;	$r10 = r1.<org.apache.ibatis.javassist.bytecode.SignatureAttribute$ClassSignature: org.apache.ibatis.javassist.bytecode.SignatureAttribute$ClassType[] interfaces>;	$i4 = lengthof $r10;	if i3 >= $i4 goto $r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>();	$r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>();	return $r4
;block_num 4