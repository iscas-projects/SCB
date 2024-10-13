(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2544 0)
(declare-sort var1299 0)
(declare-sort var2380 0)
(declare-sort var2353 0)
(declare-sort var3465 0)
(declare-sort var2867 0)
(declare-sort var2602 0)
(declare-sort var1309 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun arr-var2353-init () (Array Int var2353))
(declare-fun var3465_notBlank/-161903167 (String String (Array Int var2353)) String)
(define-fun cast-from-String-to-String ((arg String)) String arg)
(declare-fun secretKey/-12194502 (var2544) var2380)
(declare-fun name/1633728430 (var2602) String)
(declare-fun cast-from-var2867-to-var2602 (var2867) var2602)
(define-fun contains/1009244746 ((s String) (subs String)) Bool (str.contains s subs))
(declare-fun var1309-init () var1309)
(declare-fun <init>/-341493305 (var1309 String) void)
(declare-fun cipherWrapper/-12194502 (var2544) var1309)
(declare-const null-var2544 var2544)
(declare-const null-String String)
(declare-const null-var2380 var2380)
(declare-const var2867-ZeroPadding var2867)
(declare-const var2721 var2544) ; Statement: r1 := @this: cn.hutool.crypto.symmetric.SymmetricCrypto 
(assert (not (= var2721 null-var2544)))
(declare-const var1261 String) ; Statement: r10 := @parameter0: java.lang.String 
(assert (not (= var1261 null-String)))
(declare-const var894 var2380) ; Statement: r2 := @parameter1: javax.crypto.SecretKey 
(assert (not (= var894 null-var2380)))
(define-const var2402 (Array Int var2353) arr-var2353-init) ; Statement: $r0 = newarray (java.lang.Object)[0] 
;(assert (var3465_notBlank/-161903167 (cast-from-String-to-String var1261) "\u0027algorithm\u0027 must be not blank !" var2402)) ; Statement: staticinvoke <cn.hutool.core.lang.Assert: java.lang.CharSequence notBlank(java.lang.CharSequence,java.lang.String,java.lang.Object[])>(r10, "\'algorithm\' must be not blank !", $r0) 

(declare-const var1261!1 String)
(declare-const var251 String)
(declare-const var2402!1 (Array Int var2353))
(declare-const var2721!1 var2544)
(assert (not (= var2721!1 null-var2544)))
(assert (= (secretKey/-12194502 var2721!1) var894)) ; Statement: r1.<cn.hutool.crypto.symmetric.SymmetricCrypto: javax.crypto.SecretKey secretKey> = r2 
(define-const var1956 var2867 var2867-ZeroPadding) ; Statement: $r3 = <cn.hutool.crypto.Padding: cn.hutool.crypto.Padding ZeroPadding> 
(assert true)
(define-const var1354 String (name/1633728430 (cast-from-var2867-to-var2602 var1956))) ; Statement: $r4 = virtualinvoke $r3.<cn.hutool.crypto.Padding: java.lang.String name()>() 
(assert true)
(define-const var3075 Bool (contains/1009244746 var1261!1 (cast-from-String-to-String var1354))) ; Statement: $z0 = virtualinvoke r10.<java.lang.String: boolean contains(java.lang.CharSequence)>($r4) 
 ; Statement: if $z0 == 0 goto $r5 = new cn.hutool.crypto.CipherWrapper 
(assert (= (ite var3075 1 0) 0)) ; Cond: $z0 == 0 
(define-const var2986 var1309 var1309-init) ; Statement: $r5 = new cn.hutool.crypto.CipherWrapper 
(assert true)
;(assert (<init>/-341493305 var2986 var1261!1)) ; Statement: specialinvoke $r5.<cn.hutool.crypto.CipherWrapper: void <init>(java.lang.String)>(r10) 

(declare-const var2986!1 var1309)
(declare-const var1261!2 String)
(declare-const var2721!2 var2544)
(assert (not (= var2721!2 null-var2544)))
(assert (= (cipherWrapper/-12194502 var2721!2) var2986!1)) ; Statement: r1.<cn.hutool.crypto.symmetric.SymmetricCrypto: cn.hutool.crypto.CipherWrapper cipherWrapper> = $r5 
 ; Statement: return r1 
(check-sat)
(get-model)
(get-unsat-core)
; {arr-var2353-init=([], java.lang.Object[]), var3465_notBlank/-161903167=([java.lang.CharSequence, java.lang.String, java.lang.Object[]], java.lang.CharSequence), cast-from-String-to-String=([java.lang.String], java.lang.CharSequence), secretKey/-12194502=([cn.hutool.crypto.symmetric.SymmetricCrypto], javax.crypto.SecretKey), name/1633728430=([java.lang.Enum], java.lang.String), cast-from-var2867-to-var2602=([cn.hutool.crypto.Padding], java.lang.Enum), contains/1009244746=([java.lang.String, java.lang.CharSequence], boolean), var1309-init=([], cn.hutool.crypto.CipherWrapper), <init>/-341493305=([cn.hutool.crypto.CipherWrapper, java.lang.String], void), cipherWrapper/-12194502=([cn.hutool.crypto.symmetric.SymmetricCrypto], cn.hutool.crypto.CipherWrapper)}
; {var2544=cn.hutool.crypto.symmetric.SymmetricCrypto, var2721=r1, var1261=r10, var1299=null_type, var2380=javax.crypto.SecretKey, var894=r2, var2353=java.lang.Object, var2402=$r0, var3465=cn.hutool.core.lang.Assert, var251="\'algorithm\' must be not blank !", var2867=cn.hutool.crypto.Padding, var1956=$r3, var2602=java.lang.Enum, var1354=$r4, var3075=$z0, var1309=cn.hutool.crypto.CipherWrapper, var2986=$r5}
; {cn.hutool.crypto.symmetric.SymmetricCrypto=var2544, r1=var2721, r10=var1261, null_type=var1299, javax.crypto.SecretKey=var2380, r2=var894, java.lang.Object=var2353, $r0=var2402, cn.hutool.core.lang.Assert=var3465, "\'algorithm\' must be not blank !"=var251, cn.hutool.crypto.Padding=var2867, $r3=var1956, java.lang.Enum=var2602, $r4=var1354, $z0=var3075, cn.hutool.crypto.CipherWrapper=var1309, $r5=var2986}
;seq <java.lang.String: boolean contains(java.lang.CharSequence)>
;cnt {"<java.lang.String: boolean contains(java.lang.CharSequence)>": 1}
;stmts r1 := @this: cn.hutool.crypto.symmetric.SymmetricCrypto;	r10 := @parameter0: java.lang.String;	r2 := @parameter1: javax.crypto.SecretKey;	$r0 = newarray (java.lang.Object)[0];	staticinvoke <cn.hutool.core.lang.Assert: java.lang.CharSequence notBlank(java.lang.CharSequence,java.lang.String,java.lang.Object[])>(r10, "\'algorithm\' must be not blank !", $r0);	r1.<cn.hutool.crypto.symmetric.SymmetricCrypto: javax.crypto.SecretKey secretKey> = r2;	$r3 = <cn.hutool.crypto.Padding: cn.hutool.crypto.Padding ZeroPadding>;	$r4 = virtualinvoke $r3.<cn.hutool.crypto.Padding: java.lang.String name()>();	$z0 = virtualinvoke r10.<java.lang.String: boolean contains(java.lang.CharSequence)>($r4);	if $z0 == 0 goto $r5 = new cn.hutool.crypto.CipherWrapper;	$r5 = new cn.hutool.crypto.CipherWrapper;	specialinvoke $r5.<cn.hutool.crypto.CipherWrapper: void <init>(java.lang.String)>(r10);	r1.<cn.hutool.crypto.symmetric.SymmetricCrypto: cn.hutool.crypto.CipherWrapper cipherWrapper> = $r5;	return r1
;block_num 2