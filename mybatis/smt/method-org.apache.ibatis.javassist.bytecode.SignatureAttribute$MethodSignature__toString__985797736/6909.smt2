(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var666 0)
(declare-sort var205 0)
(declare-sort var1342 0)
(declare-sort var3505 0)
(declare-sort var1923 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun typeParams/-2025683256 (var666) (Array Int var205))
(declare-fun var205_toString/-2079908601 (String (Array Int var205)) void)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun params/-2025683256 (var666) (Array Int var1342))
(declare-fun var1342_toString/127213681 (String (Array Int var1342)) void)
(declare-fun retType/-2025683256 (var666) var1342)
(declare-fun append/-1031950772 (String var3505) String)
(declare-fun cast-from-var1342-to-var3505 (var1342) var3505)
(declare-fun exceptions/-2025683256 (var666) (Array Int var1923))
(declare-fun getLength-Arr-var1923-1 ((Array Int var1923)) Int)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var666 var666)
(declare-const var1411 var666) ; Statement: r1 := @this: org.apache.ibatis.javassist.bytecode.SignatureAttribute$MethodSignature 
(assert (not (= var1411 null-var666)))
(define-const var183 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var183)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var183!1 String)
(assert (= var183!1 ""))
(define-const var689 (Array Int var205) (typeParams/-2025683256 var1411)) ; Statement: $r2 = r1.<org.apache.ibatis.javassist.bytecode.SignatureAttribute$MethodSignature: org.apache.ibatis.javassist.bytecode.SignatureAttribute$TypeParameter[] typeParams> 
;(assert (var205_toString/-2079908601 var183!1 var689)) ; Statement: staticinvoke <org.apache.ibatis.javassist.bytecode.SignatureAttribute$TypeParameter: void toString(java.lang.StringBuilder,org.apache.ibatis.javassist.bytecode.SignatureAttribute$TypeParameter[])>($r0, $r2) 

(declare-const var183!2 String)
(declare-const var689!1 (Array Int var205))
(assert true)
;(assert (append/672562846 var183!2 " (")) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" (") 
(declare-const var183!3 String)
(assert (= var183!3 (str.++ var183!2 " (")))
(define-const var1766 (Array Int var1342) (params/-2025683256 var1411)) ; Statement: $r3 = r1.<org.apache.ibatis.javassist.bytecode.SignatureAttribute$MethodSignature: org.apache.ibatis.javassist.bytecode.SignatureAttribute$Type[] params> 
;(assert (var1342_toString/127213681 var183!3 var1766)) ; Statement: staticinvoke <org.apache.ibatis.javassist.bytecode.SignatureAttribute$Type: void toString(java.lang.StringBuilder,org.apache.ibatis.javassist.bytecode.SignatureAttribute$Type[])>($r0, $r3) 

(declare-const var183!4 String)
(declare-const var1766!1 (Array Int var1342))
(assert true)
;(assert (append/672562846 var183!4 ") ")) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(") ") 
(declare-const var183!5 String)
(assert (= var183!5 (str.++ var183!4 ") ")))
(define-const var1117 var1342 (retType/-2025683256 var1411)) ; Statement: $r4 = r1.<org.apache.ibatis.javassist.bytecode.SignatureAttribute$MethodSignature: org.apache.ibatis.javassist.bytecode.SignatureAttribute$Type retType> 
(assert true)
;(assert (append/-1031950772 var183!5 (cast-from-var1342-to-var3505 var1117))) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r4) 
(declare-const var183!6 String)
(assert (str.prefixof var183!5 var183!6))
(define-const var3415 (Array Int var1923) (exceptions/-2025683256 var1411)) ; Statement: $r5 = r1.<org.apache.ibatis.javassist.bytecode.SignatureAttribute$MethodSignature: org.apache.ibatis.javassist.bytecode.SignatureAttribute$ObjectType[] exceptions> 
(define-const var3986 Int (getLength-Arr-var1923-1 var3415)) ; Statement: $i0 = lengthof $r5 
 ; Statement: if $i0 <= 0 goto $r6 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert (<= var3986 0)) ; Cond: $i0 <= 0 
(assert true)
(define-const var1717 String (toString/-2075883882 var183!6)) ; Statement: $r6 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r6 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), typeParams/-2025683256=([org.apache.ibatis.javassist.bytecode.SignatureAttribute$MethodSignature], org.apache.ibatis.javassist.bytecode.SignatureAttribute$TypeParameter[]), var205_toString/-2079908601=([java.lang.StringBuilder, org.apache.ibatis.javassist.bytecode.SignatureAttribute$TypeParameter[]], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), params/-2025683256=([org.apache.ibatis.javassist.bytecode.SignatureAttribute$MethodSignature], org.apache.ibatis.javassist.bytecode.SignatureAttribute$Type[]), var1342_toString/127213681=([java.lang.StringBuilder, org.apache.ibatis.javassist.bytecode.SignatureAttribute$Type[]], void), retType/-2025683256=([org.apache.ibatis.javassist.bytecode.SignatureAttribute$MethodSignature], org.apache.ibatis.javassist.bytecode.SignatureAttribute$Type), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-var1342-to-var3505=([org.apache.ibatis.javassist.bytecode.SignatureAttribute$Type], java.lang.Object), exceptions/-2025683256=([org.apache.ibatis.javassist.bytecode.SignatureAttribute$MethodSignature], org.apache.ibatis.javassist.bytecode.SignatureAttribute$ObjectType[]), getLength-Arr-var1923-1=([org.apache.ibatis.javassist.bytecode.SignatureAttribute$ObjectType[]], int), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var666=org.apache.ibatis.javassist.bytecode.SignatureAttribute$MethodSignature, var1411=r1, var183=$r0, var205=org.apache.ibatis.javassist.bytecode.SignatureAttribute$TypeParameter, var689=$r2, var1342=org.apache.ibatis.javassist.bytecode.SignatureAttribute$Type, var1766=$r3, var1117=$r4, var3505=java.lang.Object, var1923=org.apache.ibatis.javassist.bytecode.SignatureAttribute$ObjectType, var3415=$r5, var3986=$i0, var1717=$r6}
; {org.apache.ibatis.javassist.bytecode.SignatureAttribute$MethodSignature=var666, r1=var1411, $r0=var183, org.apache.ibatis.javassist.bytecode.SignatureAttribute$TypeParameter=var205, $r2=var689, org.apache.ibatis.javassist.bytecode.SignatureAttribute$Type=var1342, $r3=var1766, $r4=var1117, java.lang.Object=var3505, org.apache.ibatis.javassist.bytecode.SignatureAttribute$ObjectType=var1923, $r5=var3415, $i0=var3986, $r6=var1717}
;seq <java.lang.StringBuilder: void <init>()>;	<org.apache.ibatis.javassist.bytecode.SignatureAttribute$TypeParameter: void toString(java.lang.StringBuilder,org.apache.ibatis.javassist.bytecode.SignatureAttribute$TypeParameter[])>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<org.apache.ibatis.javassist.bytecode.SignatureAttribute$Type: void toString(java.lang.StringBuilder,org.apache.ibatis.javassist.bytecode.SignatureAttribute$Type[])>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: org.apache.ibatis.javassist.bytecode.SignatureAttribute$MethodSignature;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r2 = r1.<org.apache.ibatis.javassist.bytecode.SignatureAttribute$MethodSignature: org.apache.ibatis.javassist.bytecode.SignatureAttribute$TypeParameter[] typeParams>;	staticinvoke <org.apache.ibatis.javassist.bytecode.SignatureAttribute$TypeParameter: void toString(java.lang.StringBuilder,org.apache.ibatis.javassist.bytecode.SignatureAttribute$TypeParameter[])>($r0, $r2);	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" (");	$r3 = r1.<org.apache.ibatis.javassist.bytecode.SignatureAttribute$MethodSignature: org.apache.ibatis.javassist.bytecode.SignatureAttribute$Type[] params>;	staticinvoke <org.apache.ibatis.javassist.bytecode.SignatureAttribute$Type: void toString(java.lang.StringBuilder,org.apache.ibatis.javassist.bytecode.SignatureAttribute$Type[])>($r0, $r3);	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(") ");	$r4 = r1.<org.apache.ibatis.javassist.bytecode.SignatureAttribute$MethodSignature: org.apache.ibatis.javassist.bytecode.SignatureAttribute$Type retType>;	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r4);	$r5 = r1.<org.apache.ibatis.javassist.bytecode.SignatureAttribute$MethodSignature: org.apache.ibatis.javassist.bytecode.SignatureAttribute$ObjectType[] exceptions>;	$i0 = lengthof $r5;	if $i0 <= 0 goto $r6 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>();	$r6 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>();	return $r6
;block_num 2