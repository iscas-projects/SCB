(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1678 0)
(declare-sort var1874 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(declare-fun getName/726009837 (var1678) String)
(define-fun <init>/-1061048412 ((s String)) String s)
(declare-fun superClass/-286867520 (var1678) var1874)
(declare-fun superInterfaces/-286867520 (var1678) (Array Int var1874))
(declare-fun getLength-Arr-var1874-1 ((Array Int var1874)) Int)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var1678 var1678)
(declare-const null-var1874 var1874)
(declare-const var2338 var1678) ; Statement: r1 := @this: org.apache.ibatis.javassist.bytecode.SignatureAttribute$TypeParameter 
(assert (not (= var2338 null-var1678)))
(define-const var2075 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
(define-const var1256 String (getName/726009837 var2338)) ; Statement: $r2 = virtualinvoke r1.<org.apache.ibatis.javassist.bytecode.SignatureAttribute$TypeParameter: java.lang.String getName()>() 
(assert true)
;(assert (<init>/-1061048412 var2075 var1256)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>(java.lang.String)>($r2) 
(declare-const var2075!1 String)
(assert (= var2075!1 var1256))
(define-const var777 var1874 (superClass/-286867520 var2338)) ; Statement: $r3 = r1.<org.apache.ibatis.javassist.bytecode.SignatureAttribute$TypeParameter: org.apache.ibatis.javassist.bytecode.SignatureAttribute$ObjectType superClass> 
 ; Statement: if $r3 == null goto $r4 = r1.<org.apache.ibatis.javassist.bytecode.SignatureAttribute$TypeParameter: org.apache.ibatis.javassist.bytecode.SignatureAttribute$ObjectType[] superInterfaces> 
(assert (= var777 null-var1874)) ; Cond: $r3 == null 
(define-const var3503 (Array Int var1874) (superInterfaces/-286867520 var2338)) ; Statement: $r4 = r1.<org.apache.ibatis.javassist.bytecode.SignatureAttribute$TypeParameter: org.apache.ibatis.javassist.bytecode.SignatureAttribute$ObjectType[] superInterfaces> 
(define-const var265 Int (getLength-Arr-var1874-1 var3503)) ; Statement: $i0 = lengthof $r4 
 ; Statement: if $i0 <= 0 goto $r5 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert (<= var265 0)) ; Cond: $i0 <= 0 
(assert true)
(define-const var870 String (toString/-2075883882 var2075!1)) ; Statement: $r5 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r5 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), getName/726009837=([org.apache.ibatis.javassist.bytecode.SignatureAttribute$TypeParameter], java.lang.String), <init>/-1061048412=([java.lang.StringBuilder, java.lang.String], void), superClass/-286867520=([org.apache.ibatis.javassist.bytecode.SignatureAttribute$TypeParameter], org.apache.ibatis.javassist.bytecode.SignatureAttribute$ObjectType), superInterfaces/-286867520=([org.apache.ibatis.javassist.bytecode.SignatureAttribute$TypeParameter], org.apache.ibatis.javassist.bytecode.SignatureAttribute$ObjectType[]), getLength-Arr-var1874-1=([org.apache.ibatis.javassist.bytecode.SignatureAttribute$ObjectType[]], int), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var1678=org.apache.ibatis.javassist.bytecode.SignatureAttribute$TypeParameter, var2338=r1, var2075=$r0, var1256=$r2, var1874=org.apache.ibatis.javassist.bytecode.SignatureAttribute$ObjectType, var777=$r3, var3503=$r4, var265=$i0, var870=$r5}
; {org.apache.ibatis.javassist.bytecode.SignatureAttribute$TypeParameter=var1678, r1=var2338, $r0=var2075, $r2=var1256, org.apache.ibatis.javassist.bytecode.SignatureAttribute$ObjectType=var1874, $r3=var777, $r4=var3503, $i0=var265, $r5=var870}
;seq <java.lang.StringBuilder: void <init>(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: org.apache.ibatis.javassist.bytecode.SignatureAttribute$TypeParameter;	$r0 = new java.lang.StringBuilder;	$r2 = virtualinvoke r1.<org.apache.ibatis.javassist.bytecode.SignatureAttribute$TypeParameter: java.lang.String getName()>();	specialinvoke $r0.<java.lang.StringBuilder: void <init>(java.lang.String)>($r2);	$r3 = r1.<org.apache.ibatis.javassist.bytecode.SignatureAttribute$TypeParameter: org.apache.ibatis.javassist.bytecode.SignatureAttribute$ObjectType superClass>;	if $r3 == null goto $r4 = r1.<org.apache.ibatis.javassist.bytecode.SignatureAttribute$TypeParameter: org.apache.ibatis.javassist.bytecode.SignatureAttribute$ObjectType[] superInterfaces>;	$r4 = r1.<org.apache.ibatis.javassist.bytecode.SignatureAttribute$TypeParameter: org.apache.ibatis.javassist.bytecode.SignatureAttribute$ObjectType[] superInterfaces>;	$i0 = lengthof $r4;	if $i0 <= 0 goto $r5 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>();	$r5 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>();	return $r5
;block_num 3