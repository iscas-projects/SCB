(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3110 0)
(declare-sort var2010 0)
(declare-sort var2980 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun name/-286867520 (var3110) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun superClass/-286867520 (var3110) var2010)
(declare-fun append/-1166366385 (String Int) String)
(declare-fun encode/1388987002 (var2980 String) void)
(declare-fun cast-from-var2010-to-var2980 (var2010) var2980)
(declare-fun superInterfaces/-286867520 (var3110) (Array Int var2010))
(declare-fun getLength-Arr-var2010-1 ((Array Int var2010)) Int)
(declare-const null-var3110 var3110)
(declare-const null-String String)
(declare-const null-var2010 var2010)
(declare-const var1568 var3110) ; Statement: r1 := @this: org.apache.ibatis.javassist.bytecode.SignatureAttribute$TypeParameter 
(assert (not (= var1568 null-var3110)))
(declare-const var737 String) ; Statement: r0 := @parameter0: java.lang.StringBuilder 
(assert (not (= var737 null-String)))
(define-const var2905 String (name/-286867520 var1568)) ; Statement: $r2 = r1.<org.apache.ibatis.javassist.bytecode.SignatureAttribute$TypeParameter: java.lang.String name> 
(assert true)
;(assert (append/672562846 var737 var2905)) ; Statement: virtualinvoke r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2) 
(declare-const var737!1 String)
(assert (= var737!1 (str.++ var737 var2905)))
(define-const var2296 var2010 (superClass/-286867520 var1568)) ; Statement: $r3 = r1.<org.apache.ibatis.javassist.bytecode.SignatureAttribute$TypeParameter: org.apache.ibatis.javassist.bytecode.SignatureAttribute$ObjectType superClass> 
 ; Statement: if $r3 != null goto virtualinvoke r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(58) 
(assert (not (= var2296 null-var2010))) ; Cond: $r3 != null 
(assert true)
;(assert (append/-1166366385 var737!1 58)) ; Statement: virtualinvoke r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(58) 
(declare-const var737!2 String)
(assert (str.prefixof var737!1 var737!2))
(define-const var1823 var2010 (superClass/-286867520 var1568)) ; Statement: $r4 = r1.<org.apache.ibatis.javassist.bytecode.SignatureAttribute$TypeParameter: org.apache.ibatis.javassist.bytecode.SignatureAttribute$ObjectType superClass> 
(assert true)
;(assert (encode/1388987002 (cast-from-var2010-to-var2980 var1823) var737!2)) ; Statement: virtualinvoke $r4.<org.apache.ibatis.javassist.bytecode.SignatureAttribute$ObjectType: void encode(java.lang.StringBuilder)>(r0) 

(declare-const var1823!1 var2010)
(declare-const var737!3 String)
(assert true) ; Non Conditional
(define-const var2692 Int 0) ; Statement: i0 = 0 
(assert true) ; Non Conditional
(define-const var2464 (Array Int var2010) (superInterfaces/-286867520 var1568)) ; Statement: $r7 = r1.<org.apache.ibatis.javassist.bytecode.SignatureAttribute$TypeParameter: org.apache.ibatis.javassist.bytecode.SignatureAttribute$ObjectType[] superInterfaces> 
(define-const var363 Int (getLength-Arr-var2010-1 var2464)) ; Statement: $i1 = lengthof $r7 
 ; Statement: if i0 >= $i1 goto return 
(assert (>= var2692 var363)) ; Cond: i0 >= $i1 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {name/-286867520=([org.apache.ibatis.javassist.bytecode.SignatureAttribute$TypeParameter], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), superClass/-286867520=([org.apache.ibatis.javassist.bytecode.SignatureAttribute$TypeParameter], org.apache.ibatis.javassist.bytecode.SignatureAttribute$ObjectType), append/-1166366385=([java.lang.StringBuilder, char], java.lang.StringBuilder), encode/1388987002=([org.apache.ibatis.javassist.bytecode.SignatureAttribute$Type, java.lang.StringBuilder], void), cast-from-var2010-to-var2980=([org.apache.ibatis.javassist.bytecode.SignatureAttribute$ObjectType], org.apache.ibatis.javassist.bytecode.SignatureAttribute$Type), superInterfaces/-286867520=([org.apache.ibatis.javassist.bytecode.SignatureAttribute$TypeParameter], org.apache.ibatis.javassist.bytecode.SignatureAttribute$ObjectType[]), getLength-Arr-var2010-1=([org.apache.ibatis.javassist.bytecode.SignatureAttribute$ObjectType[]], int)}
; {var3110=org.apache.ibatis.javassist.bytecode.SignatureAttribute$TypeParameter, var1568=r1, var737=r0, var2905=$r2, var2010=org.apache.ibatis.javassist.bytecode.SignatureAttribute$ObjectType, var2296=$r3, var1823=$r4, var2980=org.apache.ibatis.javassist.bytecode.SignatureAttribute$Type, var2692=i0, var2464=$r7, var363=$i1}
; {org.apache.ibatis.javassist.bytecode.SignatureAttribute$TypeParameter=var3110, r1=var1568, r0=var737, $r2=var2905, org.apache.ibatis.javassist.bytecode.SignatureAttribute$ObjectType=var2010, $r3=var2296, $r4=var1823, org.apache.ibatis.javassist.bytecode.SignatureAttribute$Type=var2980, i0=var2692, $r7=var2464, $i1=var363}
;seq <java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>
;cnt {"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(char)>": 1}
;stmts r1 := @this: org.apache.ibatis.javassist.bytecode.SignatureAttribute$TypeParameter;	r0 := @parameter0: java.lang.StringBuilder;	$r2 = r1.<org.apache.ibatis.javassist.bytecode.SignatureAttribute$TypeParameter: java.lang.String name>;	virtualinvoke r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2);	$r3 = r1.<org.apache.ibatis.javassist.bytecode.SignatureAttribute$TypeParameter: org.apache.ibatis.javassist.bytecode.SignatureAttribute$ObjectType superClass>;	if $r3 != null goto virtualinvoke r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(58);	virtualinvoke r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(58);	$r4 = r1.<org.apache.ibatis.javassist.bytecode.SignatureAttribute$TypeParameter: org.apache.ibatis.javassist.bytecode.SignatureAttribute$ObjectType superClass>;	virtualinvoke $r4.<org.apache.ibatis.javassist.bytecode.SignatureAttribute$ObjectType: void encode(java.lang.StringBuilder)>(r0);	i0 = 0;	$r7 = r1.<org.apache.ibatis.javassist.bytecode.SignatureAttribute$TypeParameter: org.apache.ibatis.javassist.bytecode.SignatureAttribute$ObjectType[] superInterfaces>;	$i1 = lengthof $r7;	if i0 >= $i1 goto return;	return
;block_num 5