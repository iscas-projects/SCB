(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var289 0)
(declare-sort var3904 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun name/-286867520 (var289) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun superClass/-286867520 (var289) var3904)
(declare-fun superInterfaces/-286867520 (var289) (Array Int var3904))
(declare-fun getLength-Arr-var3904-1 ((Array Int var3904)) Int)
(declare-const null-var289 var289)
(declare-const null-String String)
(declare-const null-var3904 var3904)
(declare-const var2968 var289) ; Statement: r1 := @this: org.apache.ibatis.javassist.bytecode.SignatureAttribute$TypeParameter 
(assert (not (= var2968 null-var289)))
(declare-const var3954 String) ; Statement: r0 := @parameter0: java.lang.StringBuilder 
(assert (not (= var3954 null-String)))
(define-const var2312 String (name/-286867520 var2968)) ; Statement: $r2 = r1.<org.apache.ibatis.javassist.bytecode.SignatureAttribute$TypeParameter: java.lang.String name> 
(assert true)
;(assert (append/672562846 var3954 var2312)) ; Statement: virtualinvoke r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2) 
(declare-const var3954!1 String)
(assert (= var3954!1 (str.++ var3954 var2312)))
(define-const var3285 var3904 (superClass/-286867520 var2968)) ; Statement: $r3 = r1.<org.apache.ibatis.javassist.bytecode.SignatureAttribute$TypeParameter: org.apache.ibatis.javassist.bytecode.SignatureAttribute$ObjectType superClass> 
 ; Statement: if $r3 != null goto virtualinvoke r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(58) 
(assert (not (not (= var3285 null-var3904)))) ; Negate: Cond: $r3 != null  
(assert true)
;(assert (append/672562846 var3954!1 ":Ljava/lang/Object;")) ; Statement: virtualinvoke r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(":Ljava/lang/Object;") 
(declare-const var3954!2 String)
(assert (= var3954!2 (str.++ var3954!1 ":Ljava/lang/Object;")))
 ; Statement: goto [?= i0 = 0] 
(assert true) ; Non Conditional
(define-const var2708 Int 0) ; Statement: i0 = 0 
(assert true) ; Non Conditional
(define-const var1185 (Array Int var3904) (superInterfaces/-286867520 var2968)) ; Statement: $r7 = r1.<org.apache.ibatis.javassist.bytecode.SignatureAttribute$TypeParameter: org.apache.ibatis.javassist.bytecode.SignatureAttribute$ObjectType[] superInterfaces> 
(define-const var3622 Int (getLength-Arr-var3904-1 var1185)) ; Statement: $i1 = lengthof $r7 
 ; Statement: if i0 >= $i1 goto return 
(assert (>= var2708 var3622)) ; Cond: i0 >= $i1 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {name/-286867520=([org.apache.ibatis.javassist.bytecode.SignatureAttribute$TypeParameter], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), superClass/-286867520=([org.apache.ibatis.javassist.bytecode.SignatureAttribute$TypeParameter], org.apache.ibatis.javassist.bytecode.SignatureAttribute$ObjectType), superInterfaces/-286867520=([org.apache.ibatis.javassist.bytecode.SignatureAttribute$TypeParameter], org.apache.ibatis.javassist.bytecode.SignatureAttribute$ObjectType[]), getLength-Arr-var3904-1=([org.apache.ibatis.javassist.bytecode.SignatureAttribute$ObjectType[]], int)}
; {var289=org.apache.ibatis.javassist.bytecode.SignatureAttribute$TypeParameter, var2968=r1, var3954=r0, var2312=$r2, var3904=org.apache.ibatis.javassist.bytecode.SignatureAttribute$ObjectType, var3285=$r3, var2708=i0, var1185=$r7, var3622=$i1}
; {org.apache.ibatis.javassist.bytecode.SignatureAttribute$TypeParameter=var289, r1=var2968, r0=var3954, $r2=var2312, org.apache.ibatis.javassist.bytecode.SignatureAttribute$ObjectType=var3904, $r3=var3285, i0=var2708, $r7=var1185, $i1=var3622}
;seq <java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>
;cnt {"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2}
;stmts r1 := @this: org.apache.ibatis.javassist.bytecode.SignatureAttribute$TypeParameter;	r0 := @parameter0: java.lang.StringBuilder;	$r2 = r1.<org.apache.ibatis.javassist.bytecode.SignatureAttribute$TypeParameter: java.lang.String name>;	virtualinvoke r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2);	$r3 = r1.<org.apache.ibatis.javassist.bytecode.SignatureAttribute$TypeParameter: org.apache.ibatis.javassist.bytecode.SignatureAttribute$ObjectType superClass>;	if $r3 != null goto virtualinvoke r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(58);	virtualinvoke r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(":Ljava/lang/Object;");	goto [?= i0 = 0];	i0 = 0;	$r7 = r1.<org.apache.ibatis.javassist.bytecode.SignatureAttribute$TypeParameter: org.apache.ibatis.javassist.bytecode.SignatureAttribute$ObjectType[] superInterfaces>;	$i1 = lengthof $r7;	if i0 >= $i1 goto return;	return
;block_num 5