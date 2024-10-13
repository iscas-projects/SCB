(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var607 0)
(declare-sort var1017 0)
(declare-sort var2146 0)
(declare-sort var3074 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun isBalanced/934079212 (var1017) Bool)
(declare-fun var2146-init () var2146)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getClass/1258963082 (var3074) ClassObject)
(declare-fun cast-from-var1017-to-var3074 (var1017) var3074)
(declare-fun append/-1031950772 (String var3074) String)
(declare-fun cast-from-ClassObject-to-var3074 (ClassObject) var3074)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/875830710 (var2146 String) void)
(declare-const null-var607 var607)
(declare-const null-var1017 var1017)
(declare-const var2640 var607) ; Statement: r8 := @this: com.google.javascript.jscomp.jarjar.com.google.protobuf.RopeByteString$Balancer 
(assert (not (= var2640 null-var607)))
(declare-const var3575 var1017) ; Statement: r0 := @parameter0: com.google.javascript.jscomp.jarjar.com.google.protobuf.ByteString 
(assert (not (= var3575 null-var1017)))
(assert true)
(define-const var905 Bool (isBalanced/934079212 var3575)) ; Statement: $z0 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.ByteString: boolean isBalanced()>() 
 ; Statement: if $z0 == 0 goto $z1 = r0 instanceof com.google.javascript.jscomp.jarjar.com.google.protobuf.RopeByteString 
(assert (= (ite var905 1 0) 0)) ; Cond: $z0 == 0 
(define-const var836 Bool false) ; Statement: $z1 = r0 instanceof com.google.javascript.jscomp.jarjar.com.google.protobuf.RopeByteString 
 ; Statement: if $z1 == 0 goto $r1 = new java.lang.IllegalArgumentException 
(assert (= (ite var836 1 0) 0)) ; Cond: $z1 == 0 
(define-const var2062 var2146 var2146-init) ; Statement: $r1 = new java.lang.IllegalArgumentException 
(define-const var503 String String-init) ; Statement: $r2 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var503)) ; Statement: specialinvoke $r2.<java.lang.StringBuilder: void <init>()>() 
(declare-const var503!1 String)
(assert (= var503!1 ""))
(assert true)
(define-const var744 String (append/672562846 var503!1 "Has a new type of ByteString been created? Found ")) ; Statement: $r4 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Has a new type of ByteString been created? Found ") 
(declare-const var503!2 String)
(assert (= var503!2 (str.++ var503!1 "Has a new type of ByteString been created? Found ")))
(assert true)
(define-const var886 ClassObject (getClass/1258963082 (cast-from-var1017-to-var3074 var3575))) ; Statement: $r3 = virtualinvoke r0.<java.lang.Object: java.lang.Class getClass()>() 
(assert true)
(define-const var3595 String (append/-1031950772 var744 (cast-from-ClassObject-to-var3074 var886))) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r3) 
(declare-const var744!1 String)
(assert (str.prefixof var744 var744!1))
(assert true)
(define-const var2297 String (toString/-2075883882 var3595)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/875830710 var2062 var2297)) ; Statement: specialinvoke $r1.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r6) 

(declare-const var2062!1 var2146)
(declare-const var2297!1 String)
 ; Statement: throw $r1 
(check-sat)
(get-model)
(get-unsat-core)
; {isBalanced/934079212=([com.google.javascript.jscomp.jarjar.com.google.protobuf.ByteString], boolean), var2146-init=([], java.lang.IllegalArgumentException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), getClass/1258963082=([java.lang.Object], java.lang.Class), cast-from-var1017-to-var3074=([com.google.javascript.jscomp.jarjar.com.google.protobuf.ByteString], java.lang.Object), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-ClassObject-to-var3074=([java.lang.Class], java.lang.Object), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/875830710=([java.lang.IllegalArgumentException, java.lang.String], void)}
; {var607=com.google.javascript.jscomp.jarjar.com.google.protobuf.RopeByteString$Balancer, var2640=r8, var1017=com.google.javascript.jscomp.jarjar.com.google.protobuf.ByteString, var3575=r0, var905=$z0, var836=$z1, var2146=java.lang.IllegalArgumentException, var2062=$r1, var503=$r2, var744=$r4, var3074=java.lang.Object, var886=$r3, var3595=$r5, var2297=$r6}
; {com.google.javascript.jscomp.jarjar.com.google.protobuf.RopeByteString$Balancer=var607, r8=var2640, com.google.javascript.jscomp.jarjar.com.google.protobuf.ByteString=var1017, r0=var3575, $z0=var905, $z1=var836, java.lang.IllegalArgumentException=var2146, $r1=var2062, $r2=var503, $r4=var744, java.lang.Object=var3074, $r3=var886, $r5=var3595, $r6=var2297}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r8 := @this: com.google.javascript.jscomp.jarjar.com.google.protobuf.RopeByteString$Balancer;	r0 := @parameter0: com.google.javascript.jscomp.jarjar.com.google.protobuf.ByteString;	$z0 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.ByteString: boolean isBalanced()>();	if $z0 == 0 goto $z1 = r0 instanceof com.google.javascript.jscomp.jarjar.com.google.protobuf.RopeByteString;	$z1 = r0 instanceof com.google.javascript.jscomp.jarjar.com.google.protobuf.RopeByteString;	if $z1 == 0 goto $r1 = new java.lang.IllegalArgumentException;	$r1 = new java.lang.IllegalArgumentException;	$r2 = new java.lang.StringBuilder;	specialinvoke $r2.<java.lang.StringBuilder: void <init>()>();	$r4 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Has a new type of ByteString been created? Found ");	$r3 = virtualinvoke r0.<java.lang.Object: java.lang.Class getClass()>();	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r3);	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r1.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r6);	throw $r1
;block_num 3