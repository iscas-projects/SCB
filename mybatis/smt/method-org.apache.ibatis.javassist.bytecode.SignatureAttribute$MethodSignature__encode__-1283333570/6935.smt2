(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3767 0)
(declare-sort var1986 0)
(declare-sort var3485 0)
(declare-sort var1800 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun typeParams/-2025683256 (var3767) (Array Int var1986))
(declare-fun getLength-Arr-var1986-1 ((Array Int var1986)) Int)
(declare-fun append/-1166366385 (String Int) String)
(declare-fun params/-2025683256 (var3767) (Array Int var3485))
(declare-fun getLength-Arr-var3485-1 ((Array Int var3485)) Int)
(declare-fun retType/-2025683256 (var3767) var3485)
(declare-fun encode/1388987002 (var3485 String) void)
(declare-fun exceptions/-2025683256 (var3767) (Array Int var1800))
(declare-fun getLength-Arr-var1800-1 ((Array Int var1800)) Int)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var3767 var3767)
(declare-const var2382 var3767) ; Statement: r1 := @this: org.apache.ibatis.javassist.bytecode.SignatureAttribute$MethodSignature 
(assert (not (= var2382 null-var3767)))
(define-const var580 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var580)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var580!1 String)
(assert (= var580!1 ""))
(define-const var1915 (Array Int var1986) (typeParams/-2025683256 var2382)) ; Statement: $r2 = r1.<org.apache.ibatis.javassist.bytecode.SignatureAttribute$MethodSignature: org.apache.ibatis.javassist.bytecode.SignatureAttribute$TypeParameter[] typeParams> 
(define-const var1231 Int (getLength-Arr-var1986-1 var1915)) ; Statement: $i0 = lengthof $r2 
 ; Statement: if $i0 <= 0 goto virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(40) 
(assert (<= var1231 0)) ; Cond: $i0 <= 0 
(assert true)
;(assert (append/-1166366385 var580!1 40)) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(40) 
(declare-const var580!2 String)
(assert (str.prefixof var580!1 var580!2))
(define-const var2809 Int 0) ; Statement: i5 = 0 
(assert true) ; Non Conditional
(define-const var3807 (Array Int var3485) (params/-2025683256 var2382)) ; Statement: $r14 = r1.<org.apache.ibatis.javassist.bytecode.SignatureAttribute$MethodSignature: org.apache.ibatis.javassist.bytecode.SignatureAttribute$Type[] params> 
(define-const var1450 Int (getLength-Arr-var3485-1 var3807)) ; Statement: $i6 = lengthof $r14 
 ; Statement: if i5 >= $i6 goto virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(41) 
(assert (>= var2809 var1450)) ; Cond: i5 >= $i6 
(assert true)
;(assert (append/-1166366385 var580!2 41)) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(41) 
(declare-const var580!3 String)
(assert (str.prefixof var580!2 var580!3))
(define-const var99 var3485 (retType/-2025683256 var2382)) ; Statement: $r3 = r1.<org.apache.ibatis.javassist.bytecode.SignatureAttribute$MethodSignature: org.apache.ibatis.javassist.bytecode.SignatureAttribute$Type retType> 
(assert true)
;(assert (encode/1388987002 var99 var580!3)) ; Statement: virtualinvoke $r3.<org.apache.ibatis.javassist.bytecode.SignatureAttribute$Type: void encode(java.lang.StringBuilder)>($r0) 

(declare-const var99!1 var3485)
(declare-const var580!4 String)
(define-const var2894 (Array Int var1800) (exceptions/-2025683256 var2382)) ; Statement: $r4 = r1.<org.apache.ibatis.javassist.bytecode.SignatureAttribute$MethodSignature: org.apache.ibatis.javassist.bytecode.SignatureAttribute$ObjectType[] exceptions> 
(define-const var955 Int (getLength-Arr-var1800-1 var2894)) ; Statement: $i1 = lengthof $r4 
 ; Statement: if $i1 <= 0 goto $r5 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert (<= var955 0)) ; Cond: $i1 <= 0 
(assert true)
(define-const var603 String (toString/-2075883882 var580!4)) ; Statement: $r5 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r5 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), typeParams/-2025683256=([org.apache.ibatis.javassist.bytecode.SignatureAttribute$MethodSignature], org.apache.ibatis.javassist.bytecode.SignatureAttribute$TypeParameter[]), getLength-Arr-var1986-1=([org.apache.ibatis.javassist.bytecode.SignatureAttribute$TypeParameter[]], int), append/-1166366385=([java.lang.StringBuilder, char], java.lang.StringBuilder), params/-2025683256=([org.apache.ibatis.javassist.bytecode.SignatureAttribute$MethodSignature], org.apache.ibatis.javassist.bytecode.SignatureAttribute$Type[]), getLength-Arr-var3485-1=([org.apache.ibatis.javassist.bytecode.SignatureAttribute$Type[]], int), retType/-2025683256=([org.apache.ibatis.javassist.bytecode.SignatureAttribute$MethodSignature], org.apache.ibatis.javassist.bytecode.SignatureAttribute$Type), encode/1388987002=([org.apache.ibatis.javassist.bytecode.SignatureAttribute$Type, java.lang.StringBuilder], void), exceptions/-2025683256=([org.apache.ibatis.javassist.bytecode.SignatureAttribute$MethodSignature], org.apache.ibatis.javassist.bytecode.SignatureAttribute$ObjectType[]), getLength-Arr-var1800-1=([org.apache.ibatis.javassist.bytecode.SignatureAttribute$ObjectType[]], int), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var3767=org.apache.ibatis.javassist.bytecode.SignatureAttribute$MethodSignature, var2382=r1, var580=$r0, var1986=org.apache.ibatis.javassist.bytecode.SignatureAttribute$TypeParameter, var1915=$r2, var1231=$i0, var2809=i5, var3485=org.apache.ibatis.javassist.bytecode.SignatureAttribute$Type, var3807=$r14, var1450=$i6, var99=$r3, var1800=org.apache.ibatis.javassist.bytecode.SignatureAttribute$ObjectType, var2894=$r4, var955=$i1, var603=$r5}
; {org.apache.ibatis.javassist.bytecode.SignatureAttribute$MethodSignature=var3767, r1=var2382, $r0=var580, org.apache.ibatis.javassist.bytecode.SignatureAttribute$TypeParameter=var1986, $r2=var1915, $i0=var1231, i5=var2809, org.apache.ibatis.javassist.bytecode.SignatureAttribute$Type=var3485, $r14=var3807, $i6=var1450, $r3=var99, org.apache.ibatis.javassist.bytecode.SignatureAttribute$ObjectType=var1800, $r4=var2894, $i1=var955, $r5=var603}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(char)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: org.apache.ibatis.javassist.bytecode.SignatureAttribute$MethodSignature;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r2 = r1.<org.apache.ibatis.javassist.bytecode.SignatureAttribute$MethodSignature: org.apache.ibatis.javassist.bytecode.SignatureAttribute$TypeParameter[] typeParams>;	$i0 = lengthof $r2;	if $i0 <= 0 goto virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(40);	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(40);	i5 = 0;	$r14 = r1.<org.apache.ibatis.javassist.bytecode.SignatureAttribute$MethodSignature: org.apache.ibatis.javassist.bytecode.SignatureAttribute$Type[] params>;	$i6 = lengthof $r14;	if i5 >= $i6 goto virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(41);	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(41);	$r3 = r1.<org.apache.ibatis.javassist.bytecode.SignatureAttribute$MethodSignature: org.apache.ibatis.javassist.bytecode.SignatureAttribute$Type retType>;	virtualinvoke $r3.<org.apache.ibatis.javassist.bytecode.SignatureAttribute$Type: void encode(java.lang.StringBuilder)>($r0);	$r4 = r1.<org.apache.ibatis.javassist.bytecode.SignatureAttribute$MethodSignature: org.apache.ibatis.javassist.bytecode.SignatureAttribute$ObjectType[] exceptions>;	$i1 = lengthof $r4;	if $i1 <= 0 goto $r5 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>();	$r5 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>();	return $r5
;block_num 5